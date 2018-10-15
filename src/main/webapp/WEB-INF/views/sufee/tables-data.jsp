<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>


</head>
<body>
	<!-- Left Panel -->

	<aside id="left-panel" class="left-panel">
		<nav class="navbar navbar-expand-sm navbar-default">

			<div class="navbar-header">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#main-menu" aria-controls="main-menu"
					aria-expanded="false" aria-label="Toggle navigation">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand" href="./"><strong>내가 봤던 영화들</strong></a> <a
					class="navbar-brand hidden" href="./"><strong>M</strong></a>
			</div>

			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="index.html"> <i
							class="menu-icon fa fa-calendar"></i>예매 정보
					</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
	</aside>
	<!-- /#left-panel -->

	<!-- Left Panel -->

	<!-- Right Panel -->

	<div id="right-panel" class="right-panel">

		<!-- Header-->
		<header id="header" class="header" style="margin-bottom: 10px">
			<div class="header-menu">
				<div class="col-sm-7">
					<a id="menuToggle" class="menutoggle pull-left"><i
						class="fa fa fa-tasks"></i></a>
					<div class="header-left">
						<div class="title  ">
							<h2 class="pb-2 display-5">
								<i class="fa fa-calendar"></i>&nbsp;&nbsp;예매 정보
							</h2>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- /header -->
		<!-- Header-->

		<div class="content mt-3">
			<div class="animated fadeIn">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">정보 리스트</strong>
							</div>
							<div class="card-body">
								<table id="tkti-list" class="table table-bordered table-hover"
									style="cursor: pointer;">
									<thead>
										<tr>
											<th>번호</th>
											<th>플랫폼</th>
											<th>결제 수단</th>
											<th>결제 일자</th>
											<th>가격</th>
											<th>ID</th>
											<th>영화 이름</th>
											<th>상영 일자</th>
											<th>상영 시간</th>
											<th>상영관</th>
											<th>예매 좌석</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- .content -->

		<button id="modalBtn" type="button" class="btn btn-primary"
			data-toggle="modal" data-target="#updateModal" style="display: none;">모달 버튼!!!!</button>

		<!-- Modal -->
		<div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">예매 내역 수정</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="update-form">
							<form id="update-form" class="needs-validation" novalidate>
								<!-- 결제 플랫폼 -->
								<div class="form-row">
									<div class="col-md-10 offset-md-3 mr-auto ml-auto">
										<label for="vld01">결제 플랫폼</label>
										<div class="input-group">
											<div class="input-group-addon"><i class="fa fa-laptop"></i></div>
											<select class="form-control" name="tkt_form" id="tkt_form" required>
												<option value="현장 예매" selected>현장 예매</option>
												<option value="온라인 예매" >온라인 예매</option>
												<option value="모바일 예매" >모바일 예매</option>
											</select>
											<div class="invalid-feedback">예매 방식을 선택하십시오.</div>
										</div>
									</div>
								</div>
								<!-- 결제 방식 -->
								<div class="form-row">
									<div class="col-md-10 offset-md-3 mr-auto ml-auto">
										<label for="vld02">결제 방식</label>
										<div class="input-group">
											<div class="input-group-addon"><i class="fa fa-credit-card"></i></div>
											<select class="form-control" name="tkt_payment" id="tkt_payment" required>
												<option value="현금 결제" selected>무통장 입금(현금 결제)</option>
												<option value="카드 결제" >카드 결제</option>
												<option value="예매권 결제" >예매권 결제</option>
											</select>
											<div class="invalid-feedback">예매 방식을 선택하십시오.</div>
										</div>
									</div>
								</div>
								<!-- 결제 일자 -->
								<div class="form-row">
									<div class="col-md-10 offset-md-3 mr-auto ml-auto">
										<label for="vld03">결제 일자</label>
										<div class="input-group">
											<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
											<input type="date" class="form-control" name="tkt_paydate" id="tkt_paydate" required>
											<div class="invalid-feedback">결제일을 선택하십시오.</div>
										</div>
									</div>
								</div>
								<!-- 결제 금액 -->
								<div class="form-row">
									<div class="col-md-10 offset-md-3 mr-auto ml-auto">
										<label for="vld04">결제 금액</label>
										<div class="input-group">
											<div class="input-group-addon"><i class="fa fa-money"></i></div>
											<input type="number" class="form-control" name="tkt_price" id="tkt_price" min="0" required>
											<div class="invalid-feedback">결제 금액을 입력하십시오.</div>
										</div>
									</div>
								</div>
								<!-- 결제 유저 -->
								<div class="form-row">
									<div class="col-md-10 offset-md-3 mr-auto ml-auto">
										<label for="vld05">회원 ID</label>
										<div class="input-group">
											<div class="input-group-addon"><i class="fa fa-user"></i></div>
											<input type="text" class="form-control" name="tkt_userid" id="tkt_userid" required>
											<div class="invalid-feedback">결제에 사용된 ID를 입력하십시오.</div>
										</div>
									</div>
								</div>
								<!-- 결제 유저 -->
								<div class="form-row">
									<div class="col-md-10 offset-md-3 mr-auto ml-auto">
										<label for="vld06">영화 제목</label>
										<div class="input-group">
											<div class="input-group-addon"><i class="fa fa-video-camera"></i></div>
											<input type="text" class="form-control" name="tkt_movid" id="tkt_movid" required>
											<div class="invalid-feedback">영화 제목을 입력하십시오.</div>
										</div>
									</div>
								</div>
								<!-- 결제 유저 -->
								<div class="form-row">
									<div class="col-md-10 mr-auto ml-auto">
										<label for="vld06">상영 일시</label>
										<div class="input-group">
											<div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
											<input type="date" class="form-control" name="tkt_showdate" id="tkt_showdate" required>&nbsp
											<input type="time" class="form-control" name="tkt_showtime" id="tkt_showtime" required>
											<div class="invalid-feedback">영화가 상영된 일자와 시각을 입력하십시오.</div>
										</div>
									</div>
								</div>
								<!-- <button class="btn btn-primary" type="submit">유효성 검사</button> -->
							</form>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
						<button type="submit" class="btn btn-primary" form="update-form">저장</button>
						<button type="button" class="btn btn-danger" onclick="">삭제</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal -->

	</div>
	<!-- /#right-panel -->

	<!-- Right Panel -->




	<script src="${sufee}/assets/js/vendor/jquery-2.1.4.min.js"></script>
	<script src="${sufee}/assets/js/popper.min.js"></script>
	<script src="${sufee}/assets/js/plugins.js"></script>
	<script src="${sufee}/assets/js/main.js"></script>


	<script src="${sufee}/assets/js/lib/data-table/datatables.min.js"></script>
	<script
		src="${sufee}/assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
	<script
		src="${sufee}/assets/js/lib/data-table/dataTables.buttons.min.js"></script>
	<script
		src="${sufee}/assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
	<script src="${sufee}/assets/js/lib/data-table/jszip.min.js"></script>
	<script src="${sufee}/assets/js/lib/data-table/pdfmake.min.js"></script>
	<script src="${sufee}/assets/js/lib/data-table/vfs_fonts.js"></script>
	<script src="${sufee}/assets/js/lib/data-table/buttons.html5.min.js"></script>
	<script src="${sufee}/assets/js/lib/data-table/buttons.print.min.js"></script>
	<script src="${sufee}/assets/js/lib/data-table/buttons.colVis.min.js"></script>
	<script src="${sufee}/assets/js/lib/data-table/datatables-init.js"></script>

	<script type="text/javascript" src="/js/AjaxUtil.js?ver=${ver}"></script>


	<script type="text/javascript">
	
	// Example starter JavaScript for disabling form submissions if there are invalid fields
        $(document).ready(function() {
        	getTicketInfoList();
        	doValidate();
        } );
        
        //window.addEventListener('load', getTicketInfoList());

      /// 함수 선언부 시작
     	

		function doValidate() {
			var forms = document.getElementsByClassName('needs-validation');
			var validation = Array.prototype.filter.call(forms, function(form) {
				form.addEventListener('submit', function(event) {
					if (form.checkValidity() === false) {
						event.preventDefault();
						event.stopPropagation();
					} else if(form.checkValidity() === true) {
						event.preventDefault();
						event.stopPropagation();
			        	var formData = getFormData($(this));
			    	    var xhr = $.ajax({
							type     : "PUT",
							cache    : false,
							url      : $(this).attr('action'),
							data     : JSON.stringify(formData),
							contentType : "application/json; charset=UTF-8",
							accept : "text/html; charset=UTF-8",
							success  : function(res) {
								if(res == 1) {
									alert('SUCCESS');
									window.location = "/url/sufee:tables-data";
								} else {
									alert('FAIL');
								}
							}
						})
						xhr.			
		    	    	xhr.onreadystatechange = function(res) {
							if(xhr.readyState == '4') {
				    	    	if(xhr.status == '200') {
				    	    		alert(res);
			    	    		} else {
			    	    			alert(res);
			    	    		}
			    	    	}	
			    		}
			    	   	event.preventDefault();
						event.stopPropagation();
			    	}
					form.classList.add('was-validated');
			   		return false;
				}, false);
			});
		}

		function getFormData($form){
			var unindexed_array = $form.serializeArray();
	 	    var indexed_array = {};
	
	 	    $.map(unindexed_array, function(n, i){
	 	        indexed_array[n['name']] = n['value'];
	 	    });
	
	 	    return indexed_array;
		}
      
      // SELECT.LIST
		function getTicketInfoList() {

			var klObj =  $('#tkti-list').DataTable( {
 		        "ajax": {
 		            "url": "/ticketinfo",
 		            "method":"GET",
 		            "dataSrc": ""
 		        },
 		        "columns": [
 		            { "data": "tkt_id"},
 		            { "data": "tkt_form" },
 		            { "data": "tkt_payment" },
 		            { "data": "tkt_paydate" },
 		            { "data": "tkt_price" },
 		            { "data": "tkt_userid" },
 		            { "data": "tkt_movid" },
 		            { "data": "tkt_showdate" },
 		            { "data": "tkt_showtime" },
 		            { "data": "tkt_theater" },
 		            { "data": "tkt_seatid" }
 		        ],
 		        "language" :  {
 		              "decimal" : "",
 		              "emptyTable" : "데이터가 없습니다.",
 		              "info" : "_START_ - _END_ (총 _TOTAL_ 개)",
 		              "infoEmpty" : "0명",
 		              "infoFiltered" : "(전체 _MAX_ 명 중 검색결과)",
 		              "infoPostFix" : "",
 		              "thousands" : ",",
 		              "lengthMenu" : "_MENU_ 개씩 보기",
 		              "loadingRecords" : "로딩중...",
 		              "processing" : "처리중...",
 		              "search" : "검색 : ",
 		              "zeroRecords" : "검색된 데이터가 없습니다.",
 		              "paginate" : {
 		                  "first" : "첫 페이지",
 		                  "last" : "마지막 페이지",
 		                  "next" : "다음",
 		                  "previous" : "이전"
 		              },
 		              "aria" : {
 		                  "sortAscending" : " :  오름차순 정렬",
 		                  "sortDescending" : " :  내림차순 정렬"
 		              }
				}
			})
		};
      
		(function trOnClickMaker() {
	   		$('#tkti-list').on('click', 'tr', function () {
	   	  		var klObj = $('#tkti-list').DataTable();
	        	var data = klObj.row(this).data();
	        	var dataTarget = $('#update-form').attr('data-target', data['tkt_id']).attr('data-target');
	        	$('#update-form').attr('action', '/ticketinfo/' + dataTarget);
	        	for(var key in data) {
	        		$('#'+key).val(data[key]);
	        	}
				$('#modalBtn').click();
			})
		})();
		
		
      
      
      /// 함수 선언부 종료
      
     /*  
      $('#update-form').bind("submit", function() {
    	  var formData = $(this).serializeArray();
    	    $.ajax({
    	            type     : "PUT",
    	            cache    : false,
    	            url      : $(this).attr('action'),
    	            data     : formData,
    	            success  : function(data) {
    	                alert(data);
    	            }
    	    });
    	    return false;
    	}); */

      

		 
      
     /*  $('#tkti-list').on('click', 'tr', function () {
    	  	var klObj = $('#tkti-list');
	        var data = klObj.row( this ).data();
	        $('#exampleModal').modal();
	   } ); 
      
      //SELECT.CB
      function listInsert(res){
      	var tktiList = JSON.parse(res);
      	
      	var html = '';
      	for(tkti of tktiList) {
      		var id = tkti.tkt_id;
      		html += '<tr id="tkti' + id + '">';
      		html += '<td class="checkbox"><input type="checkbox" id="cBox_tkti" name="tkt_id" value="' + id + '"></td>';
      		html += '<td class="id">' + id + '</td>';
      		html += '<td>' + tkti.tkt_form + '</td>';
      		html += '<td>' + tkti.tkt_payment + '</td>';
      		html += '<td>' + tkti.tkt_paydate + '</td>';
      		html += '<td>' + tkti.tkt_price + '</td>';
      		html += '<td>' + tkti.tkt_userid + '</td>';
      		html += '<td>' + tkti.tkt_movid + '</td>';
      		html += '<td>' + tkti.tkt_showdate + '</td>';
      		html += '<td>' + tkti.tkt_showtime + '</td>';
      		html += '<td>' + tkti.tkt_theater + '</td>';
      		html += '<td>' + tkti.tkt_seatid + '</td>';
      		html += '<td>-</td>';
      		html += '</tr>';
      	}
      	$('#tkti-list tbody').html(html);
      	$('#tkti-list tbody').append(html);
      }

      function listInputChange(res){
      	var tktiList = JSON.parse(res);
      	var html = '';
      	for(tkti of tktiList) {
      		var id = tkti.tkt_id;
      		html += '<tr id="tkti' + id + '">';
      		html += '<td><input type="checkbox" id="cBox_tkti" name="tkt_id" value="' + id + '"></td>';
      		html += '<td>' + id + '</td>';
      		html += '<td><input type="text" class="data_input" name="tkt_form" value="' + tkti.tkt_form + '"></td>';
      		html += '<td><input type="text" class="data_input" name="tkt_payment" value="' + tkti.tkt_payment + '"></td>';
      		html += '<td><input type="date" class="data_input" name="tkt_paydate" value="' + tkti.tkt_paydate + '"></td>';
      		html += '<td><input type="text" class="data_input" name="tkt_price" value="' + tkti.tkt_price + '"></td>';
      		html += '<td><input type="text" class="data_input" name="tkt_userid" value="' + tkti.tkt_userid + '"></td>';
      		html += '<td><input type="text" class="data_input" name="tkt_movid" value="' + tkti.tkt_movid + '"></td>';
      		html += '<td><input type="date" class="data_input" name="tkt_showdate" value="' + tkti.tkt_showdate + '"></td>';
      		html += '<td><input type="time" class="data_input" name="tkt_showtime" value="' + tkti.tkt_showtime + '"></td>';
      		html += '<td><input type="text" class="data_input" name="tkt_theater" value="' + tkti.tkt_theater + '"></td>';
      		html += '<td><input type="text" class="data_input" name="tkt_seatid" value="' + tkti.tkt_seatid + '"></td>';
      		html += '<td><button class="btn btn-secondary" data-method="put" data-target="' + id + '">수정</button>&nbsp';
      		html += '<button class="btn btn-secondary" data-method="delete" data-target="' + id + '">삭제</button></td>';
      		html += '</tr>';
      	}
      	tktiBody.innerHTML = null;
      	tktiBody.insertAdjacentHTML('afterbegin', html);
      	btnOnClickIdentifier()
      }

      // onclick
      function CRUDDispatcher(method, target) {
      	var rowId = '#tkti' + target;
      	var dataId = 'input.data_input';
      	var rowData = null;
      	var arrData = null;
      	//var rowInput = document.querySelector(rowId);
      	//var obJInput = rowInput.querySelectorAll(inputId);
      	var params = null;
      	var conf = null;
      	
      	if(method =='delete') {
      		params = {
      			tkt_id : target
      		};
      		
      		conf = {
      				url : '/ticketinfo/',
      				method : method,
      				params : params,
      				cb : function(res){
      					//var rMap = JSON.parse(res);
      					alert(res);
      					window.location = '/url/ticket:list';
      				}
      			};
      	} else if(method == 'put') {
      		rowData = document.querySelector(rowId);
      		arrData = rowData.querySelectorAll(dataId);
      		params = {
      			tkt_movid : arrData[0].value,
      			tkt_userid : arrData[1].value,
      			tkt_showdate : arrData[2].value
      		}
      	
      		conf = {
      			url : '/ticketinfo/' + target,
      			method : method,
      			params : params,
      			cb : function(res){
      				//var rMap = JSON.parse(res);
      				alert(res);
      				window.location = '/url/ticket:list';
      			}
      		};
      	};
      	
      	var ajax = new AjaxUtil(conf);
      	
      	return ajax.send;
      }


      // table 내 버튼에 대한 onclick 분기
      function btnOnClickIdentifier() {
      	var arrBtns = document.querySelectorAll('#tktiBody button[data-method]');
      	var method = null;
      	var target = null;
      	
      	//var fDelete = new removeTicketInfo();
      	//var fPut = new putTicketInfo();
      	
      	for(var i = 0 ; i < arrBtns.length ; i++) {
      		method = arrBtns[i].getAttribute('data-method');
      		target = arrBtns[i].getAttribute('data-target');
      		arrBtns[i].onclick = CRUDDispatcher(method, target);
      	}
      };


      // 전체 선택
      function allCheck() {
      	var arrCBox = document.querySelectorAll('#cBox_tkti');
      	var allCheck = document.querySelector('#allCheck');
      	for(Cbox of arrCBox) {
      		Cbox.checked = allCheck.checked;
      	}
      }
      
      
      /// 검색 함수 시작 

      // 검색항목 변경에 따른 반영
      function search_change() {
      	var searchBox = document.querySelector('.search_wrapper');
      	var searchSelect = searchBox.querySelector('.search_select');
      	var searchInput = searchBox.querySelector('.search_input');
      	
      	if(searchSelect.value == 'tkt_showdate') {
      		searchInput.value = null;
      		searchInput.type = 'date';
      		searchInput.id = searchSelect.value;
      	} else {
      		searchInput.value = null;
      		searchInput.type = 'text';
      		searchInput.id = searchSelect.value;
      	}
      }

      // SELECT.SEARCH
      function getTicketInfoSearch() {
      	var searchBox = document.querySelector('.search_wrapper');
      	var searchInput = searchBox.querySelector('.search_input');
      	var conf = {
      			params : {},
      			url : '/ticketinfo/search',
      			method : 'GET',
      			cb : listInsert
      	};
      	if(searchInput.id == 'tkt_movid') {
      		conf.params = { 
      			tkt_movid : searchInput.value
      		}
      	} else if(searchInput.id == 'tkt_userid') {
      		conf.params = { 
      				tkt_userid : searchInput.value
      			}
      	} else if(searchInput.id == 'tkt_showdate') {
      		conf.params = { 
      				tkt_showdate : searchInput.value
      			}
      	};
      	var req = new AjaxUtil(conf);
      	req.send()
      	
      };

      /// 검색 함수 종료
      
      */

     

    </script>


</body>
</html>
