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
				<div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel">
					<div class="modal-dialog modal-lg" role="document">
					    <div class="modal-content">
					        <div class="modal-header">
					            <h5 class="modal-title" id="largeModalLabel">Large Modal</h5>
					            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					                <span aria-hidden="true">&times;</span>
					            </button>
					        </div>
					        <div class="modal-body">
					            <p>
					                There are three species of zebras: the plains zebra, the mountain zebra and the Grévy's zebra. The plains zebra
					                and the mountain zebra belong to the subgenus Hippotigris, but Grévy's zebra is the sole species of subgenus
					                Dolichohippus. The latter resembles an ass, to which it is closely related, while the former two are more
					                horse-like. All three belong to the genus Equus, along with other living equids.
					            </p>
					        </div>
					        <div class="modal-footer">
					            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
					            <button type="button" class="btn btn-primary">Confirm</button>
					        </div>
					    </div>
					</div>
				</div>
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
        $(document).ready(function() {
        	getTicketInfoList();
        } );
        
        //window.addEventListener('load', getTicketInfoList());

      /// 함수 선언부 시작

     

      // SELECT.LIST
		function getTicketInfoList() {
      	/* var conf = {
      			url : '/ticketinfo',
      			method : 'GET',
      			cb : listInsert
      	};
      	
      	var req = new AjaxUtil(conf);
      	req.send() */

			var klObj =  $('#tkti-list').DataTable( {
 		        "ajax": {
 		            "url": "/ticketinfo",
 		            "method":"GET",
 		            "dataSrc": ""
 		        },
 		        "columns": [
 		            { "data": "tkt_id", "id" : "tkt_id"},
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
			 $('#tkti-list').on('click', 'tr', function () {
		        var data = klObj.row( this ).data();
		        $('#largeModal').modal('show');
		       	
		    } );

			<!-- 테이블 그리기 -->
      /* 	document.onreadystatechange = function(){
      	    if (document.readyState === "complete") {
      	    	$('#tkti-list tbody tr:first').html();
      	    	//$('#tkti-list tbody tr:first').on('click',thisIdis);
      	    } else if(document.readyState === "interactive") {
      	    	$('#tkti-list tbody tr:first').html();
      	    }
      	} */
      };
      
      function thisIdis() {
    	  alert('1');
      }
      
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

      /// 함수 선언부 종료

    </script>


</body>
</html>
