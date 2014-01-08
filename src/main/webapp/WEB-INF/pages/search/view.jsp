<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<meta charset="UTF-8">
<title>우편번호 찾기</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="robots" content="noindex, nofollow">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="http://githkdh.github.io/dev/postcode/postcode.css">
<section class="postcodeSearch">
        <h1>우편번호 목록</h1>
        <form id="postcodeSearchForm" name="postcodeSearchForm" class="form" action="/postcode/search" method="GET">
                <fieldset>
                        <legend>검색 카테고리 선택</legend>
                        <label for="addressTypeA">
                                <input type="radio" name="addressType" id="addressTypeA" value="PLAIN" checked="checked">
                                <span class="rowh">주소</span>
                        </label>
                        <label for="addressTypeB">
                                <input type="radio" name="addressType" id="addressTypeB" value="STREET">
                                <span class="rowh">도로명</span>
                        </label>
                </fieldset>
                <p class="inputTextBox">
                        <label for="address">
                                <span class="rowh">검색어 입력</span>
                                <input type="text" name="address" id="address" placeholder="도로명 입력">
                                <input type="submit" id="submit" value="조회">
                        </label>
                </p>
                <p class="controls">
                        <!--
                        <a href="#" target="_blank">등록</a>
                        <a href="#" target="_blank">엑셀등록</a>
                        -->
                </p>
        </form>

        <div id="results">
              ${_view}  
        </div>
</section>

<script src="https://raw.github.com/modulefactory/postcode/master/HTML/postcode-search/res/postcode.js"></script>
<script src="http://image.gsshop.com/deal/static/html/mc/script/lib/json2.js"></script>
<script src="http://image.gsshop.com/deal/static/html/mc/script/lib/xhr.js"></script>
