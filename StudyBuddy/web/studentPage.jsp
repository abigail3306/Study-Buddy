<%--
    Document   : studentPage
    Created on : Mar 25, 2013, 10:51:34 PM
    Author     : a-team
    The student page allows students to select their division, school, and
    grade and see the average sol scores for every subject that the selected
    school has for the selected grade.  We also take in a students scores
    and provide resources for the student to use based on those scores.
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*, db.*" errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
        <title>Student Page</title>
        <script type="text/javascript" src="divsch.js"></script>
        <script type="text/javascript" src="grades.js"></script>
    </head>

    <body onload="update_div();
            update_sch();
            update_grd();">

        <h2><img src="student.png"></h2>
        <div>
            <input type="button"
                   value="Home Page" 
                   onClick="self.location = 'index.jsp'">
        </div>            

        <p>
            This page allows students to select any school and compare their 
            individual scores to the average scores of the school selected.  
            Then using the scores provided we recommend resources the student 
            can use to improve their scores in specific subject areas.
        </p>        
        
        <p>
            Please select you division, school, and grade level:
        </p>

        <!-- begin of main form -->
        <form method="get" action="subjectPage.jsp">
            <table border="0" cellpadding="5" cellspacing="0">
                <tr>
                    <!--Student Query-->
                    <td width="175" valign="top">
                        <b>Division</b><br>
                        <select id="div_num" name="div_num" size="10" onchange="update_sch();
            update_grd();"> 
                        </select>
                    </td>
                    <td width="190" valign="top">
                        <b>School</b><br>
                        <select id="sch_num" name="sch_num" size="10" onchange="update_grd();">
                        </select>
                    </td>
                    <td width="190" valign="top">
                        <b>Grade</b><br>
                        <select id="grd_num" name="grd_num" size="10">
                        </select>
                    </td>
                </tr>
            </table>
            <br>

            <p>
                Please enter your scores for the following subjects (Leave the 
                value 0 if your student has not yet taken a certain test):
            </p>
            
            English Reading: <br><input type="text" name="r_score" value="0"><br>
            English Writing: <br><input type="text" name="w_score" value="0"><br>
            Math: <br><input type="text" name="m_score" value="0"><br>
            History and Social Science: <br><input type="text" name="h_score" value="0"><br>
            Science: <br><input type="text" name="s_score" value="0"><br>
            <br>
            <input type="submit"
                   name="sub"
                   value="compare">

            <!-- end of main form -->
        </form>
        <br><br><small><small><img id="StudyBuddyLogo" onload="fadeIn(this);" src='smallvirginia.png' alt='StudyBuddy' ></small></small>
    </body>
</html>
