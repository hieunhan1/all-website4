<?php
define('CONS_BASE_URL', 'http://localhost/all/source_temp_v4');
define('CONS_BASE_DIR', '/all/source_temp_v4/');/*upload host tắt CONS này*/

define('CONS_HOST',		'localhost');
define('CONS_USER_DB',	'root');
define('CONS_PASS_DB',	'root');
define('CONS_DB_NAME',	'source_temp_v4');

/*WEBSITE*/
define('CONS_DEFAULT_WEB_CONTROLLER', 'control_web');
define('CONS_DEFAULT_WEB_ACTION', 'index');
define('CONS_WEB_PHAN_TRANG','pages');
define('CONS_WEB_VIEW_CONTENT','view_content');


/*ADMIN*/
define('CONS_DEFAULT_ADMIN_CONTROLLER', 'cp_admin');
define('CONS_DEFAULT_ADMIN_ACTION', 'index');
define('CONS_DEFAULT_LINK_LOGIN_ADMIN', CONS_BASE_URL.'/'.CONS_DEFAULT_ADMIN_CONTROLLER.'/');
define('CONS_ADMIN_NAME_LOGOUT', 'logout');
define('CONS_ADMIN_CSS_IMG', CONS_BASE_URL.'/css/admin_img/');
define('CONS_ADMIN_PER_PAGE', 30);

/*
define('CONS_DEFAULT_VIEW_INFO','view_info');
define('CONS_DEFAULT_PHAN_TRANG','pages');
*/