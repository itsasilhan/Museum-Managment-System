prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>90441889943987053795
,p_default_application_id=>167733
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TRIPLE'
);
end;
/
 
prompt APPLICATION 167733 - museum managment system
--
-- Application Export:
--   Application:     167733
--   Name:            museum managment system
--   Date and Time:   16:44 Tuesday December 9, 2025
--   Exported By:     230183122@SDU.EDU.KZ
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     10
--       Items:                    9
--       Processes:                4
--       Regions:                 17
--       Buttons:                  7
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              8
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.11
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_TRIPLE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'museum managment system')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'VELVET')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'BCCD0220C67644495121EFF7417D88C53411D99DB300594E1842ADE0A2D16E3B'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(111559532048621085853)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'prprp'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0.1'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'prprp'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_version_scn=>15681306664798
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(167733)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(111559532834513085855)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(111559534096746085857)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(111559532834513085855)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15681299984916
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(111559543755772085872)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(118048506461073782534)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Total Budget'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(118058540643453865662)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Departments'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-area-chart'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(118062534732025584149)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\0421ounting Artworks')
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(118071337028199995877)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Increasing The Budget'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(118086532560988134675)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'OLD ARTWORKS'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(118116759841582454730)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Search by staff_id'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(118150890760717886701)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Deleting by treatment_id'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(111559534096746085857)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15673693428240
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(111559545299031085875)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(111559545747401085876)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(111559545299031085875)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(111559546122319085876)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(111559545299031085875)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF40000024D494441545847ED953F68136118C69F2FC9F52E49FF5C2257AD49DB182C4DD016E9D07689F86F2A38752988BA083A09CE0AD2C9491C1C9C0A824BC5C1C52238';
wwv_flow_imp.g_varchar2_table(2) := '285AD01A8A8AD55E2D36A64D4C25B1499A5CAEBD244DBC7CC5214E77478F22DC77C3F1F11DF7FC78DEF77D3E129D98AA631F17B1002C072C07FE6B07B235892688D7D66A38490CE7401E327A4743801A63AB732278E236046108A054D986F74437DA049E';
wwv_flow_imp.g_varchar2_table(3) := '8A163379E43E25E06238DD108600125B1908C1C34D62BF6329F89D82F9005259C6E0CDF3F0849B01728B292CDC99815BA70BBA1DC8B30ACE3EB8826A49C1ECE46380109C9C9C808D75E0E5B529F01556970BBA01C8C0010CDD188394C862E56954EDC13A';
wwv_flow_imp.g_varchar2_table(4) := 'FAC647E1F679F0E1EE0CEA5FB3E602B84E0510BE14A12289170B200E1BFC678ED1FDE2C3D7D87AB36632C06915E0E22EC0BF4B7C340BF955DC3C804D45023FD28BA1EB635444C996E89BF5EE66C0FCBD6728CC27D0C16A0F26CD3DD098FDB65027CAD52A';
wwv_flow_imp.g_varchar2_table(5) := '466E8F53C19C9802511F3EDC45F76F6F4D83733A212DA5354F83668082AB8AE070181BC934FA2F4768D3E5C5752ADC0028FEC860657A0E1E9F80585444BBECD0540ACD00CA2106BE5000F55A0D4545C6C0D5734D0E7CBCFF1C9E765E9D4A829F4B71B0BF';
wwv_flow_imp.g_varchar2_table(6) := '2A7B0BB0DDC5C0DF1FA03F5DFBFC1DE10B11D83986964029C8587EF20E3D8347E979F25B1CDCBA0900BEBE1E24BFC440D20A242810868F50C1CCFB185A0987FA410EDDC783482EAFEE3D40DA2E81A8375F879A742D76860ACB6A6336D6DF4BA8BC53C166';
wwv_flow_imp.g_varchar2_table(7) := '4B998653E78EB649D0DC039A0A6AE0230BC072C07260DF1DF803CAD30FF02CA078730000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(111559535101248085861)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B80000137E49444154785EED9D0978545596C7FFAFAAB2EF09D948C216108488024905B06DA0B551B405BB3552B80161D3CF6FC6715A67EC9E9E9199F69BB6C7C11E7B19';
wwv_flow_imp.g_varchar2_table(2) := '4508082E24441D77710D200859D894B0879004484242F690A59637E7169620A4B6FB5E25AFE27DDFD71F2DBC73EE79E7FEEAAEE79E2B413CC2030A3C20299015A2C2031000090814794000A4C87D425800241850E401019022F709610190604091070440';
wwv_flow_imp.g_varchar2_table(3) := '8ADC278405408201451E100029729F101600090614794000A4C87D425800241850E401019022F709614D02543473A521217EBCAE15D047A141DF05833E30205CD765B0E87E0C55166231D87ACD1DB61058ACAD88B74601D6730D876CB3B6AEB468EDFB07';
wwv_flow_imp.g_varchar2_table(4) := '142019B2B467C12B63ADB0664B32B225E88CF47713C949015A739446EC314B90BE9165B958D6C9257AE88BA76C5A7494FE4E1E28FBFA15A0BD39EBE2AD7A799A0D048B04236464D187D30F4C3C0A3CD04A3115A512082AA0D862C1CEE9854B9B14E8F34A';
wwv_flow_imp.g_varchar2_table(5) := 'B4DF0062AD4DD9FCF5736549FE27B270BA57568A973DF5C04E59969E35162CFEB0BF5A259F0354B67C7580ADCDB0883CF004FDEF1A4F3D21DE53E00109476519CFE9232D1B335F5E6156A0C9ADA84F01FA3A67434A80DEFA2EB53E53DC5A225EF08507CA';
wwv_flow_imp.g_varchar2_table(6) := '0C56E9F6C985B90DBE50CE74FA0CA0DD39EBC6EBF4F2A754468AAF8C177A3DF1805C01C936CFB86979B9276F7BFB8E4F002A5B90F7139B8C0FC400D9DBEAF0D9FB34D09608A2DC6D6A97A03A40DFB53CA56468A8DAC60A7D8A3C700192D5A8764BA42A40';
wwv_flow_imp.g_varchar2_table(7) := '6577AE0EB5851B4A697A3E5ED1A70A611F79402AD7759A8D99EFAFB8A05601AA0254625AF70A202F54CB38A1C7171E903618F37317A9A55935804A4C79CCA8F56A1926F4F8D4038B8DF94BE8C7AEFC5105A0AF73368704E83BCED0743D46B94942433F78';
wwv_flow_imp.g_varchar2_table(8) := 'A049D7694953A32B5305A06253DEC3A4E8C57EF87051844A1EA06D8F47B2F397BCA4549D6280D81645E982758769E03C56A93142BEFF3C40157F38333F7782D22D0FC500952C587B1B31F471FF7DBA2849350F48F21CE3A6A55B94E8530ED0FCBC2DB49E';
wwv_flow_imp.g_varchar2_table(9) := '7DAB122384EC007940C627C68225B729295D1140458BD6078775DB3AC9801F45A09712476B54D666B146844F2FBCB78BD73E4500959AD6CC94A12BE22D5CC80DBC0724D86665E52FDBCA6B8922804AE6E73D45DDD71F780B17721AF0808CDF5037F62CAF';
wwv_flow_imp.g_varchar2_table(10) := '258A002A36AD7D8746F1F3780B177203EF019A45BF9B9DBFF42E5E4B940024D1EA338B3389E32D5CC869C203F5B42A9DC46B0937409534806EE8B6710FBE780D1672EA7B400E340CC9DEB8F03C8F666E808AEE5A1F1D166C6BE62954C868CC0392358337';
wwv_flow_imp.g_varchar2_table(11) := 'CC831BA0E28736C449BD96468DB94298C3E3015967A4407C16C3E5F5C30DD081073726F498CDF55E972804B4E7019B3CC3B879E9761EC3B801DA61CA1B1A089CE12954C868CC030AB634B801A2E0B1340A1EABD6982B84393C1E90E4B9B427F63E97288F';
wwv_flow_imp.g_varchar2_table(12) := '109329CE593352D2EB4EF2CA0B390D7940B6DD6D2C58F6368F45DC2D50D9FCD5E936C97082A7507F91B1CA36B4F4B42336389216DCB95DA5FDCF95F100AD46BFCE6328B757067B0B64B65950D556078BCD8A908020A48527424707FA07E523490FD2919F';
wwv_flow_imp.g_varchar2_table(13) := 'D778BE8DDB238319A05EAB19D5EDF576786212E2D07CEE3C820D811816913438211200F1FC76FA9661F054B5D7C16AB361ECA4F1881F3514156587515B75064186000CB74334C8A2570440EA00C45A9CCAB6B37678C65C3F0E89A353BF577CACF820CE9D';
wwv_flow_imp.g_varchar2_table(14) := 'AEB3B744C3239306D7984800A41C201BA5B338D5560BD6020D1F978EB40923AF527A70FB5EB434342122301429E1F1CA0BD58A060190F29AA8A1314FA7B91B8969C918639CD0A7420ADFC3B75BCBD0DEDA8EB89028C487442B2F580B1A0440CA6AA1A1AB';
wwv_flow_imp.g_varchar2_table(15) := '05E7BB5A11131F8B093F9DEC5299B5C782BD5FEC424F570F86452622D410ACAC702D480B80F86BA1DBDA8B53ADB508080C40E6ECE9D007B94FCFD8D1D08AFDDB4B61D0E9312A2AC5FF676602203E80281A0F275BCFC26CB560E24D99884CF0BC4BAA3958';
wwv_flow_imp.g_varchar2_table(16) := '81AAA395880A0A4372D8103E03B4222500E2AB8986AE66EABADA90322A0D2327797F2E72FFE7C5E8A0F1505A4402C20242F88CD0829400C8FB5A6053F613ADA711181484CC5B6F84CEE0FDDA4E576B27F67CBE0B81FA00EACA867A6F8456240440DED744';
wwv_flow_imp.g_varchar2_table(17) := '6D67235A7B3A91317D12A293F9C3BA1D5DD9D0F021880C0CF3DE102D480880BCAB855EDAE73AD9A26E285380DE80741A50FBE52300F2AEDACE52EBD346AD8FDA4F72581C0DAAC3D556EB7B7D0220CF7D6C1FFBB49C4664620C7EB1FA51CF055DBC6969ED';
wwv_flow_imp.g_varchar2_table(18) := 'C2E645AB10A8F3D3B19000C8730ECE5D684653771BA62FB91D23EE74BD68E8B956A0ECF90F706CFB7EFF9C9109803CAB6AB6DF75BCA506745909E6BFFE24F461419E097AF056EBA1B3F8F0B7EB10161842B143091E4868E81501906795D1DE7B01673A1A';
wwv_flow_imp.g_varchar2_table(19) := '70EDCD5330E9EFE6B814EAAE6F43CBF15A743575203C311A3113526108770DDC478FBC8896DAF3B82666987FAD4E0B803C03A8B6F33C4DDD3B30FBB7F76188719453A1AA0FF761E7DA0FE9CCC0A55742A3C331E3897B10937129C4E34A05475EFB0A7BDF';
wwv_flow_imp.g_varchar2_table(20) := 'DC66DFA9673BF67EF308803CAB2A3678B6C8569836FF06BA007D9F424D07AAB1E5E98D080E0B417AD678840F894453753D8E971E42604810E6FDED5104C4F40D47EB915A7CF8541EA2832390141AEB99515A784B00E4BE161C6B3F23B3AEC5B47FB9DBA9';
wwv_flow_imp.g_varchar2_table(21) := 'C0A78FADC5F99A7ADCF8C0AD084DB87495D9B983D5D8BF651726DE310D19CB6E762AFFF683AB60BD60F6AF352101907B8058D7C5BAB0A98B6EC3A8BB32FB14B0F55A907FEFB3884B4DC014D3AC1FBC23532CD0177FFD3FC4A525E2E77FCA755AE0EEFF7C';
wwv_flow_imp.g_varchar2_table(22) := '1B274B0ED13828CD7F425F0540EE01724CDF6FFDB7071037798402801208A0254E0B3CFAFA0EEC29DCEA5FB1420220F700B153161728E2F0EE358F21283EC2A9C0678FE7A1B1AA0E37DE4F5D58E2D55D58C69C6C4C5CF173A7F2755F1DC597AB0A91181A';
wwv_flow_imp.g_varchar2_table(23) := '83183A4FE6178F00C87D35B101B42EC8807B363DE9F2E5F37B4FE193FF780D41A1C1184DA1AD970FA203820231EF7F1F4560ACF34DD38ECA46BCF7F84BFE35901600B907E8487315A293E270FB8B8FB87DB9CF697C4C04663CFE2BC44CA494002E9EDEA6';
wwv_flow_imp.g_varchar2_table(24) := '4EBC99FB2784D38262AABF2C280A80DC3281234D5548484FC12DAB16BB7F99DEE05948648A6DDD66E49BFE88D080603A8898E8515903FE9200C87515D8E88CFBB1E61AA45E370A3FFDFD7D3EAFAF37EE7AC67E087164A49F049909805C33C192241C2780';
wwv_flow_imp.g_varchar2_table(25) := '46668DA335A07B7C0E105B0BB274F66274B4F3556B9F1BE14D0102200F5BA00C6A819EE99F16C8AF02CC0440EE7F6EF631D0281A033DEFD918C8BDC6BEDF90CD566CCAF983E8C2DC39D0DFB2731C6BAE4644622CEE78C9FD2CCCDDB7BBFA777B70D9C255';
wwv_flow_imp.g_varchar2_table(26) := '744A23986283C420DAA9AFFC092076DEBD92CEBDB338A0FBDEF99D123EDCCA76549CC37BBF7E19AC0B1B1999EC1FDB19A20B735EAF6C13B58AE0611937D8F3ABD57F8FE044CF5788BB6A5B1092ECF981C3BAEDB412FD7CA1BDAC8B398558622AEF8F0CB9';
wwv_flow_imp.g_varchar2_table(27) := '2555CD1704407D7BF3F22C63E15111F64380AEF6C2AED472E6F3726CA30DD4B9CFAF40F828CFB2711C7D6327F66C2E425864383ADB3AFC23319500E86A8058F03C4BD7C2FE4C9F300661D111F866E75E642DB81963E64FF3E8F77BA2B01825AF7FE61574';
wwv_flow_imp.g_varchar2_table(28) := '5F3D9D8F9A032730ED173351B1FFC8F73985349DDD4C00F4431E2E8767D8D8911896910E969AE5EB778B90EAC5549E07A0377EF90C42C3C33079F645488FEEFA160D67EBED79165977A6C9649D02A04B005D9E28CA018FE35F0F7C5182F69636980A9D47';
wwv_flow_imp.g_varchar2_table(29) := '245E8EA2B70039221253E9ACFD88CBCEDA1FDEB11FE7EB1BB59B984A0074A9DA1D870653D38761C40DD7FCA069AA29AF44D5910ACCFEDDFD1892797506B22BFB356F013AF2EA76EC7D6B3BAEA3E3D251571C972EA7EC66CD94DD2C312C163141CEC3493C';
wwv_flow_imp.g_varchar2_table(30) := 'EA5BD57E490074D1A3172CDDA86EAB477C7202C64E9F78959BBB5A3AB0E78BDD18376B12263F7687DB6AF016A07773FF8CEEF64E4C9BFBC368465690CD62C33E2ABBBBB3CBBEC5A1D7D2CC4C0074910547D058F69C9B1010DAF7119C3D5B76DAA7F4776F';
wwv_flow_imp.g_varchar2_table(31) := 'FC47484E02EB1D64790350FB897378FF8997913C3C05E999D7F60967534D030E951CD05E7A3C0110FDC2BFDB718F1E12838C19539CB62E670E9F42E5A11398F5F83D489E31CE652BE40D40075EFC14E59F94B84C54C55AA1AFDFFDD23EB51F418B8C9A79';
wwv_flow_imp.g_varchar2_table(32) := '0440ACFBEAA1EEAB0E570E9CAFAC246B8F19BB3ED886A4B1C3F0B33F3EA40A40D6CE1E14DCFF1CD85AD30DB764BBD4F96D51195A9B5A302E76B866F8810008709C3A1D7DDD58245DE33A6AB072DF519C395983B9AB96233CDDF931644F5BA0CAF7F660D7';
wwv_flow_imp.g_varchar2_table(33) := 'BA8F313E6B226287B93ED67C9CF24DD753BEE9F4E81404E80CDA80480004B4F576E26C4723C64CA404E1635CC7E1F47674A3E4931D1831652CA6FF6B8ED34AF404206B9719EFADF80B6CB40B9F75FB4D6E81385E528EFA9A5A8C2280020540DAB9EEC91B';
wwv_flow_imp.g_varchar2_table(34) := '80582D9FDA7F0CA72BAA31E7F70B11735DDF2D96270039B62EC61BAF476C9AFBED0E01D077BF31ADEDC67B0B10CBF75CF2C957884D757E50B0E2CD6214BF465B194F3F88B849578F597A1ADAF1D6B21710151B8DEB66F57D58F1CA264900344800629F51';
wwv_flow_imp.g_varchar2_table(35) := '7FFC348E7F73045926DA1F335DBD3FE6AE05FAF2C90DA83B5E83C93F9B8AD018CF329309800609406C4A7DACE4201A6BCFD9BFE8CEFF5E8E88D13F1C00BB02A8E22D6A9D5EFDCC2E3B9CF6DBD268BFCD9347003408003277F5A27CE73E7B78075B93E9B6';
wwv_flow_imp.g_varchar2_table(36) := 'F4222C3612B73D978BA0B84B2D8933809A0FD4E0E3A737D833D5B3876DDE26A424624CD604D035A02E391200F939402CB7F3B73BF6A0B7BB179194657E2865996FA1C40B7594782126251EB3FF6BD1F799CBFA02A8F354233E7A6A1DCC243F222AD93E93';
wwv_flow_imp.g_varchar2_table(37) := '622BE00CC288E8484CB8F1061882E93E6B278F00C88F016A39DB8872DA4A90AD3212E8EC3ABB0BD5F138924FB1C38737FEFA9708191A8D2B016AFEF634B6AD7A1317684FEDCA8CAC8EBCD341944328E327531012D9770E2101909F025477B41A270E1EA3';
wwv_flow_imp.g_varchar2_table(38) := '4557898E1CC7F7793581E3CA2777631967573DB1E49D2C0B88DEA047C6D41B28883FE62A5502203F04A882B28BD5569FB58F59585017BB9AC0D973BEBBD57E6F18BB88855DC2C2C637EC94298B6BD6513858348562B84A5FD769EEC269CAC3C802F847D3';
wwv_flow_imp.g_varchar2_table(39) := 'AD874997DD7AC8CA1400F911406CADE770F137F65B067902DC1DF788A5D2652AE15E5CA672F9A5BD5706970980340E505C523CA2E2E81405B50035155530D3E629EF954CBC003117B1E800C7E09A6DB226A426D93DC7EE5D65B33FB19591B366244D594F';
wwv_flow_imp.g_varchar2_table(40) := 'BA1B2FF4D7BF77B0AEA3FDE29A8EE3615D562225BBE4CD98EA18D328B9999075898D741B22EBD22E7F5850996319A0BF7CE4B49C81D84C2D31ADA30D24B97AC03FFE3B03D898A5B9BB1D2C91828E06CAEC2ACA1083B244E24C5707E596567AFF058BD366';
wwv_flow_imp.g_varchar2_table(41) := 'D1926CAACFEC0CD6077243ED137FCBB6BB8D05CBDEE6D12DF10831991DA6BCA1B4DAA1EE9537BCC60839651E90E439C64D4BB7F028E106E8C0831B137ACCE67A9E42858CC63C60936718372FDDCE63153740C50F6D88937A2D8D3C850A198D7940D6198D';
wwv_flow_imp.g_varchar2_table(42) := '058B4B79ACE206A8E8AEF5D161C1B6669E42858CC63C2059338C9B9697F358C50D5079CEDFC23BF5C1ED3C850A196D7940D249E9596FE472CDA8B901AA5CB43EB8A1DBD6A52D57086BB83C60D5251B0B17D7F1C87203B472E54ADDED47D2D8BD91C13C05';
wwv_flow_imp.g_varchar2_table(43) := '0B19CD78A05B176989CC7C798599C7226E80586125A6BCADF4C70C9E82858C663CB0CD98BF6426AF358A002A36E5AD24054FF3162EE406DE03B43EFEEFD9F94B56F25AA208A052D39A99327445BC850BB981F78004DBACACFC65AC27E17A1401544403E9';
wwv_flow_imp.g_varchar2_table(44) := 'B06EFB545E8C83B8DC3FE042DD9DC1BA9859AF2CEEE6B544114017C7416BF301693EAF01426E203D201718F3979A9458A018A0DDF3D74CA560AB5D4A8C10B203E3010A399936B560D96E25A52B0688154E83E9DDA4C875560125560A59D53D4083E7621A';
wwv_flow_imp.g_varchar2_table(45) := '3C4F55AA5815804AE7AF35C992B449A93142BEFF3C20C9F282AC82A534FC50F6A80250D1CC9586B0A4B44A32C54F6E1751E6B441207DA6B3AE66C4ACAD2B2D4ABF4515809811A5F3D7CD9325F91DA50609F97EF08024CFA5F89FF7D528493580EC33B205';
wwv_flow_imp.g_varchar2_table(46) := 'EBFE8762371F53C330A1C3471E90A4178C9B72FF412DEDAA0254B67C7580ADCDB0938CCB52CB40A1473D0F508EEA3D52A4791AEFBE575F96A80A102B609769FD08BD6CDBC78E50A9F7E942930A1EA837E8E4ECC96F2CAD5241D7F72A5407C83E1E32AD9D';
wwv_flow_imp.g_varchar2_table(47) := '24436241DA23D43456E8E2F3004DD9AB28967F5E76C192037C1A9C4BF90420569C3DE4D56CC927C36F51DB68A1CF2B0F7C29071AEECDDEB8F0BC57521EBEEC338058F99B7336EB47EADBFF4ABF80873DB447BCA6A60764AC3A658BF8E77B0BEFB5AAA9F6';
wwv_flow_imp.g_varchar2_table(48) := '725D3E05C85110AD543F4C05BD40FFED3CEF89AFBEF0C7A9B797F6271F32E6E716F8FAF3FB0520F6115FE76C4831E8AC4B20C94BE93F5DE7E1F5F5570F5EFDA7A942D79AAD86B5D30B17F6CB99BD7E03C85167AC5B1BAE6F9F2BC9584133B5D9F4F7FD6E';
wwv_flow_imp.g_varchar2_table(49) := 'C320E3C70A59FA48966CABABAC915B7CD95DF5E5B701ADBCB29CD55136497F3D213409926E122D424EA6FFCF2E9AD048066ECDA166A149C961CA34B38F2CDB4733DD7D3A8B797F66E18AD681B274400172F6D174EA35CC6CE90A8105A1320C21D0CBF4A7';
wwv_flow_imp.g_varchar2_table(50) := '2E4482F547318692A1EFA548C12E58A50B122C5DF473BA106008E9BAFED587D821064D3D9A0448531E12C6B8F480004800A2C803022045EE13C20220C180220F088014B94F080B8004038A3C200052E43E212C00120C28F280004891FB84B0004830A0C8';
wwv_flow_imp.g_varchar2_table(51) := '03022045EE13C20220C180220F088014B94F080B8004038A3CF0FFF0464609F5827F330000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(111559535476847085862)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559527467716085849)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15673693426653
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559527884323085850)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15673693426671
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559528101030085850)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15673693426676
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559528406432085851)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15673693426676
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559528759491085851)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15673693426696
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559529083865085851)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15673693426696
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559529348204085851)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15673693426705
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559529654205085851)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15673693426713
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559529935438085852)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15673693426713
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559530206976085852)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15673693426722
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559530590838085852)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15673693426731
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559530844677085852)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15673693426739
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559531164884085852)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15673693426742
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(111559531424347085853)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15673693426742
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(111559536721960085863)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15673693426987
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(111559537089586085864)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(111559532384725085854)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(111559532524720085854)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(118048507447514782536)
,p_short_name=>'Total Budget'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(118058541562431865663)
,p_short_name=>'Departments'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(118062535672721584151)
,p_short_name=>unistr('\0421ounting Artworks')
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(118071337929071995879)
,p_short_name=>'Increasing The Budget'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(118086533513710134679)
,p_short_name=>'OLD ARTWORKS'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(118116760759997454733)
,p_short_name=>'Search by staff_id'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(118150891658589886703)
,p_short_name=>'Deleting by treatment_id'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(111559533280025085855)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(111559531716672085853)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15673693426752
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(111559532048621085853)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15673693426757
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'prprp'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111559544686641085874)
,p_plug_name=>'prprp'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117838028599335515714)
,p_plug_name=>'New'
,p_title=>'Input Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  ',
'  v_first_name a_staff.first_name%TYPE;',
'  v_last_name  a_staff.last_name%TYPE;',
'  v_staff_id   a_staff.staff_id%TYPE := :P1_STAFF_ID;',
'',
'BEGIN',
'  IF v_staff_id IS NOT NULL THEN',
'    SELECT first_name, last_name',
'    INTO v_first_name, v_last_name',
'    FROM a_staff',
'    WHERE staff_id = v_staff_id; ',
'    ',
'    HTP.P(''Staff Member Found: <b>'' || v_first_name || '' '' || v_last_name || ''</b>'');',
'  END IF;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    HTP.P(''<span style="color:red">Error: Staff member '' || v_staff_id || '' not found.</span>'');',
'  WHEN OTHERS THEN',
'    HTP.P(''<span style="color:red">An unexpected error occurred: '' || SQLERRM || ''</span>'');',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(117838028820352515717)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(117838028599335515714)
,p_button_name=>'BTN_SEARCH_STAFF'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'SEARCH'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117838028798314515716)
,p_name=>'P1_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(117838028599335515714)
,p_prompt=>'Staff Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Total Budget'
,p_alias=>'TOTAL-BUDGET'
,p_step_title=>'Total Budget'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117838029073114515719)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  total_budget NUMBER;',
'BEGIN',
'  SELECT SUM(budget_annual)',
'  INTO total_budget',
'  FROM a_departments;',
'',
'  HTP.P(''<h3>Total Annual Budget: '' || TO_CHAR(total_budget, ''999,999,999.99'') || ''</h3>'');',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118048506872519782535)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(111559532384725085854)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(117838028996737515718)
,p_button_sequence=>10
,p_button_name=>'BTN_TOTAL_BUDGET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Total Budget'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Departments'
,p_alias=>'DEPARTMENTS'
,p_step_title=>'Departments'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118058541075912865663)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(111559532384725085854)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118058541724620865664)
,p_plug_name=>'Departments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(118058542110011865664)
,p_region_id=>wwv_flow_imp.id(118058541724620865664)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(118058543852653865665)
,p_chart_id=>wwv_flow_imp.id(118058542110011865664)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
unistr('    -- 1. \041E\043F\0440\0435\0434\0435\043B\044F\0435\043C \0431\0430\0437\043E\0432\043E\0435 \043D\0430\0437\0432\0430\043D\0438\0435 \0434\0435\043F\0430\0440\0442\0430\043C\0435\043D\0442\0430'),
'    TRIM(SUBSTR(DEPARTMENT_NAME, 1, INSTR(DEPARTMENT_NAME || '' Department '', '' Department '') - 1)) AS Base_Department_Name,',
'    ',
unistr('    -- 2. \0421\0443\043C\043C\0438\0440\0443\0435\043C \0431\044E\0434\0436\0435\0442'),
'    SUM(BUDGET_ANNUAL) AS Total_Annual_Budget',
'FROM',
'    A_DEPARTMENTS',
'GROUP BY',
unistr('    -- 3. \041F\043E\0432\0442\043E\0440\044F\0435\043C \0442\043E \0436\0435 \0441\0430\043C\043E\0435 \0432\044B\0440\0430\0436\0435\043D\0438\0435 \0432 GROUP BY'),
'    TRIM(SUBSTR(DEPARTMENT_NAME, 1, INSTR(DEPARTMENT_NAME || '' Department '', '' Department '') - 1))',
'ORDER BY',
'    Total_Annual_Budget DESC;'))
,p_max_row_count=>100
,p_series_type=>'bar'
,p_items_value_column_name=>'TOTAL_ANNUAL_BUDGET'
,p_group_short_desc_column_name=>'BASE_DEPARTMENT_NAME'
,p_items_label_column_name=>'BASE_DEPARTMENT_NAME'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_gantt_start_date_source=>'DB_COLUMN'
,p_gantt_end_date_source=>'DB_COLUMN'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(118058542688705865665)
,p_chart_id=>wwv_flow_imp.id(118058542110011865664)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>true
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(118058543270650865665)
,p_chart_id=>wwv_flow_imp.id(118058542110011865664)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>unistr('\0421ounting Artworks')
,p_alias=>unistr('\0421OUNTING-ARTWORKS')
,p_step_title=>unistr('\0421ounting Artworks')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117838029112489515720)
,p_plug_name=>'New'
,p_title=>'Input Museum ID'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_museum_id      a_collections.museum_id%TYPE := :P5_MUSEUM_ID;  ',
'    total_artworks   NUMBER;',
'    museum_number    NUMBER;',
'BEGIN',
'    ',
'    IF v_museum_id IS NULL THEN',
'        HTP.P(''Please enter a **Museum ID**.'');',
'        RETURN;',
'    END IF;',
'',
'    ',
'    IF NOT REGEXP_LIKE(v_museum_id, ''^MUS[0-9]{3}$'') THEN',
'        HTP.P(''<span style="color:red">**Input Error:** Invalid Museum ID format. The ID must start with **MUS** followed by three digits (e.g., MUS101).</span>'');',
'        RETURN;',
'    END IF;',
'',
'   ',
'    museum_number := TO_NUMBER(SUBSTR(v_museum_id, 4));',
'',
'    ',
'    SELECT COUNT(*)',
'    INTO total_artworks',
'    FROM a_artworks w',
'    JOIN a_collections c ON w.collection_id = c.collection_id',
'    WHERE c.museum_id = v_museum_id;',
'',
'    ',
'    ',
'    IF total_artworks > 0 THEN',
'        HTP.P(''<b>Number of artworks in museum '' || v_museum_id || '': </b>'' || total_artworks);',
'        ',
'    ELSIF total_artworks = 0 THEN',
'        ',
'        ',
'        IF museum_number >= 1 AND museum_number <= 100 THEN',
'            HTP.P(''<span style="color:orange">**Museum Status:** Museum '' || v_museum_id || '' has no current artworks, museum has been closed.</span>'');',
'            ',
'        ELSE ',
'            HTP.P(''<span style="color:red">**Existence Error:** Museum '' || v_museum_id || '' does not exist.</span>'');',
'            ',
'        END IF;',
'        ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        HTP.P(''<span style="color:red">**Internal Error:** Could not process request. Details: '' || SQLERRM || ''</span>'');',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118062535183816584149)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(111559532384725085854)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(117838029340239515722)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(117838029112489515720)
,p_button_name=>'BTN_COUNT_ART'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Count Artworks'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117838029251195515721)
,p_name=>'P5_MUSEUM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(117838029112489515720)
,p_prompt=>'Museum ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Increasing The Budget'
,p_alias=>'INCREASING-THE-BUDGET'
,p_step_title=>'Increasing The Budget'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117838029410018515723)
,p_plug_name=>'New'
,p_title=>'Budget Adjustment'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department_id a_departments.department_id%TYPE := :P6_DEPT_ID;',
'    v_percent       NUMBER := :P6_PERCENT;',
'    v_new_budget    NUMBER;',
'    v_old_budget    NUMBER; ',
'BEGIN',
'    ',
'    DBMS_OUTPUT.ENABLE(NULL);',
'    DBMS_OUTPUT.PUT_LINE(''START: Budget Update Process Initiated.'');',
'',
'    ',
'    IF v_department_id IS NULL OR v_percent IS NULL THEN',
'        DBMS_OUTPUT.PUT_LINE(''DEBUG: Input missing. P6_DEPT_ID: '' || v_department_id || '', P6_PERCENT: '' || v_percent);',
'        HTP.P(''Please enter Department ID and Percentage.'');',
'        RETURN;',
'    END IF;',
'',
'    DBMS_OUTPUT.PUT_LINE(''DEBUG: Input values confirmed. Dept ID: '' || v_department_id || '', Increase: '' || v_percent || ''%'');',
'',
'    ',
'    BEGIN',
'        SELECT budget_annual INTO v_old_budget',
'        FROM a_departments',
'        WHERE department_id = v_department_id;',
'        ',
'        DBMS_OUTPUT.PUT_LINE(''DEBUG: Current budget (before update): '' || v_old_budget);',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_old_budget := NULL;',
'            DBMS_OUTPUT.PUT_LINE(''DEBUG: Department ID not found during old budget check.'');',
'           ',
'    END;',
'',
'    ',
'    UPDATE a_departments',
'    SET budget_annual = budget_annual * (1 + v_percent/100)',
'    WHERE department_id = v_department_id',
'    RETURNING budget_annual INTO v_new_budget;',
'',
'    DBMS_OUTPUT.PUT_LINE(''DEBUG: UPDATE executed. Rows affected: '' || SQL%ROWCOUNT);',
'',
'    ',
'    IF SQL%ROWCOUNT > 0 THEN',
'        COMMIT; ',
'        ',
'        ',
'        IF v_old_budget IS NOT NULL THEN',
'            DBMS_OUTPUT.PUT_LINE(''DEBUG: Budget difference: '' || (v_new_budget - v_old_budget));',
'        END IF;',
'',
'        ',
unistr('        HTP.P(''<div style="color:green">\2705 Budget for department '' || v_department_id || '),
'              '' successfully increased by '' || v_percent || ''%</div>'');',
'        HTP.P(''<h3>New Annual Budget: '' || TO_CHAR(v_new_budget, ''999,999,999.00'') || ''</h3>'');',
'    ELSE',
'        ',
'        HTP.P(''<div style="color:orange">Warning: Department ID '' || v_department_id || '' not found or no change made.</div>'');',
'    END IF;',
'    ',
'    DBMS_OUTPUT.PUT_LINE(''END: Process finished successfully.'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ',
'        DBMS_OUTPUT.PUT_LINE(''FATAL ERROR: '' || SQLERRM || '' at line '' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);',
'        ROLLBACK; ',
'        HTP.P(''<div style="color:red">Error: '' || SQLERRM || ''</div>'');',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118071337447401995878)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(111559532384725085854)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(117838029714887515726)
,p_button_sequence=>40
,p_button_name=>'BTN_INC_BUDGET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Increase Budget'
,p_show_processing=>'Y'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117838029574877515724)
,p_name=>'P6_DEPT_ID'
,p_item_sequence=>20
,p_prompt=>'Department ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117838029683429515725)
,p_name=>'P6_PERCENT'
,p_item_sequence=>30
,p_prompt=>'Percentage %'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'OLD ARTWORKS'
,p_alias=>'OLD-ARTWORKS'
,p_step_title=>'OLD ARTWORKS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118086532996275134676)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(111559532384725085854)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118086533719404134679)
,p_plug_name=>'OLD ARTWORKS'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'A_ARTWORKS'
,p_query_where=>'year_created < EXTRACT(YEAR FROM SYSDATE) - 100'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>' year_created'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'OLD ARTWORKS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(118086533841446134679)
,p_name=>'OLD ARTWORKS'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'230183122@SDU.EDU.KZ'
,p_internal_uid=>118086533841446134679
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118086537684311134838)
,p_db_column_name=>'ARTWORK_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Artwork ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118086538066519134839)
,p_db_column_name=>'ARTIST_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Artist ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118086538498231134839)
,p_db_column_name=>'TITLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118086538802385134839)
,p_db_column_name=>'YEAR_CREATED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Year Created'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118086539214780134840)
,p_db_column_name=>'MEDIUM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Medium'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118086539620401134840)
,p_db_column_name=>'DIMENSIONS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Dimensions'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118086540042060134840)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118086540486826134841)
,p_db_column_name=>'COLLECTION_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Collection ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(118086563461405136071)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1180865635'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ARTWORK_ID:ARTIST_ID:TITLE:YEAR_CREATED:MEDIUM:DIMENSIONS:DESCRIPTION:COLLECTION_ID'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Search by staff_id'
,p_alias=>'SEARCH-BY-STAFF-ID'
,p_step_title=>'Search by staff_id'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117838030176567515730)
,p_plug_name=>'New'
,p_title=>'Staff Artworks Search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_staff_id a_staff.staff_id%TYPE := :P8_STAFF_ID_ART;',
'  v_found_artworks BOOLEAN := FALSE;',
'  v_staff_name a_staff.first_name%TYPE;',
'  ',
unistr('  -- \041A\0443\0440\0441\043E\0440 \0442\0435\043F\0435\0440\044C \0438\0441\043F\043E\043B\044C\0437\0443\0435\0442 c.start_date \0438 \0441\043E\0440\0442\0438\0440\0443\0435\0442 \043F\043E \043D\0435\0439'),
'  CURSOR cur_staff_artworks IS',
'    SELECT DISTINCT',
unistr('        a.artwork_id, a.title, c.start_date  -- \0418\0421\041F\041E\041B\042C\0417\0423\0415\041C start_date'),
'    FROM a_artworks a',
'    JOIN a_conservation_treatment c ON a.artwork_id = c.artwork_id',
'    WHERE c.staff_id = v_staff_id',
unistr('    ORDER BY c.start_date DESC; -- \0421\041E\0420\0422\0418\0420\0423\0415\041C \043F\043E start_date'),
'    ',
'  r cur_staff_artworks%ROWTYPE;',
'BEGIN',
'  IF v_staff_id IS NOT NULL THEN',
'    ',
unistr('    -- 1. \041F\0420\041E\0412\0415\0420\041A\0410: \0421\0443\0449\0435\0441\0442\0432\0443\0435\0442 \043B\0438 \044D\0442\043E\0442 \0441\043E\0442\0440\0443\0434\043D\0438\043A?'),
'    SELECT first_name INTO v_staff_name',
'    FROM a_staff',
'    WHERE staff_id = v_staff_id; ',
'    ',
'    HTP.P(''<h3>Artworks Treated by Staff Member '' || v_staff_name || '' ('' || v_staff_id || ''):</h3>'');',
unistr('    -- \041E\0431\043D\043E\0432\043B\044F\0435\043C \0437\0430\0433\043E\043B\043E\0432\043E\043A \0442\0430\0431\043B\0438\0446\044B'),
'    HTP.P(''<table border="1"><tr><th>Artwork ID</th><th>Title</th><th>Start Date</th></tr>''); ',
'    ',
unistr('    -- 2. \041E\0421\041D\041E\0412\041D\041E\0419 \041A\0423\0420\0421\041E\0420: \041F\043E\0438\0441\043A \0440\0430\0431\043E\0442'),
'    OPEN cur_staff_artworks;',
'    LOOP',
'      FETCH cur_staff_artworks INTO r;',
'      EXIT WHEN cur_staff_artworks%NOTFOUND;',
'      ',
'      v_found_artworks := TRUE;',
unistr('      -- \0412\044B\0432\043E\0434\0438\043C start_date'),
'      HTP.P(''<tr><td>'' || r.artwork_id || ''</td><td>'' || r.title || ''</td><td>'' || TO_CHAR(r.start_date, ''YYYY-MM-DD'') || ''</td></tr>'');',
'    END LOOP;',
'    CLOSE cur_staff_artworks;',
'    ',
'    HTP.P(''</table>'');',
'    ',
'    IF NOT v_found_artworks THEN',
'      HTP.P(''<p>Staff Member '' || v_staff_name || '' found, but has no recorded treatment logs for any artworks.</p>'');',
'    END IF;',
'  ELSE',
'    HTP.P(''<div style="color:orange">Please enter a Staff ID to perform the search.</div>'');',
'  END IF;',
'',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
unistr('      HTP.P(''<div style="color:red">\D83D\DED1 ERROR: Staff ID '' || v_staff_id || '' does not exist in the database (A_STAFF table).</div>'');'),
'  WHEN OTHERS THEN',
'    HTP.P(''<div style="color:red">An unexpected error occurred: '' || SQLERRM || ''</div>'');',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118116760293151454732)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(111559532384725085854)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(117838030394372515732)
,p_button_sequence=>30
,p_button_name=>'BTN_STAFF_ART_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Find Artworks'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117838030213767515731)
,p_name=>'P8_STAFF_ID_ART'
,p_item_sequence=>20
,p_prompt=>'Staff Id '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Deleting by treatment_id'
,p_alias=>'DELETING-BY-TREATMENT-ID'
,p_step_title=>'Deleting by treatment_id'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117838030426285515733)
,p_plug_name=>'New'
,p_title=>'Delete Treatment Log'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_treatment_id a_conservation_treatment.treatment_id%TYPE := :P13_TREAT_ID_DEL; ',
'BEGIN',
'  IF v_treatment_id IS NOT NULL THEN',
unistr('    -- \041B\043E\0433\0438\043A\0430: \0423\0434\0430\043B\0435\043D\0438\0435 \0437\0430\043F\0438\0441\0438 DML'),
'    DELETE FROM a_conservation_treatment',
'    WHERE treatment_id = v_treatment_id;',
'    ',
unistr('    -- \041F\0440\043E\0432\0435\0440\044F\0435\043C, \0431\044B\043B\0430 \043B\0438 \0441\0442\0440\043E\043A\0430 \0443\0434\0430\043B\0435\043D\0430'),
'    IF SQL%ROWCOUNT > 0 THEN',
'        COMMIT;',
unistr('        HTP.P(''<b style="color:green">\2705 Successfully deleted Treatment ID: '' || v_treatment_id || ''</b>'');'),
'    ELSE',
'        HTP.P(''<div style="color:orange">Warning: Treatment ID '' || v_treatment_id || '' not found. No records deleted.</div>'');',
'    END IF;',
'  ELSE',
'     HTP.P(''<div style="color:orange">Please enter a Treatment ID to delete.</div>'');',
'  END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        HTP.P(''<div style="color:red">Error during deletion: '' || SQLERRM || ''</div>'');',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118150891184696886702)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(111559532384725085854)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(117838030618603515735)
,p_button_sequence=>30
,p_button_name=>'BTN_DELETE_TREAT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete Log'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117838030578679515734)
,p_name=>'P13_TREAT_ID_DEL'
,p_item_sequence=>20
,p_prompt=>'Treatment ID to  Delete'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'prprp - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111559537675275085867)
,p_plug_name=>'login'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_location=>null
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111559539378022085869)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(111559537675275085867)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111559538144234085868)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111559537675275085867)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111559538569835085868)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(111559537675275085867)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111559538935392085869)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(111559537675275085867)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(111559541557902085871)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>111559541557902085871
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(111559542044518085871)
,p_page_process_id=>wwv_flow_imp.id(111559541557902085871)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(111559542579976085871)
,p_page_process_id=>wwv_flow_imp.id(111559541557902085871)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(111559539624389085869)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>111559539624389085869
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(111559540102820085870)
,p_page_process_id=>wwv_flow_imp.id(111559539624389085869)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(111559540640441085870)
,p_page_process_id=>wwv_flow_imp.id(111559539624389085869)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(111559541128149085871)
,p_page_process_id=>wwv_flow_imp.id(111559539624389085869)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(111559543433289085872)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>111559543433289085872
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(111559543074065085872)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>111559543074065085872
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(118027609316366462606)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
