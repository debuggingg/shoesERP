<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>    

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="/reset.css">
  <link rel="stylesheet" type="text/css" href="/inventory.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <title>Document</title>
  <style type="text/css">
  html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}
input{
    outline: none;
    caret-color: black;
}
body,th,td,input,select,textarea,button,pre {font-size:12px;line-height:1.5;font-family:"Noto Sans KR", Malgun Gothic,"ë§‘ì€ ê³ ë”•",AppleGothic,Dotum,"ë‹ì›€",sans-serif;color:#333} /* colorê°’ì€ ë””ìžì¸ê°€ì´ë“œì— ë§žê²Œì‚¬ìš© */
  .content{
    margin: 0px auto;
    width: calc(100vw - 300px);
    height: calc(100vh- 60px);
    /* width: 1400px; */
    min-width: 1000px;
    overflow: hidden;
}
.content_header{
    display: flex;
    align-items: center;
    justify-content: space-between;
    height: 58px;
    padding: 0 20px;
    font-weight: 500;
    color: #fff;
    background-color: #6571ff;
}
.content_header_title{
    font-size: 18px;

}
.content_header_btn{
    display: flex;
}
.content_header_btn > div {
    padding: 10px 10px;
    display: flex;
    flex-direction: row;
    align-items: center;
    font-weight: 500;
    font-size: 15px;
    border-radius: 10px;
    cursor: pointer;
}
.content_header_btn > div > div {
    display: flex;
    width: 30px;
    height: 30px;
    align-items: center;
    justify-content: center;
}
/* .content_header_search_btn{
    padding: 10px 10px;
    display: flex;
    flex-direction: row;
    align-items: center;
    font-weight: 500;
    font-size: 15px;
    border-radius: 10px;
    cursor: pointer;
} */
.content_header_search_btn:hover{
    background-color: #7782f8;
}
/* .content_header_search_btn >div{
    width: 30px;
    height: 30px;
} */
.content_header_reset_btn:hover{
    background-color: #7782f8;
}
/* .content_header_excel_btn >div{
    width: 30px;
    height: 30px;
} */
.content_body{
    padding: 5px;
    background-color: #e2e2e2;
}
.content_body_search{
    padding: 10px 10px;
    /* height: 105px; */
    border-radius: 8px;
    font-size: 12px;
    background-color: #fff;
    overflow: hidden;
}
/* content_body_search ì•ˆì— div íƒœê·¸ í¬ê¸°ì„¤ì • */
.content_body_search > div{
    margin: 5px auto;
    display: flex;
    align-content: center;
    height: 30px;
}
.content_body_search > div > div{
    display: flex;
    justify-content: right;
    align-items: center;
    /* text-align: right; */
    width: 280px;
    height: 30px;
}
.content_body_search label{
    text-align: right;
    width: 60px;
}
.item_code_create{
    padding-left: 20px;
}
.item_code_create > button {
    width: 100px;
    height: 30px;
    margin-right: 150px;
    border: none;
    border-radius: 3px;
    color: white;
    background-color: #6571ff;
}
.item_code_create > button:hover{
    background-color: #7782f8;
}
.item_code > label{
    color: red;
}
.item_code > input{
    cursor: not-allowed;
}

/* content_body_search ì•ˆì— input íƒœê·¸ í¬ê¸°ì„¤ì • */
.content_body_search input{
    width: 165px;
    height: 25px;
    margin-left: 5px;
    padding: 0 1px;
    border: 1px solid #cbd6dd;
}
.content_body_search select{
    margin-left: 5px;
    width: 165px;
    height: 26px;
    border: 1px solid #cbd6dd;
}


/* ì¶”ê°€ì •ë³´ ì‹œìž‘ */
.content_body_search_plus{
    display: flex;
    align-items: center;
    font-size: 13px;
    margin-top: 5px;
    height: 30px;
    border-radius: 8px;
    background-color: #fff;
    cursor: pointer;
}
.content_body_search_plus > div:nth-child(2){
    margin-left: 5px;
}
.content_body_search_plus.on{
    border-bottom-right-radius: 0px;
    border-bottom-left-radius: 0px;
}
.content_body_search_plus.on > div:nth-child(2){
    transform: scaleY(-1);
}
.content_body_search_plus > div {
    margin-left: 20px;
}
.content_plus{
    display: none;
    height: 100px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
    background-color: white;
}
.content_plus.on{
    display: block;
}
/* ì¶”ê°€ì •ë³´ ë§ˆì§€ë§‰ */

.content_body_search_price{
    padding: 10px 10px;
    display: flex;
    flex-direction: column;
    margin-top: 5px;
    height: 80px;
    justify-content: center;
    border-radius: 8px;
    background-color: #fff;
}
.content_body_search_price > div {
    /* border: 1px solid red; */
    margin: 3px auto;
    display: flex;
    align-content: center;
    width: 100%;
    height: 30px;
}
.content_body_search_price > div > div {
    width: 280px;
    height: 30px;
    font-size: 12px;
    text-align: right;
}
.content_body_search_price input{
    margin-left: 5px;
    width: 165px;
    height: 25px;
    color: #575757;
    font-weight: 800;
    background-color: #e9e9e9;
    border: 1px solid #cbd6dd;
    text-align: right;
}

.content_body_list{
    overflow: auto;
    margin-top: 5px;
    /* height: 500px; */
    border-radius: 10px;
}
.file_btn{
    padding: 0px 10px;
    display: flex;
    justify-content: right;
    font-size: 15px;
    margin-top: 5px;
    height: 35px;
}
.file_btn > div {
    margin-left: 5px;
    padding: 10px;
    display: flex;
    align-items: center;
    border-radius: 10px;
    /* width: 50px; */
    color: white;
    font-size: 12px;
    background-color: #6571ff;
    cursor: pointer;
}

.excel_btn:hover, .upload_btn:hover{
    background-color: #7782f8;
}

table {
    width: 100%;
    border-collapse: collapse;
}
/* í…Œì´ë¸” í—¤ë” ìŠ¤íƒ€ì¼ */
th {
    background-color: #f4f4f4;
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
/* í…Œì´ë¸” ë°”ë”” ìŠ¤íƒ€ì¼ */
td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
/* í…Œì´ë¸”ì˜ í™€ìˆ˜/ì§ìˆ˜ í–‰ ìƒ‰ìƒ êµ¬ë¶„ */
tr:nth-child(even) {
    background-color: #f9f9f9;
}

tr:nth-child(odd) {
    background-color: #fff;
}
.sty tr:hover{
    background-color: #6571ff;
    cursor: pointer;
}
  </style>
</head>
<body>
  <div class="content">
    <!-- 헤더부분 -->
    <div class="content_header">
      <div class="content_header_title">재고현황</div>
      <div class="content_header_btn">
        <div class="content_header_search_btn">
          <div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
          </svg></div>
          <span>조회</span>
        </div>
        <div class="content_header_reset_btn">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-clockwise" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M8 3a5 5 0 1 0 4.546 2.914.5.5 0 0 1 .908-.417A6 6 0 1 1 8 2z"/>
            <path d="M8 4.466V.534a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384L8.41 4.658A.25.25 0 0 1 8 4.466"/>
          </svg>
          <span>초기화</span>
        </div>
      </div>
    </div>
    <!-- 바디부분 -->
    <div class="content_body">
      <!-- 서치 태그 -->
      <div class="content_body_search">
        <!-- 서치 1row부분 -->
        <div>
          <div class="item_code">
            <label>제품코드</label>
            <input type="text" name="productNum" class="result" readonly />
          </div>
          <div>
            <label>제품명</label>
            <input type="text"/>
          </div>
          <div>
            <label>입출고일자</label>
            <input type="text"/>
          </div>
          <div class="item_brand">
            <label >브랜드</label>
            <input type="text"/>
          </div>
          <div></div>
        </div>
        <!-- 서치 2row 부분 -->
        <div>
          <div>
            <label>종류</label>
            <select>
              <option></option>
            </select>
          </div>
          <div>
            <label>색상</label>
            <select>
              <option></option>
            </select>
          </div>
          <div>
            <label>사이즈</label>
            <select>
              <option></option>
            </select>
          </div>
          <div>
            <label>성별</label>
            <select>
              <option></option>
            </select>
          </div>
          <div class="item_code_create">
            <button>제품코드생성</button>
          </div>
        </div>
        <!-- 서치 3row 부분 -->
        <div>
          <div>
            <label>창고</label>
            <input type="text"/>
          </div>
          <div>
            <label>수량</label>
            <input type="number"/>
          </div>
          <div></div>
          <div></div>
          <div></div>
        </div>
      </div>
      <!-- 추가사항 태그 -->
      <div class="content_body_search_plus">
        <div>추가정보</div>
        <div>
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
            <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
          </svg>
        </div>
      </div>
      <div class="content_plus"></div>
      <!-- 가격 태그 -->
      <div class="content_body_search_price">
        <div>
          <div>
            <label>가격</label>
            <input type="text"/>
          </div>
          <div>
            <label>부가세</label>
            <input type="text"/>
          </div>
          <div>
            <label>총액</label>
            <input type="text"/>
          </div>
        </div>
        <div></div>
      </div>
      <div class="file_btn">
        <div class="upload_btn">
          <div>
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-upload" viewBox="0 0 16 16">
              <path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5"/>
              <path d="M7.646 1.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 2.707V11.5a.5.5 0 0 1-1 0V2.707L5.354 4.854a.5.5 0 1 1-.708-.708z"/>
            </svg>
            <span>UPLOAD</span>
          </div>
        </div>
        <div class="excel_btn">
          <div>
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-download" viewBox="0 0 16 16">
              <path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5"/>
              <path d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708z"/>
            </svg>
            <span>EXCEL</span>
          </div>
        </div>
      </div>
      <!-- 테이블 부분 -->
      <form action="/sales/modifySalesRequests" method="post">
      <div class="content_body_list">
        <table>
          <thead>
              <tr>
               <th>제품코드</th>
              <th>브랜드</th>
              <th>주문자이름</th>
              <th>수량</th>
              <th>가격</th>
              <th>입고날짜</th>
                  <th style="width: 100px;"></th>
              </tr>
          </thead>
          <tbody class="sty">
          <c:choose>
				<c:when test="${empty resultMap.salesRequstList}">
					<tr>
						<td colspan="4">요청하신 물건이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="salesRequest" items="${resultMap.salesRequstList }">
						<tr>
					<td>${salesRequest.productCategory}</td>
                    <td>${salesRequest.productName}</td>
                    <td>${salesRequest.orgName}</td>
                    <td>
                      <!-- 수량 수정 가능 -->
                      <input type="hidden" name="salesRequests[${status.index}].requestId" value="${salesRequest.requestId}" />
                      <input type="number" name="salesRequests[${status.index}].requestQuantity" value="${salesRequest.requestQuantity}" />
                    </td>
                    <td>${salesRequest.salesPrice}</td>
                    <td>${salesRequest.requestDate}</td>
						
					
						</tr>
					</c:forEach>
					
				</c:otherwise>
					
			</c:choose>
          </tbody>
        </table>
      </div>
         <button type="submit">submit</button>
      </form>
    </div>
  </div>

  <script>
    // 추가 정보 클릭 이벤트
    var plusBtn=document.querySelector(".content_body_search_plus");
    var plusContent=document.querySelector(".content_plus");
    plusBtn.addEventListener("click",function(){
      if(plusBtn.className=="content_body_search_plus"){
        plusBtn.classList.add("on");
        plusContent.classList.add("on");
      }else{
        plusBtn.classList.remove("on");
        plusContent.classList.remove("on");
      }
    });
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>