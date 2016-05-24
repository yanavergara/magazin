<!DOCTYPE html>
<?php
/* ******************************************************
Маргаритова Яна <margaritova.yana@yandex.ru>
24/05/2016 02:20:00
information.php - Страница вывода информации о компании
********************************************************/
?>
<html>
<head>
	<meta charset="utf-8">
	<title>Clean Home</title>
	<link rel="stylesheet" type="text/css" href="static/css/style.css">
</head>
<body>
<?php 
require_once 'core/func/func.php';
?>
<img src="static/images/header_image.png" width = "1140" height = "423"  > 

 	<p class="information" align = "center">
 		<a href = "information.php">Информация о компании</a>
 	</p>
 	<p class="kategorii" align = "center">
 		<a href = "kategorii.php">Услуги </a>
 	</p>
 	<?php echo view_link_category1(); ?>

 	<?php 
  // Подключение файла функций
// echo result();
// echo 'Get url: '.get_request();

echo get_id_category1();
echo view_product1();

?>
</body>
</html>