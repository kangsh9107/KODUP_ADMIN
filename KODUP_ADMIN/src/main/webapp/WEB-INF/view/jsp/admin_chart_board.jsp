<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_chart_board.jsp</title>
</head>
<body>
<span>게시판</span>
<select name='board_select' size='5'>
  <option value='qnaboard'></option>
  <option value='freetalking'></option>
  <option value='mansearch'></option>
  <option value='jobsearch'></option>
  <option value='infoshare'></option>
</select>

<span>기간</span>
<select name='chart_period' size='5'>
  <option value='10'></option>
  <option value='20'></option>
  <option value='30'></option>
  <option value='40'></option>
  <option value='50'></option>
  <option value='60'></option>
</select>
</body>
</html>