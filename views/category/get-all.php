<div class="container">
  <div class="row pt-4 pb-4">
    <?php foreach($categories as $cat):?>
      <div class="col-md-6 text-center">
        <a href="<?php echo Router::get_path("category". DIRECTORY_SEPARATOR . $cat->id);?>">
          <img src="<?php echo $cat->image;?>" alt="<?php echo html_entity_decode($cat->name);?> image" class="rounded img-thumbnail br-15">
          <span><?php echo $cat->description?></span>
        </a>
      </div>
    <?php endforeach;?>

  </div>
</div>