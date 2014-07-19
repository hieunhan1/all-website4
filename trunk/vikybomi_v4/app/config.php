<?php
define('CONS_BASE_URL', 'http://localhost/all/vikybomi_v4');/*domain*/
define('CONS_BASE_DIR', '/all/vikybomi_v4');/*upload host tắt CONS này*/

define('CONS_HOST',		'localhost');
define('CONS_USER_DB',	'root');
define('CONS_PASS_DB',	'root');
define('CONS_DB_NAME',	'vikybomi_v4');

/*IMAGES UPLOAD*/
define('CONS_IMAGES_ARTICLES','upload/images/info/');
define('CONS_IMAGES_ARTICLES_THUMBS','upload/_thumbs/Images/info/');
define('CONS_IMAGES_CATALOG','upload/images/danhmuc/');
define('CONS_IMAGES_CATALOG_THUMBS','upload/_thumbs/Images/danhmuc/');
define('CONS_IMAGES_SLIDER_BANNER','upload/images/slider_banner/');
define('CONS_IMAGES_SLIDER_BANNER_THUMBS','upload/_thumbs/Images/slider_banner/');
define('CONS_IMAGES_PRODUCTS','upload/images/products/');
define('CONS_IMAGES_PRODUCTS_THUMBS','upload/_thumbs/Images/products/');
define('CONS_IMAGES_VIDEOS','upload/images/video/');
define('CONS_IMAGES_VIDEOS_THUMBS','upload/_thumbs/Images/video/');
define('CONS_IMAGES_PHOTOS','upload/images/thuvienanh/');
define('CONS_IMAGES_PHOTOS_THUMBS','upload/_thumbs/Images/thuvienanh/');

/*WEBSITE*/
define('CONS_IMAGE_DEFAULT','css/web_img/no-image.jpg');
define('CONS_DEFAULT_WEB_CONTROLLER', 'control_web');
define('CONS_DEFAULT_WEB_ACTION', 'index');
define('CONS_WEB_VIEW_MENU','view_menu');
define('CONS_WEB_VIEW_DETAIL','view_detail');

/*ADMIN*/
define('CONS_DEFAULT_ADMIN_CONTROLLER', 'cp_admin');
define('CONS_DEFAULT_ADMIN_ACTION', 'index');
define('CONS_DEFAULT_LINK_LOGIN_ADMIN', CONS_BASE_URL.'/'.CONS_DEFAULT_ADMIN_CONTROLLER.'/');
define('CONS_ADMIN_LOGOUT', 'logout');
define('CONS_ADMIN_ACCOUNT', 'account');
define('CONS_ADMIN_RESET', 'reset');
define('CONS_ADMIN_CSS_IMG', 'css/admin_img/');
define('CONS_ADMIN_PER_PAGE', 30);

/*OTHER*/
define('CONS_AJAX_NAME', 'ajax');
define('CONS_SEND_MAIL_ACCOUNT', 'no-reply@khaibaothue.net');
define('CONS_SEND_MAIL_PASSWORD', 'no-reply#123*');
define('CONS_RECEIVE_MAIL_ACCOUNT', 'hieunhan112@gmail.com');
define('CONS_RECEIVE_MAIL_NAME', 'Admin');

/*ERROR*/
define('CONS_400','/400');
define('CONS_404','/404');
define('CONS_500','/500');