<?php 
include 'include/db.php'; //call db connection string
$sql2 = "SELECT * FROM negeri"; 
$result2 = mysqli_query($db,$sql2); //query all negeri into result to be populate on the first dropdown

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="">
    <label for="">Negeri</label>
    <!-- onchange trigger the ajax script below -->
    <select autofocus name="negeri" class="form-control" id="negeri" onchange="ajaxf(this.value);">
        <option selected disabled hidden style='display: none' value=''></option>
        <!-- populate first dropwdown with negeri data from database -->
        <?php while($row2 = mysqli_fetch_assoc($result2)){ ?> 
        <option value="<?=$row2['id']?>"><?=$row2['nama']?></option> 
        <?php }?>
    </select>
    </br>
    
    <div class="form-group">
        <label for="kumpulan">Pilih Daerah</label>
        <select name="daerah" class="form-control" id="sub" ></select>
    </div>
    </form>
</body>
</html>

<script src="include/jquery.min.js" ></script>
<!-- after click first dropdown, triggers the ajax script to load the second dropdown -->
<script type="text/javascript">
function ajaxf(parent) 
{
    $.ajax({
        url: 'load.php?parent=' + parent,
        success: function(data) {
            
            $("#sub").html(data);  //populate dalam id sub / dropdown daerah
            if( !$('#sub').val() ) {
                //kalau tak, trigger, dia run script bawah ni.
                //document.getElementById("reg").style.visibility = "hidden";
            }
            
        },
        error:function(data) {
            
        },
    });
    
}
</script>