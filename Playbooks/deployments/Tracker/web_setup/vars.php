<?php
ob_start();

$DATE = date("d-m-Y H:i:s");
$DAY = date("d");
$MONTH = date("m");
$YEAR = date("Y");

//Application
$APP = "APPLICATION";

//Environment
$ENV = "ENVIRONMENT";

// Log File
$logfile = '/var/log/'.$APP.'/app.log';

// Database Server
//$DATABASE_HOST = 'dbserver';
$DATABASE_HOST = 'DBHOST';

// Credentials
$DATABASE_USER = 'SERVICEACCOUNT';
$DATABASE_PASS = 'SVCACCPASSWORD';

// Databases
$CONFG_DB_NAME = 'CONFDB';
$DATA_DB_NAME = 'DATADB';
$ACC_DB_NAME = 'ACCOUNTSDB';
$MENU_DB_NAME = 'MENUDB';

//Database Tables
$USERS_TABLE = 'users';
$TOKEN_TABLE = 'token';
$OTP_TABLE = 'otp';
$SETTINGS_TABLE = 'settings';
$DATA_TABLE = 'data';
$BANK_TABLE = 'banks';

?>
