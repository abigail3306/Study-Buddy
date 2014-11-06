<%-- 
    Document   : HomePage
    Created on : Mar 21, 2013, 2:20:38 PM
    Author     : a-team
    The home page of our app provides links to the other pages of our app.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
        <title>Study Buddy - helping you improve your SOL scores!</title>
    </head>
    <center>
        <div id="StudyBuddyLogo" >
            <img id="StudyBuddyLogo" onload="fadeIn(this);" src='virginia.png' alt='StudyBuddy' >
        </div>
    </center>
    <center>
        <body>
            <div>
                <p>
                    Welcome to Study Buddy!  Here students and parents of 
                    students can compare their sol scores to the average sol 
                    scores of any school in Virginia.  We also provide resources 
                    to those wishing to improve their sol scores!</p>
                <form>
                    <input type="button"
                           value="For Parents" 
                           onClick="self.location = 'parentPage.jsp'">
                    
                    <input type="button"
                           value="For Students" 
                           onClick="self.location = 'studentPage.jsp'">

                    <input type="button"
                           value="Resources" 
                           onClick="self.location = 'resourcePage.jsp'">
                    
                    <input type="button"
                           value="VLDS" 
                           onClick="self.location = 'http://www.doe.virginia.gov/info_management/longitudinal_data_system/index.shtml'">
                </form>
            </div>
                <h4> <marquee scrolldelay="120">Highest SOL Scores:  &nbsp &nbsp &nbsp Math: &nbsp Henry Wadsworth Longfellow, Fairfax County: &nbsp 571 
                &nbsp &nbsp &nbsp Science: &nbsp Tomahawk Creek Middle, Chesterfield County: &nbsp 553     
                &nbsp &nbsp &nbsp History: &nbsp St. Charles Elementary, Lee County: &nbsp 577     
                &nbsp &nbsp &nbsp Reading: &nbsp Thomas Jefferson High, Fairfax County: &nbsp 574     
                &nbsp &nbsp &nbsp Writing: &nbsp Thomas Jefferson High, Fairfax County: &nbsp 557</marquee></h4>
        </body>
    </center>
</html>
