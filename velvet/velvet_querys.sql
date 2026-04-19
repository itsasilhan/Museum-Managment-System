-- 6 functions and procedures
-- 1 museum collection size
CREATE OR REPLACE FUNCTION f_col_size (
    p_museum_id IN a_museums.museum_id%TYPE
) RETURN NUMBER
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(w.artwork_id)
    INTO v_count
    FROM a_artworks w
    JOIN a_collections c
        ON w.collection_id = c.collection_id
    WHERE c.museum_id = p_museum_id;

    RETURN v_count;
END f_col_size;
/

SELECT f_col_size('MUS00') AS collection_size
FROM dual;
/

-- 2 department total payroll
CREATE OR REPLACE FUNCTION f_get_dep_proll (
    p_department_id IN a_departments.department_id%TYPE
) RETURN NUMBER
IS
    v_total_salary NUMBER;
BEGIN
    SELECT NVL(SUM(salary_annual), 0)
    INTO v_total_salary
    FROM a_staff
    WHERE department_id = p_department_id;

    RETURN v_total_salary;
END f_get_dep_proll;
/

SELECT f_get_dep_proll('DEP001') AS total_payroll
FROM dual;
/

-- 3 artist lifespan
CREATE OR REPLACE FUNCTION f_art_life (
    p_artist_id IN a_artists.artist_id%TYPE
) RETURN NUMBER
IS
    v_birth a_artists.birth_year%TYPE;
    v_death a_artists.death_year%TYPE;
BEGIN
    SELECT birth_year, death_year
    INTO v_birth, v_death
    FROM a_artists
    WHERE artist_id = p_artist_id;

    RETURN NVL(v_death, EXTRACT(YEAR FROM SYSDATE)) - v_birth;
END f_art_life;
/

SELECT f_art_life('ARS016') AS lifespan_years
FROM dual;
/

-- 4 staff salary raise by percent
CREATE OR REPLACE PROCEDURE pr_raise_sal (
    p_staff_id   IN  a_staff.staff_id%TYPE,
    p_percent    IN  NUMBER,
    p_new_salary OUT a_staff.salary_annual%TYPE
)
IS
BEGIN
    UPDATE a_staff
    SET salary_annual = salary_annual * (1 + p_percent / 100)
    WHERE staff_id = p_staff_id
    RETURNING salary_annual INTO p_new_salary;
END pr_raise_sal;
/

DECLARE
    v_updated_sal a_staff.salary_annual%TYPE;
BEGIN
    pr_raise_sal(
        p_staff_id   => 'STF001',
        p_percent    => -10,
        p_new_salary => v_updated_sal
    );
    DBMS_OUTPUT.PUT_LINE('Updated. New salary: ' || v_updated_sal);
END;
/

-- 5 change staff email
CREATE OR REPLACE PROCEDURE pr_chng_email (
    p_staff_id IN a_staff.staff_id%TYPE,
    p_email    IN a_staff.email%TYPE
)
IS
BEGIN
    UPDATE a_staff
    SET email = p_email
    WHERE staff_id = p_staff_id;
END pr_chng_email;
/

BEGIN
    pr_chng_email(
        p_staff_id => 'STF237',
        p_email    => 'a.martini1@museum.org'
    );
END;
/

-- 6 update loan status
CREATE OR REPLACE PROCEDURE pr_update_loan (
    p_loan_id IN a_loans.loan_id%TYPE,
    p_status  IN a_loans.status%TYPE
)
IS
BEGIN
    UPDATE a_loans
    SET status = p_status
    WHERE loan_id = p_loan_id;
END pr_update_loan;
/

BEGIN
    pr_update_loan(
        p_loan_id => 'LON001',
        p_status  => 'Cancelled'
    );
END;
/

-- 5 cursors and records
-- all museums and their age
DECLARE
    CURSOR c_museums IS
        SELECT museum_id, museum_name, established_year
        FROM a_museums;

    v_rec c_museums%ROWTYPE;
    v_age NUMBER;
BEGIN
    OPEN c_museums;
    LOOP
        FETCH c_museums INTO v_rec;
        EXIT WHEN c_museums%NOTFOUND;

        v_age := EXTRACT(YEAR FROM SYSDATE) - v_rec.established_year;
        DBMS_OUTPUT.PUT_LINE('Museum ' || v_rec.museum_name || ' age: ' || v_age || ' years');
    END LOOP;
    CLOSE c_museums;
END;
/

-- departments of one museum and staff count
DECLARE
    v_museum_id a_museums.museum_id%TYPE := 'MUS077';

    CURSOR c_departments IS
        SELECT d.department_id,
               d.department_name,
               COUNT(s.staff_id) AS staff_count
        FROM a_departments d
        LEFT JOIN a_staff s
            ON s.department_id = d.department_id
        WHERE d.museum_id = v_museum_id
        GROUP BY d.department_id, d.department_name;

    v_dep_rec c_departments%ROWTYPE;
BEGIN
    OPEN c_departments;
    LOOP
        FETCH c_departments INTO v_dep_rec;
        EXIT WHEN c_departments%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Department ' || v_dep_rec.department_name || ': ' || v_dep_rec.staff_count || ' staff');
    END LOOP;
    CLOSE c_departments;
END;
/

-- artworks count per artist
DECLARE
    CURSOR c_artist_artworks IS
        SELECT a.artist_id,
               a.artist_name,
               COUNT(w.artwork_id) AS artwork_count
        FROM a_artists a
        LEFT JOIN a_artworks w
            ON w.artist_id = a.artist_id
        GROUP BY a.artist_id, a.artist_name;
BEGIN
    FOR r IN c_artist_artworks LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Artist ' || r.artist_name ||
            ' has ' || r.artwork_count || ' artworks in the museum'
        );
    END LOOP;
END;
/

-- artworks that are long on loan
DECLARE
    CURSOR c_artworks_on_loan IS
        SELECT w.artwork_id,
               w.title,
               i.location_id,
               i.record_date,
               i.staff_id
        FROM a_artworks w
        JOIN a_inventory_records i
            ON i.artwork_id = w.artwork_id
        WHERE i.status = 'On Loan';

    v_rec          c_artworks_on_loan%ROWTYPE;
    v_days_on_loan NUMBER;
BEGIN
    OPEN c_artworks_on_loan;
    LOOP
        FETCH c_artworks_on_loan INTO v_rec;
        EXIT WHEN c_artworks_on_loan%NOTFOUND;

        v_days_on_loan := TRUNC(SYSDATE - v_rec.record_date);

        IF v_days_on_loan > 180 THEN
            DBMS_OUTPUT.PUT_LINE('Long-term loan: ' || v_rec.title ||
                                 ' – ' || v_days_on_loan || ' days on loan, ' ||
                                 'location ' || v_rec.location_id ||
                                 ', responsible staff ' || v_rec.staff_id);
        ELSE
            DBMS_OUTPUT.PUT_LINE('Recent loan: ' || v_rec.title ||
                                 ' – ' || v_days_on_loan || ' days on loan');
        END IF;
    END LOOP;
    CLOSE c_artworks_on_loan;
END;
/

-- expensive conservation treatments
DECLARE
    CURSOR c_expensive_treatments IS
        SELECT *
        FROM a_conservation_treatment
        WHERE cost_usd > 5000;

    v_treatment a_conservation_treatment%ROWTYPE;
BEGIN
    OPEN c_expensive_treatments;
    LOOP
        FETCH c_expensive_treatments INTO v_treatment;
        EXIT WHEN c_expensive_treatments%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Treatment ' || v_treatment.treatment_id ||
                             ' on artwork ' || v_treatment.artwork_id ||
                             ' cost ' || v_treatment.cost_usd);
    END LOOP;
    CLOSE c_expensive_treatments;
END;
/

-- 3 packages and exceptions
-- exhibition statistics
CREATE OR REPLACE PACKAGE exhibition_stats_pkg AS
    exhibition_not_found     EXCEPTION;
    invalid_exhibition_dates EXCEPTION;

    FUNCTION get_exhibition_duration_days (
        p_exhibition_id IN a_exhibitions.exhibition_id%TYPE
    ) RETURN NUMBER;

    FUNCTION get_average_daily_visitors (
        p_exhibition_id IN a_exhibitions.exhibition_id%TYPE
    ) RETURN NUMBER;
END exhibition_stats_pkg;
/

CREATE OR REPLACE PACKAGE BODY exhibition_stats_pkg AS

    FUNCTION get_exhibition_duration_days (
        p_exhibition_id IN a_exhibitions.exhibition_id%TYPE
    ) RETURN NUMBER
    IS
        v_start_date a_exhibitions.start_date%TYPE;
        v_end_date   a_exhibitions.end_date%TYPE;
        v_days       NUMBER;
    BEGIN
        SELECT start_date, end_date
        INTO v_start_date, v_end_date
        FROM a_exhibitions
        WHERE exhibition_id = p_exhibition_id;

        IF v_start_date IS NULL OR v_end_date IS NULL THEN
            RAISE invalid_exhibition_dates;
        END IF;

        v_days := v_end_date - v_start_date;

        IF v_days <= 0 THEN
            RAISE invalid_exhibition_dates;
        END IF;

        RETURN v_days;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE exhibition_not_found;
    END get_exhibition_duration_days;

    FUNCTION get_average_daily_visitors (
        p_exhibition_id IN a_exhibitions.exhibition_id%TYPE
    ) RETURN NUMBER
    IS
        v_visitor_count a_exhibitions.visitor_count%TYPE;
        v_days          NUMBER;
    BEGIN
        SELECT NVL(visitor_count, 0)
        INTO v_visitor_count
        FROM a_exhibitions
        WHERE exhibition_id = p_exhibition_id;

        v_days := get_exhibition_duration_days(p_exhibition_id);

        RETURN v_visitor_count / v_days;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE exhibition_not_found;
    END get_average_daily_visitors;

END exhibition_stats_pkg;
/

SELECT exhibition_stats_pkg.get_exhibition_duration_days('EXH001') AS duration_days,
       exhibition_stats_pkg.get_average_daily_visitors('EXH001')   AS avg_daily_visitors
FROM dual;
/

-- add new staff and change department
CREATE OR REPLACE PACKAGE staff_admin_pkg AS
    staff_not_found EXCEPTION;

    PROCEDURE hire_staff (
        p_staff_id    IN a_staff.staff_id%TYPE,
        p_first_name  IN a_staff.first_name%TYPE,
        p_last_name   IN a_staff.last_name%TYPE,
        p_position    IN a_staff.position%TYPE,
        p_dept_id     IN a_staff.department_id%TYPE,
        p_salary      IN a_staff.salary_annual%TYPE,
        p_email       IN a_staff.email%TYPE
    );

    PROCEDURE chng_staff_dep (
        p_staff_id IN a_staff.staff_id%TYPE,
        p_dept_id  IN a_staff.department_id%TYPE
    );
END staff_admin_pkg;
/

CREATE OR REPLACE PACKAGE BODY staff_admin_pkg AS

    PROCEDURE hire_staff (
        p_staff_id    IN a_staff.staff_id%TYPE,
        p_first_name  IN a_staff.first_name%TYPE,
        p_last_name   IN a_staff.last_name%TYPE,
        p_position    IN a_staff.position%TYPE,
        p_dept_id     IN a_staff.department_id%TYPE,
        p_salary      IN a_staff.salary_annual%TYPE,
        p_email       IN a_staff.email%TYPE
    )
    IS
    BEGIN
        INSERT INTO a_staff (
            staff_id,
            first_name,
            last_name,
            position,
            department_id,
            hire_date,
            salary_annual,
            email
        ) VALUES (
            p_staff_id,
            p_first_name,
            p_last_name,
            p_position,
            p_dept_id,
            SYSDATE,
            p_salary,
            p_email
        );
    END hire_staff;

    PROCEDURE chng_staff_dep (
        p_staff_id IN a_staff.staff_id%TYPE,
        p_dept_id  IN a_staff.department_id%TYPE
    )
    IS
    BEGIN
        UPDATE a_staff
        SET department_id = p_dept_id
        WHERE staff_id = p_staff_id;

        IF SQL%ROWCOUNT = 0 THEN
            RAISE staff_not_found;
        END IF;
    END chng_staff_dep;

END staff_admin_pkg;
/

BEGIN
    staff_admin_pkg.hire_staff(
        p_staff_id   => 'STF900',
        p_first_name => 'Semen',
        p_last_name  => 'Bakin',
        p_position   => 'Curator',
        p_dept_id    => 'DEP001',
        p_salary     => 35000,
        p_email      => 'kyoske1221@gmal.com'
    );
END;
/

BEGIN
    staff_admin_pkg.chng_staff_dep(
        p_staff_id => 'STF900',
        p_dept_id  => 'DEP003'
    );
END;
/

-- manage artwork location
CREATE OR REPLACE PACKAGE artwork_loc_pkg AS
    artwork_not_found EXCEPTION;

    FUNCTION get_location (
        p_artwork_id IN a_artworks.artwork_id%TYPE
    ) RETURN a_inventory_records.location_id%TYPE;

    PROCEDURE reg_mov (
        p_record_id   IN a_inventory_records.record_id%TYPE,
        p_artwork_id  IN a_inventory_records.artwork_id%TYPE,
        p_location_id IN a_inventory_records.location_id%TYPE,
        p_status      IN a_inventory_records.status%TYPE,
        p_staff_id    IN a_inventory_records.staff_id%TYPE
    );
END artwork_loc_pkg;
/

CREATE OR REPLACE PACKAGE BODY artwork_loc_pkg AS

    FUNCTION get_location (
        p_artwork_id IN a_artworks.artwork_id%TYPE
    ) RETURN a_inventory_records.location_id%TYPE
    IS
        v_location_id a_inventory_records.location_id%TYPE;
    BEGIN
        SELECT location_id
        INTO v_location_id
        FROM a_inventory_records
        WHERE artwork_id = p_artwork_id
          AND record_date = (
              SELECT MAX(record_date)
              FROM a_inventory_records
              WHERE artwork_id = p_artwork_id
          );

        RETURN v_location_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE artwork_not_found;
    END get_location;

    PROCEDURE reg_mov (
        p_record_id   IN a_inventory_records.record_id%TYPE,
        p_artwork_id  IN a_inventory_records.artwork_id%TYPE,
        p_location_id IN a_inventory_records.location_id%TYPE,
        p_status      IN a_inventory_records.status%TYPE,
        p_staff_id    IN a_inventory_records.staff_id%TYPE
    )
    IS
    BEGIN
        INSERT INTO a_inventory_records (
            record_id,
            artwork_id,
            location_id,
            record_date,
            status,
            staff_id
        ) VALUES (
            p_record_id,
            p_artwork_id,
            p_location_id,
            SYSDATE,
            p_status,
            p_staff_id
        );
    END reg_mov;

END artwork_loc_pkg;
/

DECLARE
    v_location a_inventory_records.location_id%TYPE;
BEGIN
    v_location := artwork_loc_pkg.get_location('ART030');
    DBMS_OUTPUT.PUT_LINE('Current location: ' || v_location);
EXCEPTION
    WHEN artwork_loc_pkg.artwork_not_found THEN
        DBMS_OUTPUT.PUT_LINE('Artwork not found in inventory records');
END;
/

BEGIN
    artwork_loc_pkg.reg_mov(
        p_record_id   => 'INV501',
        p_artwork_id  => 'ART001',
        p_location_id => 'LOC010',
        p_status      => 'On Display',
        p_staff_id    => 'STF001'
    );
END;
/

-- 1 collection
-- list of old artworks to check
DECLARE
    TYPE t_artwork_list IS TABLE OF a_artworks.artwork_id%TYPE INDEX BY PLS_INTEGER;

    v_high_risk_artworks t_artwork_list;
    v_index              PLS_INTEGER := 0;
BEGIN
    FOR r IN (
        SELECT artwork_id, title, year_created
        FROM a_artworks
        WHERE year_created IS NOT NULL
          AND year_created <= 1900
    ) LOOP
        v_index := v_index + 1;
        v_high_risk_artworks(v_index) := r.artwork_id;

        DBMS_OUTPUT.PUT_LINE('Queued for condition check: ' || r.artwork_id || ' - ' || r.title || ' (' || r.year_created || ')');
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Total artworks to schedule for detailed condition check: ' || v_high_risk_artworks.COUNT);

    v_index := v_high_risk_artworks.FIRST;
    WHILE v_index IS NOT NULL LOOP
        DBMS_OUTPUT.PUT_LINE('Schedule conservation team for artwork ' || v_high_risk_artworks(v_index));
        v_index := v_high_risk_artworks.NEXT(v_index);
    END LOOP;
END;
/

-- 5 triggers
-- auto set inventory record date
CREATE OR REPLACE TRIGGER trg_inv_date
BEFORE INSERT ON a_inventory_records
FOR EACH ROW
BEGIN
    IF :NEW.record_date IS NULL THEN
        :NEW.record_date := SYSDATE;
    END IF;
END trg_inv_date;
/

INSERT INTO a_inventory_records (record_id, artwork_id, location_id, status, staff_id)
VALUES ('INV999', 'ART001', 'LOC001', 'On Display', 'STF001');
/

SELECT record_date
FROM a_inventory_records
WHERE record_id = 'INV999';
/

-- default loan status
CREATE OR REPLACE TRIGGER trg_loans_def_status
BEFORE INSERT ON a_loans
FOR EACH ROW
BEGIN
    IF :NEW.status IS NULL THEN
        :NEW.status := 'Planned';
    END IF;
END trg_loans_def_status;
/

INSERT INTO a_loans (
    loan_id,
    borrowing_institution,
    loan_type,
    start_date,
    end_date,
    insurance_value_usd,
    loan_fee_usd
) VALUES (
    'LON888',
    'Test Museum',
    'Outgoing',
    DATE '2025-01-01',
    DATE '2025-02-01',
    100000,
    5000
);
/

SELECT status
FROM a_loans
WHERE loan_id = 'LON888';
/

-- prevent invalid conservation dates
CREATE OR REPLACE TRIGGER trg_cons_check_dates
BEFORE INSERT OR UPDATE ON a_conservation_treatment
FOR EACH ROW
BEGIN
    IF :NEW.end_date IS NOT NULL
       AND :NEW.start_date IS NOT NULL THEN
        IF :NEW.end_date < :NEW.start_date THEN
            RAISE_APPLICATION_ERROR(-20001, 'End date cannot be earlier than start date');
        END IF;
    END IF;
END trg_cons_check_dates;
/

INSERT INTO a_conservation_treatment (
    treatment_id,
    artwork_id,
    treatment_type,
    start_date,
    end_date,
    cost_usd,
    treatment_notes,
    staff_id
) VALUES (
    'TRT901',
    'ART001',
    'Varnish Removal',
    DATE '2024-03-10',
    DATE '2024-03-01',
    1500,
    'Test invalid dates',
    'STF001'
);
/

-- welcome message for new staff
CREATE OR REPLACE TRIGGER trg_staff_welcome_email
AFTER INSERT ON a_staff
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Welcome ' || :NEW.first_name || ' ' || :NEW.last_name ||
        ' (' || :NEW.email || ') to the museum staff!'
    );
END trg_staff_welcome_email;
/

INSERT INTO a_staff (
    staff_id,
    first_name,
    last_name,
    position,
    department_id,
    hire_date,
    salary_annual,
    email
) VALUES (
    'STF808',
    'Pavlik',
    'Test',
    'Assistant',
    'DEP001',
    SYSDATE,
    20000,
    'papapap@gmail.com'
);
/

-- prevent deleting artwork with active loans
CREATE OR REPLACE TRIGGER trg_dont_delete_loan_art
BEFORE DELETE ON a_artworks
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM a_loans
    WHERE artwork_id = :OLD.artwork_id
      AND status <> 'Closed';

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Cannot delete artwork that has active loans'
        );
    END IF;
END trg_dont_delete_loan_art;
/

DELETE FROM a_artworks
WHERE artwork_id = 'ART001';
/
