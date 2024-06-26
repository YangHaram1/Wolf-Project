<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    // URL 파라미터로 전달된 값을 가져오기
    String boardCode = request.getParameter("board_code");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wolf</title>
<link rel="icon" href="/images/favicon.png">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdn.tiny.cloud/1/r2rzvjel9syljhm3rt83aafhrjazwe85b2hv02ods9k46db0/tinymce/7/tinymce.min.js" referrerpolicy="origin"></script>
 
<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<!-- icon -->
<script src="https://kit.fontawesome.com/1ee4acc8d4.js"
	crossorigin="anonymous"></script>

<!-- bootstrap -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<!-- Project local -->
<link rel="stylesheet" href="/css/style.css">

<style> 
    .main{
        display: flex;
        flex-direction: column;
        height: auto;
        margin-top: 20px;
        
      
         
    }
    .btn_css{
    	height: 30px;
    	line-height: 30px;
    	font-size: 15px ;
    	color: white ;
   		background-color: #428bca;
    	border: none;
    	border-radius: 5px;
    	cursor: pointer;
    }
    .btn_css:hover{
        text-decoration: underline;
    }
    #files{
        color: white;
    }
    body.swal2-height-auto {
            height: 100% !important;
        }       
        .custom-confirm-button {
            color: red !important;
            background-color: #001021 !important;
          
            /* 확인 버튼 텍스트 색깔 */
        }

        .custom-cancel-button {
          
            color: white !important;
            /* 취소 버튼 텍스트 색깔 */
        }
</style>
<style>
    body {
       
        overflow-x: hidden !important;
        overflow-y: auto !important;

      } 
  
.index{
    z-index: 1;
    position: relative;
}
.m_navi{
        position: relative !important;
    }
    .navi{
        min-height: auto !important;
    }
    #wolfLogo{
        width: auto !important;
    }
</style>

</head>
<body>
    <div class="container-fluid d-flex flex-column">
        <div class="container flex-grow-1 d-flex flex-column">
            <img  src="/images/bg1.png" alt="" class="img_bg"> 
            <img  src="/images/bg3.png" alt="" class="img_bg bgs"> 
            <img  src="/images/bg3.png" alt="" class="img_bg bgs"> 
            <img  src="/images/bg3.png" alt="" class="img_bg bgs"> 
            <img  src="/images/bg3.png" alt="" class="img_bg bgs"> 
            <img  src="/images/bg3.png" alt="" class="img_bg bgs"> 
            <img  src="/images/bg3.png" alt="" class="img_bg bgs">
            <%@ include file="/views/include/header.jsp" %>
            <form action="/insert.board" id="fileform" method="post" enctype="multipart/form-data" >
                <div class="main index">
                    <div style="border-top-left-radius: 15px; border-top-right-radius: 15px; display: flex; flex: 1; font-size: 40px; justify-content: center; background-color: white; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;" class="index">
                        자유 게시판 글 작성하기 
                    </div>
                    <div style="flex: 2; margin-bottom: 10px; border-bottom-left-radius: 15px; border-bottom-right-radius: 15px; overflow: hidden;">
                        <input type="text" placeholder="글 제목을 입력하세요" style="border: 0; width: 100%; height: 75px; font-size:30px;" name="title" id="insert_title">
                    </div>
                    <div style="flex: 8;"  id="contents"></div>
                    <div style="display: flex; flex: 1; justify-content: flex-end; "class="index">        
                            <button type="button"  class="btn_css" id="list">목록으로</button>&nbsp&nbsp
                            <button class="btn_css" id="insert_btn">작성완료</button>
                    </div>
                    <div id="files" class="index"">
                    </div>
                </div>
                <input type="hidden" value="<%= boardCode %>" name="board_code">
            </form>
        </div>
    </div>


<script>
		$("#list").on("click",function(){
            let boardCode = "<%= boardCode %>";
            swal("/list.board?board_code="+boardCode)
            
			
		})
        
        $("#fileform").on("submit",function(event){
            if(($("#insert_title").val()=="") ||(tinymce.get('contents').getContent()=="")){
                //console.log(tinymce.get('contents').getContent());
                //console.log($("#insert_title").val().length);
                alert("제목 혹은 내용을 채워주세요");
                event.preventDefault();
            }
            else if($("#insert_title").val().length>28){
                alert("제목이 너무 깁니다");
                event.preventDefault();
            }
        })
</script>


<script>
         function swal(comfirm) {
            Swal.fire({
                title: '목록으로 돌아가시겠습니까? ',
                // text: "You won't be able to revert this!",
                showCancelButton: true,
                confirmButtonText: '돌아가기',
                cancelButtonText: '취소하기',
                reverseButtons: false, // 확인 버튼과 취소 버튼을 반대로 표시
                customClass: {
                    confirmButton: 'custom-confirm-button',
                    cancelButton: 'custom-cancel-button'
                }
            }).then((result) => {
                if (result.isConfirmed) {
                    // 확인 버튼을 클릭한 경우
                    Swal.fire(
                        'comfirm!'
                    ).then((result) => {
                        if (result.isConfirmed) {
                            
                            location.href = comfirm;
                            $.ajax({
                                url:"/delete.images?board_code="+"<%= boardCode %>"
                            }).done(function(resp){
                            // alert(resp);
                             location.href=comfirm;
                            })
                        }
                    });
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    // 취소 버튼을 클릭한 경우
                    Swal.fire(
                        'Cancelled'
                    ).then((result) => {

                    });

                }
            });
        }
</script>
   
<script>
    var  myButton;
    let index=0;
    tinymce.init({
      selector: 'div#contents',
      plugins:'wordcount anchor image media code',
      //toolbar:'image',
      images_file_types:'jpg,svg,webp',
      file_picker_types: 'file image media',
      //plugins: 'inlinecss  autolink charmap codesample emoticons image link lists media searchreplace table visualblocks  checklist mediaembed casechange export formatpainter pageembed linkchecker a11ychecker tinymcespellchecker permanentpen powerpaste advtable advcode editimage advtemplate mentions tableofcontents footnotes mergetags typography',
      toolbar: ' fileupload | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags  | spellcheckdialog a11ycheck typography | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat ',
      resize: true,
      height:600,
      language: 'ko_KR',
      statusbar: false,
      forced_root_block : false,
      file_picker_callback: function (callback, value, meta) {
                    if (meta.filetype === 'image') {
                        let input = document.createElement('input');
                        input.setAttribute('type', 'file');
                        input.setAttribute('accept', 'image/*');
                        input.onchange = function () {
                        let file = this.files[0];
                        let formData = new FormData();
                        formData.append('image', file);
                        $.ajax({
                            url:"/upload.images?board_seq=-1",
                            type:"post",
                            dataType:"json",
                            processData: false,
                            contentType: false,
                            data:formData
                        }).done(function(resp){ //서버에서 저장해서 데이터 보내줌
                            let imageData = {
                                url:resp.url,
                                width:  resp.width,
                                height: resp.height
                            };
                        callback(resp.url, imageData);
                        //console.log($("body").find(".tox-textfield"));
                            $("body").find(".tox-textfield").eq(2).val(resp.width);
                            $("body").find(".tox-textfield").eq(3).val(resp.height);
                            $("body").find(".tox-button").eq(4).on("click",function(){
                                $.ajax({
                                    url:"/upload.images?board_seq=-1&check=true&board_code=<%= boardCode %>",
                                    type:"post",
                                     dataType:"json",
                                    processData: false,
                                    contentType: false,
                                    data:formData
                                 })
                            });
                            
                        })
                    
                    };
                input.click();
            }
        },
      //force_br_newlines : true,
      //force_p_newlines : false,
      //content_css: false,
      setup: function (editor) {
                editor.ui.registry.addButton('fileupload', {
                    text: '파일 업로드: 선택된 파일없음',
                    onSetup: function(e) {
                      myButton=e;
                    },
                    onAction: function() {
                        let files=$("#files");
                        let div=$("<div style='display: none;''>");
                        let input=$("<input type='file'class='upload'>");
                        input.attr("name","files"+index++);
                        div.append(input);
                        let button=$("<button style='width: 25px; height: 25px; border: 0; font-size: 20px; background-color: rgba(0, 0, 0, 0);'>❌</button>")
                       
                        input.click();
                        let temp=$("<div>");
                        //myButton.setText("aa");
                        input.on('change', function() {
                                var fileName = $(this).val().split('\\').pop();
                                console.log(fileName);
                                temp.html('파일 업로드: ' + fileName);
                                temp.append(button);
                                files.append(temp);
                                
                          });   
                        button.on("click",function(){
                            input.remove();
                            temp.remove();
                        })
                        files.append(div);
                            
                    },         
                }); 
                editor.on('change', function () {
                    localStorage.setItem('editorContent', editor.getContent());
                });
        }
    });
</script>


<div class="sun"></div>
      <!-- mode -->
      <div id="mode">
        <i class="fa-regular fa-lightbulb" style="display: none"></i>
        <i class="fa-solid fa-lightbulb"></i>
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
    <script src="/js/main.js"></script>

    <script>
    
        resize();
            $(window).resize(function() {
                resize();
            }); 
            $(window).change(function(){
                resize();
            })
            function resize(){
                const currentHeight =  $("body").height()+2;
                console.log(currentHeight)
                const scrollHeight = $("body").prop('scrollHeight');
                console.log(scrollHeight)
                if(scrollHeight>currentHeight){
                $(".img_bg").css({
                    left:"0%",
                    width:"98.5%"
                })
                
                }
            }
            let m_navi=$(".m_navi");
            let check=true;
            let toggle=m_navi.find(".navbar-toggler").on("click",function(){
                if(check){
                    m_navi.find("#navbarToggleExternalContent").css({
                        display:"block"
                    })
                    check=false;
                }
                else{
                    m_navi.find("#navbarToggleExternalContent").css({
                        display:"none"
                    })
                    check=true;
                }
            })
         </script>
</body>
</html>