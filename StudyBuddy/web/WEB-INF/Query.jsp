<%-- 
    Document   : Query
    Created on : Apr 8, 2013, 12:56:05 PM
    Author     : Abigail
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*, db.*"%>


<table border="0" cellpadding="5" cellspacing="0">
    <tr>
        <td width="175" valign="top">
            <b>Division</b><br>
            <select id="div_num" name="div_num" size="10" onchange="update_sch();">
            </select>
        </td>
        <td width="190" valign="top">
            <b>School</b><br>
            <select id="sch_num" name="sch_num" size="10">
            </select>
        </td>
    </tr>
</table>
<br>

<table border="0" cellpadding="5" cellspacing="0">
    <tr>
        <td width="85" valign="top">
            <b>Grade</b><br>
            <select id="grade" name="grade" size="1">
                <option selected="3rd">3rd</option>
                <option>4th</option>
                <option>5th</option>
                <option>6th</option>
                <option>7th</option>
                <option>8th</option>  
            </select>
        </td>
    </tr>
</table>

<br>

<div align="center" style="color: brown; padding-bottom: 3px;">
    Which groups of students?
</div>
<table border="0" cellpadding="5" cellspacing="0" align="center">
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
            <b>Disadvanted</b><br>
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
