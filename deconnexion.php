<?php
session_start();
session_destroy();
header('Location:index.php?home=2');

?>