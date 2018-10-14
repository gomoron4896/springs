<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<title>티켓 리스트 찐</title>
</head>
<body>
<div class="content" >
	<!-- 검색창 -->
	<div class="search_wrapper" style="margin-bottom:20px">
		<select class="search_select" onchange="search_change()">
			<option value="tkt_movid" selected>영화 이름</option>
			<option value="tkt_userid">사용자 ID</option>
			<option value="tkt_showdate">상영일</option>
		</select>
		<input type="text" class="search_input" id="tkt_movid">
		<button class="search_submit btn btn-secondary" onclick="getTicketInfoSearch()">검색</button>
	</div>
	
	<!-- 정보 테이블 -->
	<div class="table-wrapper">
		<table class="table">
			<thead>
				<tr>
					<th><input type="checkbox" data-allcheck="" onclick="allCheck()" id="allCheck"></th>
					<th>번호</th>
					<th>레벨</th>
					<th>이름</th>
					<th>비고</th>
					<th colspan="2">처리</th>
				</tr>
			</thead>
			<tbody id="tktiBody">
			</tbody>
		</table>
	</div>
	
	<!-- 전체 처리 -->
	<div class="modder-wrapper">
		<button class="btn btn-secondary" onclick="addInsertForm()">입력하기</button><br>
	</div>
	
</div>
<!-- background -->

<!-- background -->

<script type="text/javascript">

window.addEventListener('load', getTicketInfoList());

/// 함수 선언부 시작

//SELECT.CB
function listInsert(res){
				var tktiList = JSON.parse(res);
				var html = '';
				for(tkti of tktiList) {
					var id = tkti.tkt_id;
					html += '<tr id="tkti' + id + '">';
					html += '<td><input type="checkbox" id="cBox_tkti" name="tkt_id" value="' + id + '"></td>';
					html += '<td>' + id + '</td>';
					html += '<td><input type="text" class="data_input" name="tkt_movid" value="' + tkti.tkt_movid + '"></td>';
					html += '<td><input type="text" class="data_input" name="tkt_userid" value="' + tkti.tkt_userid + '"></td>';
					html += '<td><input type="date" class="data_input" name="tkt_showdate" value="' + tkti.tkt_showdate + '"></td>';
					html += '<td><button class="btn btn-secondary" data-method="put" data-target="' + id + '">수정</button></td>';
					html += '<td><button class="btn btn-secondary" data-method="delete" data-target="' + id + '">삭제</button></td>';
					html += '</tr>';
				}
				tktiBody.innerHTML = null;
				tktiBody.insertAdjacentHTML('afterbegin', html);
				btnOnClickIdentifier()
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

// SELECT.LIST
function getTicketInfoList() {
	var tktiBody = document.querySelector('#tktiBody');
	var conf = {
			url : '/ticketinfo',
			method : 'GET',
			cb : listInsert
	};
	
	var req = new AjaxUtil(conf);
	req.send()
	
};

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

/// 함수 선언부 종료

</script>
</body>
</html>

<% 
/*
 <<< 버려진 스크립트 함수들 >>> 
//DELETE
var removeTicketInfo = function() {
	this.setting = function(target, method) {
		var params = {
			tkt_id : target
		};
		
		var conf = {
				url : '/ticketinfo/',
				method : method,
				params : params,
				cb : function(res){
					alert(res);
					window.location = '/url/ticket:list';
				}
		
		};
		
		var req = new AjaxUtil(conf);
		this.send = function() {
			req.send();
		};
	};
};

//UPDATE
var putTicketInfo = function() {
	// 
	var rowId = null;
	var inputId = null;
	var inputRow = null;;
	var paramData = null;
	var params = null;
	var conf = null;
	
	this.setting = function(target, method) {
		rowId = '#tkti' + target;
		inputId = 'input.data_input'
		inputRow = document.querySelector(rowId);
		paramData = inputRow.querySelectorAll(inputId);
		
		params = {
				tkt_form : paramData[0].value
		};
		
		conf = {
				url : '/ticketinfo/' + target,
				method : method,
				params : params,
				cb : function(res){
					var rMap = JSON.parse(res);
					alert(rMap.msg);
					window.location = '/url/ticket:list';
				}
		};
	};
		
	this.send = function() {
		var req = new AjaxUtil(conf);
		req.send();
	};
};
*/
%>