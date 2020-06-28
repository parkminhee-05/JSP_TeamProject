<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. Context객체 생성
	Context initCtx = new InitialContext();

	//2. DataSource 객체 생성
	DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/jsphh");
	
	//3. CP에서 connection 가져오기
	Connection con =  ds.getConnection();
	
	String sql = "SELECT * FROM PRODUCT";
	Statement st = con.createStatement();
	
	ResultSet rs = st.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
  }
  .portfolio{
  	padding-top:3rem;
  	padding-bottom:4.5rem;
  }
  .divider-custom{
  	margin: 1.25rem 0 1.5rem;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .portfolio-item{
  	margin-bottom:30px;
  }

</style>
<title>개냥이</title>
</head>
<body>

<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/explore-1600x900.jpg" width="1100" height="500">
      <div class="carousel-caption">
        <h3>애완견 상품</h3>
        <p>어머 이건 사야되!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="https://images.wallpaperscraft.com/image/dog_street_spotted_72369_1920x1200.jpg"  width="1100" height="500">
      <div class="carousel-caption">
        <h3>개</h3>
        <p>골댕이 화나게 해봤다, 다 들어와!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="https://images.wallpaperscraft.com/image/cat_face_fluffy_black_109554_1920x1080.jpg" width="1100" height="500">
      <div class="carousel-caption">
        <h3>고양이</h3>
        <p>간택된 집사들, 다 들어와!</p>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
<section class="page-section portfolio" id="portfolio">
    <div class="container">
        <div class="text-center">
            <h2 class="page-section-heading text-secondary mb-0 d-inline-block">콘텐츠</h2>
        </div>
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
            <div class="divider-custom-line"></div>
        </div>
		    <div class="row">
		      <div class="col-lg-4 mb-4">
		        <div class="card h-100">
		          <h4 class="card-header">Card Title</h4>
		          <div class="card-body">
		            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
		          </div>
		          <div class="card-footer">
		            <a href="#" class="btn btn-primary">Learn More</a>
		          </div>
		        </div>
		      </div>
		      <div class="col-lg-4 mb-4">
		        <div class="card h-100">
		          <h4 class="card-header">Card Title</h4>
		          <div class="card-body">
		            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis ipsam eos, nam perspiciatis natus commodi similique totam consectetur praesentium molestiae atque exercitationem ut consequuntur, sed eveniet, magni nostrum sint fuga.</p>
		          </div>
		          <div class="card-footer">
		            <a href="#" class="btn btn-primary">Learn More</a>
		          </div>
		        </div>
		      </div>
		      <div class="col-lg-4 mb-4">
		        <div class="card h-100">
		          <h4 class="card-header">Card Title</h4>
		          <div class="card-body">
		            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
		          </div>
		          <div class="card-footer">
		            <a href="#" class="btn btn-primary">Learn More</a>
		          </div>
		        </div>
		      </div>
		    </div><br><br><br>
		    <div class="text-center">
            <h2 class="page-section-heading text-secondary mb-0 d-inline-block">인기 상품</h2>
        </div>
        <div class="divider-custom">
          <div class="divider-custom-line"></div>
          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
          <div class="divider-custom-line"></div>
        </div>
		    <div class="row">
	    	<%
						while(rs.next()){
							String name = rs.getString("NAME");
					%>
		      <div class="col-lg-4 col-sm-6 portfolio-item">
		        <div class="card h-100">
		          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
		          <div class="card-body">
		            <h6 class="card-title">
		              <a href="#"><%=name %></a>
		            </h6>
		          </div>
		        </div>
		      </div>
				<% }
				con.close();
				st.close();
				rs.close();
				%>    
		    </div>

		    
    </div>
    </section>

	   
</body>
</html>