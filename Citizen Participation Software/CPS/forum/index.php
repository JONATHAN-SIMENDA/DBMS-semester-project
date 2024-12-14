<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./images/favicon.png" type="image/png" sizes="16x16">
<title>chats</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="main.js"></script>
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="css/tooplate-gymso-style.css">
  <style>

.logo{
font-size: 25px;
position: relative;
left: 5%;
color: white;
font-weight: bold;
line-height: 70px;
}

nav{
position:fixed;
background-color: black;
height: 70px;
width: 100%;
z-index: 1;
box-shadow: 2px red;
padding-bottom:50px;
} 
ul{
position: relative;
float: right;
margin-right: 30px;
}
ul li{

display: inline-block;
line-height: 70px;
}
ul li a{

text-decoration: none;
color: white;
font-size: 17px;
}
a{
  color:black;
}
</style>
</head>


<nav>
    <label class="logo" >CPS</label>

<ul>
    <li><a href="../main/index.html" class="btn btn-outline-primary">Back</a></li>
   
    <li><a href="../index.php" class="btn btn-success">Home</a></li>
    
</ul>
</nav>
<br><br><br>
<!--/script-->
       <div class="clearfix"> </div>
</div>
<!-- Top Navigation -->

<!--header-->
<!-- Modal -->
<div id="ReplyModal" class="modal fade" role="dialog" >
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content" >
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" >Reply Question</h4>
      </div>
      <div class="modal-body">
        <form name="frm1" method="post">
            <input type="hidden" id="commentid" name="Rcommentid">
        	<div class="form-group">
        	  <label for="usr" >Write your name:</label>
        	  <input type="text" class="form-control" name="Rname" required>
        	</div>
            <div class="form-group">
              <label for="comment">Write your reply:</label>
              <textarea class="form-control" rows="5" name="Rmsg" required></textarea>
            </div>
        	 <input type="button" id="btnreply" name="btnreply" class="btn btn-primary" value="Reply">
      </form>
      </div>
    </div>

  </div>
</div>

<div class=" .bg-success container" style="color:chocolate;background-color:gray;">

<div class="panel panel-default" style="margin-top:50px;color:black; background-color:red;" >
  <div class="menu bg-success panel-body" style="color:black;background-color:chocolate;">
    <h3 class="btn btn-primary" >CHAT ROOM</h3>
    <hr>
    <form name="frm" method="post">
        <input type="hidden" id="commentid" name="Pcommentid" value="0">
	<div class="form-group">
	  <label  for="usr" id="chill">Write your full name</label>
	  <input type="text" class="form-control" name="name" required>
	</div>
    <div class="form-group">
      <label for="comment">Write your question or provide feedback</label>
      <textarea class="form-control" rows="5" name="msg" required></textarea>
    </div>
	 <input type="button" id="butsave" name="save" class="btn btn-primary" value="Send">
  </form>
  </div>
</div>
  

<div class="panel panel-default">
  <div class="panel-body">
    <h4>Recent Posts</h4>           
	<table class="table" id="MyTable" style="background-color: chocolate; border:0px;border-radius:10px;color:black;">
	  <tbody id="record">
		
	  </tbody>
	</table>
  </div>
</div>

</div>

</body>
</html>