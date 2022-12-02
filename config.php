<?php 
define('CURRENT_URI', $_SERVER['REQUEST_URI']);
echo "CURRENT_URI = " . CURRENT_URI . " ";

/*
if(preg_match("/(.+(start|end))/i", CURRENT_URI, $match)) {
    define('BASE_CONTEXT_PATH', $match[0] . '/');
}
 */

define('BASE_CONTEXT_PATH', '/movie_poll/');
echo "BASE_CONTEXT_PATH = " . BASE_CONTEXT_PATH . " ";

define('BASE_IMAGE_PATH', BASE_CONTEXT_PATH . 'images/');
echo "BASE_IMAGE_PATH = " . BASE_IMAGE_PATH . " ";
define('BASE_JS_PATH', BASE_CONTEXT_PATH . 'js/');
echo "BASE_JS_PATH = " . BASE_JS_PATH . " ";
define('BASE_CSS_PATH', BASE_CONTEXT_PATH . 'css/');
echo "BASE_CSS_PATH = " . BASE_CSS_PATH . " ";
define('SOURCE_BASE', __DIR__ . '/php/');
echo "SOURCE_BASE = " . SOURCE_BASE . " ";

define('GO_HOME', 'home');
define('GO_REFERER', 'referer');

define('DEBUG', true);

/* 
$uri = $_SERVER['REQUEST_URI'];
if(preg_match("/(.+(start|end))/i", $uri, $match)) {
    define('BASE_CONTEXT_PATH', $match[0] . '/');
}
define('BASE_IMAGE_PATH', BASE_CONTEXT_PATH . 'images/');
define('BASE_JS_PATH', BASE_CONTEXT_PATH . 'js/');
define('BASE_CSS_PATH', BASE_CONTEXT_PATH . 'css/');
define('SOURCE_BASE', __DIR__ . '/php/');
