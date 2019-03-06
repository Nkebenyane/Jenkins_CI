prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.05.24'
,p_release=>'18.2.0.00.12'
,p_default_workspace_id=>4778316873529874
,p_default_application_id=>108
,p_default_owner=>'LEARNING_SCHEMA'
);
end;
/
 
prompt APPLICATION 108 - Sample Application
--
-- Application Export:
--   Application:     108
--   Name:            Sample Application
--   Date and Time:   14:27 Wednesday March 6, 2019
--   Exported By:     LEARNING_SCHEMA
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     250138532787597
--

-- Application Statistics:
--   Pages:                     23
--     Items:                   66
--     Computations:             1
--     Validations:             13
--     Processes:               37
--     Regions:                 46
--     Buttons:                 48
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--       Items:                  2
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 6
--       Lists:                  4
--       Breadcrumbs:            1
--         Entries:             19
--       NavBar Entries:         3
--     Security:
--       Authentication:         1
--       Authorization:          3
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 8
--         Region:              25
--         Label:                4
--         List:                 8
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               5
--         Report:               7
--       LOVs:                   5
--       Shortcuts:              2
--       Plug-ins:               1
--     Globalization:
--     Reports:
--     E-Mail:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,108)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'LEARNING_SCHEMA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample Application')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'108')
,p_page_view_logging=>'YES'
,p_checksum_salt_last_reset=>'20190213092336'
,p_bookmark_checksum_function=>'MD5'
,p_max_session_length_sec=>28800
,p_html_escaping_mode=>'B'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'SESSION'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Created 08/12/2004 11:25:08 AM'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(803872233016759771)
,p_populate_roles=>'A'
,p_logout_url=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1'
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Sample Application'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_last_updated_by=>'SYSTEM'
,p_last_upd_yyyymmddhh24miss=>'20190213092336'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/tasks
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(802796546338181900)
,p_name=>'Tasks'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(827794852480546927)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Enter a New Order'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(802796950494183080)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add a New Customer'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(803059534749992280)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Add a New Product'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:::'
,p_security_scheme=>wwv_flow_api.id(803008954376789774)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
end;
/
prompt --application/shared_components/navigation/lists/administration
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(802877343755294669)
,p_name=>'Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(804024526445234005)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Charts'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(802877747218295729)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Manage Users'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
);
end;
/
prompt --application/shared_components/navigation/lists/order_wizard
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(819657848186779026)
,p_name=>'Order Wizard'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(819658254073780696)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Identify Customer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(845356413957425846)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Create Customer'
,p_list_item_disp_cond_type=>'SQL_EXPRESSION'
,p_list_item_disp_condition=>'NVL(:P11_CUSTOMER_OPTIONS,''EXISTING'') = ''NEW'''
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(819667626893810662)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Select Items'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(827562449355719810)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Order Summary'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
end;
/
prompt --application/shared_components/navigation/lists/report_tabs
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(830918636524495673)
,p_name=>'Report Tabs'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(830928734493523515)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Customer Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(830928430337522284)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Sales by Category and Product'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(830919544489497968)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sales by Category / Month'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(839429400499312474)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Order Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(845775927414868504)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Customer Map'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(845783712317949277)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Product Order Tree'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(11604201123717981)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(11604551585717981)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(11864155004245817)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(11864759743245867)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(11864888286245868)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(11865168536245868)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(11865543070245898)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations/edit_products
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(803008954376789774)
,p_name=>'Edit Products'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>'select 1 from demo_users where user_name = :APP_USER and products = ''Y'''
,p_error_message=>'You are not authorized to edit Product Information.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/verify_order_ownership
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(803812329414323548)
,p_name=>'Verify Order Ownership'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number;',
'begin',
'  select count(*) into l_count from demo_orders ',
'    where order_id = :P29_ORDER_ID and user_id = ',
'    (select user_id from demo_users where user_name = :APP_USER);',
'  if l_count > 0 or :APP_USER = ''ADMIN'' then',
'    return true;',
'  else',
'    :P29_ORDER_ID := 1;',
'    return false;',
'  end if;',
'end;'))
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'You are not authorized to view this order!<br />',
'Click <a href="f?p=&APP_ID.:4:&SESSION.">here</a> to continue'))
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/admin_users
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(830897547943423319)
,p_name=>'Admin Users'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>'select 1 from demo_users where user_name = :APP_USER and admin_user = ''Y'''
,p_error_message=>'You need to be an Admin User in order to view this page.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(802426140116191600)
,p_icon_sequence=>10
,p_icon_subtext=>'Print'
,p_icon_target=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.::::YES'
,p_icon_image_alt=>'Print'
,p_nav_entry_is_feedback_yn=>'N'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(845813702147371160)
,p_icon_sequence=>10
,p_icon_subtext=>'Feedback'
,p_icon_target=>'javascript:popupURL(''f?p=&APP_ID.:102:&SESSION.:::102:P102_APPLICATION_ID,P102_PAGE_ID:&APP_ID.,&APP_PAGE_ID.'');'
,p_nav_entry_is_feedback_yn=>'Y'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(802426038652191599)
,p_icon_sequence=>20
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_nav_entry_is_feedback_yn=>'N'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(802426625439191755)
,p_name=>'FSP_AFTER_LOGIN_URL'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(832652640373794223)
,p_name=>'G_PAGE_INFO'
);
end;
/
prompt --application/shared_components/logic/application_computations
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
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(802425554684191593)
,p_tab_set=>'TS1'
,p_tab_sequence=>1
,p_tab_name=>'T_HOME'
,p_tab_text=>'Home'
,p_tab_step=>1
,p_tab_also_current_for_pages=>'15'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(802425635520191597)
,p_tab_set=>'TS1'
,p_tab_sequence=>2
,p_tab_name=>'T_CUSTOMERS'
,p_tab_text=>'Customers'
,p_tab_step=>2
,p_tab_also_current_for_pages=>'7'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(802425754695191598)
,p_tab_set=>'TS1'
,p_tab_sequence=>3
,p_tab_name=>'T_PRODUCTS'
,p_tab_text=>'Products'
,p_tab_step=>3
,p_tab_also_current_for_pages=>'6'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(802425828762191598)
,p_tab_set=>'TS1'
,p_tab_sequence=>4
,p_tab_name=>'T_ORDERS'
,p_tab_text=>'Orders'
,p_tab_step=>4
,p_tab_also_current_for_pages=>'11,12,14,29,14,18'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(802425934978191599)
,p_tab_set=>'TS1'
,p_tab_sequence=>5
,p_tab_name=>'T_CHARTS'
,p_tab_text=>'Reports'
,p_tab_step=>17
,p_tab_also_current_for_pages=>'5,10,16,17,13,19'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(830953852940585560)
,p_tab_set=>'TS1'
,p_tab_sequence=>15
,p_tab_name=>'T_ADMIN'
,p_tab_text=>'Administration'
,p_tab_step=>8
,p_tab_also_current_for_pages=>'9'
,p_security_scheme=>wwv_flow_api.id(830897547943423319)
);
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/categories
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(803350829703552101)
,p_lov_name=>'CATEGORIES'
,p_lov_query=>'.'||wwv_flow_api.id(803350829703552101)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(803351147376552104)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Mens'
,p_lov_return_value=>'Mens'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(803351348851552106)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Womens'
,p_lov_return_value=>'Womens'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(803351524004552106)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Accessories'
,p_lov_return_value=>'Accessories'
);
end;
/
prompt --application/shared_components/user_interface/lovs/products
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(804635122821046702)
,p_lov_name=>'PRODUCTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name d, product_id r from demo_product_info',
'order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/products_with_price
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(827499351491124344)
,p_lov_name=>'PRODUCTS WITH PRICE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select htf.escape_sc(product_name) || '' [$'' || list_price || '']'' d, product_id r from demo_product_info',
'order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/states
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(803902623723010056)
,p_lov_name=>'STATES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(state_name) display_value, st return_value from   demo_states',
'order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/y_or_n
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(803003947665778439)
,p_lov_name=>'Y OR N'
,p_lov_query=>'.'||wwv_flow_api.id(803003947665778439)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(803004238685778442)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(803004448406778444)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'N'
);
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/main_menu
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(802683840011773217)
,p_name=>'Main Menu'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(802687635293781329)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(802743132308139975)
,p_parent_id=>wwv_flow_api.id(802687635293781329)
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(802747952179155180)
,p_parent_id=>wwv_flow_api.id(802743132308139975)
,p_short_name=>'Customer Details'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(802875527478290052)
,p_parent_id=>wwv_flow_api.id(802687635293781329)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(803069334928030215)
,p_parent_id=>wwv_flow_api.id(802687635293781329)
,p_short_name=>'Products'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(803069641161032045)
,p_parent_id=>wwv_flow_api.id(803069334928030215)
,p_short_name=>'Product Details'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(803187823022367357)
,p_parent_id=>wwv_flow_api.id(802687635293781329)
,p_short_name=>'Orders'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(803796022479245792)
,p_parent_id=>wwv_flow_api.id(803187823022367357)
,p_short_name=>'Order Details'
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(819651844760730699)
,p_parent_id=>wwv_flow_api.id(803187823022367357)
,p_short_name=>'Enter New Order'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(819716440848947155)
,p_parent_id=>wwv_flow_api.id(803187823022367357)
,p_short_name=>'Enter New Order'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(827738726124236520)
,p_parent_id=>wwv_flow_api.id(803187823022367357)
,p_short_name=>'Order Summary'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(831028933481750270)
,p_parent_id=>wwv_flow_api.id(802875527478290052)
,p_short_name=>'Reset Password'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(831030841792752724)
,p_parent_id=>wwv_flow_api.id(802687635293781329)
,p_short_name=>'Reports'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(831033834997760211)
,p_parent_id=>wwv_flow_api.id(802687635293781329)
,p_short_name=>'Reports'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(831065236223874144)
,p_parent_id=>wwv_flow_api.id(802687635293781329)
,p_short_name=>'Reports'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(839296901425846923)
,p_parent_id=>wwv_flow_api.id(802687635293781329)
,p_short_name=>'Reports'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(845390919509798778)
,p_parent_id=>wwv_flow_api.id(803187823022367357)
,p_short_name=>'Enter New Order'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(845765526044705008)
,p_parent_id=>wwv_flow_api.id(802687635293781329)
,p_short_name=>'Reports'
,p_link=>'f?p=&FLOW_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(845773699356833295)
,p_parent_id=>wwv_flow_api.id(802687635293781329)
,p_short_name=>'Reports'
,p_link=>'f?p=&FLOW_ID.:19:&SESSION.'
,p_page_id=>19
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(845278819882030208)
,p_theme_id=>4
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="login">',
'  <div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'  <div id="login-main">#REGION_POSITION_02##BODY##REGION_POSITION_03#</div>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_right_sidebar_optional_tablebased
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(845279924951030213)
,p_theme_id=>4
,p_name=>'No Tabs - Right Sidebar (optional / table-based)'
,p_internal_name=>'NO_TABS_RIGHT_SIDEBAR_OPTIONAL_/_TABLEBASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_left_sidebar_fixedwidth_div_based
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(845280207803030214)
,p_theme_id=>4
,p_name=>'One Level Tabs - Left Sidebar (fixed-width / DIV based)'
,p_internal_name=>'ONE_LEVEL_TABS_LEFT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
''))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_left_and_right_sidebar_fixedwidth_div_left_and_optional_tablebased_right
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(845280515917030214)
,p_theme_id=>4
,p_name=>'One Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_internal_name=>'ONE_LEVEL_TABS_LEFT_AND_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_LEFT_AND_OPTIONAL_TABLEBASED_RIGHT'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
''))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_fixedwidth_div_based
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(845280806887030215)
,p_theme_id=>4
,p_name=>'One Level Tabs - Right Sidebar (fixed-width / DIV based)'
,p_internal_name=>'ONE_LEVEL_TABS_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
''))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_optional_tablebased
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(845281113520030216)
,p_theme_id=>4
,p_name=>'One Level Tabs - Right Sidebar (optional / table-based)'
,p_internal_name=>'ONE_LEVEL_TABS_RIGHT_SIDEBAR_OPTIONAL_/_TABLEBASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="navbar-link">#TEXT#</a></div>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/popup
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(845281400859030217)
,p_theme_id=>4
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0.css" type="text/css" />',
'</head>',
'<body #ONLOAD# class="pop-up-body">#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top"><div class="t1messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/printer_friendly
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(845281714843030218)
,p_theme_id=>4
,p_name=>'Printer Friendly'
,p_internal_name=>'PRINTER_FRIENDLY'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-sidebar" style="padding-right: 10px;">#REGION_POSITION_02#</td>     ',
'        <td class="tbl-main" width="100%">#BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
end;
/
prompt --application/shared_components/user_interface/templates/button/html_image_legacy_apex_5_migration
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(11864343478245831)
,p_template_name=>'HTML image (legacy - APEX 5 migration)'
,p_internal_name=>'HTML_IMAGE_LEGACY_APEX_5_MIGRATION'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<a href="#LINK#" id="#BUTTON_ID#" title="#LABEL#"><img src="#BUTTON_CSS_CLASSES#" alt="#LABEL#" border="#" #BUTTON_ATTRIBUTES# /></a>'))
,p_hot_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<a href="#LINK#" id="#BUTTON_ID#" title="#LABEL#"><img src="#BUTTON_CSS_CLASSES#" alt="#LABEL#" border="#" #BUTTON_ATTRIBUTES# /></a>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/button/html_button_legacy_apex_5_migration
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(11864394917245831)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_internal_name=>'HTML_BUTTON_LEGACY_APEX_5_MIGRATION'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(845283214399030223)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#LINK#" class="button-default" type="button">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_alternative_1_hot_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(845283418604030224)
,p_template_name=>'Button, Alternative 1 - Hot Button'
,p_internal_name=>'BUTTON,_ALTERNATIVE_1_HOT_BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#LINK#" class="button-alt1" type="button">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_alternative_2
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(845283614372030224)
,p_template_name=>'Button, Alternative 2'
,p_internal_name=>'BUTTON,_ALTERNATIVE_2'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#LINK#" class="button-alt2" type="button">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'XP Square FFFFFF'
,p_theme_id=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/region/borderless_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845284001648030225)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">#TITLE#</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>',
'<div class="clear"></div>'))
,p_page_plug_template_name=>'Borderless Region'
,p_internal_name=>'BORDERLESS_REGION'
,p_theme_id=>4
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
end;
/
prompt --application/shared_components/user_interface/templates/region/bracketed_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845284317156030227)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="bracketed-region brackets" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bk-top">',
'    <div class="bk-top-r">',
'      <div class="bk-title">#TITLE#</div>',
'      <div class="bk-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'    </div>',
'  </div>',
'  <div class="bk-body">#BODY#</div>',
'  <div class="bk-bottom">',
'    <div class="bk-bottom-r">&nbsp;</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_internal_name=>'BRACKETED_REGION'
,p_theme_id=>4
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content with a bracket UI.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
end;
/
prompt --application/shared_components/user_interface/templates/region/breadcrumb_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845284601430030228)
,p_layout=>'TABLE'
,p_template=>'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_internal_name=>'BREADCRUMB_REGION'
,p_theme_id=>4
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_region_with_title
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845284902131030228)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">#TITLE#</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_internal_name=>'BUTTON_REGION_WITH_TITLE'
,p_theme_id=>4
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_region_without_title
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845285212262030230)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">&nbsp;</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_internal_name=>'BUTTON_REGION_WITHOUT_TITLE'
,p_theme_id=>4
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/chart_list
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845285506252030231)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">',
'     <div class="rc-image"><img src="#IMAGE_PREFIX#themes/theme_4/images/report_icon.png" alt="" /></div>',
'      <div class="rc-content">#BODY#</div>',
'<div class="clear"></div>',
'</div>',
'</div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Chart List'
,p_internal_name=>'CHART_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/chart_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845285826252030232)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Chart Region'
,p_internal_name=>'CHART_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/form_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845286105746030234)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">',
'#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Form Region'
,p_internal_name=>'FORM_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>4
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hide_and_show_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845286403396030234)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="hide-show-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="hide-show-top">',
'    <div class="hide-show-title"><a style="margin-left:5px;" href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif'',''#IMAGE_PREFIX#themes/theme_4/rollup_minus_dgray.gif'''
||');" class="t1HideandShowRegionLink"><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" ',
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a> #TITLE#</div>',
'    <div class="hide-show-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="hide" id="region#REGION_SEQUENCE_ID#">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_internal_name=>'HIDE_AND_SHOW_REGION'
,p_theme_id=>4
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/navigation_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845286697686030235)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    <h3>#TITLE#</h3>',
'  <div>',
'    #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Navigation Region'
,p_internal_name=>'NAVIGATION_REGION'
,p_theme_id=>4
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/navigation_region_alternative_1
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845287018417030236)
,p_layout=>'TABLE'
,p_template=>'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_internal_name=>'NAVIGATION_REGION,_ALTERNATIVE_1'
,p_theme_id=>4
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/nested_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845287324494030237)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-nested" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'	<div class="nr-top">',
'		<div class="nr-top-r">',
'    <div class="nr-title">#TITLE#</div>',
'    <div class="nr-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'		</div>',
'	</div>',
'	<div class="nr-body">',
'		<div class="nr-content-main">',
'			#BODY#',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Nested Region'
,p_internal_name=>'NESTED_REGION'
,p_theme_id=>4
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
end;
/
prompt --application/shared_components/user_interface/templates/region/region_without_buttons_and_titles
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845287611857030238)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_internal_name=>'REGION_WITHOUT_BUTTONS_AND_TITLES'
,p_theme_id=>4
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/region_without_title
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845287913442030239)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">&nbsp;</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Title'
,p_internal_name=>'REGION_WITHOUT_TITLE'
,p_theme_id=>4
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/report_filter_single_row
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845288203966030240)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tbody>',
'<tr>',
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_find.png" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>',
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>',
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>',
'</tr>',
'<tr><td class="apex_finderbar_left_middle"><br /></td></tr>',
'<tr>',
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_internal_name=>'REPORT_FILTER_SINGLE_ROW'
,p_theme_id=>4
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/report_list
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845288528254030241)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'    <div class="rc-content-main">',
'    #BODY#',
'    </div>',
'  </div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Report List'
,p_internal_name=>'REPORT_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845288814866030242)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> '))
,p_page_plug_template_name=>'Reports Region'
,p_internal_name=>'REPORTS_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region_100_width
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845289115497030243)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region float-left-100pct" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>',
''))
,p_page_plug_template_name=>'Reports Region 100% Width'
,p_internal_name=>'REPORTS_REGION_100%_WIDTH'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region_alternative_1
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845289399727030244)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div>',
'<div class="clear"></div>',
'</div>',
'</div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_internal_name=>'REPORTS_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/sidebar_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845289729551030245)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sidebar-region">',
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> ',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_internal_name=>'SIDEBAR_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>4
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>',
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#FF0000" height="16">',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">',
'              <tr>',
'                <td align=middle valign="top">',
'                  <div align="center">',
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">',
'                      <b>#TITLE# </b></font></div>',
'                </td>',
'              </tr>',
'            </table>',
'          </td>',
'        </tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0">',
'   <tr>',
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />',
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">',
'              <tr>',
'                <td colspan="2">',
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">',
'                    <tr>',
'                      <td>&nbsp;</td>',
'                      <td valign="top" width="106">',
'                        <P><FONT face="arial, helvetica" size="1">',
'                            #BODY#',
'                           </font>',
'                        </P>',
'                      </td>',
'                    </tr>',
'                  </table>',
'            </table>',
'          </td>',
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'      </table>',
'      <table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>',
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'</table>',
''))
);
end;
/
prompt --application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845290007208030246)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sidebar-region">',
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> ',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_internal_name=>'SIDEBAR_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>4
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/sidebar_region_alternative_2
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845290299014030247)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sidebar-region">',
'<div class="rounded-corner-region-alt2" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> ',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 2'
,p_internal_name=>'SIDEBAR_REGION,_ALTERNATIVE_2'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>4
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>',
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#FF0000" height="16">',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">',
'              <tr>',
'                <td align=middle valign="top">',
'                  <div align="center">',
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">',
'                      <b>#TITLE# </b></font></div>',
'                </td>',
'              </tr>',
'            </table>',
'          </td>',
'        </tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0">',
'   <tr>',
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />',
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">',
'              <tr>',
'                <td colspan="2">',
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">',
'                    <tr>',
'                      <td>&nbsp;</td>',
'                      <td valign="top" width="106">',
'                        <P><FONT face="arial, helvetica" size="1">',
'                            #BODY#',
'                           </font>',
'                        </P>',
'                      </td>',
'                    </tr>',
'                  </table>',
'            </table>',
'          </td>',
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'      </table>',
'      <table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>',
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'</table>',
''))
);
end;
/
prompt --application/shared_components/user_interface/templates/region/top_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845290614975030249)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top">',
'    <div class="rc-gray-top-r"></div>',
'  </div>',
'  <div class="rc-body">',
'    <div class="rc-body-r">',
'      <div class="rc-content-main">',
'        <div class="rc-left">',
'          #BODY#',
'        </div>',
'        <div class="rc-right">',
'          #CLOSE##COPY##DELETE##CHANGE##EDIT##PREVIOUS##NEXT##CREATE##EXPAND#',
'        </div>',
'        <div class="clear"></div>',
'      </div>',
'    </div>',
'  </div>',
'  <div class="rc-bottom">',
'    <div class="rc-bottom-r"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Top Bar'
,p_internal_name=>'TOP_BAR'
,p_theme_id=>4
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845290826127030250)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Region'
,p_internal_name=>'WIZARD_REGION'
,p_theme_id=>4
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_region_with_icon
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(845291098827030251)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_internal_name=>'WIZARD_REGION_WITH_ICON'
,p_theme_id=>4
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/button_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(845291398054030252)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="#LINK#" class="button-alt1" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="#LINK#" class="button-default" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>4
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="button-list">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(845292313767030256)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="list-item-current">',
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="list-item-current">',
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_internal_name=>'HORIZONTAL_IMAGES_WITH_LABEL_LIST'
,p_theme_id=>4
,p_theme_class_id=>4
,p_list_template_before_rows=>'<div class="horizontal-images-list">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(845292598673030257)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_internal_name=>'HORIZONTAL_LINKS_LIST'
,p_theme_id=>4
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/pull_down_menu_with_image
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(845293217356030260)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_internal_name=>'PULL_DOWN_MENU_WITH_IMAGE'
,p_theme_id=>4
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(thi'
||'s,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(th'
||'is,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_ordered_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(845294098227030264)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_internal_name=>'VERTICAL_ORDERED_LIST'
,p_theme_id=>4
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_sidebar_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(845294397213030265)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_internal_name=>'VERTICAL_SIDEBAR_LIST'
,p_theme_id=>4
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="vertical-sidebar-list">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(845294729377030266)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITH_BULLETS'
,p_theme_id=>4
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(845295319092030269)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Wizard Progress List'
,p_internal_name=>'WIZARD_PROGRESS_LIST'
,p_theme_id=>4
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="wizard-progress-list" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_between_items=>'<li class="progress-indicator">&nbsp;</li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/fixed_headers
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(845296122738030273)
,p_row_template_name=>'Fixed Headers'
,p_internal_name=>'FIXED_HEADERS'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>'
,p_row_template2=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data-alt" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#',
'<tr>',
'<td><div class="fixed-header-report"><table cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody></table></div><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_4/images/paginate_next.gif" alt="Next"></a>',
''))
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_4/images/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_4/images/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_4/images/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#b8cbd9'
,p_row_style_checked=>'#b8cbd9'
,p_theme_id=>4
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(845296122738030273)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/horizontal_border
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(845296604145030275)
,p_row_template_name=>'Horizontal Border'
,p_internal_name=>'HORIZONTAL_BORDER'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" cellspacing="0" border="0" class="report-standard" summary="">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_4/paginate_next.gif" alt="Next"></a>',
''))
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_4/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_4/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_4/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>4
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(845296604145030275)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/one_column_unordered_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(845297112654030278)
,p_row_template_name=>'One Column Unordered List'
,p_internal_name=>'ONE_COLUMN_UNORDERED_LIST'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#',
'<tr><td><ul class="t1OneColumnUnorderedList">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_4/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_4/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_4/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_4/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>4
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(845297112654030278)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(845297627456030280)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="report-standard">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_4/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_4/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_4/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_4/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>4
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(845297627456030280)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/standard_alternating_row_colors
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(845298115706030281)
,p_row_template_name=>'Standard, Alternating Row Colors'
,p_internal_name=>'STANDARD,_ALTERNATING_ROW_COLORS'
,p_row_template1=>'<td class="data"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template2=>'<td class="dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#<tr><td>',
'<table border="0" cellpadding="0" cellspacing="0" class="report-standard-alternatingrowcolors" summary="" >'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_4/images/paginate_next.gif" alt="Next"></a>',
''))
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_4/images/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_4/images/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_4/images/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>4
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(845298115706030281)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/two_column_portlet
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(845298618810030283)
,p_row_template_name=>'Two Column Portlet'
,p_internal_name=>'TWO_COLUMN_PORTLET'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="report-row">',
'  <div class="report-col-hdr">#1#</div>',
'  <div class="report-col-val">#2#</div>',
'</div>'))
,p_row_template_before_rows=>'<div class="two-col-report-portlet" #REPORT_ATTRIBUTES# id="#REGION_ID#">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(845298910001030284)
,p_row_template_name=>'Value Attribute Pairs'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="report-row">',
'  <div class="report-col-hdr">#COLUMN_HEADER#</div>',
'  <div class="report-col-val">#COLUMN_VALUE#</div>',
'</div>'))
,p_row_template_before_rows=>'<div class="two-col-report-portlet">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/no_label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(845299225145030285)
,p_template_name=>'No Label'
,p_internal_name=>'NO_LABEL'
,p_template_body1=>'<span class="no-label">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>4
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(845299329513030285)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="optional">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>4
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_with_help
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(845299420613030286)
,p_template_name=>'Optional with help'
,p_internal_name=>'OPTIONAL_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>4
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_with_help
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(845299620791030286)
,p_template_name=>'Required with help'
,p_internal_name=>'REQUIRED_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_4/images/required.gif" alt="Required Field Icon" tabindex="999" /><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SE'
||'SSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>4
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(845299698474030286)
,p_name=>'Breadcrumb Menu'
,p_internal_name=>'BREADCRUMB_MENU'
,p_before_first=>'<div id="breadcrumbs"><ul class="breadcrumb-list">'
,p_current_page_option=>'<li class="current">#NAME#</li>'
,p_non_current_page_option=>'<li class="noncurrent"><a href="#LINK#">#NAME#</a></li>'
,p_between_levels=>'<li class="sep">&rsaquo;</li>'
,p_after_last=>'</ul></div><div class="clear"></div>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>4
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(845300524319030288)
,p_popup_icon=>'#IMAGE_PREFIX#list_gray.gif'
,p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon"><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_4/css/theme_4_0.css" type="text/css">',
'',
'',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="pop-up-lov"'
,p_before_field_text=>'<div class="t1PopupHead">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next >'
,p_prev_button_text=>'< Previous'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="t1PopupBody">'
,p_theme_id=>4
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(845299915210030286)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>'<th class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#WTITLE#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_cust_day_of_week_format=>'<th class="DayOfWeek">#IDAY#</th>'
,p_cust_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_cust_day_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="Day" valign="top">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="Today">'
,p_cust_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_cust_nonday_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="NonDay" valign="top">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_cust_weekend_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="WeekendDay">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th class="Hour">'
,p_cust_time_close_format=>'<br /></th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_cust_wk_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">'
,p_cust_wk_month_close_format=>'</table></td></tr></table>'
,p_cust_wk_day_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Day" valign="top">'
,p_cust_wk_day_close_format=>'<br /></td>'
,p_cust_wk_today_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Today" valign="top">'
,p_cust_wk_weekend_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" valign="top" class="NonDay">'
,p_cust_wk_weekend_close_format=>'<br /></td>'
,p_cust_month_day_height_pix=>'75'
,p_cust_week_day_width_per=>'14'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>4
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(845300617057030288)
,p_theme_id=>4
,p_theme_name=>'Theme 4 (Topaz)'
,p_theme_internal_name=>'THEME_4_TOPAZ'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(845281113520030216)
,p_error_template=>wwv_flow_api.id(845281113520030216)
,p_printer_friendly_template=>wwv_flow_api.id(845281714843030218)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(845278819882030208)
,p_default_button_template=>wwv_flow_api.id(845283214399030223)
,p_default_region_template=>wwv_flow_api.id(845288814866030242)
,p_default_chart_template=>wwv_flow_api.id(845285826252030232)
,p_default_form_template=>wwv_flow_api.id(845286105746030234)
,p_default_reportr_template=>wwv_flow_api.id(845288814866030242)
,p_default_tabform_template=>wwv_flow_api.id(845288814866030242)
,p_default_wizard_template=>wwv_flow_api.id(845290826127030250)
,p_default_menur_template=>wwv_flow_api.id(845284601430030228)
,p_default_listr_template=>wwv_flow_api.id(845285506252030231)
,p_default_irr_template=>wwv_flow_api.id(845287611857030238)
,p_default_report_template=>wwv_flow_api.id(845297627456030280)
,p_default_label_template=>wwv_flow_api.id(845299420613030286)
,p_default_menu_template=>wwv_flow_api.id(845299698474030286)
,p_default_calendar_template=>wwv_flow_api.id(845299915210030286)
,p_default_list_template=>wwv_flow_api.id(845294729377030266)
,p_default_option_label=>wwv_flow_api.id(845299420613030286)
,p_default_required_label=>wwv_flow_api.id(845299620791030286)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(4),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
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
prompt --application/shared_components/user_interface/theme_display_points
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
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
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
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(802750125062160638)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/user_interface/shortcuts/ok_to_get_next_prev_pk_value
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(803777846417179988)
,p_shortcut_name=>'OK_TO_GET_NEXT_PREV_PK_VALUE'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Are you sure you want to leave this page without saving?'
);
end;
/
prompt --application/shared_components/security/authentications/custom_scheme
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(803872233016759771)
,p_name=>'CUSTOM SCHEME'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'custom_auth'
,p_attribute_05=>'N'
,p_attribute_15=>'792268455737041795'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'This custom authentication scheme is based on the username and password values stored in the DEMO_USERS table.'
);
end;
/
prompt --application/shared_components/plugins/item_type/com_oracle_apex_masked_text_field
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(815887702427188925)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'COM.ORACLE.APEX.MASKED_TEXT_FIELD'
,p_display_name=>'Masked Text Field'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','COM.ORACLE.APEX.MASKED_TEXT_FIELD'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- The render function is responsible for the rendering of the actual HTML control',
'-- of the new widget. APEX still takes care of the table cell for the layout,',
'-- the label, pre- and post element text. Only the html code between the pre- and',
'-- post element text is rendered by the plug-in. The render procedure has a',
'-- defined interface which every plug-in has to implement. It''s designed in a way',
'-- that future enhancements to the interface will not break existing plug-ins.',
'function render_mask (',
'    p_item                in apex_plugin.t_page_item,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_value               in varchar2,',
'    p_is_readonly         in boolean,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_page_item_render_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable',
'    l_mask        apex_application_page_items.attribute_01%type := p_item.attribute_01;',
'    l_placeholder apex_application_page_items.attribute_01%type := p_item.attribute_02;',
'',
'    l_name        varchar2(30);',
'    l_result      apex_plugin.t_page_item_render_result;',
'begin',
'    -- During plug-in development it''s very helpful to have some debug information',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_page_item (',
'            p_plugin              => p_plugin,',
'            p_page_item           => p_item,',
'            p_value               => p_value,',
'            p_is_readonly         => p_is_readonly,',
'            p_is_printer_friendly => p_is_printer_friendly );',
'    end if;',
'    -- ***********************************',
'    -- Here starts the actual plug-in code',
'    -- ***********************************',
'    -- Based on the flags we normally generate different HTML code, but that',
'    -- depends on the plug-in.',
'    if p_is_readonly or p_is_printer_friendly then',
'        -- emit hidden field if necessary',
'        apex_plugin_util.print_hidden_if_readonly (',
'            p_item_name           => p_item.name,',
'            p_value               => p_value,',
'            p_is_readonly         => p_is_readonly,',
'            p_is_printer_friendly => p_is_printer_friendly );',
'        -- emit display span with the value',
'        apex_plugin_util.print_display_only (',
'            p_item_name        => p_item.name,',
'            p_display_value    => p_value,',
'            p_show_line_breaks => false,',
'            p_escape           => true,',
'            p_attributes       => p_item.element_attributes );',
'    else',
'        -- If a page item saves state, we have to call the get_input_name_for_page_item',
'        -- to render the internal hidden p_arg_names field. It will also return the',
'        -- HTML field name which we have to use when we render the HTML input field.',
'        l_name := apex_plugin.get_input_name_for_page_item(false);',
'        sys.htp.p(''<input type="text" name="''||l_name||''" id="''||p_item.name||''" ''||',
'                  ''value="''||sys.htf.escape_sc(p_value)||''" size="''||p_item.element_width||''" ''||',
'                  ''maxlength="''||p_item.element_max_length||''" ''||',
'                  p_item.element_attributes||'' />'');',
'        -- Register the javascript library the plug-in uses.',
'        -- The add_library call will make sure that just one instance of the',
'        -- library is loaded when the plug-in is used multiple times on the page.',
'        -- If the developer stores the javascript file on the web-server, the',
'        -- p_plugin.file_prefix will contain the web-server URL. If the variable',
'        -- contains #PLUGIN_PREFIX#, the file will be read from the database.',
'        apex_javascript.add_library (',
'            p_name      => ''jquery.maskedinput-1.2.2.min'',',
'            p_directory => p_plugin.file_prefix,',
'            p_version   => null );',
'        -- Initialize the mask for the page item when the page has been rendered.',
'        -- apex_javascript.add_value and add_attribute are used to make sure that',
'        -- the values are properly escaped.   ',
'        apex_javascript.add_onload_code (',
'            p_code => ''jQuery("#''||p_item.name||''").mask(''||',
'                      apex_javascript.add_value(l_mask)||',
'                      ''{''||apex_javascript.add_attribute(''placeholder'', l_placeholder, true, false)||''});'' );',
'        -- Tell APEX that this field is navigable',
'        l_result.is_navigable := true;',
'    end if;',
'    return l_result;',
'end render_mask;',
'',
'',
'-- The validation function is called before the user defined validations are',
'-- processed. If return.message contains a value after the call, the message',
'-- will be displayed in the Error Display Location defined for the plug-in.',
'-- To overwrite the default location, return.display_location can contain one',
'-- of the constant values defined in apex_plugin.',
'--',
'-- Note: A plug-in should automatically perform all the validations it can do',
'--       based on it''s meta data. Like in our example if the submitted value',
'--       really complies to the defined format mask.',
'--',
'-- Always remember: A user/hacker just has to disable javascript and he',
'--                  is able to modify and submit any value. Also values which',
'--                  would normally be checked by the javascript code.',
'--                  That''s why you should always perform the same checks on',
'--                  the server - NEVER TRUST THE BROWSER!!!',
'function validate_mask (',
'    p_item   in     apex_plugin.t_page_item,',
'    p_plugin in     apex_plugin.t_plugin,',
'    p_value  in     varchar2 )',
'    return apex_plugin.t_page_item_validation_result',
'is',
'    -- It''s better to have a named variable instead of using the generic ones,',
'    -- makes the code more readable',
'    l_mask         apex_application_page_items.attribute_01%type := p_item.attribute_01;',
'    ',
'    l_allowed_char varchar2(1);',
'    l_current_char varchar2(1);',
'    l_is_valid     boolean;',
'    l_result       apex_plugin.t_page_item_validation_result;    ',
'begin',
'    -- During plug-in development it''s very helpful to have some debug information',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_page_item (',
'            p_plugin              => p_plugin,',
'            p_page_item           => p_item );',
'    end if;',
'    -- **********************************************',
'    -- Here starts the actual plug-in validation code',
'    -- **********************************************',
'    if p_value is null then return null; end if;',
'    ',
'    -- The first check is to make sure that the entered value is really as long',
'    -- as the input mask',
'    if length(p_value) = length(l_mask) then',
'        -- Check for each char in the entered value that it complies with the',
'        -- corresponding mask in the input mask',
'        for i in 1 .. length(p_value)',
'        loop',
'            l_allowed_char := substr(l_mask, i, 1);',
'            l_current_char := substr(p_value, i, 1);',
'            l_is_valid     :=',
'                case l_allowed_char',
'                  when ''a'' /* A-Z,a-z */     then (l_current_char between ''A'' and ''Z'' or l_current_char between ''a'' and ''z'')',
'                  when ''9'' /* 0-9 */         then (l_current_char between ''0'' and ''9'')',
'                  when ''*'' /* A-Z,a-z,0-9 */ then (l_current_char between ''A'' and ''Z'' or l_current_char between ''a'' and ''z'' or l_current_char between ''0'' and ''9'')',
'                  else     /* filler */           (l_current_char = l_allowed_char)',
'                end;',
'            -- if there is an error we can terminate the loop immediately ',
'            if not l_is_valid then exit; end if;',
'        end loop;',
'    else',
'        l_is_valid := false;',
'    end if;',
'    -- Do we have to return an error message?',
'    if not l_is_valid then',
'        l_result.message := ''Value doesn''''t comply with the input mask!'';',
'        -- We can leave l_result.display_location blank, in that case the default',
'        -- setting of the plug-in will be used -> that should be the default case',
'    end if;',
'    return l_result;',
'end validate_mask;'))
,p_api_version=>1
,p_render_function=>'render_mask'
,p_validation_function=>'validate_mask'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
''))
,p_version_identifier=>'1.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(815889307668218851)
,p_plugin_id=>wwv_flow_api.id(815887702427188925)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Mask'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'(999) 999-9999'
,p_display_length=>40
,p_max_length=>40
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(815890003297226992)
,p_plugin_id=>wwv_flow_api.id(815887702427188925)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Placeholder'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'_'
,p_display_length=>1
,p_max_length=>1
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A094D61736B656420496E70757420706C7567696E20666F72206A51756572790D0A09436F707972696768742028632920323030372D32303039204A6F7368204275736820286469676974616C627573682E636F6D290D0A094C6963656E736564';
wwv_flow_api.g_varchar2_table(2) := '20756E64657220746865204D4954206C6963656E73652028687474703A2F2F6469676974616C627573682E636F6D2F70726F6A656374732F6D61736B65642D696E7075742D706C7567696E2F236C6963656E736529200D0A0956657273696F6E3A20312E';
wwv_flow_api.g_varchar2_table(3) := '322E32202830332F30392F323030392032323A33393A3036290D0A2A2F0D0A2866756E6374696F6E2861297B76617220633D28612E62726F777365722E6D7369653F227061737465223A22696E70757422292B222E6D61736B223B76617220623D287769';
wwv_flow_api.g_varchar2_table(4) := '6E646F772E6F7269656E746174696F6E213D756E646566696E6564293B612E6D61736B3D7B646566696E6974696F6E733A7B2239223A225B302D395D222C613A225B412D5A612D7A5D222C222A223A225B412D5A612D7A302D395D227D7D3B612E666E2E';
wwv_flow_api.g_varchar2_table(5) := '657874656E64287B63617265743A66756E6374696F6E28652C66297B696628746869732E6C656E6774683D3D30297B72657475726E7D696628747970656F6620653D3D226E756D62657222297B663D28747970656F6620663D3D226E756D62657222293F';
wwv_flow_api.g_varchar2_table(6) := '663A653B72657475726E20746869732E656163682866756E6374696F6E28297B696628746869732E73657453656C656374696F6E52616E6765297B746869732E666F63757328293B746869732E73657453656C656374696F6E52616E676528652C66297D';
wwv_flow_api.g_varchar2_table(7) := '656C73657B696628746869732E6372656174655465787452616E6765297B76617220673D746869732E6372656174655465787452616E676528293B672E636F6C6C617073652874727565293B672E6D6F7665456E642822636861726163746572222C6629';
wwv_flow_api.g_varchar2_table(8) := '3B672E6D6F766553746172742822636861726163746572222C65293B672E73656C65637428297D7D7D297D656C73657B696628746869735B305D2E73657453656C656374696F6E52616E6765297B653D746869735B305D2E73656C656374696F6E537461';
wwv_flow_api.g_varchar2_table(9) := '72743B663D746869735B305D2E73656C656374696F6E456E647D656C73657B696628646F63756D656E742E73656C656374696F6E2626646F63756D656E742E73656C656374696F6E2E63726561746552616E6765297B76617220643D646F63756D656E74';
wwv_flow_api.g_varchar2_table(10) := '2E73656C656374696F6E2E63726561746552616E676528293B653D302D642E6475706C696361746528292E6D6F766553746172742822636861726163746572222C2D313030303030293B663D652B642E746578742E6C656E6774687D7D72657475726E7B';
wwv_flow_api.g_varchar2_table(11) := '626567696E3A652C656E643A667D7D7D2C756E6D61736B3A66756E6374696F6E28297B72657475726E20746869732E747269676765722822756E6D61736B22297D2C6D61736B3A66756E6374696F6E286A2C64297B696628216A2626746869732E6C656E';
wwv_flow_api.g_varchar2_table(12) := '6774683E30297B76617220663D6128746869735B305D293B76617220673D662E646174612822746573747322293B72657475726E20612E6D617028662E64617461282262756666657222292C66756E6374696F6E286C2C6D297B72657475726E20675B6D';
wwv_flow_api.g_varchar2_table(13) := '5D3F6C3A6E756C6C7D292E6A6F696E282222297D643D612E657874656E64287B706C616365686F6C6465723A225F222C636F6D706C657465643A6E756C6C7D2C64293B766172206B3D612E6D61736B2E646566696E6974696F6E733B76617220673D5B5D';
wwv_flow_api.g_varchar2_table(14) := '3B76617220653D6A2E6C656E6774683B76617220693D6E756C6C3B76617220683D6A2E6C656E6774683B612E65616368286A2E73706C6974282222292C66756E6374696F6E286D2C6C297B6966286C3D3D223F22297B682D2D3B653D6D7D656C73657B69';
wwv_flow_api.g_varchar2_table(15) := '66286B5B6C5D297B672E70757368286E657720526567457870286B5B6C5D29293B696628693D3D6E756C6C297B693D672E6C656E6774682D317D7D656C73657B672E70757368286E756C6C297D7D7D293B72657475726E20746869732E65616368286675';
wwv_flow_api.g_varchar2_table(16) := '6E6374696F6E28297B76617220723D612874686973293B766172206D3D612E6D6170286A2E73706C6974282222292C66756E6374696F6E28782C79297B69662878213D223F22297B72657475726E206B5B785D3F642E706C616365686F6C6465723A787D';
wwv_flow_api.g_varchar2_table(17) := '7D293B766172206E3D66616C73653B76617220713D722E76616C28293B722E646174612822627566666572222C6D292E6461746128227465737473222C67293B66756E6374696F6E20762878297B7768696C65282B2B783C3D68262621675B785D297B7D';
wwv_flow_api.g_varchar2_table(18) := '72657475726E20787D66756E6374696F6E20742878297B7768696C652821675B785D26262D2D783E3D30297B7D666F722876617220793D783B793C683B792B2B297B696628675B795D297B6D5B795D3D642E706C616365686F6C6465723B766172207A3D';
wwv_flow_api.g_varchar2_table(19) := '762879293B6966287A3C682626675B795D2E74657374286D5B7A5D29297B6D5B795D3D6D5B7A5D7D656C73657B627265616B7D7D7D7328293B722E6361726574284D6174682E6D617828692C7829297D66756E6374696F6E20752879297B666F72287661';
wwv_flow_api.g_varchar2_table(20) := '7220413D792C7A3D642E706C616365686F6C6465723B413C683B412B2B297B696628675B415D297B76617220423D762841293B76617220783D6D5B415D3B6D5B415D3D7A3B696628423C682626675B425D2E74657374287829297B7A3D787D656C73657B';
wwv_flow_api.g_varchar2_table(21) := '627265616B7D7D7D7D66756E6374696F6E206C2879297B76617220783D612874686973292E636172657428293B766172207A3D792E6B6579436F64653B6E3D287A3C31367C7C287A3E313626267A3C3332297C7C287A3E333226267A3C343129293B6966';
wwv_flow_api.g_varchar2_table(22) := '2828782E626567696E2D782E656E6429213D30262628216E7C7C7A3D3D387C7C7A3D3D343629297B7728782E626567696E2C782E656E64297D6966287A3D3D387C7C7A3D3D34367C7C286226267A3D3D31323729297B7428782E626567696E2B287A3D3D';
wwv_flow_api.g_varchar2_table(23) := '34363F303A2D3129293B72657475726E2066616C73657D656C73657B6966287A3D3D3237297B722E76616C2871293B722E636172657428302C702829293B72657475726E2066616C73657D7D7D66756E6374696F6E206F2842297B6966286E297B6E3D66';
wwv_flow_api.g_varchar2_table(24) := '616C73653B72657475726E28422E6B6579436F64653D3D38293F66616C73653A6E756C6C7D423D427C7C77696E646F772E6576656E743B76617220433D422E63686172436F64657C7C422E6B6579436F64657C7C422E77686963683B766172207A3D6128';
wwv_flow_api.g_varchar2_table(25) := '74686973292E636172657428293B696628422E6374726C4B65797C7C422E616C744B65797C7C422E6D6574614B6579297B72657475726E20747275657D656C73657B69662828433E3D33322626433C3D313235297C7C433E313836297B76617220783D76';
wwv_flow_api.g_varchar2_table(26) := '287A2E626567696E2D31293B696628783C68297B76617220413D537472696E672E66726F6D43686172436F64652843293B696628675B785D2E74657374284129297B752878293B6D5B785D3D413B7328293B76617220793D762878293B61287468697329';
wwv_flow_api.g_varchar2_table(27) := '2E63617265742879293B696628642E636F6D706C657465642626793D3D68297B642E636F6D706C657465642E63616C6C2872297D7D7D7D7D72657475726E2066616C73657D66756E6374696F6E207728782C79297B666F7228766172207A3D783B7A3C79';
wwv_flow_api.g_varchar2_table(28) := '26267A3C683B7A2B2B297B696628675B7A5D297B6D5B7A5D3D642E706C616365686F6C6465727D7D7D66756E6374696F6E207328297B72657475726E20722E76616C286D2E6A6F696E28222229292E76616C28297D66756E6374696F6E20702879297B76';
wwv_flow_api.g_varchar2_table(29) := '6172207A3D722E76616C28293B76617220433D2D313B666F722876617220423D302C783D303B423C683B422B2B297B696628675B425D297B6D5B425D3D642E706C616365686F6C6465723B7768696C6528782B2B3C7A2E6C656E677468297B7661722041';
wwv_flow_api.g_varchar2_table(30) := '3D7A2E63686172417428782D31293B696628675B425D2E74657374284129297B6D5B425D3D413B433D423B627265616B7D7D696628783E7A2E6C656E677468297B627265616B7D7D656C73657B6966286D5B425D3D3D7A5B785D262642213D65297B782B';
wwv_flow_api.g_varchar2_table(31) := '2B3B433D427D7D7D69662821792626432B313C65297B722E76616C282222293B7728302C68297D656C73657B696628797C7C432B313E3D65297B7328293B6966282179297B722E76616C28722E76616C28292E737562737472696E6728302C432B312929';
wwv_flow_api.g_varchar2_table(32) := '7D7D7D72657475726E28653F423A69297D69662821722E617474722822726561646F6E6C792229297B722E6F6E652822756E6D61736B222C66756E6374696F6E28297B722E756E62696E6428222E6D61736B22292E72656D6F7665446174612822627566';
wwv_flow_api.g_varchar2_table(33) := '66657222292E72656D6F7665446174612822746573747322297D292E62696E642822666F6375732E6D61736B222C66756E6374696F6E28297B713D722E76616C28293B76617220783D7028293B7328293B73657454696D656F75742866756E6374696F6E';
wwv_flow_api.g_varchar2_table(34) := '28297B696628783D3D6A2E6C656E677468297B722E636172657428302C78297D656C73657B722E63617265742878297D7D2C30297D292E62696E642822626C75722E6D61736B222C66756E6374696F6E28297B7028293B696628722E76616C2829213D71';
wwv_flow_api.g_varchar2_table(35) := '297B722E6368616E676528297D7D292E62696E6428226B6579646F776E2E6D61736B222C6C292E62696E6428226B657970726573732E6D61736B222C6F292E62696E6428632C66756E6374696F6E28297B73657454696D656F75742866756E6374696F6E';
wwv_flow_api.g_varchar2_table(36) := '28297B722E63617265742870287472756529297D2C30297D297D7028297D297D7D297D29286A5175657279293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(815888822881202257)
,p_plugin_id=>wwv_flow_api.id(815887702427188925)
,p_file_name=>'jquery.maskedinput-1.2.2.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(11863956220245806)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>true
,p_is_default=>true
,p_theme_id=>4
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>'PRE18:18'
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
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
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_name=>'Page Zero'
,p_step_title=>'Page Zero'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602101923'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(802687031138780056)
,p_plug_name=>'Menu'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845284601430030228)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(802683840011773217)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(845299698474030286)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(803095435068115409)
,p_plug_name=>'Reports'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845286697686030235)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(830918636524495673)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(845294397213030265)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_plug_display_when_condition=>'5,10,13,16,17,19'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Sample Application'
,p_step_title=>'Oracle Sample Application'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
'function openGroupPopup(sourceUrl)',
'{',
'     var returnvalue ;',
'  if ( document.getElementById("P1_LOGIN_GROUP_ID").value == '''' ) ',
'  {',
'     if (window.showModalDialog) {',
'       returnvalue = window.showModalDialog (sourceUrl,window,"dialogHeight : 250px;dialogWidth : 500px;center : yes") ;',
'document.getElementById("P1_LOGIN_GROUP_ID").value = returnvalue.GROUP_ID ;',
'//alert(returnvalue.GROUP_ID );',
'doSubmit(''Submit'');',
'}',
'else',
'{',
'     window.open(sourceUrl,"APEX_GROUPWIN","height:200px;width:400px") ;',
'}',
'}',
'}',
'',
'//-->',
'</script>',
'',
'<style>',
'.rounded-corner-region .rc-body-r { height: 170px !important; }',
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is the Home Page of the Sample Application.  It is intended to be a sales dashboard of sorts - displaying some metrics which are derived in real-time from the database.',
'<p>',
'The <strong>My Quota</strong> region is a Flash chart type called  Dial Chart.  It is dynamically rendered based on a SQL Statement each time the page is viewed.  <strong>My Top Orders</strong> displays the top five orders for the currently signed in'
||' user, based on order total.  The <strong>Tasks</strong> region is an example of using a List to provide easy navigation to common tasks.'))
,p_last_updated_by=>'DEMO'
,p_last_upd_yyyymmddhh24miss=>'20100602110036'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(840831449680531132)
,p_plug_name=>'Sample Application'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845289729551030245)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Welcome to the Sample Application.  This application is designed to highlight the features of Oracle Application Express.'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(840838223969542650)
,p_plug_name=>'Tasks'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845290007208030246)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(802796546338181900)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(845294729377030266)
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(842379921702567190)
,p_name=>'Top Customers'
,p_template=>wwv_flow_api.id(845288814866030242)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:49%; float:left; clear: none;"'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.cust_last_name || '', '' || b.cust_first_name ',
'|| '' - ''|| count(a.order_id) ||'' Order(s)'' customer_name ',
', SUM(a.ORDER_TOTAL) order_total,  b.customer_id id',
'FROM demo_orders a, DEMO_CUSTOMERS b',
'WHERE a.customer_id = b.customer_id',
'GROUP BY b.customer_id, b.cust_last_name || '', '' || b.cust_first_name',
'ORDER BY NVL(SUM(a.ORDER_TOTAL),0) DESC'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(845298618810030283)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>7
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>7
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(842381598546588827)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>2
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_CUSTOMER_ID:#ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(842380413616567256)
,p_query_column_id=>2
,p_column_alias=>'ORDER_TOTAL'
,p_column_display_sequence=>1
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(842381725750588828)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>3
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(842382010451601791)
,p_name=>'Top Products'
,p_template=>wwv_flow_api.id(845288814866030242)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:49%; float:left; margin-right: 1%;"'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select p.product_name||'' - ''||SUM(oi.quantity)||'' x ''||to_char(p.list_price,''L999G99'')||'''' product,',
'       SUM(oi.quantity * oi.unit_price) sales,  p.product_id',
'from demo_order_items oi',
',    demo_product_info p',
'where oi.product_id = p.product_id',
'group by p.Product_id, p.product_name, p.list_price',
'order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(845298618810030283)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>7
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>7
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(842382617378603777)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT'
,p_column_display_sequence=>2
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:P6_PRODUCT_ID:#PRODUCT_ID#'
,p_column_linktext=>'#PRODUCT#'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(842382726385603777)
,p_query_column_id=>2
,p_column_alias=>'SALES'
,p_column_display_sequence=>1
,p_column_format=>'FML999G999G999G999G990D00'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(845403729821950734)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>3
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(845210218460727083)
,p_plug_name=>'Sales Quota'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>' style="width:49%; float:left; margin-right: 1%;"'
,p_plug_template=>wwv_flow_api.id(845288814866030242)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"',
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"',
'    width="#WIDTH#"',
'    height="#HEIGHT#"',
'    id="#CHART_NAME#"',
'    align="top">',
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:1:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#">',
'<param name="quality" value="high">',
'<param name="allowScriptAccess" value="sameDomain">',
'<param name="allowNetworking" value="all">',
'<param name="scale" value="noscale">',
'<param name="wmode" value="transparent">',
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'',
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:1:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"',
'       quality="high"',
'       width="#WIDTH#"',
'       height="#HEIGHT#"',
'       name="#CHART_NAME#"',
'       scale="noscale"',
'       align=""',
'       allowScriptAccess="sameDomain" ',
'       allowNetworking="all"',
'       type="application/x-shockwave-flash"',
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"',
'       wmode="transparent"',
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'</embed>',
'</object>',
'#CHART_REFRESH#'))
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_required_role=>'!'||wwv_flow_api.id(830897547943423319)
,p_plug_header=>'My sales measured against quota'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(845210415503727089)
,p_default_chart_type=>'GaugeChart'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_828829718297717919'
,p_chart_width=>300
,p_chart_height=>180
,p_chart_animation=>'N'
,p_display_attr=>':::V:X:N:N:::Y:None:::N:::Default'
,p_dial_tick_attr=>'T:::Auto:needle:2:1:90:180::Inside:'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_margins=>'-20:::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'1'
,p_x_axis_label_font=>'::'
,p_y_axis_label_font=>'::'
, p_names_font=> null
, p_names_rotation=> null
,p_hints_font=>'Tahoma:10:'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:'
,p_y_axis_title_font=>'Tahoma:14:'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(845210525271727100)
,p_chart_id=>wwv_flow_api.id(845210415503727089)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select order_total, quota, 0, order_total',
'from (select (select sum(o.order_total) order_total ',
'                from demo_orders o, ',
'                     demo_users u ',
'               where o.user_id = u.user_id ',
'                 and u.user_name = :APP_USER) order_total, ',
'             u.quota',
'      from demo_users u',
'      where u.user_name = :APP_USER)'))
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No sales found for current user.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(845210811318734429)
,p_name=>'Top Orders by Date'
,p_template=>wwv_flow_api.id(845288814866030242)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:49%; float:left; clear: none;"'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.order_timestamp order_day,',
'       SUM(o.order_total) sales',
'from demo_orders o',
'group by o.order_timestamp',
'order by 2 desc',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(845298618810030283)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>7
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>7
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(845211109110734443)
,p_query_column_id=>2
,p_column_alias=>'SALES'
,p_column_display_sequence=>1
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(845404111944955095)
,p_query_column_id=>3
,p_column_alias=>'ORDER_DAY'
,p_column_display_sequence=>2
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(845526897913980124)
,p_plug_name=>'Sales Quota'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:49%; float:left; margin-right: 1%;"'
,p_plug_template=>wwv_flow_api.id(845288814866030242)
,p_plug_display_sequence=>11
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(830897547943423319)
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'Admins have no quota'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(842383514523621856)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(842379921702567190)
,p_button_name=>'VIEW_CUSTOMERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11864343478245831)
,p_button_image_alt=>'View Customers'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'#IMAGE_PREFIX#menu/go-small.png'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(845224817018972634)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(842382010451601791)
,p_button_name=>'VIEW_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11864343478245831)
,p_button_image_alt=>'View Products'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'#IMAGE_PREFIX#menu/go-small.png'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(845221920565954702)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(845210811318734429)
,p_button_name=>'VIEW_ORDERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11864343478245831)
,p_button_image_alt=>'View Orders'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'#IMAGE_PREFIX#menu/go-small.png'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Customers'
,p_step_title=>'Customers'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'Help for this page'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602085857'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(658568952885902339)
,p_plug_name=>'Customers'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845287611857030238)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customer_id, cust_last_name || '', '' || cust_first_name customer_name, CUST_STREET_ADDRESS1 || decode(CUST_STREET_ADDRESS2, null, null, '', '' || CUST_STREET_ADDRESS2) customer_address, cust_city, cust_state, cust_postal_code',
'from demo_customers'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(658569053768902339)
,p_name=>'Customers'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more then 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_CUSTOMER_ID,P7_BRANCH:#CUSTOMER_ID#,2'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil2_16x16.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DPEAKE'
,p_internal_uid=>646965276489184363
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(658569238750902339)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Customer ID'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(658569343543902340)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(658569432182902340)
,p_db_column_name=>'CUSTOMER_ADDRESS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'CUSTOMER_ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(658569549727902340)
,p_db_column_name=>'CUST_CITY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'City'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'CUST_CITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(658569652157902340)
,p_db_column_name=>'CUST_STATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'State'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'CUST_STATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(658569729706902340)
,p_db_column_name=>'CUST_POSTAL_CODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'ZIP Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'CUST_POSTAL_CODE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(512521721543944802)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4961411'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_ID:CUSTOMER_NAME:CUSTOMER_ADDRESS:CUST_CITY:CUST_STATE:CUST_POSTAL_CODE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(658571836103910883)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(658568952885902339)
,p_button_name=>'NEW'
,p_button_static_id=>'NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Create Customer &gt;'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(841770811784273147)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(934593152937621883)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_BRANCH:2'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(658571836103910883)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(934576756971574413)
,p_branch_action=>'f?p=&FLOW_ID.:2:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(841770326229273144)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'DEMO_CUSTOMERS'
,p_attribute_03=>'CUSTOMER_ID'
,p_process_error_message=>'Unable to process update.'
,p_process_when_button_id=>wwv_flow_api.id(841768809296273135)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(841770515487273145)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'DEMO_CUSTOMERS'
,p_attribute_03=>'CUSTOMER_ID'
,p_process_error_message=>'Unable to process delete.'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Products'
,p_step_title=>'Products'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.apexir_WORKSHEET_ICONS {border: none !important; -moz-box-shadow: none !important; -box-shadow: none !important; -webkit-box-shadow: none !important;}',
'.apexir_WORKSHEET_ICONS td {border-bottom: none !important}',
'.apexir_WORKSHEET_ICONS td img {border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;}',
'</style>',
''))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602090053'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(678836943759258666)
,p_plug_name=>'Products'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845287611857030238)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.product_id,',
'       p.product_name, ',
'       p.product_description, ',
'       p.category, ',
'       decode(p.product_avail, ''Y'',''Yes'',''N'',''No'') product_avail,',
'       p.list_price,',
'       (select sum(quantity) from demo_order_items where product_id = p.product_id) units,',
'       (select sum(quantity * p.list_price) from demo_order_items where product_id = p.product_id) sales,       ',
'       (select count(o.customer_id) from demo_orders o, demo_order_items t where o.order_id = t.order_id and t.product_id = p.product_id group by p.product_id) customers,',
'       (select max(o.order_timestamp) od from demo_orders o, demo_order_items i where o.order_id = i.order_id and i.product_id = p.product_id) last_date_sold,',
'       p.product_id img,',
'''f?p=''||:app_id||'':6:''||:app_session||''::::P6_PRODUCT_ID:''||p.product_id icon_link,',
'decode(nvl(dbms_lob.getlength(p.product_image),0),0,null,',
'    ''<img style="border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;" ''||',
'    ''src="''||',
'    apex_util.get_blob_file_src(''P6_PRODUCT_IMAGE'',p.product_id)||',
'    ''" height="75" width="75" alt="Product Image" title="Product Image" />'')',
'    detail_img,',
'decode(nvl(dbms_lob.getlength(p.product_image),0),0,null,',
'    apex_util.get_blob_file_src(''P6_PRODUCT_IMAGE'',p.product_id))',
'    detail_img_no_style',
'from demo_product_info p'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(678837028548258666)
,p_name=>'Products'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more then 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_PRODUCT_ID:#PRODUCT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil2_16x16.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_enabled_yn=>'Y'
,p_icon_view_link_column=>'ICON_LINK'
,p_icon_view_img_src_column=>'DETAIL_IMG_NO_STYLE'
,p_icon_view_label_column=>'PRODUCT_NAME'
,p_icon_view_img_attr_text=>'width="75" height="75"'
,p_icon_view_columns_per_row=>5
,p_detail_view_enabled_yn=>'Y'
,p_detail_view_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'table.apexir_WORKSHEET_CUSTOM { border: none !important; -moz-box-shadow: none; box-shadow: none; -webkit-box-shadow: none; }',
'.apexir_WORKSHEET_DATA td {border-bottom: none !important;}',
'table.reportDetail td {',
'	border: none !important;',
'	font: 11px/16px Arial, sans-serif;',
'	}',
'	table.reportDetail td.separator {',
'		background: #CCC;',
'		height: 2px !important;',
'padding: 0;',
'		line-height: 2px !important;',
'overflow: hidden;',
'		}',
'table.reportDetail td h1 {margin: 8px 0 !important}',
'table.reportDetail td img {margin-top: 8px; border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;}',
'</style>',
'<table class="reportDetail">'))
,p_detail_view_for_each_row=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="7" class="separator"></td></tr>',
'<tr>',
'<td rowspan="5" valign="top"><img width="75" height="75" src="#DETAIL_IMG_NO_STYLE#"></td>',
'<td colspan="6"><h1><a href="#ICON_LINK#">#PRODUCT_NAME#</a></h1></td>',
'</tr>',
'<tr>',
'<td><strong>#CATEGORY_LABEL#:</strong></td><td>#CATEGORY#</td>',
'<td><strong>#PRODUCT_AVAIL_LABEL#:</strong></td><td>#PRODUCT_AVAIL#</td>',
'<td><strong>#LAST_DATE_SOLD_LABEL#:</strong></td><td>#LAST_DATE_SOLD#</td>',
'</tr>',
'<tr>',
'<td align="left"><strong>#PRODUCT_DESCRIPTION_LABEL#:</strong></td><td colspan="5" >#PRODUCT_DESCRIPTION#</td>',
'</tr>',
'<tr>',
'<td style="padding-bottom: 0px;"><strong>#LIST_PRICE_LABEL#</strong></td>',
'<td style="padding-bottom: 0px;"><strong>#UNITS_LABEL#</strong></td>',
'<td style="padding-bottom: 0px;"><strong>#SALES_LABEL#</strong></td>',
'<td style="padding-bottom: 0px;"><strong>#CUSTOMERS_LABEL#</strong></td>',
'</tr>',
'<tr>',
'<td style="padding-top: 0px;">#LIST_PRICE#</td>',
'<td style="padding-top: 0px;">#UNITS#</td>',
'<td style="padding-top: 0px;">#SALES#</td>',
'<td style="padding-top: 0px;">#CUSTOMERS#</td>',
'</tr>'))
,p_detail_view_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="7" class="separator"></td></tr>',
'</table>'))
,p_owner=>'DPEAKE'
,p_internal_uid=>667233251268540690
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(678837251580258667)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Product_Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PRODUCT_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(678837333970258667)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'PRODUCT_NAME'
,p_help_text=>'This column contains the name of a product.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(678837426560258667)
,p_db_column_name=>'PRODUCT_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'PRODUCT_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(678837551818258667)
,p_db_column_name=>'CATEGORY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(678837653646258668)
,p_db_column_name=>'PRODUCT_AVAIL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Available'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'PRODUCT_AVAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(678837731086258668)
,p_db_column_name=>'LIST_PRICE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Price'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'LIST_PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(678837846673258668)
,p_db_column_name=>'UNITS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Units'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_static_id=>'UNITS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(678837932643258668)
,p_db_column_name=>'SALES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Sales'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'SALES'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(678838030279258668)
,p_db_column_name=>'CUSTOMERS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Customers'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CUSTOMERS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(678838136986258668)
,p_db_column_name=>'LAST_DATE_SOLD'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Sale'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_DATE_SOLD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(709179315431175704)
,p_db_column_name=>'IMG'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Image'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:DEMO_PRODUCT_INFO:PRODUCT_IMAGE:PRODUCT_ID::MIMETYPE:FILENAME:IMAGE_LAST_UPDATE::inline:'
,p_tz_dependent=>'N'
,p_static_id=>'IMG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(836782714908014121)
,p_db_column_name=>'ICON_LINK'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Icon Link'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ICON_LINK'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(836782809389014128)
,p_db_column_name=>'DETAIL_IMG'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Image'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DETAIL_IMG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(845398019684891102)
,p_db_column_name=>'DETAIL_IMG_NO_STYLE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Detail Img No Style'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'DETAIL_IMG_NO_STYLE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(678838333031259421)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'4870199'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'ICON'
,p_report_columns=>'PRODUCT_NAME:CATEGORY:PRODUCT_AVAIL:LIST_PRICE:UNITS:SALES:CUSTOMERS:LAST_DATE_SOLD:DETAIL_IMG'
,p_sort_column_1=>'PRODUCT_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(978204050906046647)
,p_name=>'Top 5 Products'
,p_template=>wwv_flow_api.id(845290007208030246)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'REGION_POSITION_03'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.product_name, SUM(a.quantity * b.list_price)',
'    FROM DEMO_ORDER_ITEMS a, DEMO_PRODUCT_INFO b',
'    WHERE a.product_id = b.product_id',
'    GROUP BY b.product_name',
'    ORDER BY 2 desc'))
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(845296604145030275)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>5
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(978204335812046655)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>1
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(978204426585046655)
,p_query_column_id=>2
,p_column_alias=>'SUM(A.QUANTITY*B.LIST_PRICE)'
,p_column_display_sequence=>2
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(978397725736947725)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(678836943759258666)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Create Product &gt;'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6::'
,p_grid_new_grid=>false
,p_security_scheme=>wwv_flow_api.id(803008954376789774)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(978397941571947727)
,p_branch_action=>'f?p=&FLOW_ID.:6:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(978397725736947725)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Orders'
,p_step_title=>'Orders'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602093959'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(836887118542483543)
,p_plug_name=>'Orders'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'   o.order_id,  ',
'   to_date(to_char(o.order_timestamp,''mm yyyy''), ''mm yyyy'') order_month,   ',
'   o.order_timestamp order_date,',
'   u.user_name sales_rep, ',
'   o.order_total,  ',
'   c.cust_last_name || '', '' || c.cust_first_name customer_name,',
'   (select count(*) from demo_order_items  oi where oi.order_id = o.order_id) order_items',
' from  ',
'   demo_orders o,  ',
'   demo_customers c,  ',
'   demo_users u ',
' where  ',
'   o.customer_id = c.customer_id ',
'   and o.user_id = u.user_id ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(836887221162483543)
,p_name=>'My Orders'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_ORDER_ID:#ORDER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil2_16x16.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DPEAKE'
,p_internal_uid=>825283443882765567
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(836887626237483625)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>1
,p_column_identifier=>'C'
,p_column_label=>'Order #'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(841794725234530587)
,p_db_column_name=>'ORDER_MONTH'
,p_display_order=>2
,p_column_identifier=>'J'
,p_column_label=>'Order Month'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'Month YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_MONTH'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(841794817839530588)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>3
,p_column_identifier=>'K'
,p_column_label=>'Order Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(839404098598166622)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>4
,p_column_identifier=>'H'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(839404019146166622)
,p_db_column_name=>'SALES_REP'
,p_display_order=>5
,p_column_identifier=>'G'
,p_column_label=>'Sales Rep'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SALES_REP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(839404200038166623)
,p_db_column_name=>'ORDER_ITEMS'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Order Items'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_ITEMS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(836887719614483625)
,p_db_column_name=>'ORDER_TOTAL'
,p_display_order=>13
,p_column_identifier=>'D'
,p_column_label=>'Order Total'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_TOTAL'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(836888127251484093)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'order_primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORDER_ID:ORDER_DATE:CUSTOMER_NAME:SALES_REP:ORDER_ITEMS:ORDER_TOTAL'
,p_sort_column_1=>'ORDER_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'ORDER_ID'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(845407406674048158)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Monthly Review'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'8290268'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORDER_MONTH:ORDER_ID:ORDER_DATE:CUSTOMER_NAME:SALES_REP:ORDER_ITEMS:ORDER_TOTAL'
,p_sort_column_1=>'ORDER_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'ORDER_MONTH'
,p_break_enabled_on=>'ORDER_MONTH'
,p_avg_columns_on_break=>'ORDER_TOTAL'
,p_chart_type=>'bar'
,p_chart_label_column=>'ORDER_MONTH'
,p_chart_label_title=>'Customer'
,p_chart_value_column=>'ORDER_TOTAL'
,p_chart_aggregate=>'SUM'
,p_chart_value_title=>'Average Order Total'
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(845409303567122959)
,p_report_id=>wwv_flow_api.id(845407406674048158)
,p_name=>'Orders <= $900'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ORDER_TOTAL'
,p_operator=>'<='
,p_expr=>'900'
,p_condition_sql=>' (case when ("ORDER_TOTAL" <= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# <= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFF99'
,p_row_font_color=>'#FF0033'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(845409419326122959)
,p_report_id=>wwv_flow_api.id(845407406674048158)
,p_name=>'Orders > $2,000'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ORDER_TOTAL'
,p_operator=>'>'
,p_expr=>'2000'
,p_condition_sql=>' (case when ("ORDER_TOTAL" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#99FF99'
,p_column_font_color=>'#0033FF'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(845409509042122959)
,p_report_id=>wwv_flow_api.id(845407406674048158)
,p_group_by_columns=>'ORDER_MONTH'
,p_function_01=>'AVG'
,p_function_column_01=>'ORDER_TOTAL'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Average Order Total'
,p_function_format_mask_01=>'FML999G999G999G999G990D00'
,p_function_sum_01=>'N'
,p_function_02=>'COUNT'
,p_function_column_02=>'ORDER_ITEMS'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Number of Orders'
,p_function_sum_02=>'N'
,p_sort_column_01=>'1'
,p_sort_direction_01=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(806101728868815639)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(836887118542483543)
,p_button_name=>'ENTER_NEW_ORDER'
,p_button_static_id=>'ENTER_NEW_ORDER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Enter New Order >'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(806101927230815666)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(806101728868815639)
,p_branch_sequence=>5
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(803839247536448915)
,p_branch_action=>'f?p=&FLOW_ID.:4:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(803838727771448910)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Previous'
,p_process_sql_clob=>' wwv_flow_utilities.decrement_calendar;'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(803838638532448906)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(803838930600448912)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Today'
,p_process_sql_clob=>' wwv_flow_utilities.today_calendar;'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(803838835197448911)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(803839142788448912)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Next'
,p_process_sql_clob=>' wwv_flow_utilities.increment_calendar;'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(803839039663448912)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Sales by Category / Month'
,p_step_title=>'Sales by Category / Month'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DEMO'
,p_last_upd_yyyymmddhh24miss=>'20100602111216'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(839409817982279649)
,p_plug_name=>'Sales by Category / Month'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845285826252030232)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"',
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"',
'    width="#WIDTH#"',
'    height="#HEIGHT#"',
'    id="#CHART_NAME#"',
'    align="top">',
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:5:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#">',
'<param name="quality" value="high">',
'<param name="allowScriptAccess" value="sameDomain">',
'<param name="allowNetworking" value="all">',
'<param name="scale" value="noscale">',
'<param name="wmode" value="transparent">',
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'',
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:5:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"',
'       quality="high"',
'       width="#WIDTH#"',
'       height="#HEIGHT#"',
'       name="#CHART_NAME#"',
'       scale="noscale"',
'       align=""',
'       allowScriptAccess="sameDomain" ',
'       allowNetworking="all"',
'       type="application/x-shockwave-flash"',
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"',
'       wmode="transparent"',
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'</embed>',
'</object>',
'#CHART_REFRESH#'))
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(839410028989279650)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'Sales by Category / Month'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_823029331783270480'
,p_chart_width=>700
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N::Y:N:Right::V:Y:None:::N:::Default'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'6'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Total Sales'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_legend_title=>'Categories'
, p_names_font=> null
, p_names_rotation=> null
,p_hints_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(839410104614279655)
,p_chart_id=>wwv_flow_api.id(839410028989279650)
,p_series_seq=>10
,p_series_name=>'Sales'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null, ',
'       to_char(o.order_timestamp, ''MON RRRR'') label, ',
'       sum (decode(p.category,''Accessories'',oi.quantity * oi.unit_price,0)) "Accessories",',
'       sum (decode(p.category,''Mens'',oi.quantity * oi.unit_price,0)) "Mens",',
'       sum (decode(p.category,''Womens'',oi.quantity * oi.unit_price,0)) "Womens"',
'from demo_product_info p, demo_order_items oi, demo_orders o',
'where oi.product_id = p.product_id',
'and o.order_id = oi.order_id',
'group by to_char(o.order_timestamp, ''MON RRRR''), to_char(o.order_timestamp, ''RRRR MM'')',
'order by to_char(o.order_timestamp, ''RRRR MM'')'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Product Details'
,p_step_title=>'Product Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(803008954376789774)
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602084334'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(679041354698454914)
,p_plug_name=>'Product Image'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845289729551030245)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'  if :P6_PRODUCT_ID is not null then',
'    for c1 in (select nvl(dbms_lob.getlength(product_image),0) l',
'               from demo_product_info',
'               where product_id = :P6_PRODUCT_ID)',
'    loop',
'      if c1.l > 0 then',
'        return true;',
'      end if;',
'    end loop;',
'  end if;',
'  return false;',
'end;'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(978195433675022758)
,p_plug_name=>'Product Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845286105746030234)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(679089951468945956)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(679041354698454914)
,p_button_name=>'DELETE_IMAGE'
,p_button_static_id=>'DELETE_IMAGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(978195730886022762)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(978195433675022758)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P6_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(978195927452022764)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(978195433675022758)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(978195637582022761)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(978195433675022758)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Create Product'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P6_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(978195831419022762)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(978195433675022758)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P6_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(978196025418022767)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(679040831926429452)
,p_name=>'P6_PRODUCT_IMAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(978195433675022758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Image'
,p_source=>'PRODUCT_IMAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Upload an image of the product.'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'IMAGE_LAST_UPDATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(679041152836444941)
,p_name=>'P6_IMAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(679041354698454914)
,p_source=>'return ''<img src="''||apex_util.get_blob_file_src(''P6_PRODUCT_IMAGE'',:P6_PRODUCT_ID)||''" />'';'
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'SELECT mimetype from demo_product_info where product_id = :P6_PRODUCT_ID and mimetype like ''image%'''
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(678525446747566278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(978196142216022770)
,p_name=>'P6_PRODUCT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(978195433675022758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Id'
,p_source=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(678525446747566278)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(978196245732022781)
,p_name=>'P6_PRODUCT_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(978195433675022758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the product name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(978196457638022784)
,p_name=>'P6_PRODUCT_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(978195433675022758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Description'
,p_source=>'PRODUCT_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a detailed description of the product.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(978196529522022784)
,p_name=>'P6_CATEGORY'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(978195433675022758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIES'
,p_lov=>'.'||wwv_flow_api.id(803350829703552101)||'.'
,p_cSize=>31
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the category that this product falls under.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(978196749215022784)
,p_name=>'P6_PRODUCT_AVAIL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(978195433675022758)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Product Available'
,p_source=>'PRODUCT_AVAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'Y OR N'
,p_lov=>'.'||wwv_flow_api.id(803003947665778439)||'.'
,p_cSize=>2
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Identify whether or not this product is currently available.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(978196828025022785)
,p_name=>'P6_LIST_PRICE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(978195433675022758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'List Price'
,p_source=>'LIST_PRICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the price of the item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(978196934640022788)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from DEMO_PRODUCT_INFO'
,p_attribute_02=>'DEMO_PRODUCT_INFO'
,p_attribute_03=>'P6_PRODUCT_ID'
,p_attribute_04=>'PRODUCT_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_process_when=>'DELETE_IMAGE'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(679090133722959748)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Image'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- empty the image',
'update demo_product_info ',
'set product_image = null,',
'mimetype = null,',
'filename=null,',
'image_last_update=null',
'where product_id = :P6_PRODUCT_ID;'))
,p_process_when_button_id=>wwv_flow_api.id(679089951468945956)
,p_process_success_message=>'Product image deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(978197054717022789)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of DEMO_PRODUCT_INFO'
,p_attribute_02=>'DEMO_PRODUCT_INFO'
,p_attribute_03=>'P6_PRODUCT_ID'
,p_attribute_04=>'PRODUCT_ID'
,p_attribute_09=>'P6_PRODUCT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table DEMO_PRODUCT_INFO.'
,p_process_when=>'DELETE_IMAGE'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_process_success_message=>'Action Processed.  '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(978197128756022790)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(978195831419022762)
,p_process_when=>'DELETE_IMAGE'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Customer Details'
,p_step_title=>'Customer Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602081803'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(802749538111160631)
,p_plug_name=>'Customer Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845288814866030242)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(827816523792642668)
,p_name=>'Orders for this Customer'
,p_template=>wwv_flow_api.id(845288814866030242)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(u.user_id, (select user_id from demo_users where user_name = :APP_USER), ''&nbsp;<a href="f?p=&APP_ID.:29:'' || :APP_SESSION || ''::NO::P29_ORDER_ID:''',
' || o.order_id || ''"><img src="#IMAGE_PREFIX#e2.gif">Order #'' || o.order_id || ''</a>'', ''&nbsp;Order #'' || o.order_id) edit, p.product_name, oi.quantity, oi.unit_price, (oi.quantity * oi.unit_price) ext_price, u.user_name, o.order_timestamp',
'from demo_orders o, demo_users u, demo_order_items oi, demo_product_info p',
'where customer_id = :P7_CUSTOMER_ID',
'and o.user_id = u.user_id(+)',
'and o.order_id = oi.order_id',
'and oi.product_id = p.product_id',
'order by o.order_id, o.order_timestamp, u.user_name'))
,p_display_when_condition=>'P7_CUSTOMER_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(845297627456030280)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'1'
,p_query_no_data_found=>'There are no orders for this customer.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total for All Orders:'
,p_break_column_text_format=>'Order Total:'
,p_break_type_flag=>'REPEAT_HEADINGS_ON_BREAK_1'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(827820631457673309)
,p_query_column_id=>1
,p_column_alias=>'EDIT'
,p_column_display_sequence=>1
,p_column_heading=>'Order #'
,p_column_alignment=>'RIGHT'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(827831030858729920)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Product Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(827829828132724063)
,p_query_column_id=>3
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>6
,p_column_heading=>'Quantity'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(827829926044724063)
,p_query_column_id=>4
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>5
,p_column_heading=>'Unit Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(827831947958744338)
,p_query_column_id=>5
,p_column_alias=>'EXT_PRICE'
,p_column_display_sequence=>7
,p_column_heading=>'Extended Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(827841353377812145)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Sales Rep'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(827841434959812146)
,p_query_column_id=>7
,p_column_alias=>'ORDER_TIMESTAMP'
,p_column_display_sequence=>2
,p_column_heading=>'Order Date'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(845367109735594898)
,p_plug_name=>'New Customer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845289729551030245)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the new customer details. Please ensure these details are correct as they are used for ordering and invoicing.</p>',
'<p>Where possible obtain the customer phone number(s) to aid in contacting the customer at a later date.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P7_CUSTOMER_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(802749848863160633)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(802749538111160631)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P7_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(802750033683160635)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(802749538111160631)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(802749727547160633)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(802749538111160631)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Create Customer'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P7_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(802749933182160633)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(802749538111160631)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P7_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(819707331582925601)
,p_branch_action=>'P7_BRANCH'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_PAGE_IDENT_BY_ITEM'
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802750354031160642)
,p_name=>'P7_CUSTOMER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer ID'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802750447622160649)
,p_name=>'P7_CUST_FIRST_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'CUST_FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>21
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s first name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802750650788160653)
,p_name=>'P7_CUST_LAST_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'CUST_LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>21
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s last name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802750835993160654)
,p_name=>'P7_CUST_STREET_ADDRESS1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Street Address'
,p_source=>'CUST_STREET_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s address.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802750925892160654)
,p_name=>'P7_CUST_STREET_ADDRESS2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Line 2'
,p_source=>'CUST_STREET_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the second line of the customer''s street address, if it exists.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802751046238160654)
,p_name=>'P7_CUST_CITY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CUST_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>31
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s city.  This value is determined via a web service based on the zip code when the customer is created.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802751144855160654)
,p_name=>'P7_CUST_STATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'CUST_STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(state_name) display_value, st return_value from   demo_states',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose State -'
,p_cSize=>3
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s state.  This value is determined via a web service based on the zip code when the customer is created.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802751241857160670)
,p_name=>'P7_CUST_POSTAL_CODE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'CUST_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s US ZIP code.  When creating a new customer, this value is passed to a web service to determine city & state.  If you do not know a valid US ZIP code, you can use "06037".'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802751327879160670)
,p_name=>'P7_PHONE_NUMBER1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.MASKED_TEXT_FIELD'
,p_cSize=>26
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s phone number.'
,p_attribute_01=>'(999) 999-9999'
,p_attribute_02=>'_'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802751451523160670)
,p_name=>'P7_PHONE_NUMBER2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Alternate Number'
,p_source=>'PHONE_NUMBER2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.MASKED_TEXT_FIELD'
,p_cSize=>26
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s alternate phone number.'
,p_attribute_01=>'(999) 999-9999'
,p_attribute_02=>'_'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802751549950160670)
,p_name=>'P7_CREDIT_LIMIT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Limit'
,p_source=>'CREDIT_LIMIT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>9
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s credit limit.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802751624448160671)
,p_name=>'P7_CUST_EMAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'CUST_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>31
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s e-mail address.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(819694433482888298)
,p_name=>'P7_BRANCH'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(802749538111160631)
,p_item_default=>'2'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(804010248159107813)
,p_validation_name=>'P7_PHONE_NUMBER1'
,p_validation_sequence=>23
,p_validation=>'P7_PHONE_NUMBER1'
,p_validation2=>'^\(?[[:digit:]]{3}\)?[-. ][[:digit:]]{3}[-. ][[:digit:]]{4}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Phone number format not recognized'
,p_associated_item=>wwv_flow_api.id(802751327879160670)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(804012831668112500)
,p_validation_name=>'P7_PHONE_NUMBER2'
,p_validation_sequence=>33
,p_validation=>'P7_PHONE_NUMBER2'
,p_validation2=>'^\(?[[:digit:]]{3}\)?[-. ][[:digit:]]{3}[-. ][[:digit:]]{4}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Phone number format not recognized'
,p_associated_item=>wwv_flow_api.id(802751451523160670)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(781382753768612007)
,p_validation_name=>'Credit Limit <= 5000'
,p_validation_sequence=>63
,p_validation=>':P7_CREDIT_LIMIT <= 5000'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'A customer''s Credit Limit must be less than or equal to $5,000'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(845408099233083832)
,p_validation_name=>'Can''t Delete Customer with Orders'
,p_validation_sequence=>73
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  for c1 in (select ''x'' from demo_orders where customer_id = :P7_CUSTOMER_ID) loop',
'    RETURN FALSE;',
'  end loop;',
'  RETURN TRUE;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Can''t delete customer with existing orders.'
,p_when_button_pressed=>wwv_flow_api.id(802749933182160633)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(802751750840160674)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from DEMO_CUSTOMERS'
,p_attribute_02=>'DEMO_CUSTOMERS'
,p_attribute_03=>'P7_CUSTOMER_ID'
,p_attribute_04=>'CUSTOMER_ID'
,p_attribute_15=>'D'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(802751830030160676)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of DEMO_CUSTOMERS'
,p_attribute_02=>'DEMO_CUSTOMERS'
,p_attribute_03=>'P7_CUSTOMER_ID'
,p_attribute_04=>'CUSTOMER_ID'
,p_attribute_09=>'P7_CUSTOMER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table DEMO_CUSTOMERS.'
,p_process_success_message=>'Customer Record Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(802751934705160676)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(802749933182160633)
,p_process_when_type=>'NEVER'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Manage Users'
,p_step_title=>'Manage Users'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(830897547943423319)
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602071705'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(802911546843418633)
,p_name=>'Manage Users'
,p_template=>wwv_flow_api.id(845288814866030242)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"USER_ID",',
'"USER_NAME",',
'"CREATED_ON",',
'"QUOTA", decode(password, null, ''Set Password'', ''Reset Password'') rp, ',
'products,',
'expires_on,',
'admin_user',
'from "#OWNER#"."DEMO_USERS"',
'where user_name != ''ADMIN'''))
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(845297627456030280)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Report returned no rows.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(802912832775418675)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_disable_sort_column=>'N'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(802911728200418642)
,p_query_column_id=>2
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>2
,p_column_heading=>'User Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_lov_display_extra=>'YES'
,p_ref_schema=>'SAMPLE'
,p_ref_table_name=>'DEMO_USERS'
,p_ref_column_name=>'USER_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(802911830056418644)
,p_query_column_id=>3
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'User Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_ref_schema=>'SAMPLE'
,p_ref_table_name=>'DEMO_USERS'
,p_ref_column_name=>'USER_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(802912030485418645)
,p_query_column_id=>4
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>4
,p_column_heading=>'Created'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_ref_schema=>'SAMPLE'
,p_ref_table_name=>'DEMO_USERS'
,p_ref_column_name=>'CREATED_ON'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(802912145262418645)
,p_query_column_id=>5
,p_column_alias=>'QUOTA'
,p_column_display_sequence=>5
,p_column_heading=>'Quota'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_ref_schema=>'SAMPLE'
,p_ref_table_name=>'DEMO_USERS'
,p_ref_column_name=>'QUOTA'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(802921145318441728)
,p_query_column_id=>6
,p_column_alias=>'RP'
,p_column_display_sequence=>9
,p_column_heading=>'Reset Password'
,p_column_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9:P9_USER_ID,P9_USER_NAME:#USER_ID#,#USER_NAME#'
,p_column_linktext=>'#RP#'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(803001748556771224)
,p_query_column_id=>7
,p_column_alias=>'PRODUCTS'
,p_column_display_sequence=>6
,p_column_heading=>'Edit Products'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'RADIOGROUP_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(803003947665778439)
,p_lov_show_nulls=>'NO'
,p_attribute_01=>'2'
,p_column_default=>'Y'
,p_lov_display_extra=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SAMPLE'
,p_ref_table_name=>'DEMO_USERS'
,p_ref_column_name=>'PRODUCTS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(803752428601944363)
,p_query_column_id=>8
,p_column_alias=>'EXPIRES_ON'
,p_column_display_sequence=>8
,p_column_heading=>'Expires On'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SAMPLE'
,p_ref_table_name=>'DEMO_USERS'
,p_ref_column_name=>'EXPIRES_ON'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(830893026651415081)
,p_query_column_id=>9
,p_column_alias=>'ADMIN_USER'
,p_column_display_sequence=>7
,p_column_heading=>'Admin User'
,p_column_alignment=>'CENTER'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(803003947665778439)
,p_lov_show_nulls=>'NO'
,p_attribute_01=>'2'
,p_column_default=>'N'
,p_lov_display_extra=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SAMPLE'
,p_ref_table_name=>'DEMO_USERS'
,p_ref_column_name=>'ADMIN_USER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(802912554220418651)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(802911546843418633)
,p_button_name=>'ADD'
,p_button_static_id=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283614372030224)
,p_button_image_alt=>'Add User'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(802912344880418651)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(802911546843418633)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(802912232886418651)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(802911546843418633)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(802912439905418651)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(802911546843418633)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_static_id=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Remove Selected Users'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(802913149443418676)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(841827222482031203)
,p_tabular_form_region_id=>wwv_flow_api.id(802911546843418633)
,p_validation_name=>'USER_NAME Not Null'
,p_validation_sequence=>10
,p_validation=>'USER_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'USER_NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(842077211372150953)
,p_tabular_form_region_id=>wwv_flow_api.id(802911546843418633)
,p_validation_name=>'QUOTA is numeric'
,p_validation_sequence=>20
,p_validation=>'QUOTA'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_associated_column=>'QUOTA'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(842078010380179096)
,p_tabular_form_region_id=>wwv_flow_api.id(802911546843418633)
,p_validation_name=>'PRODUCTS not null'
,p_validation_sequence=>30
,p_validation=>'PRODUCTS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'PRODUCTS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(842076828210146386)
,p_tabular_form_region_id=>wwv_flow_api.id(802911546843418633)
,p_validation_name=>'EXPIRES_ON is date'
,p_validation_sequence=>60
,p_validation=>'EXPIRES_ON'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a date.'
,p_associated_column=>'EXPIRES_ON'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(802912625654418672)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(802911546843418633)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'DEMO_USERS'
,p_attribute_03=>'USER_ID'
,p_process_error_message=>'Unable to process update'
,p_process_when_button_id=>wwv_flow_api.id(802912344880418651)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(802912742719418673)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(802911546843418633)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'DEMO_USERS'
,p_attribute_03=>'USER_ID'
,p_process_error_message=>'Unable to process delete'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(802912934139418676)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(802911546843418633)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'DEMO_USERS'
,p_attribute_03=>'USER_ID'
,p_process_error_message=>'Unable to process update'
,p_process_when_button_id=>wwv_flow_api.id(802912554220418651)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(802913031769418676)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(802911546843418633)
,p_process_type=>'NATIVE_TABFORM_ADD_ROWS'
,p_process_name=>'AddRows'
,p_attribute_01=>'1'
,p_process_error_message=>'Unable to add rows'
,p_process_when_button_id=>wwv_flow_api.id(802912554220418651)
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Reset Password'
,p_step_title=>'Reset Password'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(830897547943423319)
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602085810'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(802949833655537784)
,p_plug_name=>'Reset Password for &P9_USER_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845288814866030242)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P9_USER_NAME'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(803927145708179754)
,p_plug_name=>'Error!'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845286105746030234)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'You cannot reset the password before you Apply Changes to a new user.'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P9_USER_NAME'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(803913352279106026)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(802949833655537784)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(803021428450810680)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(802949833655537784)
,p_button_name=>'RESET_PW'
,p_button_static_id=>'RESET_PW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Reset Password'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(803021634563810693)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(803021428450810680)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(803913546281106035)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(803913352279106026)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802950537118538793)
,p_name=>'P9_USER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(802949833655537784)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(803018843210805548)
,p_name=>'P9_NEW_PW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(802949833655537784)
,p_prompt=>'Enter New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter new password.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(803019648405806954)
,p_name=>'P9_NEW_PW_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(802949833655537784)
,p_prompt=>'Re-Enter New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Repeat password just entered.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(803025353730818038)
,p_name=>'P9_USER_NAME'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(802949833655537784)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_display_when_type=>'NEVER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(803032752954836694)
,p_validation_name=>'Passwords Must Match'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P9_NEW_PW = :P9_NEW_PW_2 then',
'  return true;',
'else',
'  return false;',
'end if;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Your passwords must be the same.  Please re-enter.'
,p_associated_item=>wwv_flow_api.id(803018843210805548)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(803881430554806424)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update demo_users set password = custom_hash(:P9_USER_NAME, :P9_NEW_PW)   ',
'  where user_name = upper(:P9_USER_NAME);'))
,p_process_success_message=>'Password for &P9_USER_NAME. Updated.'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Order Calendar'
,p_alias=>'CALENDAR'
,p_step_title=>'Order Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602082632'
);
wwv_flow_api.create_calendar(
 p_id=>wwv_flow_api.id(839297201351849150)
,p_plug_name=>'Order Calendar'
,p_plug_source_type=>'NATIVE_CALENDAR'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<a title="Order Detail" href="f?p=&APP_ID.:29:'' || :APP_SESSION || ''::::P29_ORDER_ID:'' || order_id || ''">'' || c.cust_last_name||'', ''||c.cust_first_name||''<br/>''||to_char(order_total, ''L999G999'') || ''</a><br />'' ord, order_timestamp',
'from demo_orders o, demo_users u, demo_customers c',
'where o.user_id = u.user_id',
'and   o.customer_id = c.customer_id'))
,p_plug_template=>wwv_flow_api.id(845289115497030243)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'ABOVE'
,p_cal_id=>wwv_flow_api.id(839297407350849156)
,p_begin_at_start_of_interval=>'Y'
,p_date_item=>'P10_CALENDAR_DATE'
,p_display_as=>'M'
,p_display_type=>'COL'
,p_date_column=>'ORDER_TIMESTAMP'
,p_display_column=>'ORD'
,p_start_of_week=>19721105
,p_start_time=>0
,p_end_time=>23
,p_time_format=>'24HOUR'
,p_week_start_day=>19721105
,p_week_end_day=>19721111
,p_date_type_column=>'P10_CALENDAR_TYPE'
,p_end_date_item=>'P10_CALENDAR_END_DATE'
,p_custom_cal_days=>3
,p_item_link_open_in=>'W'
,p_include_time_with_date=>'Y'
,p_agenda_cal_days_type=>'MONTH'
,p_agenda_cal_days=>30
,p_calendar_type=>'A'
,p_template_id=>wwv_flow_api.id(845299915210030286)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(839297603616849157)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(839297201351849150)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'< Previous'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''previous'');'
,p_grid_new_grid=>false
,p_button_comment=>'Generated 5/26/2010'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(839297813182849158)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(839297201351849150)
,p_button_name=>'TODAY'
,p_button_static_id=>'TODAY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Today'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''today'');'
,p_grid_new_grid=>false
,p_button_comment=>'Generated 5/26/2010'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(839298008038849159)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(839297201351849150)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Next >'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''next'');'
,p_grid_new_grid=>false
,p_button_comment=>'Generated 5/26/2010'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(839298216701849160)
,p_name=>'P10_CALENDAR_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(839297201351849150)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return to_char(localtimestamp+7,''YYYYMMDD'');'
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'End Date'
,p_format_mask=>'YYYYMMDD'
,p_source=>'P10_CALENDAR_END_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_cMaxlength=>2000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_item_comment=>'Generated by Calendar wizard on 5/26/2010'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(839298406742849166)
,p_name=>'P10_CALENDAR_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(839297201351849150)
,p_use_cache_before_default=>'NO'
,p_prompt=>'P4_CALENDAR_DISPLAY'
,p_source=>'P10_CALENDAR_TYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 5/26/2010'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(839298608254849168)
,p_name=>'P10_CALENDAR_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(839297201351849150)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return to_char(localtimestamp,''YYYYMMDD'');'
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Start Date'
,p_format_mask=>'YYYYMMDD'
,p_source=>'P10_CALENDAR_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_cMaxlength=>2000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_item_comment=>'Generated by Calendar wizard on 5/26/2010'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Enter New Order'
,p_step_title=>'Enter New Order'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(845280207803030214)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602093959'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(819656638489776161)
,p_plug_name=>'Identify Customer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845290826127030250)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(819659329616783107)
,p_plug_name=>'Order Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(819657848186779026)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(845295319092030269)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(827808234349607922)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(819656638489776161)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(819666248233807451)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(819656638489776161)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'label="NEXT"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(819666428977807458)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_BRANCH:11&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(819666248233807451)
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P11_CUSTOMER_OPTIONS'
,p_branch_condition_text=>'EXISTING'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(819669242983816082)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:18:P12_BRANCH:18&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(819666248233807451)
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P11_CUSTOMER_OPTIONS'
,p_branch_condition_text=>'NEW'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(827808449354607925)
,p_branch_action=>'f?p=&FLOW_ID.:4:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(827808234349607922)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(819664328839801780)
,p_name=>'P11_CUSTOMER_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(819656638489776161)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cust_last_name || '', '' || cust_first_name d, customer_id r from demo_customers',
'order by cust_last_name'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Choose a customer using the popup selector, or to create a new customer, select Create Order for: <strong>New customer</strong>.'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845327999506128420)
,p_name=>'P11_CUSTOMER_OPTIONS'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(819656638489776161)
,p_item_default=>'EXISTING'
,p_prompt=>'Create Order for:'
,p_source=>'EXISTING'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Existing customer;EXISTING,New customer;NEW'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Identify whether this order is for a new or existing customer.'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(845338908650216199)
,p_validation_name=>'P11_CUSTOMER_ID'
,p_validation_sequence=>10
,p_validation=>'P11_CUSTOMER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select a customer'
,p_validation_condition=>'P11_CUSTOMER_OPTIONS'
,p_validation_condition2=>'EXISTING'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(819666248233807451)
,p_associated_item=>wwv_flow_api.id(819664328839801780)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(845335028689193553)
,p_name=>'Hide / Show Customers'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_CUSTOMER_OPTIONS'
,p_condition_element=>'P11_CUSTOMER_OPTIONS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'EXISTING'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(845335325040193554)
,p_event_id=>wwv_flow_api.id(845335028689193553)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_CUSTOMER_ID'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(845335500784193555)
,p_event_id=>wwv_flow_api.id(845335028689193553)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_CUSTOMER_ID'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(827584754952825551)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create or Truncate ORDER Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection',
'  (p_collection_name => ''ORDER'');'))
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Enter New Order'
,p_step_title=>'Enter New Order'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css" media="all">',
'div.sideCartItem{padding:8px 8px 0 8px;font:normal 11px/14px Arial,sans-serif;} ',
'div.sideCartItem a{color:#000;} ',
'div.sideCartItem strong,div.sideCartItem span{display:block;text-align:right;padding:8px 0 0 0;} ',
'div.sideCartItem span{padding:4px 0 0 0;} ',
'div.sideCartItem span.subtotal{font-weight:bold;} ',
'div.sideCartItem p{margin:4px 0 0 0;padding:0 0 8px 0;font:normal 11px/14px Arial,sans-serif;position:relative;} ',
'div.sideCartItem p span{padding:0;position:absolute;right:0;top:0;font-weight:bold;} ',
'div.sideCartTotal{border-top:1px solid #FFF;margin-top:8px;padding:8px;border-top:1px dotted #AAA;} ',
'div.sideCartTotal span{display:block;text-align:right;font:normal 11px/14px Arial,sans-serif;padding:0 0 4px 0;} ',
'div.sideCartTotal p{padding:0;margin:0;font:normal 11px/14px Arial,sans-serif;position:relative;} ',
'div.sideCartTotal p.sideCartTotal{font:bold 12px/14px Arial,sans-serif;padding:8px 0 0 0;} ',
'div.sideCartTotal p.sideCartTotal span{font:bold 12px/14px Arial,sans-serif;padding:8px 0 0 0;} ',
'div.sideCartTotal p span{padding:0;position:absolute;right:0;top:0;} ',
'div.demoCustomerInfo{}',
'div.demoCustomerInfo strong{font:bold 12px/16px Arial,sans-serif;display:block;float:left;width:120px;}',
'div.demoCustomerInfo p{display:block;float:left;margin:0; font: normal 12px/16px Arial, sans-serif;}',
'div.demoProducts{clear:both;float:left;width:58%;margin:16px 0 0 0;padding:0 8px 0 0;}',
'div.demoProducts table{border:1px solid #CCC;border-bottom:none;}',
'div.demoProducts table th{background-color:#DDD;color:#000;font:bold 12px/16px Arial,sans-serif;padding:4px 10px;text-align:right;border-bottom:1px solid #CCC;}',
'div.demoProducts table td{border-bottom:1px solid #CCC;font:normal 12px/16px Arial,sans-serif;padding:4px 10px;text-align:right;}',
'div.demoProducts table td a{color:#000;}',
'div.demoProducts .left{text-align:left;}',
'div.demoCurrentOrder{float:left;width:38%;margin:16px 0 0 0; border-left: 1px solid #CCC; padding: 0 0 0 8px}',
'strong.demoTitle{font:bold 12px/16px Arial,sans-serif;display:block;padding: 4px 10px; background-color: #DDD; border: 1px solid #CCC}',
'a.demoAddtoCart {',
'display: block;',
'float: right;',
'padding: 2px 6px;',
'background-color: #CCC;',
'color: #FFF;',
'text-decoration: none;',
'-moz-border-radius: 4px;',
'-webkit-border-radius: 4px;',
'	}',
'a.demoAddtoCart:hover {background-color: #80A2BB; color: #FFF}',
'		',
'</style>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function productPopup(productID) {',
'  var url;',
'  url = ''f?p=&APP_ID.:20:&SESSION.::::P20_PRODUCT_ID:'' + productID;',
'  html_PopUp(url,''ProductInfo'',700,400,1,1);',
'};'))
,p_step_template=>wwv_flow_api.id(845280515917030214)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHAKEEB'
,p_last_upd_yyyymmddhh24miss=>'20100602104627'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(827560553380711548)
,p_plug_name=>'Order Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(819657848186779026)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(845295319092030269)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(845512815023720173)
,p_plug_name=>'Select Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845290826127030250)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_customer_id varchar2(30) := :P11_CUSTOMER_ID;',
'begin',
'',
'--',
'-- display customer information',
'--',
'if :P11_CUSTOMER_OPTIONS = ''NEW'' then',
'  l_customer_id := :P18_CUSTOMER_ID;',
'end if;',
'for x in (select * from demo_customers where customer_id = l_customer_id)',
'loop',
'htp.p(''<div class="demoCustomerInfo">'');',
'htp.p(''<strong>Customer:</strong>'');',
'htp.p(''<p>'');',
'htp.p(htf.escape_sc(x.cust_first_name) || '' '' || htf.escape_sc(x.cust_last_name) || ''<br />'');',
'htp.p(sys.htf.escape_sc(x.cust_street_address1) || ''<br />'');',
'if x.cust_street_address2 is not null then',
'  sys.htp.p(sys.htf.escape_sc(x.cust_street_address2) || ''<br />'');',
'end if;',
'htp.p(sys.htf.escape_sc(x.cust_city) || '', '' || x.cust_state || ''  '' || htf.escape_sc(x.cust_postal_code));',
'htp.p(''</p>'');',
'end loop;',
'htp.p(''</div>'');',
'',
'--',
'-- display products',
'--',
'htp.p(''<div class="demoProducts" >'');',
'-- htp.p(''<strong	class="demoTitle">Products</strong>'');',
'htp.p(''<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<thead>',
'<tr><th class="left">Product</th><th>Price</th><th></th></tr>',
'</thead>',
'<tbody>'');',
'for c1 in (select product_id, ''<a href="javascript:productPopup('''''' || product_id || '''''');">'' || sys.htf.escape_sc(product_name) || ''</a>'' product_name,  list_price, ''Add to Cart'' add_to_order',
'from demo_product_info',
'where product_avail = ''Y''',
'order by product_name) loop',
'   sys.htp.p(''<tr><td class="left">''||c1.product_name||''</td><td>''||trim(to_char(c1.list_price,''999G999G990D00''))||',
'        ''</td><td><a href="f?p=&APP_ID.:12:''||:app_session||'':ADD:::P12_PRODUCT_ID:''||',
'        c1.product_id||''" class="demoAddtoCart">Add &gt;</a></td></tr>'');',
'end loop;',
'htp.p(''</tbody></table>'');',
'htp.p(''</div>'');',
'--',
'-- display current order',
'--',
'htp.p(''<div class="demoCurrentOrder" >'');',
'htp.p(''<strong	class="demoTitle">Current Order</strong>'');',
'declare',
'    c number := 0; t number := 0;',
'begin',
'-- loop over cart values',
'for c1 in (select c001 pid, c002 i, to_number(c003) p, count(c002) q, sum(c003) ep,  ''Remove'' remove',
'from apex_collections',
'where collection_name = ''ORDER''',
'group by c001, c002, c003',
'order by c001)',
'loop',
'htp.p(''<div class="sideCartItem"><a href="''||',
'    ''f?p=&APP_ID.:12:&SESSION.:REMOVE:::P12_PRODUCT_ID:''||c1.pid||',
'    ''"><img src="#IMAGE_PREFIX#delete.gif" alt="Remove from cart" title="Remove from cart" /></a>&nbsp;&nbsp;',
'    <a href="javascript:productPopup(''''''||c1.pid||'''''');">''||c1.i||''</a>',
'    <span>''||trim(to_char(c1.p,''$999G999G999D00''))||''</span>',
'    <span>Quantity: ''||c1.q||''</span>',
'    <span class="subtotal">Subtotal: ''||trim(to_char(c1.ep,''$999G999G999D00''))||''</span>',
'</div>'');',
'   c := c + 1;',
'   t := t + c1.ep;',
'',
'end loop;',
'',
'if c > 0 then',
'    sys.htp.p(''<div class="sideCartTotal">',
'    <p>Items: <span>''||c||''</span></p>',
'    <p class="sideCartTotal">Total: <span>''||trim(to_char(t,''$999G999G999D00''))||''</span></p>',
'</div>'');',
'else',
'    sys.htp.p(''<p class="sideCartTotal">You have no items in your current order.</p>'');',
'end if;',
'end;',
'',
'htp.p(''</div>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(827743932273257251)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(845512815023720173)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(827635250179079599)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(845512815023720173)
,p_button_name=>'PLACE_ORDER'
,p_button_static_id=>'PLACE_ORDER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Place Order'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'select 1 from apex_collections where collection_name = ''ORDER'''
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(845337712328207750)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(845512815023720173)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'< Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(827635435722079610)
,p_branch_action=>'f?p=&FLOW_ID.:14:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(827635250179079599)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(827744152011257257)
,p_branch_action=>'f?p=&FLOW_ID.:4:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(827743932273257251)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(845360401368488454)
,p_branch_action=>'P12_BRANCH'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_PAGE_IDENT_BY_ITEM'
,p_branch_when_button_id=>wwv_flow_api.id(845337712328207750)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 01-JUN-2010 13:36 by DPEAKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(827564343730737079)
,p_name=>'P12_CUSTOMER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(827560553380711548)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(827628444461040143)
,p_name=>'P12_PRODUCT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(845512815023720173)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845360017513483671)
,p_name=>'P12_BRANCH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(845512815023720173)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(827566835896744290)
,p_computation_sequence=>10
,p_computation_item=>'P12_CUSTOMER_NAME'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select cust_first_name || '' '' || cust_last_name from demo_customers where customer_id = :P11_CUSTOMER_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(827769333808418520)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Place Order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_order_id number;',
'  l_customer_id varchar2(30) := :P11_CUSTOMER_ID;',
'  l_user_id number;',
'begin',
'',
'',
'if :P11_CUSTOMER_OPTIONS = ''NEW'' then',
'  l_customer_id := :P18_CUSTOMER_ID;',
'end if;',
'',
'-- Fetch values that need to be inserted into the Order Header',
'select user_id into l_user_id from demo_users where user_name = :APP_USER;',
'select demo_ord_seq.nextval into l_order_id from dual;',
'',
'-- Insert a row into the Order Header table',
'insert into demo_orders values(l_order_id, l_customer_id, null, sysdate, l_user_id);',
'commit;',
'-- Loop through the ORDER collection and insert rows into the Order Line Item table',
'for x in (select c001, c003, sum(c004) c004 from apex_collections ',
'  where collection_name = ''ORDER'' group by c001, c003)',
'loop',
'  insert into demo_order_items values ',
'    (null, l_order_id, to_number(x.c001), to_number(x.c003),to_number(x.c004));',
'end loop;',
'',
'-- Truncate the collection after the order has been placed',
'apex_collection.truncate_collection(p_collection_name => ''ORDER'');',
'',
'-- Set the item P14_ORDER_ID to the order which was just placed',
':P14_ORDER_ID := l_order_id;',
'end;'))
,p_process_when_button_id=>wwv_flow_api.id(827635250179079599)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(827585951966834131)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Product to the ORDER Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for x in (select * from demo_product_info where product_id = :P12_PRODUCT_ID)',
'loop',
'  apex_collection.add_member(p_collection_name => ''ORDER'', ',
'    p_c001 => x.product_id, ',
'    p_c002 => x.product_name,',
'    p_c003 => x.list_price,',
'    p_c004 => 1);',
'end loop;'))
,p_process_when=>'ADD'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(827605440379944322)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove Product from the ORDER Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for x in ',
'  (select seq_id, c001 from apex_collections ',
'    where collection_name = ''ORDER'' and c001 = :P12_PRODUCT_ID)',
'loop',
'apex_collection.delete_member(p_collection_name => ''ORDER'', p_seq => x.seq_id);',
'--htp.p(''removed an item'');',
'end loop;'))
,p_process_when=>'REMOVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Customer Map'
,p_step_title=>'Customer Map'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Customer Map'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20100602113938'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(845765011094704999)
,p_plug_name=>'Customer Map'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845285826252030232)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"',
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"',
'    width="#WIDTH#"',
'    height="#HEIGHT#"',
'    id="#CHART_NAME#"',
'    align="top">',
'<param name="movie" value="#IMAGE_PREFIX#flashchart/swf/AnyChart.swf">',
'<param name="quality" value="high">',
'<param name="allowScriptAccess" value="sameDomain">',
'<param name="allowNetworking" value="all">',
'<param name="scale" value="noscale">',
'<param name="wmode" value="transparent">',
'<param name="FlashVars" value="XMLFile=#HOST#apex_util.flash?p=&APP_ID.:13:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#&noDataText=#FLASH_NO_DATA#&initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&waitingForD'
||'ataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'',
'<embed src="#IMAGE_PREFIX#flashchart/swf/AnyChart.swf"',
'       quality="high"',
'       width="#WIDTH#"',
'       height="#HEIGHT#"',
'       name="#CHART_NAME#"',
'       scale="noscale"',
'       align=""',
'       allowScriptAccess="sameDomain" ',
'       allowNetworking="all"',
'       type="application/x-shockwave-flash"',
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"',
'       wmode="transparent"',
'        FlashVars="XMLFile=#HOST#apex_util.flash?p=&APP_ID.:13:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#&noDataText=#FLASH_NO_DATA#&initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&waitingForDataText=#FLA'
||'SH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'</embed>',
'</object>',
'#CHART_REFRESH#'))
,p_plug_source_type=>'NATIVE_FLASH_MAP'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(845765209264705002)
,p_default_chart_type=>'Map'
,p_chart_title=>'Count of Customers by State'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_829383609554689260'
,p_chart_width=>700
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:X::N::V:Y:None:::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_ID:Y:Y:Series:::- Map Regions -:Y:'
,p_map_source=>'usa/country/states.amap'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_bgtype=>'Solid'
,p_grid_bgcolor1=>'#FFFFFF'
,p_color_scheme=>'7'
,p_map_undef_color_scheme=>'1'
, p_names_font=> null
, p_names_rotation=> null
,p_hints_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:'
,p_y_axis_title_font=>'Tahoma:14:'
,p_gauge_labels_font=>'Tahoma:10'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(845765312100705004)
,p_chart_id=>wwv_flow_api.id(845765209264705002)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''f?p=''||:APP_ID||'':2:''||:app_session||'':::2,RIR:IR_CUST_STATE:''||',
'             cust_state click_link,',
'       cust_state region_id,',
'       count(*) count_of_customers',
'  from demo_customers',
'group by cust_state'))
,p_series_type=>'Bubble'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No customers found.'
,p_series_query_row_count_max=>50
,p_show_action_link=>'N'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Order Summary'
,p_step_title=>'Order Summary'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(845280207803030214)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602093959'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(840009737045215244)
,p_plug_name=>'Order Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(819657848186779026)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(845295319092030269)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(845406220133023691)
,p_plug_name=>'Order Summary'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845290826127030250)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(839911938224950586)
,p_plug_name=>'Order Header'
,p_parent_plug_id=>wwv_flow_api.id(845406220133023691)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'for x in (select c.cust_first_name, c.cust_last_name, cust_street_address1, cust_street_address2, cust_city, cust_state, cust_postal_code from demo_customers c, demo_orders o',
'where c.customer_id = o.customer_id and o.order_id = :P14_ORDER_ID)',
'loop',
'  htp.p(''<span style="font-size:16px;font-weight:bold;">ORDER #'' || :P14_ORDER_ID || ''</span><br />'');',
'  htp.p(htf.escape_sc(x.cust_first_name) || '' '' || htf.escape_sc(x.cust_last_name) || ''<br />'');',
'  htp.p(htf.escape_sc(x.cust_street_address1) || ''<br />'');',
'  if x.cust_street_address2 is not null then',
'      htp.p(htf.escape_sc(x.cust_street_address2) || ''<br />'');',
'  end if;',
'  htp.p(htf.escape_sc(x.cust_city) || '', '' || x.cust_state || ''  '' || htf.escape_sc(x.cust_postal_code) || ''<br /><br />'');',
'end loop;',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(839927452002049157)
,p_name=>'Order Lines'
,p_parent_plug_id=>wwv_flow_api.id(845406220133023691)
,p_template=>wwv_flow_api.id(16380697206009170)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.product_name, oi.unit_price, oi.quantity, (oi.unit_price * oi.quantity) exteneded_price   ',
'from demo_order_items oi, demo_product_info p',
'where oi.product_id = p.product_id and oi.order_id = :P14_ORDER_ID'))
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(845296604145030275)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Report Total'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(839929533217062735)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Product Name'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(839927944263049179)
,p_query_column_id=>2
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>2
,p_column_heading=>'Unit Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(839928034875049179)
,p_query_column_id=>3
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>3
,p_column_heading=>'Quantity'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(839929653381062736)
,p_query_column_id=>4
,p_column_alias=>'EXTENEDED_PRICE'
,p_column_display_sequence=>4
,p_column_heading=>'Exteneded Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(842088623015494909)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(845406220133023691)
,p_button_name=>'RETURN'
,p_button_static_id=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'View Orders'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(845406827883035314)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(845406220133023691)
,p_button_name=>'HOME'
,p_button_static_id=>'HOME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Home'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(839906748697934700)
,p_name=>'P14_ORDER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(839927452002049157)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Sales by Category and Product'
,p_step_title=>'Sales by Category and Product'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20100602101429'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(830968640997619983)
,p_plug_name=>'Sales by Category'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845285826252030232)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"',
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"',
'    width="#WIDTH#"',
'    height="#HEIGHT#"',
'    id="#CHART_NAME#"',
'    align="top">',
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:16:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#">',
'<param name="quality" value="high">',
'<param name="allowScriptAccess" value="sameDomain">',
'<param name="allowNetworking" value="all">',
'<param name="scale" value="noscale">',
'<param name="wmode" value="transparent">',
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'',
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:16:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"',
'       quality="high"',
'       width="#WIDTH#"',
'       height="#HEIGHT#"',
'       name="#CHART_NAME#"',
'       scale="noscale"',
'       align=""',
'       allowScriptAccess="sameDomain" ',
'       allowNetworking="all"',
'       type="application/x-shockwave-flash"',
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"',
'       wmode="transparent"',
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'</embed>',
'</object>',
'#CHART_REFRESH#'))
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(513123928003440675)
,p_default_chart_type=>'2DPie'
,p_chart_title=>'Sales by Category'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_578315538481530222'
,p_chart_width=>600
,p_chart_height=>400
,p_chart_animation=>'N'
,p_display_attr=>':H::V:::Right::V:Y:None:::N:::Default'
,p_dial_tick_attr=>':::Auto:needle:2:1:90:180::Inside:'
,p_gantt_attr=>'N:None:None:Full:None:None:Full:None:None:Full:30:15:5:N::::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'1'
,p_x_axis_label_font=>'Verdana:12:#000000'
,p_y_axis_prefix=>'$'
,p_y_axis_label_font=>'Verdana:12:#000000'
, p_names_font=> null
, p_names_rotation=> null
,p_values_prefix=>'$'
,p_hints_font=>'Verdana:12:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'::'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'Verdana:12:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(513124012459440676)
,p_chart_id=>wwv_flow_api.id(513123928003440675)
,p_series_seq=>10
,p_series_name=>'Categories'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null, p.category label, sum(o.order_total)',
'from demo_orders o, demo_order_items oi, demo_product_info p',
'where o.order_id = oi.order_id',
'and oi.product_id = p.product_id',
'group by category order by 3 desc'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(841722727800916349)
,p_plug_name=>'Sales by Product'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845285826252030232)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"',
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"',
'    width="#WIDTH#"',
'    height="#HEIGHT#"',
'    id="#CHART_NAME#"',
'    align="top">',
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:16:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#">',
'<param name="quality" value="high">',
'<param name="allowScriptAccess" value="sameDomain">',
'<param name="allowNetworking" value="all">',
'<param name="scale" value="noscale">',
'<param name="wmode" value="transparent">',
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'',
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:16:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"',
'       quality="high"',
'       width="#WIDTH#"',
'       height="#HEIGHT#"',
'       name="#CHART_NAME#"',
'       scale="noscale"',
'       align=""',
'       allowScriptAccess="sameDomain" ',
'       allowNetworking="all"',
'       type="application/x-shockwave-flash"',
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"',
'       wmode="transparent"',
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'</embed>',
'</object>',
'#CHART_REFRESH#'))
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(841722899152916350)
,p_default_chart_type=>'Horizontal3DColumn'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_825342201946907180'
,p_chart_width=>700
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N::Y:N:N::V:Y:None:::N:::Default'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'7'
,p_x_axis_title=>'Total Sales'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Product'
,p_y_axis_label_font=>'Tahoma:10:#000000'
, p_names_font=> null
, p_names_rotation=> null
,p_hints_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(841723001631916351)
,p_chart_id=>wwv_flow_api.id(841722899152916350)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''f?p=&APP_ID.:6:''||:app_session||'':::6:P6_PRODUCT_ID:''||p.product_id||'':'' link, ',
'       p.product_name||'' [$''||p.list_price||'']'' product,',
'       SUM(oi.quantity * oi.unit_price) sales',
'from demo_order_items oi',
',    demo_product_info p',
'where oi.product_id = p.product_id',
'group by p.product_id, p.product_name, p.list_price',
'order by p.product_name'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Customer Orders'
,p_step_title=>'Customer Orders'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20100602114237'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(841470109642750336)
,p_plug_name=>'Customer Orders'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845285826252030232)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"',
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"',
'    width="#WIDTH#"',
'    height="#HEIGHT#"',
'    id="#CHART_NAME#"',
'    align="top">',
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:17:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#">',
'<param name="quality" value="high">',
'<param name="allowScriptAccess" value="sameDomain">',
'<param name="allowNetworking" value="all">',
'<param name="scale" value="noscale">',
'<param name="wmode" value="transparent">',
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'',
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:17:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"',
'       quality="high"',
'       width="#WIDTH#"',
'       height="#HEIGHT#"',
'       name="#CHART_NAME#"',
'       scale="noscale"',
'       align=""',
'       allowScriptAccess="sameDomain" ',
'       allowNetworking="all"',
'       type="application/x-shockwave-flash"',
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"',
'       wmode="transparent"',
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'</embed>',
'</object>',
'#CHART_REFRESH#'))
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(841470329684750339)
,p_default_chart_type=>'StackedHorizontal3DColumn'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_825089632478741169'
,p_chart_width=>700
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N::Y:N:Bottom::H:Y:None:::N:::Default'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'1'
,p_x_axis_title=>'Order Total'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Customer'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_legend_title=>'Categories'
, p_names_font=> null
, p_names_rotation=> null
,p_hints_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(841470399070750344)
,p_chart_id=>wwv_flow_api.id(841470329684750339)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''f?p=&APP_ID.:7:''||:app_session||'':::7:P7_CUSTOMER_ID,P7_BRANCH:''||c.customer_id||'',17:'' link,',
'       c.cust_last_name||'', ''||c.cust_first_name Customer_Name,',
'       sum (decode(p.category,''Accessories'',oi.quantity * oi.unit_price,0)) "Accessories",',
'       sum (decode(p.category,''Mens'',oi.quantity * oi.unit_price,0)) "Mens",',
'       sum (decode(p.category,''Womens'',oi.quantity * oi.unit_price,0)) "Womens"',
'from demo_customers c',
',    demo_orders o',
',    demo_order_items oi',
',    demo_product_info p',
'where c.customer_id = o.customer_id',
'and   o.order_id = oi.order_id',
'and   oi.product_id = p.product_id',
'group by c.customer_id, c.cust_last_name, c.cust_first_name',
'order by c.cust_last_name'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Enter New Order'
,p_step_title=>'Enter New Order'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Create Customers'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(845280515917030214)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602093959'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(845382009249798723)
,p_plug_name=>'Customer Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845290826127030250)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(845390403745798773)
,p_plug_name=>'New Customer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845289729551030245)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the new customer details. Please ensure these details are correct as they are used for ordering and invoicing.</p>',
'<p>Where possible obtain the customer phone number(s) to aid in contacting the customer at a later date.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P18_CUSTOMER_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(845390606426798774)
,p_plug_name=>'Order Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(819657848186779026)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(845295319092030269)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P18_BRANCH'
,p_plug_display_when_cond2=>'12'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>'Only shows when part of the Create Order Wizard'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(845400714405908477)
,p_plug_name=>'Order Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(819657848186779026)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(845295319092030269)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(845382805601798732)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(845382009249798723)
,p_button_name=>'INSERT'
,p_button_static_id=>'INSERT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P18_CUSTOMER_ID'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(845383026111798734)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(845382009249798723)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(845383404621798736)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(845382009249798723)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'< Previous'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P18_CUSTOMER_ID IS NOT NULL',
'AND :P18_BRANCH <> 12'))
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(845396719422872127)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(845382805601798732)
,p_branch_sequence=>30
,p_branch_condition=>'SAVE,CREATE'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 01-JUN-2010 14:40 by DPEAKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845383619908798738)
,p_name=>'P18_CUSTOMER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer ID'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845383815179798741)
,p_name=>'P18_CUST_FIRST_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'CUST_FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>21
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s first name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845384326081798743)
,p_name=>'P18_CUST_LAST_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'CUST_LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>21
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s last name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845384802996798745)
,p_name=>'P18_CUST_STREET_ADDRESS1'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Street Address'
,p_source=>'CUST_STREET_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s address.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845385317511798747)
,p_name=>'P18_CUST_STREET_ADDRESS2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Line 2'
,p_source=>'CUST_STREET_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the second line of the customer''s street address, if it exists.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845385804412798749)
,p_name=>'P18_CUST_CITY'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CUST_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>31
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s city.  This value is determined via a web service based on the zip code when the customer is created.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845386328752798751)
,p_name=>'P18_CUST_STATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'CUST_STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(state_name) display_value, st return_value from   demo_states',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose State -'
,p_cSize=>3
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s state.  This value is determined via a web service based on the zip code when the customer is created.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845386810167798755)
,p_name=>'P18_CUST_EMAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'CUST_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>31
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s e-mail address.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845387323635798757)
,p_name=>'P18_PHONE_NUMBER1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.MASKED_TEXT_FIELD'
,p_cSize=>26
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s phone number.'
,p_attribute_01=>'(999) 999-9999'
,p_attribute_02=>'_'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845387820870798759)
,p_name=>'P18_PHONE_NUMBER2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Alternate Number'
,p_source=>'PHONE_NUMBER2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.MASKED_TEXT_FIELD'
,p_cSize=>26
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s alternate phone number.'
,p_attribute_01=>'(999) 999-9999'
,p_attribute_02=>'_'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845388328171798761)
,p_name=>'P18_CREDIT_LIMIT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Limit'
,p_source=>'CREDIT_LIMIT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>9
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s credit limit.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845388810133798763)
,p_name=>'P18_BRANCH'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_item_default=>'2'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845388999221798764)
,p_name=>'P18_CUST_POSTAL_CODE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(845382009249798723)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'CUST_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299620791030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the customer''s US ZIP code.  When creating a new customer, this value is passed to a web service to determine city & state.  If you do not know a valid US ZIP code, you can use "06037".'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(845391320859798784)
,p_validation_name=>'P18_PHONE_NUMBER1'
,p_validation_sequence=>23
,p_validation=>'P18_PHONE_NUMBER1'
,p_validation2=>'^\(?[[:digit:]]{3}\)?[-. ][[:digit:]]{3}[-. ][[:digit:]]{4}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Phone number format not recognized'
,p_associated_item=>wwv_flow_api.id(845387323635798757)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(845391505475798784)
,p_validation_name=>'P18_PHONE_NUMBER2'
,p_validation_sequence=>33
,p_validation=>'P18_PHONE_NUMBER2'
,p_validation2=>'^\(?[[:digit:]]{3}\)?[-. ][[:digit:]]{3}[-. ][[:digit:]]{4}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Phone number format not recognized'
,p_associated_item=>wwv_flow_api.id(845387820870798759)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(845391129158798782)
,p_validation_name=>'Credit Limit <= 5000'
,p_validation_sequence=>63
,p_validation=>':P18_CREDIT_LIMIT <= 5000'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'A customer''s Credit Limit must be less than or equal to $5,000'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(845391714649798785)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from DEMO_CUSTOMERS'
,p_attribute_02=>'DEMO_CUSTOMERS'
,p_attribute_03=>'P18_CUSTOMER_ID'
,p_attribute_04=>'CUSTOMER_ID'
,p_attribute_15=>'D'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(845391919853798789)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of DEMO_CUSTOMERS'
,p_attribute_02=>'DEMO_CUSTOMERS'
,p_attribute_03=>'P18_CUSTOMER_ID'
,p_attribute_04=>'CUSTOMER_ID'
,p_attribute_09=>'P18_CUSTOMER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table DEMO_CUSTOMERS.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(845392128591798790)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'7'
,p_process_when_button_id=>wwv_flow_api.id(845383404621798736)
,p_process_when_type=>'NEVER'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Product Order Tree'
,p_step_title=>'Product Order Tree'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Orders by Category'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602103059'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(845773902076833298)
,p_plug_name=>'Product Order Tree'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(845285826252030232)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with data as (',
'select ''M'' as link_type,',
'       null as parent,',
'       ''All Categories'' as id,',
'       ''All Categories'' as name,',
'       null as sub_id',
'  from demo_product_info',
'union',
'select distinct(''C'') as link_type,',
'       ''All Categories'' as parent,',
'       category as id,',
'       category as name,',
'       null as sub_id',
'  from demo_product_info',
'union',
'select ''P'' as link_type,',
'       category parent,',
'       to_char(product_id) id,',
'       product_name as name,',
'       product_id as sub_id',
'  from demo_product_info',
'union',
'select ''O'' as link_type,',
'       to_char(product_id) as parent,',
'       null as id,',
'       (select c.cust_first_name || '' '' || c.cust_last_name  ',
'          from demo_customers c, demo_orders o',
'         where c.customer_id = o.customer_id',
'           and o.order_id    = oi.order_id ) || '', ordered ''||to_char(oi.quantity) as name,',
'       order_id as sub_id',
'  from demo_order_items oi',
')',
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       name as title, ',
'       null as icon, ',
'       id as value, ',
'       ''View'' as tooltip, ',
'       case when link_type = ''M''',
'            then ''f?p=''||:APP_ID||'':3:''||:APP_SESSION||''::NO:RIR''',
'            when link_type = ''C''',
'            then ''f?p=''||:APP_ID||'':3:''||:APP_SESSION||''::NO:CIR:IR_CATEGORY:''',
'                 ||name',
'            when link_type = ''P''',
'            then ''f?p=''||:APP_ID||'':6:''||:APP_SESSION||''::NO::P6_PRODUCT_ID:''',
'                 ||sub_id',
'            when link_type = ''O''',
'            then ''f?p=''||:APP_ID||'':29:''||:APP_SESSION||''::NO::P29_ORDER_ID:''',
'                 || sub_id',
'            else null',
'            end as link ',
'from data',
'start with parent is null',
'connect by prior id = parent',
'order siblings by name'))
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_no_data_found=>'No data found.'
,p_attribute_02=>'S'
,p_attribute_04=>'STATIC'
,p_attribute_05=>'View'
,p_attribute_06=>'tree834170320060115324'
,p_attribute_07=>'APEX_TREE'
,p_attribute_10=>'"3"'
,p_attribute_11=>'"2"'
,p_attribute_12=>'"4"'
,p_attribute_15=>'"1"'
,p_attribute_20=>'"5"'
,p_attribute_22=>'"6"'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'"7"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(845774301590833310)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(845773902076833298)
,p_button_name=>'CONTRACT_ALL'
,p_button_static_id=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''tree834170320060115324'');'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(845774518166833315)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(845773902076833298)
,p_button_name=>'EXPAND_ALL'
,p_button_static_id=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Expand All'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''tree834170320060115324'');'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_name=>'Product Info'
,p_step_title=>'Product Info'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(845281400859030217)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DPEAKE'
,p_last_upd_yyyymmddhh24miss=>'20100527164402'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1002789850207640255)
,p_name=>'Product Information'
,p_template=>wwv_flow_api.id(845287913442030239)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>2
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name,',
'product_description,',
'category,',
'list_price',
'from demo_product_info where product_id = :P20_PRODUCT_ID'))
,p_fixed_header=>'NONE'
,p_query_row_template=>2
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1002790153142640280)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Product Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1002790229653640280)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1002790328353640280)
,p_query_column_id=>3
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>3
,p_column_heading=>'Category'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1002790525423640280)
,p_query_column_id=>4
,p_column_alias=>'LIST_PRICE'
,p_column_display_sequence=>4
,p_column_heading=>'List Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1013283127194140946)
,p_name=>'Product Image'
,p_template=>wwv_flow_api.id(16380697206009170)
,p_display_sequence=>5
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(nvl(dbms_lob.getlength(product_image),0),0,null,''<img src="''||apex_util.get_blob_file_src(''P6_PRODUCT_IMAGE'',product_id)||''" />'') image',
'from demo_product_info',
'where product_id = :P20_PRODUCT_ID'))
,p_fixed_header=>'NONE'
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(679096330156176322)
,p_query_column_id=>1
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>1
,p_column_heading=>'Image'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1002803945846724132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1002789850207640255)
,p_button_name=>'CLOSE'
,p_button_static_id=>'CLOSE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11864394917245831)
,p_button_image_alt=>'Close this Window'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:window.close();'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1002791457480642330)
,p_name=>'P20_PRODUCT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1002789850207640255)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_tab_set=>'TS1'
,p_name=>'Order Details'
,p_step_title=>'Order Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(803812329414323548)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SBKENNED'
,p_last_upd_yyyymmddhh24miss=>'20100602093959'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(826151642192343846)
,p_plug_name=>'Order #&P29_ORDER_ID.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845286105746030234)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(826153823528343884)
,p_name=>'Items for Order #&P29_ORDER_ID.'
,p_template=>wwv_flow_api.id(845286105746030234)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select oi.order_item_id, ',
'       oi.order_id, ',
'       oi.product_id, ',
'       oi.unit_price, ',
'       oi.quantity, ',
'       (oi.unit_price * oi.quantity) extended_price,   ',
'       dbms_lob.getlength(product_image) product_image ,',
'decode(nvl(dbms_lob.getlength(pi.product_image),0),0,null,',
'    ''<img style="border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;" ''||',
'    ''src="''||',
'    apex_util.get_blob_file_src(''P6_PRODUCT_IMAGE'',pi.product_id)||',
'    ''" height="75" width="75" alt="Product Image" title="Product Image" />'')',
'    detail_img',
'from DEMO_ORDER_ITEMS oi, DEMO_PRODUCT_INFO pi ',
'where oi.ORDER_ID = :P29_ORDER_ID ',
'and oi.product_id = pi.product_id (+)'))
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(845297627456030280)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'There are no items associated with this Order.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'&nbsp;'
,p_csv_output=>'N'
,p_query_asc_image=>'blue_arrow_down.gif'
,p_query_desc_image=>'blue_arrow_up.gif'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(826155037812343903)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(826153941871343892)
,p_query_column_id=>2
,p_column_alias=>'ORDER_ITEM_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Order Item Id'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'SAMPLE'
,p_ref_table_name=>'DEMO_ORDER_ITEMS'
,p_ref_column_name=>'ORDER_ITEM_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(826154040424343892)
,p_query_column_id=>3
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Order Id'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_column_default=>'P29_ORDER_ID'
,p_column_default_type=>'ITEM'
,p_ref_schema=>'SAMPLE'
,p_ref_table_name=>'DEMO_ORDER_ITEMS'
,p_ref_column_name=>'ORDER_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(826154136270343893)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(827499351491124344)
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_ref_schema=>'SAMPLE'
,p_ref_table_name=>'DEMO_ORDER_ITEMS'
,p_ref_column_name=>'PRODUCT_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(826154244401343893)
,p_query_column_id=>5
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>6
,p_column_heading=>'Unit Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_ref_schema=>'SAMPLE'
,p_ref_table_name=>'DEMO_ORDER_ITEMS'
,p_ref_column_name=>'UNIT_PRICE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(826154328048343893)
,p_query_column_id=>6
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>5
,p_column_heading=>'Quantity'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_column_default=>'1'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_ref_schema=>'SAMPLE'
,p_ref_table_name=>'DEMO_ORDER_ITEMS'
,p_ref_column_name=>'QUANTITY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(827545746244633866)
,p_query_column_id=>7
,p_column_alias=>'EXTENDED_PRICE'
,p_column_display_sequence=>7
,p_column_heading=>'Extended Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(681235253165081363)
,p_query_column_id=>8
,p_column_alias=>'PRODUCT_IMAGE'
,p_column_display_sequence=>8
,p_column_heading=>'Product Image'
,p_column_format=>'IMAGE:DEMO_PRODUCT_INFO:PRODUCT_IMAGE:PRODUCT_ID::MIMETYPE:FILENAME:IMAGE_LAST_UPDATE::attachment:Download'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_pk_col_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select oi.order_item_id, ',
'       oi.order_id, ',
'       oi.product_id, ',
'       oi.unit_price, ',
'       oi.quantity, ',
'       (oi.unit_price * oi.quantity) extended_price,   ',
'       dbms_lob.getlength(product_image) product_image ',
'from DEMO_ORDER_ITEMS oi, DEMO_PRODUCT_INFO pi ',
'where oi.ORDER_ID = :P29_ORDER_ID ',
'and oi.product_id = pi.product_id (+)'))
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(845526314590959579)
,p_query_column_id=>9
,p_column_alias=>'DETAIL_IMG'
,p_column_display_sequence=>9
,p_column_heading=>'Product Image'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(957989065273795325)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(826151642192343846)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P29_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(957991942408795377)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(826153823528343884)
,p_button_name=>'ADD_CHANGES_ADD'
,p_button_static_id=>'ADD_CHANGES_ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Add Item to Order'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(957990351013795345)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(826151642192343846)
,p_button_name=>'GET_PREVIOUS_ORDER_ID'
,p_button_static_id=>'GET_PREVIOUS_ORDER_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'&lt;'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ORDER_ID'')'
,p_button_condition=>'P29_ORDER_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(957990242431795345)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(826151642192343846)
,p_button_name=>'GET_NEXT_ORDER_ID'
,p_button_static_id=>'GET_NEXT_ORDER_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'&gt;'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ORDER_ID'')'
,p_button_condition=>'P29_ORDER_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(957989258040795326)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(826151642192343846)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(957988941607795325)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(826151642192343846)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P29_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(957989161231795325)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(826151642192343846)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Delete Order'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P29_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(957991856007795377)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(826153823528343884)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_static_id=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Delete Checked Items'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from "#OWNER#"."DEMO_ORDER_ITEMS" oi',
'where "ORDER_ID" = :P29_ORDER_ID'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(957990936247795361)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_ORDER_ID:&P29_ORDER_ID_PREV.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(957990351013795345)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(957990859244795360)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_ORDER_ID:&P29_ORDER_ID_NEXT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(957990242431795345)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(959641742073029303)
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,DELETE,CREATE'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(957992563365795382)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(826152127015343851)
,p_name=>'P29_ORDER_ID'
,p_item_sequence=>99
,p_item_plug_id=>wwv_flow_api.id(826151642192343846)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Id'
,p_source=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(826152243744343859)
,p_name=>'P29_CUSTOMER_ID'
,p_is_required=>true
,p_item_sequence=>98
,p_item_plug_id=>wwv_flow_api.id(826151642192343846)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Id'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>22
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(826152442676343862)
,p_name=>'P29_ORDER_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(826151642192343846)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Total'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'ORDER_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>8
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299329513030285)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(826152531381343862)
,p_name=>'P29_ORDER_TIMESTAMP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(826151642192343846)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Date'
,p_format_mask=>'fmDay, fmDD fmMonth, YYYY'
,p_source=>'ORDER_TIMESTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299329513030285)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(826152639458343863)
,p_name=>'P29_USER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(826151642192343846)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Rep'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select user_name d, user_id r from demo_users order by 1'
,p_cSize=>22
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Use to change the Sales Rep associated with this order.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(826153241899343873)
,p_name=>'P29_ORDER_ID_NEXT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(826151642192343846)
,p_prompt=>'P29_ORDER_ID_NEXT'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(826153337235343873)
,p_name=>'P29_ORDER_ID_PREV'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(826151642192343846)
,p_prompt=>'P29_ORDER_ID_PREV'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(826153428330343876)
,p_name=>'P29_ORDER_ID_COUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(826151642192343846)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_tag_attributes=>'class="fielddata"'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(827535127566590463)
,p_name=>'P29_CUSTOMER_INFO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(826151642192343846)
,p_prompt=>'Customer Info'
,p_source=>'select htf.escape_sc(cust_first_name) || '' '' || htf.escape_sc(cust_last_name) || ''<br />'' || htf.escape_sc(cust_street_address1) || decode(cust_street_address2, null, null, ''<br />'' || htf.escape_sc(cust_street_address2)) || ''</br>'' || htf.escape_sc('
||'cust_city) || '', '' || htf.escape_sc(cust_state) || ''  '' || htf.escape_sc(cust_postal_code) from demo_customers where customer_id = :P29_CUSTOMER_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_api.id(845299329513030285)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(957989948504795342)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from DEMO_ORDERS'
,p_attribute_02=>'DEMO_ORDERS'
,p_attribute_03=>'P29_ORDER_ID'
,p_attribute_04=>'ORDER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(957990740039795357)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'DEMO_ORDERS'
,p_attribute_03=>'P29_ORDER_ID'
,p_attribute_04=>'ORDER_ID'
,p_attribute_07=>'ORDER_ID'
,p_attribute_09=>'P29_ORDER_ID_NEXT'
,p_attribute_10=>'P29_ORDER_ID_PREV'
,p_attribute_13=>'P29_ORDER_ID_COUNT'
,p_attribute_14=>'user_id = (select user_id from demo_users where user_name = :APP_USER)'
,p_process_error_message=>'Unable to run Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(957990055298795345)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of DEMO_ORDERS'
,p_attribute_02=>'DEMO_ORDERS'
,p_attribute_03=>'P29_ORDER_ID'
,p_attribute_04=>'ORDER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table DEMO_ORDERS.'
,p_process_success_message=>'Action Processed.  '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(957992051481795379)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(826153823528343884)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'DEMO_ORDER_ITEMS'
,p_attribute_03=>'ORDER_ITEM_ID'
,p_process_error_message=>'Unable to process update'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(957992144019795379)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(826153823528343884)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'DEMO_ORDER_ITEMS'
,p_attribute_03=>'ORDER_ITEM_ID'
,p_process_error_message=>'Unable to process delete'
,p_process_when=>'APPLY_CHANGES_MRD,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(957990159473795345)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(957989161231795325)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(957992450136795382)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(826153823528343884)
,p_process_type=>'NATIVE_TABFORM_ADD_ROWS'
,p_process_name=>'AddRows'
,p_attribute_01=>'1'
,p_process_error_message=>'Unable to add rows'
,p_process_when_button_id=>wwv_flow_api.id(957991942408795377)
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_name=>'Login'
,p_alias=>'LOGIN'
,p_step_title=>'Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(845278819882030208)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MIKE'
,p_last_upd_yyyymmddhh24miss=>'20100602113642'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(802424642532191566)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<hr />By default, two accounts are created in the Sample Application: <span class="fielddatabold">demo</span> and <span class="fielddatabold">admin</span>. The default password for both accounts is the all lowercase name of the workspace in which thi'
||'s application is located. <p />Please refer to the section "Understanding Sample Application" in the Oracle Help or Oracle User''s Guide for more information.'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(802425048745191585)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(802424642532191566)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11864394917245831)
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802424742040191575)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(802424642532191566)
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(802424944544191585)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(802424642532191566)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>20
,p_cMaxlength=>100
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(802425253320191591)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'owa_util.mime_header(''text/html'', FALSE);',
'owa_cookie.send(',
'    name=>''LOGIN_USERNAME_COOKIE'',',
'    value=>lower(:P101_USERNAME));',
'exception when others then null;',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(802425137928191587)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_flow_custom_auth_std.login(',
'    P_UNAME       => v(''P101_USERNAME''),',
'    P_PASSWORD    => :P101_PASSWORD,',
'    P_SESSION_ID  => v(''APP_SESSION''),',
'    P_FLOW_PAGE   => :APP_ID||'':1''',
'    );'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(802425426659191593)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(802425349297191593)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v varchar2(255) := null;',
'    c owa_cookie.cookie;',
'begin',
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');',
'   :P101_USERNAME := c.vals(1);',
'exception when others then null;',
'end;'))
);
end;
/
prompt --application/pages/page_00102
begin
wwv_flow_api.create_page(
 p_id=>102
,p_user_interface_id=>wwv_flow_api.id(11863956220245806)
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_step_title=>'Feedback'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(845281400859030217)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_comment=>'This page was generated by the feedback wizard'
,p_last_updated_by=>'MIKE'
,p_last_upd_yyyymmddhh24miss=>'20100602113038'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(845810120065371113)
,p_plug_name=>'Feedback'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(845286105746030234)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(845813116634371150)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(845810120065371113)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283214399030223)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(845812921715371147)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(845810120065371113)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(845283418604030224)
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845810306827371129)
,p_name=>'P102_APPLICATION_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(845810120065371113)
,p_prompt=>'Application:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select application_id||''. ''||application_name d, application_id v from apex_applications where application_id = :P102_APPLICATION_ID'
,p_cSize=>60
,p_tag_attributes=>'class="fielddatabold"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Identifies Application.'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845810826727371141)
,p_name=>'P102_PAGE_ID'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(845810120065371113)
,p_prompt=>'Page:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select page_id||''. ''||page_name d, page_id v from apex_application_pages where page_id = :P102_PAGE_ID and application_id = :P102_APPLICATION_ID'
,p_cSize=>60
,p_tag_attributes=>'class="fielddatabold"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Identifies page within application.'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845811308994371142)
,p_name=>'P102_A'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(845810120065371113)
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845811510392371142)
,p_name=>'P102_FEEDBACK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(845810120065371113)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter your feedback and press the submit feedback button.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845812007761371143)
,p_name=>'P102_X'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(845810120065371113)
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845812200222371143)
,p_name=>'P102_FEEDBACK_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(845810120065371113)
,p_prompt=>'Feedback Type'
,p_source=>'1'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select the_name, id from APEX_FEEDBACK_TYPES order by id'
,p_cSize=>20
,p_cMaxlength=>100
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(845299420613030286)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Please identify the type of feedback you are providing.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(845812699486371143)
,p_name=>'P102_Y'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(845810120065371113)
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(845813304212371153)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.submit_feedback (',
'    p_comment         => :P102_FEEDBACK,',
'    p_type            => :P102_FEEDBACK_TYPE,',
'    p_application_id  => :P102_APPLICATION_ID,',
'    p_page_id         => :P102_PAGE_ID,',
'    p_email           => null);'))
,p_process_when_button_id=>wwv_flow_api.id(845812921715371147)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(845813526421371155)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Window'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(509014209541604531)
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
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
