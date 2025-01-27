<select name="e_rm" class="form-control" required>
  <option selected disabled>Please select room</option>
  <?php
    require_once "../class/config/config.php";

    global $conn;
    $sql = $conn->prepare("SELECT * FROM room");
    $sql->execute();
    $count = $sql->rowCount();
    $fetch = $sql->fetchAll();
    if($count > 0){
      $opts = "";
      foreach ($fetch as $key => $value) {
        $rmname = ucwords($value['rm_name']);

        
        $opts .= '<option>'.$rmname.'</option>\n';
      }
      echo $opts;
    }
  ?>
</select> 