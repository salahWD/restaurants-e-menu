<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <!-- the title -->
    <title>Simple House Template</title>

    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />

    <!-- font awesome icons -->
    <script src="https://kit.fontawesome.com/b54f5615ab.js" crossorigin="anonymous"></script>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
	<link href="<?php echo CSS_URL;?>index.css" rel="stylesheet" />
    <?php if (isset($custom_css) && $custom_css != NULL):?>
      <?php if (is_array($custom_css)):?>
        <?php foreach($custom_css as $css):?>
          <link href="<?php echo CSS_URL;?><?php echo $css;?>.css" rel="stylesheet" />
        <?php endforeach;?>
        <?php else:?>
          <link href="<?php echo CSS_URL;?><?php echo $custom_css;?>.css" rel="stylesheet" />
      <?php endif;?>
    <?php endif;?>
</head>
<body> 