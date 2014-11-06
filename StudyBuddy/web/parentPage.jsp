<%-- 
    Document   : parentPage
    Created on : Mar 25, 2013, 10:49:24 PM
    Author     : a-team
    The parent page allows parents to select their students division, school, &
    grade and see the average sol scores for every subject that the selected
    school has for the selected grade.  Then the parents can narrow their search
    more by selecting from various options such race and gender.  At the end we
    take in their students scores and provide resources for their student to use
    based on those scores.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*, db.*" errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
        <title>Parents Page</title>
        <script type="text/javascript" src="divsch.js"></script>
        <script type="text/javascript" src="grades.js"></script>
    </head>
    
    <body onload="update_div(); update_sch(); update_grd();">

        <h2><img src="parent.png"></h2>
        <div>
             <input type="button"
                       value="Home Page" 
                       onClick="self.location = 'index.jsp'">
        </div>
        
        <p>
            This page allows parents to select any grade and other
            secondary options to use for comparing their students sol scores
            to the scores any school in Virginia.  Then using the scores 
            provided we recommend resources the student can use to improve
            their scores in specific subject areas.
        </p>        

        <p>
            Please select you division, school, and grade level:
        </p>

        <form method="get" action="subjectPage.jsp">
            <table border="0" cellpadding="5" cellspacing="0">
                <tr>
                    <td width="175" valign="top">
                        <b>Division</b><br>
                        <select id="div_num" name="div_num" size="10"  onchange="update_sch(); update_grd()"> 
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
                The following information is optional and will narrow your 
                results to only compare scores of certain races, gender, and 
                other options:
            </p>
            
            <table border="0" cellpadding="5" cellspacing="0">
                <tr>
                    <td width="115" valign="top">
                        <b>Race</b><br>
                        <select id="race_code" name="race_code" size="10">
                            <option value="">(ALL)</option>
                            <option selected="">NULL</option>
                            <option value="0">Unspecified</option>
                            <option value="1">Indian/Alaska</option>
                            <option value="2">Asian</option>
                            <option value="3">Black</option>
                            <option value="4">Hispanic</option>
                            <option value="5">White</option>
                            <option value="6">Hawaiian</option>
                            <option value="99">2+ Races</option>
                        </select>
                    </td>
                    <td width="100" valign="top">
                        <b>Gender</b><br>
                        <select id="gender" name="gender" size="4">
                            <option value="">(ALL)</option>
                            <option selected="">NULL</option>
                            <option value="F">Female</option>
                            <option value="M">Male</option>
                        </select>
                        <div style="height: 3px"></div>
                        <b>Disability</b><br>
                        <select id="disabl" name="disabl" size="4">
                            <option value="">(ALL)</option>
                            <option selected="">NULL</option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </td>
                    <td width="100" valign="top">
                        <b>LEP</b><br>
                        <select id="lep_flag" name="lep_flag" size="4">
                            <option value="">(ALL)</option>
                            <option selected="">NULL</option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                        <div style="height: 3px"></div>
                        <b>Disadvantaged</b><br>
                        <select id="disadv" name="disadv" size="4">
                            <option value="">(ALL)</option>
                            <option selected="">NULL</option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </td>
                </tr>
            </table>        
            <br>

            <p>
                Please enter your students scores for the following subjects 
                (Leave the value 0 if you have not yet taken a certain test):
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
        </form>

        <br><br><small><small><img id="StudyBuddyLogo" onload="fadeIn(this);" src='smallvirginia.png' alt='StudyBuddy' ></small></small>
    </body>
</html>
