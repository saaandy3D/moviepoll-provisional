<?php
require_once 'config.php';

require_once SOURCE_BASE . 'partials/header.php';

if($_SERVER['REQUEST_URI'] === '/movie_poll/login') {
     require_once SOURCE_BASE . 'controllers/login.php';
} elseif($_SERVER['REQUEST_URI'] === '/movie_poll/register') {
     require_once SOURCE_BASE . 'controllers/register.php';
} elseif($_SERVER['REQUEST_URI'] === '/movie_poll/home') {
     require_once SOURCE_BASE . 'controllers/home.php';
}

require_once SOURCE_BASE . 'partials/footer.php';
