<?php

?>

<div class="container pt-5 pb-5" style="min-height: calc(100vh - 400px);">
  <div class="row">
    <div class="col-md-4">
      <div class="card">
        <div class="card-body text-center">
          <h5 class="card-title">manage food</h5>
          <hr>
          <p class="card-text">manage all items in your menu</p>
          <a href="<?php echo Router::get_path("manage/food");?>" class="btn btn-primary mt-3"><i class="fa-solid fa-utensils"></i></a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <div class="card-body text-center">
          <h5 class="card-title">manage category</h5>
          <hr>
          <p class="card-text">manage all categories in the menu.</p>
          <a href="<?php echo Router::get_path("manage/category");?>" class="btn btn-primary mt-3"><i class="fa-solid fa-layer-group"></i></a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <div class="card-body text-center">
          <h5 class="card-title">Restaurants info</h5>
          <hr>
          <p class="card-text">to edit teasturant's Restaurants info</p>
          <a href="<?php echo Router::get_path("manage/Restaurants");?>" class="btn btn-primary mt-3"><i class="fa-regular fa-pen-to-square"></i></a>
        </div>
      </div>
    </div>
  </div>
</div>
