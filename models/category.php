<?php

class Category {

  public function __construct($data = NULL) {
    
    if ($data != NULL) {
      foreach($data as $dat => $value) {
        $this->$dat = $value;
      }
    }

  }

  public function get_foods($cat_id) {
    
    $db = DBC::get_instance();

    $sql = $db->dbh->prepare("SELECT * FROM foods WHERE category = ?");
    $sql->execute([$cat_id]);

    if ($sql->rowCount() > 0) {
      return $sql->fetchAll(PDO::FETCH_OBJ);
    }else {
      return [];
    }

  }

  public static function get_all($R_id) {

    $db = DBC::get_instance();

    $sql = $db->dbh->prepare("SELECT * FROM categories WHERE restaurant_id = ?");
    $sql->execute([$R_id]);

    if ($sql->rowCount() > 0) {
      return $sql->fetchAll(PDO::FETCH_CLASS, 'Category');
    }else {
      return false;
    }

  }

}