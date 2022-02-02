<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"  %>

 
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <%		
		String email = "'"+request.getParameter("email")+"'";
		
    	String url = "jdbc:mysql://localhost:3306/studentinfo";
    	String username="root";
    	String password="Mysql10@#$";
    	String sql = "select * from stdinfo where email="+email;
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection(url,username,password);
    	Statement st= con.createStatement();
    	ResultSet rs =st.executeQuery(sql);
    	rs.next();
    	
%>
    <title><%=rs.getString(2)%> <%=rs.getString(3)%></title>
  </head>
  <body>
  
  

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="http://localhost:8080/StudentInfoPDFs/">StudentInfoPDFs</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="http://localhost:8080/StudentInfoPDFs/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
 
<div id="data" >
<div class="mx-5 mt-5" >
<h2><%=rs.getString(2)%> <%=rs.getString(3)%></h2>
</div>

<div class="mx-5 mt-5 mb-4">
<div class="bd-example">
  <dl>
    <dt>Full Name</dt>
    <dd><%=rs.getString(2)%> <%=rs.getString(3)%></dd>
    
    <dt>Roll Number</dt>
    <dd><%=rs.getString(1)%></dd>
    
    <dt>Email</dt>
    <dd><%=rs.getString(6) %></dd>
    
    <dt>Phone Number</dt>
    <dd><%=rs.getString(5)%></dd>
    
    <dt>Parent Phone Number</dt>
    <dd><%=rs.getString(4)%></dd>
    
    <dt>Blood Group</dt>
    <dd><%=rs.getString(9)%></dd>
    
    <dt>Height</dt>
    <dd><%=rs.getString(10)%></dd>
    
    <dt>Weight</dt>
    <dd><%=rs.getString(11)%></dd>
    
    <dt>Course</dt>
    <dd><%=rs.getString(13)%></dd>
    
    <dt>Year</dt>
    <dd><%=rs.getString(12)%></dd>
    
    <dt>Date Of Birth</dt>
    <dd><%=rs.getString(14)%></dd>
    
    <dt>Address</dt>
    <dd><%=rs.getString(8)%></dd>

  </dl>
  
 

 
</div>
</div>
</div>
<div class="mx-5 mb-5">
  <button  class="btn btn-dark" onclick="printinfo('data')">Download</button>
  </div>
  
  </body>

<script type="text/javascript">
	function printinfo(paravalue){
		var backup = document.body.innerHTML;
		var data = document.getElementById(paravalue).innerHTML;
		document.body.innerHTML = data;
		window.print();
		document.body.innerHTML = backup;
		
	}

</script>
  
</html>

    