<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>연구 상세</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header class="bg-light p-3">
        <div class="container d-flex justify-content-between align-items-center">
            <div>
                <img src="images/logo.png" alt="AAS Logo" style="height: 40px;">
                <span class="ms-3 fw-bold">연구 상세</span>
            </div>
            <div>
                <a href="main.jsp" class="btn btn-outline-secondary">홈</a>
            </div>
        </div>
    </header>

    <main class="container my-5">
        <!-- Research Details Section -->
        <section class="mb-5">
            <h2>${research.title}</h2>
            <table class="table table-bordered">
                <tr>
                    <td class="bg-light text-center" style="width: 20%;">지도 교수</td>
                    <td>${research.professorName}</td>
                </tr>
                <tr>
                    <td class="bg-light text-center">연구 분야</td>
                    <td>${research.fieldName}</td>
                </tr>
                <tr>
                    <td class="bg-light text-center">연구 역할</td>
                    <td>${research.role == 'IR' ? '개별 연구' : '집단 연구'}</td>
                </tr>
                <tr>
                    <td class="bg-light text-center">연구 설명</td>
                    <td>${research.description}</td>
                </tr>
            </table>
        </section>

        <!-- Related Research Section -->
        <section class="mb-5">
            <h2>관련 연구</h2>
            <table class="table table-bordered">
                <thead>
                    <tr class="bg-warning text-center">
                        <th>연구 제목</th>
                        <th>지도 교수</th>
                        <th>연구 분야</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="relatedResearch" items="${relatedResearches}">
                        <tr>
                            <td>${relatedResearch.title}</td>
                            <td>${relatedResearch.professorName}</td>
                            <td>${relatedResearch.fieldName}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>

        <!-- Bookmark and Sharing Section -->
        <c:if test="${not empty user}">
            <section class="mb-5">
                <h2>연구 옵션</h2>
                <button class="btn btn-warning mb-3" onclick="bookmarkResearch(${research.id})">북마크 추가</button>
                <button class="btn btn-outline-secondary" onclick="shareResearch('${research.title}')">연구 공유</button>
            </section>
        </c:if>
    </main>

    <footer class="bg-light py-3">
        <div class="container text-center">
            <p>동국대학교 AI소프트웨어융합학부</p>
            <p>주소: 04620 서울시 중구 필동로 1길 30 동국대학교 원흥관</p>
        </div>
    </footer>

    <script>
        function bookmarkResearch(researchId) {
            alert("북마크가 추가되었습니다: " + researchId);
            // Add AJAX request to handle bookmarking if needed.
        }

        function shareResearch(researchTitle) {
            alert("연구가 공유되었습니다: " + researchTitle);
        }
    </script>
</body>
</html>
