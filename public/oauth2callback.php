<?php
require_once '../vendor/autoload.php';

session_start();

$client = new Google_Client();
$client->setAuthConfigFile('client_secret_151669692220-f0fe5df5ai6kegeu7q5c56tv6g0enlnp.apps.googleusercontent.com.json');
$client->setRedirectUri('http://' . $_SERVER['HTTP_HOST'] . '/oauth2callback.php');
$client->addScope('https://www.googleapis.com/auth/webmasters');

if (! isset($_GET['code'])) {
  $auth_url = $client->createAuthUrl();
  header('Location: ' . filter_var($auth_url, FILTER_SANITIZE_URL));
} else {
  $client->authenticate($_GET['code']);
  $_SESSION['access_token'] = $client->getAccessToken();
  $redirect_uri = 'http://' . $_SERVER['HTTP_HOST'] . '/';
  header('Location: ' . filter_var($redirect_uri, FILTER_SANITIZE_URL));
}
