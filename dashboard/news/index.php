

<?php 

session_start();

// Check if the user is not authenticated (not logged in)
if (!isset($_SESSION["username"])) {
    header("Location:../login/index.php"); // Redirect to the login page
    exit();
}
if (isset($_SESSION['upload_error'])) {
  echo '<script>alert("' . $_SESSION['upload_error'] . '");</script>';
  unset($_SESSION['upload_error']);
}
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <?php
  
  include("../root/db.php");
  ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>dashboard</title>
    <link rel="stylesheet" href="../css/card.css">
        <!-- Custom CSS -->
       
    <link rel="stylesheet" href="../css/style.css">
    <script src="https://cdn.ckeditor.com/ckeditor5/39.0.2/classic/ckeditor.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light ">
        <div class="container-fluid">
          <a class="navbar-brand" style="color:white">Dashboard</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll profile" style="--bs-scroll-height: 100px;">
             
              
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <img
                    src="../../assets/img/icons/profile.png" style="filter: invert(81%) sepia(100%) saturate(2%) hue-rotate(196deg) brightness(110%) contrast(101%);"
                    class="rounded-circle"
                    height="50"
                    alt="Black and White Portrait of a Man"
                    loading="lazy"
                  />
                </a>
                <ul class="dropdown-menu profile-menu" aria-labelledby="navbarScrollingDropdown">
                  <li><a class="dropdown-item" href="#"><?php echo $_SESSION['username']; ?></a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="../login/logout_action.php">Log out</a></li>
                </ul>
              </li>
              
            </ul>
           
          </div>
        </div>
      </nav>
   

<div class="contents">
    <div class="side-menu">
        <ul>
            <li><a href="../gallery/">gallery</a></li>
            <li class="active"><a href="" style="color:#fff">Announcements</a></li>
        </ul>
    </div>
    <div class="content">
    <div class="container-fluid" style="background-color: #3dbb5f;color:white;padding:10px"><h4> Create News</h4></div>
    <div class="blog-content">
				<div class="container">
				 
         
          <form action="us_add_back.php" method="post" enctype="multipart/form-data" id="formID" class="formular">
			
				<!--............blog...............-->

        <div style="box-shadow: inset 0px 0px 3px rgb(60 64 67 / 40%);background: #f3f3f3; border-radius:10px; padding: 10px;padding:20px;    width: 775px;" id="page-wrapper">
          <div class="container-fluid">
              <div class="row">
                <div class="col-md-6">
                
               
                

              <div class="form-group">
              
              <label>News Images (maximum file size 1mb)</label><br>
              <input type="file" name="images[]" class="validate[required]" multiple>
                                      </div>
              
          </div>
          <br><br>
          <br>
         <div class="form-group">
         <label>News title</label>
              <input class="form-control" type="text" name="title">
                </div><br><br><br>

         <div class="form-group">
         <label>Date</label>
         <input class="form-control" type="date" name="date" value="<?php echo date('Y-m-d'); ?>">
                </div><br><br><br>

         <div class="form-group">
         <label>News Content</label>
         <textarea name="content" id="editor" ></textarea>
                </div>

                  </div>
         
            
                  

              </div>
            
      

          </div>
    

</div>
				  
				 
				 <!--...............blog..............-->
         <div class="container">
        
         <div style="text-align: center;">
         
                <button type="submit" class="btn btn-default" style="background-color: var(--red);color:white">Submit</button>
                </div>
                </div>
                  <script>
    ClassicEditor
        .create(document.querySelector('#editor'))
        .catch(error => {
            console.error(error);
        });
</script>

</form>

<div class="w-100">
<?php include("us_select.php"); ?>
        </div>
				</div>



        
				</div>




</div>


</body>
</html>
