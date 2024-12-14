<?php include('admin/includes/dbconnection.php'); ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Project Management System</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
   <!--[if lte IE 8]>
<script src="css/ie/html5shiv.js"></script>
<![endif]-->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.poptrox-2.2.js"></script>
<script src="js/skel.min.js"></script>


</head>
<body>

        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#!">Project management System (PMS)</a>
              
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="index.php"class="btn btn-outline primary" >Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="admin/login.php" class="btn btn-success">Admin</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page header with logo and tagline-->
        <header class="py-5 bg-light border-bottom mb-4">
            <div class="container">
                <div class="text-center my-5">
                    <h1 class="fw-bolder">Input name or employee ID and search to view any project information</h1>
                    <!-- <p class="lead mb-0">A Bootstrap 5 starter layout for your next blog homepage</p> -->
                </div>
            </div>
        </header>
        <!-- Page content-->
        <div class="container">
            <div class="row">
                <!-- Blog entries-->
                
                <!-- Side widgets-->
                <div class="col-lg-12">
                    <!-- Search widget-->
                    <div class="card mb-4">
                        <div class="card-header"> <b>Search</b></div>
                        <form method="post">
                        <div class="card-body">
                            <div class="input-group">
                                <input class="form-control" type="text" placeholder="Search employee by name or emp id. example: test or Emp101" aria-label="Enter search term..." aria-describedby="button-search" name="searchdata" />
                                <button class="btn btn-primary" id="button-search" name="search" type="submit" type="button">Go!</button>
                            </div>
                        </div></form>
                    </div>
                    <!-- Categories widget-->
                      <?php
if(isset($_POST['search']))
{ 
$sdata=$_POST['searchdata'];
  ?>
                    <div class="card mb-4">
                        <div class="card-header">Categories</div>
                        <div class="card-body">


  <h4 align="center">Result against "<?php echo $sdata;?>" keyword </h4>

                                        <table  class="table table-striped table-bordered" border="2">
                                            <thead>
                                               <tr>
                                                    <th>S.No</th>
                                                    <th>Employee Name</th>
                                                    <th>Department Name</th>
                                                    <th>Project Name</th>
                                                    <th>Allocation Date</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
$sql="SELECT tblsuballocation.ID as suballid,tblsuballocation.CourseID,tblsuballocation.Teacherempid,tblsuballocation.Subid,tblsuballocation.AllocationDate,tblteacher.EmpID,tblteacher.FirstName,tblteacher.LastName,tblcourse.BranchName,tblcourse.CourseName,tblsubject.ID,tblsubject.CourseID,tblsubject.SubjectFullname,tblsubject.SubjectShortname,tblsubject.SubjectCode from tblsuballocation join tblteacher on tblteacher.EmpID=tblsuballocation.Teacherempid join tblcourse on tblcourse.ID=tblsuballocation.CourseID join tblsubject on tblsubject.ID=tblsuballocation.Subid where tblsuballocation.Teacherempid like '%$sdata%' || tblteacher.FirstName like '%$sdata%'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
   
                                                <tr>
                                                    <td><?php echo htmlentities($cnt);?></td>
                                                    <td>
                                                        <?php  echo htmlentities($row->FirstName);?> <?php  echo htmlentities($row->LastName);?>(<?php  echo htmlentities($row->Teacherempid);?>)
                                                    </td>
                                                    <td>
                                                        <?php  echo htmlentities($row->BranchName);?>(<?php  echo htmlentities($row->CourseName);?>)
                                                    </td>
                                                   <td>
                                                        <?php  echo htmlentities($row->SubjectFullname);?>(<?php  echo htmlentities($row->SubjectCode);?>)
                                                    </td>
                                                    <td>
                                                        <?php  echo htmlentities($row->AllocationDate);?>
                                                    </td>
                                                    
                                                </tr>
                                             <?php 
$cnt=$cnt+1;
} } else { ?>
  <tr>
    <td colspan="9"> No record found against this search</td>

  </tr>
                                            </tbody>
                                            
 
                                        </table>
                                        
              
                        </div>
                    </div>
                          <?php } }?>
                    <!-- Side widget-->
       
                </div>
            </div>
        </div>
        <!-- Footer-->

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
