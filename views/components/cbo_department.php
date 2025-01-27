<select name="e_rm" class="form-control" required>
  <option selected disabled>Please select department</option>
  <?php
    require_once "../class/config/config.php";

    global $conn;
    $sql = $conn->prepare("SELECT * FROM department");
    $sql->execute();
    $count = $sql->rowCount();
    $fetch = $sql->fetchAll();
    if($count > 0){
      $opts = "";
      foreach ($fetch as $key => $value) {
        $name = ucwords($value['name']);

        
        $opts .= '<option>'.$name.'</option>\n';
      }
      echo $opts;
    }
  ?>
</select> 