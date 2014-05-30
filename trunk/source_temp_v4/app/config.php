<?php
define('CONS_BASE_URL', 'http://localhost/all/source_temp_v4');
define('CONS_BASE_DIR', '/all/source_temp_v4/');/*upload host tắt CONS này*/

define('CONS_HOST',		'localhost');
define('CONS_USER_DB',	'root');
define('CONS_PASS_DB',	'root');
define('CONS_DB_NAME',	'source_temp_v4');

/*IMAGES UPLOAD*/
define('CONS_IMAGES_ARTICLES',CONS_BASE_DIR.'public/images/articles/');
define('CONS_IMAGES_ARTICLES_THUMBS',CONS_BASE_DIR.'public/_thumbs/Images/articles/');
define('CONS_IMAGES_CATALOG',CONS_BASE_DIR.'public/images/catalog/');
define('CONS_IMAGES_CATALOG_THUMBS',CONS_BASE_DIR.'public/_thumbs/Images/catalog/');
define('CONS_IMAGES_SLIDER_BANNER',CONS_BASE_DIR.'public/images/slider-banner/');
define('CONS_IMAGES_SLIDER_BANNER_THUMBS',CONS_BASE_DIR.'public/_thumbs/Images/slider-banner/');
define('CONS_IMAGES_VIDEOS',CONS_BASE_DIR.'public/images/videos/');
define('CONS_IMAGES_VIDEOS_THUMBS',CONS_BASE_DIR.'public/_thumbs/Images/videos/');
define('CONS_IMAGES_PHOTOS',CONS_BASE_DIR.'public/images/photos/');
define('CONS_IMAGES_PHOTOS_THUMBS',CONS_BASE_DIR.'public/_thumbs/Images/photos/');

/*WEBSITE*/
define('CONS_DEFAULT_WEB_CONTROLLER', 'control_web');
define('CONS_DEFAULT_WEB_ACTION', 'index');
define('CONS_WEB_PHAN_TRANG','pages');
define('CONS_WEB_VIEW_CONTENT','view_content');


/*ADMIN*/
define('CONS_DEFAULT_ADMIN_CONTROLLER', 'cp_admin');
define('CONS_DEFAULT_ADMIN_ACTION', 'index');
define('CONS_DEFAULT_LINK_LOGIN_ADMIN', CONS_BASE_URL.'/'.CONS_DEFAULT_ADMIN_CONTROLLER.'/');
define('CONS_ADMIN_LOGOUT', 'logout');
define('CONS_ADMIN_ACCOUNT', 'account');
define('CONS_ADMIN_RESET', 'reset');
define('CONS_ADMIN_CSS_IMG', CONS_BASE_URL.'/css/admin_img/');
define('CONS_ADMIN_PER_PAGE', 30);

/*
define('CONS_DEFAULT_VIEW_INFO','view_info');
define('CONS_DEFAULT_PHAN_TRANG','pages');
*/