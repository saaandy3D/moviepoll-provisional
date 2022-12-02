<?php
require_once 'config.php';

require_once SOURCE_BASE . 'partials/header.php';

$rpath = str_replace(BASE_CONTEXT_PATH, '', $_SERVER['REQUEST_URI']);
var_dump($rpath);

if($rpath === ''){
    $rpath = 'home';
}

$targetFile = SOURCE_BASE . "controllers/{$rpath}.php";
var_dump($targetFile);

if(!file_exists($targetFile)){
    require_once SOURCE_BASE . 'views/404.php';
} else {
    require_once $targetFile;
}

require_once SOURCE_BASE . 'partials/footer.php';
