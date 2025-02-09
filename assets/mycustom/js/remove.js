// edit room
table_room.on('click', 'a.delete-room', function(e){
	e.preventDefault();
  
  if (confirm("Are you sure?")) {
    var data = table_room.row( $(this).parents('tr') ).data();
    var rm_id = data[2];
    $.ajax({
      type: "POST",
      url: "../class/remove/remove",
      data: {
        id: rm_id,
        key: 'remove_room'
      }
    })
    .done(function(data){
      if(data == 1){
        toastr.success('Room successfully removed.');
        table_room.ajax.reload(null,false);
      }else if(data == 0) {
        toastr.error('Failed to remove room');
      }
    })
    .fail(function(data){
      console.log(data);
    });
  }
  return false;

});

// edit category
table_category.on('click', 'a.delete-category', function(e){
  if (confirm("Are you sure?")) {
    var data = table_category.row( $(this).parents('tr') ).data();
  
    var category_id = data[2];
    $.ajax({
      type: "POST",
      url: "../class/remove/remove",
      data: {
        id: category_id,
        key: 'remove_category'
      }
    })
    .done(function(data){
      if(data == 1){
        toastr.success('Category successfully removed.');
        table_category.ajax.reload(null,false);
      }else if(data == 0) {
        toastr.error('Failed to remove category');
      }
    })
    .fail(function(data){
      console.log(data);
    });
  }
  return false;

});

// edit department
table_department.on('click', 'a.delete-department', function(e){
	e.preventDefault();
  
  
  if (confirm("Are you sure?")) {
    var data = table_department.row( $(this).parents('tr') ).data();
    var department_id = data[2];

    $.ajax({
      type: "POST",
      url: "../class/remove/remove",
      data: {
        id: department_id,
        key: 'remove_department'
      }
    })
    .done(function(data){
      if(data == 1){
        toastr.success('Department successfully removed.');
        table_department.ajax.reload(null,false);
      }else if(data == 0) {
        toastr.error('Failed to remove department');
      }
    })
    .fail(function(data){
      console.log(data);
    });
  }
  return false;

});