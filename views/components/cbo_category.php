<select name="e_category" class="form-control" required>
  <option selected disabled>Please select category</option>
  <?php
    require_once "../class/config/config.php";

    global $conn;
    $sql = $conn->prepare("SELECT * FROM category WHERE category_status = 1");
    $sql->execute();
    $count = $sql->rowCount();
    $fetch = $sql->fetchAll();
    if($count > 0){
      $opts = "";
      foreach ($fetch as $key => $value) {
        $catname = ucwords($value['category_name']);

        
        $opts .= '<option>'.$catname.'</option>\n';
      }
      echo $opts;
    }
  ?>
</select> 