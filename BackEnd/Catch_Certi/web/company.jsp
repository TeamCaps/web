<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="javax.xml.transform.Result" %>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html style="font-size: 16px;" lang="en"><head>
  <%
    request.setCharacterEncoding("utf-8");
    Integer cp_id=Integer.parseInt(request.getParameter("company"));
    Connection conn = null;
    String jdbcUrl = "jdbc:mysql://15.164.192.100:52817/caps";
    String dbId = "caps";
    String dbPass = "1234";
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
    PreparedStatement pstmt =null;
    ResultSet rs=null;
    pstmt=conn.prepareStatement("select * from jobs where Num=?");
    pstmt.setInt(1,cp_id);
    rs= pstmt.executeQuery();
    rs.next();
  %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Caps, ​Sweets">
    <meta name="description" content="">
    <title>company</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="company.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.0.7, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"sameAs": [
				"https://facebook.com/name",
				"https://www.instagram.com/name",
				"https://www.chungbuk.ac.kr/site/www/main.do"
		]
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="company">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-align-left u-clearfix u-header u-section-row-container" id="sec-ba49"><div class="u-section-rows">
        <div class="u-grey-80 u-section-row u-section-row-1" id="sec-46aa">
          <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
            <div class="u-social-icons u-spacing-10 u-social-icons-1">
              <a class="u-social-url" title="facebook" target="_blank" href="https://facebook.com/name"><span class="u-icon u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b638"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-b638"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
            c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
              </a>
              <a class="u-social-url" title="instagram" target="_blank" href="https://www.instagram.com/name"><span class="u-icon u-social-icon u-social-instagram u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-59e7"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-59e7"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
            z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path><path fill="#FFFFFF" d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path><path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
            C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
            c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
              </a>
              <a class="u-social-url" target="_blank" data-type="Custom" title="CBNU" href="https://www.chungbuk.ac.kr/site/www/main.do"><span class="u-file-icon u-icon u-social-custom u-social-icon u-icon-3"><img src="images/cbnu.png" alt=""></span>
              </a>
            </div>
            <form action="#" method="get" class="u-border-1 u-border-grey-30 u-expanded-width-xs u-search u-search-right u-search-1">
              <button class="u-search-button" type="submit">
                <span class="u-search-icon u-spacing-10 u-text-grey-40">
                  <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9dab"></use></svg>
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-9dab" x="0px" y="0px" viewBox="0 0 56.966 56.966" style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve" class="u-svg-content"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z"></path><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
                </span>
              </button>
              <input class="u-search-input" type="search" name="search" value="" placeholder="Search">
            </form>
          </div>
          
          
          
          
          
        </div>
        <div class="u-image u-section-row u-image-1" id="sec-37e8" data-image-width="1980" data-image-height="1200">
          <div class="u-clearfix u-sheet u-sheet-2">
            <h1 class="u-text u-text-default u-text-1">
              <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-white u-btn-1" href="home.jsp">Caps<br>
              </a>
            </h1>
            <form action="logout.jsp" method="post">
              <a href="login.jsp" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-2-base u-palette-3-base u-radius-50 u-btn-2" onclick="logout()">LOGOUT</a>
            </form>

            <p class="u-text u-text-default u-text-white u-text-2">당신의 직무를 찾아드립니다~<br>
            </p>
          </div>
          
          
          
          
          
        </div>
      </div></header>
    <section class="u-clearfix u-container-align-center u-gradient u-section-1" id="carousel_365b">
      <div class="u-clearfix u-sheet u-sheet-1">

        <h1 class="u-align-center u-text u-text-body-alt-color u-text-1"> <%=rs.getString("cp_name")%></h1>

        <div class="u-expanded-width u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-align-left u-container-style u-list-item u-radius-20 u-repeater-item u-shape-round u-white u-list-item-1">
              <div class="u-container-layout u-similar-container u-container-layout-1">

                <h4 class="u-text u-text-2">Introduction of  '<%=rs.getString("cp_name")%>'</h4>
                <ul class="u-custom-list u-text u-text-3">
                  <br>
                  <%
                    StringTokenizer st=new StringTokenizer(rs.getString("intro_work"),"\n");
                    while(st.hasMoreTokens()){
                  %>

                  <li>
                    <div class="u-list-icon">
                      <div>—</div>
                    </div> <%=st.nextToken()%>
                  </li>
                    <%
                    }
                    %>
              </div>
            </div>
            <div class="u-align-left u-container-style u-list-item u-radius-20 u-repeater-item u-shape-round u-video-cover u-white u-list-item-2">
              <div class="u-container-layout u-similar-container u-container-layout-2">

                <h4 class="u-text u-text-5">Preferential treatment</h4>
                <ul class="u-custom-list u-text u-text-6">
                  <%
                    st=new StringTokenizer(rs.getString("prefer"),"\n");
                    while(st.hasMoreTokens()){
                  %>
                  <li>
                    <div class="u-list-icon">
                      <div>—</div>
                    </div><%=st.nextToken()%>
                  </li>
                  <%}%>
                 </ul>
                </div>
              </div>
            </div>
        </div>
      </div>
    </section>
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-c678"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Copyright © Caps2022</p>
      </div></footer>
  
</body></html>