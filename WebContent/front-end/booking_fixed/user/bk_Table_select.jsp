<%@page import="com.rest_table.model.Rest_TableService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.rest_table.model.Rest_TableVO"%>
<%@ page import="com.rest_seat_coordinate.model.*"%>


<%
	Rest_Seat_Coordinate_TableVO rest_Seat_Coordinate_TableVO = (Rest_Seat_Coordinate_TableVO) request.getAttribute("rest_Seat_Coordinate_TableVO");
%>
<%   
 String rs_id = (String)session.getAttribute("rs_id");
if(rs_id==null){
	session.setAttribute("rs_id", "RS10001");
	rs_id ="RS10001";
}
	Rest_TableService rest_TableSvc   =   new Rest_TableService();
	Rest_TableVO rest_tablevo = rest_TableSvc.getOneAll(rs_id);
	pageContext.setAttribute("rest_tablevo", rest_tablevo);

%>
<!DOCTYPE html>
<html>

<jsp:useBean id="rest_tableSvc" class="com.rest_table.model.Rest_TableService"></jsp:useBean>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/front-use/bking_table/bking.css">
<%-- 	 <link rel="stylesheet" href="<%=request.getContextPath()%>/css/front-use/bking_table/css_button.css"> --%>
</head>

<body>

	<nav class="navbar navbar-expand-lg shadow navbar-light bg-light" style="
    padding-top: 0px;
    padding-bottom: 0px;
    padding-left: 0px;
">
  <a class="navbar-brand" href="<%=request.getContextPath() %>/front-end/Guest_Table/home.jsp"><img style="width: 120px;" alt="" src="<%=request.getContextPath() %>/front-end/booking_fixed/images/g11.jpg"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
<!--     <ul class="navbar-nav"> -->
<!--       <li class="nav-item active"> -->
<!--         <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a> -->
<!--       </li> -->
<!--       <li class="nav-item"> -->
<!--         <a class="nav-link" href="#">Features</a> -->
<!--       </li> -->
<!--       <li class="nav-item"> -->
<!--         <a class="nav-link" href="#">Pricing</a> -->
<!--       </li> -->
<!--       <li class="nav-item"> -->
<!--         <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
<!--       </li> -->
<!--     </ul> -->
  </div>
</nav>

<span id="enter_rs" style="color: tomato;">????????????????????? </span>
	<div class="drag_drop" style="display: none;" >
		<div class="tab_panel drop_panel shadow" id="html-content-holder" style=" width: 1200px;  height:300px;" id="">
<!-- 			<span>????????????????????????</span> -->
			<ul class="drop_ul"></ul>
		</div>
		
		<div class="tab_panel drag_panel">
		
			<ul class="draggable_item">
			
				<li id="table" class="table">
					
						<div id="table_pic" width="100px" height="50px">
						<div id="table_num">1</div>
						</div>
					
				</li>
			</ul>
		</div>

	</div>

	

	<button id="send"  style="display: none;" >????????????</button>
	
	
	 <button class="button"  id="callback" style="display: none;" onclick="location.href='<%=request.getContextPath()%>/front-end/compy_table/front_CompyMembershipPlatform_info.jsp'">????????????</button>
<%-- 	<img id="restaurant" style="width: 150px" src="<%=request.getContextPath()%>/front-end/booking_fixed/images/cartoon_restaurant.png" alt=""> --%>
	
<div class="card-group">
  <div class="card">
    <img class="card-img-top" src="<%=request.getContextPath()%>/WenDaTi_Servler.do?method=get_the_pic&id=${rs_id}&which=rs_view1" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title" style="color: darkorange;">????????????</h5>
      <p class="card-text" style="color: tan;">${rest_tablevo.rs_intro}</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">???????????????</small>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="<%=request.getContextPath()%>/WenDaTi_Servler.do?method=get_the_pic&id=${rs_id}&which=rs_view2" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title" style="color: darkorange;">????????????</h5>
      <p class="card-text" style="color: tan;">${rest_tablevo.rs_name}</p>
      <p class="card-text" style="color: tan;">????????????:${rest_tablevo.rs_type}</p>
      <p class="card-text" style="color: tan;">????????????:${rest_tablevo.rs_reg_date}</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">???????????????</small>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="<%=request.getContextPath()%>/WenDaTi_Servler.do?method=get_the_pic&id=${rs_id}&which=rs_view3" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title" style="color: darkorange;">??????????????????&??????</h5>
      <p class="card-text" style="color: tan;">EMail:${rest_tablevo.cp_contact_email}</p>
      <p class="card-text" style="color: tan;">Phone:${rest_tablevo.rs_phone}</p>
      <p class="card-text" style="color: tan;">????????????:${rest_tablevo.rs_address}</p>
       
    </div>
    <div class="card-footer">
      <small class="text-muted">???????????????</small>
    </div>
  </div>
</div>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js'></script>

	<script src="<%=request.getContextPath() %>/js/front_use/bking_table/index.js"></script>
	<script>
	var projectName
	
		window.onload = function () {
			sessionStorage.clear();
			getRootPath_web()
			$(".drag_drop").fadeIn(1500);
			$(".drag_drop").css("display", "block");
			$("#send").fadeIn(1500);
			$("#send").css("display", "block");
			$("#callback").fadeIn(1500);
			$("#callback").css("display", "block");
		};
		
		$("#send").on("click", function () {
			var dataArray = [];
			let $next = $("ul.drop_ul li:first-child");
			// 			/*????????????????????????*/
			for (let i = 0; i < $("ul.drop_ul").children("li").length; i++) {
				let obj = {};
				obj.xy = $next.offset()
				// 				console.log(obj.xy)
				obj.obj = $next.data();
				dataArray.push(obj);
				$next = $next.next();
			}

			console.log(dataArray);
			var jsonString = JSON.stringify(dataArray);
			console.log(jsonString);

						$.ajax({
							type : "POST",
							url : "/"+projectName[1]+"/GetJson.do",
							data : jsonString,//???????????????????????????
							
			// 				data:{
			// 				    userName:userName,
			// 				    password:password
			// 				},
							success : function() {



							},
							error : function() {
								alert("????????????-loginPage.jsp-ajax");
							}
						});

		});
	</script>

	<script>
		// 		/*????????????
		// // 		1.??????drag and drop ???????????????????????????????????????drop ??????xy??????
		// // 		2. ?????????using ajax????????????
		// // 		3. ???????????????

		// 		/*-------------------------????????????-------------------------*/
		// 		/*???????????????????????????*/
		$li = $("li");
		// 		/*?????????????????????drop??????*/
		$drop_panel = $("div.drop_panel");

		// 		/*???????????????????????????drop??????*/
		$drop_panel.on("dragover", function (event) {
			event.preventDefault();
		})

		// 		/*?????????drop?????????????????????dataTransfer?????????id????????????????????????????????????drop??????*/
		$drop_panel.on("drop", function (event) {
			let el = event.originalEvent.dataTransfer.getData("item");//????????????id
			$copyEl = $(el).clone();
			let num = window.sessionStorage.getItem("num");
			if (num === null)
				num = 1;
			$copyEl.children().html(num);
			$("ul.drop_ul").append($copyEl);
			// let table_num = $("#table_num").html();


			// while(true){
			// 	table_num+num;	
			// };
			// 			/*?????????????????????????????????*/
			let xy = $("ul.drop_ul").children(":last-child").offset({
				left: event.pageX,
				top: event.pageY
			})
			$("ul.drop_ul").children(":last-child").data("object", el);
			let numNo = parseInt(num);
			window.sessionStorage.setItem("num", numNo + 1);
		});

		// 		/*?????????????????????*/
		$li.attr("draggable", "true");

		// 		/*???????????????????????????????????????????????????ID???dataTransfer?????????map?????????????????????????????????ID*/
		$li.on("dragstart", function (event) {
			event.originalEvent.dataTransfer.setData("item", `#\${event.target.id}`);
		});
	</script>
	<script>

	function getRootPath_web() {
	    //??????????????????????????? http://localhost:8083/uimcardprj/share/meun.jsp
	    var curWwwPath = window.document.location.href;
	    //?????????????????????????????????????????? uimcardprj/share/meun.jsp
	    var pathName = window.document.location.pathname;
	    var pos = curWwwPath.indexOf(pathName);
	    //??????????????????????????? http://localhost:8083
	    var localhostPaht = curWwwPath.substring(0, pos);
	    //?????????"/"?????????????????????/uimcardprj
	    projectName = pathName.split("/");

	}
	</script>
	
</body>

</html>