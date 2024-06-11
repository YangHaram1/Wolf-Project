<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
      :root {
        --bg-light: #ffd449;
        --bg-dark: #14213d;
        --bg-transparent: transparent;

        --color-white: #eeeeee;
        --color-black: #14213d;
        --bg-nav: #f9a620;
        --color-nav-icon: #14213d;
        --color-nav-bg: #f9a620;
        font-size: 16px;
      }

      html,
      body {
        height: 100%;
        margin: 0;
        background-color: var(--bg-dark);
        color: var(--bg-black);
        color: var(--color-black);
        overflow: hidden;

        font-family: "Noto Sans KR", sans-serif;
      }

      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
      }

      .mypage-container {
        display: flex;
        height: 100vh;
        width: 100%;
      }

      .mypage-side-menu {
        min-width: 200px;
        height: 100%;
        background-color: rgb(150, 217, 6);
      }

      .mypage-side-menu > p:hover {
        cursor: pointer;
      }

      .mypage-side-menu > p {
        padding: 20px;
        font-size: 20px;
        font-weight: 800;
        text-align: center;
      }

      .mypage-logo {
        display: flex;
        justify-content: center;
        padding: 10px;
      }

      .mypage-logo > img {
        width: 230px;
      }

      .mypage-main-form {
        background-color: #0a5479;
        flex: 13;
        display: flex;
        flex-direction: column;
        align-items: center;
      }

      .mypage-main-title {
        margin: 50px 0;
        font-size: 50px;
        color: white;
      }

      /* .mypage-dashboard {
        width: 90%;
        background-color: white;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
        align-items: center;
        padding: 20px;
      } */
      .mypage-dashboard {
        background-color: white;
        display: flex;
        width: 100%;
        max-width: 950px;
        height: auto;
        min-height: 560px;
      }
      .mypage-dashboard div {
        /* border: 1px solid aqua; */
        border-radius: 10px;
      }

      .mypage-dashboard > div:first-child {
        flex: 7;
        background-color: #ecb153;
        display: flex;
        flex-direction: column;
      }
      .mypage-dashboard > div:first-child > div:first-child {
        flex: 1;
        margin-top: 0px;
        margin-bottom: 10px;
        background-color: rgb(189, 107, 194);
        display: flex;
        flex-direction: column;
      }

      .dashboard-inner_box {
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        padding: 15px;
        border:1px solid #ff0000;
      }
      
      .dashboard-inner_box > div:first-child {
        flex: 4;
        background-color: rgb(144, 127, 145);
        border-radius: 0px;
        /* margin-bottom: 10px; */
        display: flex;
      }
      .dashboard-inner_box > div:first-child > div:first-child {
        flex: 2;
        background-color: rgb(132, 0, 139);
        border-radius: 0px;
      }
      .dashboard-inner_box > div:first-child > div:last-child {
        flex: 5;
        background-color: rgb(81, 72, 149);
        border-radius: 0px;
      }
      .dashboard-inner_box > div:first-child > div:last-child > p {
        font-size: x-large;
        line-height: 130px;
        margin-left: 20px;
      }

      .dashboard-inner_box > div:last-child {
        flex: 2;
        border-top: 3px solid rgb(255, 0, 0);
        background-color: rgb(255, 214, 90);
        border-radius: 0px;
        display: flex;
        align-items: center;
        justify-content: flex-end;
      }
      
      .dashboard-inner_box > div:last-child > button {
        margin-right: 25px;
        width: 110px;
        height: 45px;
        border-radius: 25px;
      }


      .mypage-dashboard > div:first-child > div:last-child {
        flex: 1;
        display: flex;
      }
      .mypage-dashboard > div:first-child > div:last-child > div:first-child {
        flex: 1;
        background-color: rgb(189, 107, 194);
      }
      .mypage-dashboard > div:first-child > div:last-child > div:last-child {
        flex: 1;
        margin-left: 12px;
        background-color: rgb(189, 107, 194);
      }

      .mypage-dashboard > div:last-child {
        flex: 4;
        background-color: #36825c;
        display: flex;
        flex-direction: column;
      }
      .mypage-dashboard > div:last-child > div:first-child {
        flex: 1;
        margin-top: 0px;
        margin-left: 12px;
        background-color: rgb(189, 107, 194);
      }
      .mypage-dashboard > div:last-child > div:first-child p {
        

      }
      .mypage-dashboard > div:last-child > div:last-child {
        flex: 1;
        margin-top: 10px;
        margin-left: 12px;
        background-color: rgb(189, 107, 194);
      }





      /* .dashboard-item {
        width: 30%;
        height: 150px;
        background-color: white;
        border: 1px solid #ccc;
        border-radius: 10px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        margin: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      } */
    </style>
  </head>
  <body>
    <main class="mypage-container">
      <aside class="mypage-side-menu">
        <div class="mypage-logo">
          <img
            src="/images/img09.png"
            alt="logo"
            onclick="location.href='/index.jsp'"
            style="cursor: pointer"
          />
        </div>
        <p onclick="location.href='/views/mypage/mypage.jsp'">내정보 홈</p>
        <p onclick="location.href='/select.members'">개인정보관리</p>
        <p onclick="location.href='/views/mypage/updatePW.jsp'">비밀번호 변경</p>
        <p onclick="location.href='/main.mypage'">게임플레이 정보</p>
        <p onclick="location.href='/main.mypage'">문의내역</p>
        <p onclick="location.href='/main.mypage'">회원탈퇴</p>
      </aside>

      <section class="mypage-main-form">
        <h1 class="mypage-main-title">마이페이지</h1>

        <div class="mypage-dashboard">
          <div>
            <div>
              <div class="dashboard-inner_box">
                <div>
                  <div></div>
                  <div>
                    <p>${WolfNickname} 님 환영합니다.</p>
                  </div>
                </div>
                <div>
                  <button class="mypage_btn" onclick="location.href='/select.members'">내 정보</button>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div class="dashboard-inner_box">
                  <div><p>게임플레이 정보</p></div>
                  <div><button>바로가기</button></div>
                </div>
              </div>
              <div>
                <div class="dashboard-inner_box">
                  <div><p>문의내역</p></div>
                  <div><button>바로가기</button></div>
                </div>
              </div>
            </div>
          </div>
          <div>
            <div>
              <div class="dashboard-inner_box">
                <div><p>비밀번호 변경</p></div>
                  <div><button onclick="location.href='/views/mypage/updatePW.jsp'">바로가기</button></div>
              </div>
            </div>
            <div>
              <div class="dashboard-inner_box">
                <div><p>회원탈퇴</p></div>
                  <div><button>바로가기</button></div>
              </div>
          </div>
        </div>
      </section>
    </main>
  </body>
</html>