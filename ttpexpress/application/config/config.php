<?php
define('CONS_BASE_URL', 'http://localhost/all_v4/ttpexpress');/*domain*/
define('CONS_BASE_DIR', '/all_v4/ttpexpress/'); /*upload host tắt CONS này*/
define('CONS_HOST', 'localhost');
define('CONS_USER_DB', 'root');
define('CONS_PASS_DB', '');
define('CONS_NAME_DB', 'ttpexpress');
define('CONS_DEFAULT_LANG', 'vi');

/*SEND MAIL*/
define('CONS_AJAX_NAME', 'ajax');
define('CONS_HOST_SMTP_SERVER', 'localhost');
define('CONS_SEND_MAIL_ACCOUNT', 'no-reply@localhost.com');
define('CONS_SEND_MAIL_PASSWORD', 'no-reply#123*');
define('CONS_RECEIVE_MAIL_ACCOUNT', 'hieunhan112@gmail.com');
define('CONS_RECEIVE_MAIL_NAME', 'Admin');

/*control*/
define('CONS_WEB_HOME_PAGE', 'home');
define('CONS_WEB_MENU_PAGE', 'pages');
define('CONS_WEB_DETAIL_PAGE', 'details');
define('ERROR_NOT_FOUND_CONTROLLER', 'Not found controller');
define('ERROR_NOT_FOUND_FILE', 'Not found file');
define('ERROR_NOT_FOUND_PAGE', 'Not found page');

/*IMAGES UPLOAD*/
/*define('CONS_IMAGES_ARTICLES','public/images/articles/');
define('CONS_IMAGES_ARTICLES_THUMBS','public/_thumbs/Images/articles/');
define('CONS_IMAGES_CATALOG','public/images/catalog/');
define('CONS_IMAGES_CATALOG_THUMBS','public/_thumbs/Images/catalog/');
define('CONS_IMAGES_SLIDER_BANNER','public/images/slider-banner/');
define('CONS_IMAGES_SLIDER_BANNER_THUMBS','public/_thumbs/Images/slider-banner/');
define('CONS_IMAGES_PRODUCTS','public/images/products/');
define('CONS_IMAGES_PRODUCTS_THUMBS','public/_thumbs/Images/products/');
define('CONS_IMAGES_VIDEOS','public/images/videos/');
define('CONS_IMAGES_VIDEOS_THUMBS','public/_thumbs/Images/videos/');
define('CONS_IMAGES_PHOTOS','public/images/photos/');
define('CONS_IMAGES_PHOTOS_THUMBS','public/_thumbs/Images/photos/');*/

/*WEBSITE*/
define('CONS_IMAGE_DEFAULT','themes/website/img/no-image.jpg');
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
define('CONS_ADMIN_CSS_IMG', 'themes/admin/img/');
define('CONS_ADMIN_CSS_STYLE', 'themes/admin/admin_default.css');
define('CONS_ADMIN_PER_PAGE', 30);
define('CONS_ADMIN_PASSWORD_DEFAULT', '00112233');
define('CONS_ADMIN_CHANGE_ALIAS', 'Nhấp doubleclick để lấy tên không dấu');
define('CONS_ADMIN_AUTO_URL', 'Nhấp doubleclick để lấy link tự động');
define('CONS_ADMIN_AUTO_TAGS', 'Nhấp doubleclick để lấy keyword tự động');

/*FORUM*/
define('CONS_DEFAULT_FORUM_CONTROLLER', 'forum');
define('CONS_DEFAULT_FORUM_ACTION', 'index');

/*ERROR*/
define('CONS_400','error/400');
define('CONS_404','error/404');
define('CONS_500','error/500');