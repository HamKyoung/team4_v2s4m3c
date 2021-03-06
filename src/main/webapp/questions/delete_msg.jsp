<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>Resort world</title>
 
<link href="../css/style.css" rel="Stylesheet" type="text/css">
<script type="text/JavaScript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
</head> 
<body>
<jsp:include page="/menu/top.jsp" flush='false' />
 
  <DIV class='title_line'>
    질문 삭제
  </DIV>

  <ASIDE class="aside_left">

  </ASIDE>
  <ASIDE class="aside_right">
    <!-- <span class='menu_divide' >│</span> --> 
  </ASIDE> 
  
  <div class='menu_line'></div>
 
<DIV class='form-group'>
  <fieldset class='col-md-12' style='text-align: center; margin: 30px;'>
      <c:choose>
        <c:when test="${passwd_cnt == 1 }"> <!-- 패스워드 일치 -->
          <c:choose>
            <c:when test="${cnt == 1}"> <!-- 글 삭제 성공 -->
              <span class='col-md-12'>${ques_title } <br><br><br> 질문을 삭제했습니다.<br><br></span>
            </c:when>
            <c:when test="${ans_cnt == 1 }"> 
              <span class='col-md-12'> 답변이 등록된 질문은 삭제할 수 없습니다.</span>
            </c:when> 
            <c:otherwise>
              <LI class='li_none'>
                <span class='span_fail'>${ques_title } <br><br> 질문 삭제에 실패했습니다.</span>
              </LI>
              <LI class='li_none'>
                <span class='span_fail'>다시 시도해주세요.</span>
              </LI>
            </c:otherwise>
          </c:choose>
        </c:when>
        <c:otherwise> <!-- 패스워드 불일치 -->
          <LI class='li_none'>
            <span class='span_fail'>패스워드가 일치하지 않습니다. 다시 시도해주세요.</span>
          </LI>
        </c:otherwise>
      </c:choose>
      <br><br>
      <c:choose>
        <c:when test="${cnt == 1 && passwd_cnt == 1}">
          <LI class='li_none'>
            <button type='button' 
                        onclick="location.href='../answer/list.do?ques_no=${param.ques_no}'"
                        class="btn btn-info">목록</button>                        
          </LI>
        </c:when>
        <c:otherwise>
          <LI class='li_none'>
            <button type='button' 
                        onclick="history.back();"
                        class="btn btn-info">재시도</button>
            <button type='button' 
                        onclick="location.href='../answer/list.do?ques_no=${param.ques_no}'"
                        class="btn btn-info">목록</button>                        
          </LI>
        </c:otherwise> 
      </c:choose>
      
  </fieldset>
 
</DIV>
 
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>

