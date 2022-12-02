<?php
require_once 'config.php';


if($_SERVER['REQUEST_URI'] === '/movie_poll/login') {
     require_once SOURCE_BASE . 'login.php';
} elseif($_SERVER['REQUEST_URI'] === '/movie_poll/register') {
     require_once SOURCE_BASE . 'register.php';
} elseif($_SERVER['REQUEST_URI'] === '/movie_poll/home') {
     require_once SOURCE_BASE . 'home.php';
}
