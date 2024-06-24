<%@ page contentType="text/html; charset=UTF-8" %>
<!-- nav -->
<div class="row g-4 my-0 navi">
    <div class="col-4 d-flex justify-content-start">
        <div class="d-flex flex-row">
        	<div class="me-3 naviBtn wolf" onclick="location.href='/'">Home</div>
            <div class="me-3 naviBtn" onclick="location.href='/list.game'">Game</div>
            <div class="me-3 naviBtn" onclick="location.href='/list.board'">Community</div>
            <div class="me-3 naviBtn" onclick="location.href='/views/members/rank.jsp'">Ranking</div>
        </div>
    </div>
    <div class="col-4 d-flex justify-content-center align-items-center">
            <div id="wolfLogo" onclick="location.href='/'">
                <img src="/images/wolfLogo.png" alt="">
            </div>
    </div>
    <div class="col-4 d-flex justify-content-end">
        <div class="d-flex flex-row">
            <div class="me-3 naviBtn" onclick="location.href='/main.service'">Service</div>
            <c:if test="${ WolfAdmin == true }">
            	<div class="me-3 naviBtn" onclick="location.href='/main.admin'">Admin</div>
            </c:if>
            <c:if test="${WolfID != null}">
	            <div class="naviBtn" onclick="location.href ='/views/mypage/mypage.jsp'">
	            	<c:choose>
	            		<c:when test="${WolfAvatar != null}">
	            			<img src="${WolfAvatar}">
	            		</c:when>
	            		<c:otherwise>
	            			<img src="/images/default-avatar.jpg" width="50" alt="기본 아바타">
	            		</c:otherwise>
	            	</c:choose>
	            	
	            </div>
            </c:if>
            <c:if test="${WolfID == null}">
	            <div class="naviBtn" onclick="location.href ='/views/members/login.jsp'"><i class="fa-solid fa-user menus"></i></div>
            </c:if>
        </div>
    </div>
</div>

<!-- Mobile Navigation -->
<nav class="navbar navbar-dark fixed-top m_navi">
	<div class="container-fluid" style="padding: 0 15px;">
		<!-- 로그인 -->
		<c:if test="${WolfID != null}">
			<div class="naviBtn loginBtn"
				onclick="location.href ='/views/mypage/mypage.jsp'">
				<c:choose>
					<c:when test="${WolfAvatar != null}">
						<img src="${WolfAvatar}">
					</c:when>
					<c:otherwise>
						<img src="/images/default-avatar.jpg" width="50" alt="기본 아바타">
					</c:otherwise>
				</c:choose>

			</div>
		</c:if>
		<c:if test="${WolfID == null}">
			<div class="naviBtn"
				onclick="location.href ='/views/members/login.jsp'">
				<i class="fa-solid fa-user menus"></i>
			</div>
		</c:if>
		</a>
		<!-- 햄버거 버튼 -->
		<button class="navbar-toggler" type="button"
			data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar"
			aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<!-- 햄버거 버튼 클릭시 나오는 화면 -->
		<div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1"
			id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
			<!-- 제목 wolf -->
			<div class="offcanvas-header" style="height: 58px;">
				<h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">wolf</h5>
				<!-- 취소버튼 -->
				<button type="button" class="btn-close btn-close-white"
					data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>
			<!-- 메뉴 -->
			<div class="offcanvas-body">
				<ul class="navbar-nav">
					<li class="nav-item" onclick="location.href='/'">
						<div>
							<i class="fa-solid fa-house"></i>
						</div>
						<div class="naviBtn wolf">Home</div>
					</li>
					<li class="nav-item" onclick="location.href='/list.game'">
						<div>
							<i class="fa-solid fa-puzzle-piece"></i>
						</div>
						<div class="naviBtn">Game</div>
					</li>
					<li class="nav-item" onclick="location.href='/list.board'">
						<div>
							<i class="fa-solid fa-bullhorn"></i>
						</div>
						<div class="naviBtn">Community</div>
					</li>
					<li class="nav-item" onclick="location.href='/views/members/rank.jsp'">
						<div>
							<i class="fa-solid fa-ranking-star"></i>
						</div>
						<div class="naviBtn">Ranking</div>
					</li>
					<li class="nav-item" onclick="location.href='/main.service'">
						<div>
							<i class="fa-solid fa-comment-dots"></i>
						</div>
						<div class="naviBtn">Service</div>
					</li>
					<li class="nav-item" onclick="location.href='/main.admin'">
						<div>
							<i class="fa-solid fa-comment-dots"></i>
						</div>
						<div class="naviBtn">Admin</div>
					</li>
				</ul>

			</div>
		</div>
	</div>
</nav>