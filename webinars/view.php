<?php

$ROOT = "../";
include($ROOT."init.php");

$smarty->assign('ROOT', $ROOT);
$smarty->assign('TYPE', "webinars");
$smarty->display('view.tpl');

?>