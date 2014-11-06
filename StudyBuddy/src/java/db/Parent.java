/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author a-team
 */
public class Parent {

    public String subject;
    public String test_name;
    public String test_level;
    public double pass_rate;
    public double fail_rate;
    public double pass_prof_rate;
    public double pass_advanced_rate;
    public double avg_sol_scale_score;
    public int sch_num;
    public int div_num;
    public String gender;
    public String disability_flag;
    public int federal_race_code;
    public String disadvantaged_flag;
    public String lep_flag;

    public Parent(String test_name, double avg_sol_scale_score) {
        this.test_name = test_name;
        this.avg_sol_scale_score = avg_sol_scale_score;
    }

    /**
     * Returns a list with all average SOL scores and test names using
     * information provided
     */
    public static ArrayList<Student> findScore(String grade, String school_num, String race, String gender, String disability, String lep_flag, String disadv) throws SQLException {
        Connection db = Database.open();
        PreparedStatement st = db.prepareStatement(
                "SELECT ROUND((AVG(avg_sol_scale_score))::numeric, 0) "
                + "AS avg_sol_scale_score, subject, "
                + "test_level FROM test_score Where sch_num = ? AND test_level = ? "
                + "AND federal_race_code = ? AND gender = ? AND disability_flag = ? "
                + "AND lep_flag = ? AND disadvantaged_flag = ? "
                + "GROUP BY subject, test_level;");
        if (Integer.parseInt(grade) >= 9) {
            grade = "EOC";
        }
        st.setInt(1, Integer.parseInt(school_num));
        st.setString(2, grade);
        if (race.equalsIgnoreCase("null")) {
            st.setInt(3, 0);
        } else {
            st.setInt(3, Integer.parseInt(race));
        }
        st.setString(4, gender);
        st.setString(5, disability);
        st.setString(6, lep_flag);
        st.setString(7, disadv);
        ResultSet rs = st.executeQuery();
        ArrayList list = new ArrayList();
        while (rs.next()) {
            String test_name = rs.getString(2);
            double avg_sol_scale_score = rs.getDouble(1);
            Parent par = new Parent(test_name, avg_sol_scale_score);
            list.add(test_name);
            list.add(avg_sol_scale_score);
        }
        rs.close();
        st.close();
        db.close();
        System.out.println(list);
        return list;
    }

    public static ArrayList<Student> findAllScore(String grade, String school_num, String race, String gender, String disability, String lep_flag, String disadv) throws SQLException {
        Connection db = Database.open();
        PreparedStatement st;
        if (school_num.equalsIgnoreCase("null")) {
            st = db.prepareStatement(
                    "SELECT ROUND((AVG(avg_sol_scale_score))::numeric, 0) "
                    + "AS avg_sol_scale_score, subject, "
                    + "test_level FROM test_score Where "
                    + "federal_race_code = ? AND gender = ? AND disability_flag = ? "
                    + "AND lep_flag = ? AND disadvantaged_flag = ? "
                    + "GROUP BY subject, test_level;");
            if (race.equalsIgnoreCase("null")) {
                st.setInt(1, 0);
            } else {
                st.setInt(1, Integer.parseInt(race));
            }
            st.setString(2, gender);
            st.setString(3, disability);
            st.setString(4, lep_flag);
            st.setString(5, disadv);
        } else {
            if (grade.equalsIgnoreCase("null")) {
                st = db.prepareStatement(
                        "SELECT ROUND((AVG(avg_sol_scale_score))::numeric, 0) "
                        + "AS avg_sol_scale_score, subject, "
                        + "test_level FROM test_score Where sch_num = ? "
                        + "AND federal_race_code = ? AND gender = ? AND disability_flag = ? "
                        + "AND lep_flag = ? AND disadvantaged_flag = ? "
                        + "GROUP BY subject, test_level;");
                st.setInt(1, Integer.parseInt(school_num));
                if (race.equalsIgnoreCase("null")) {
                    st.setInt(2, 0);
                } else {
                    st.setInt(2, Integer.parseInt(race));
                }
                st.setString(3, gender);
                st.setString(4, disability);
                st.setString(5, lep_flag);
                st.setString(6, disadv);
            } else {
                st = db.prepareStatement(
                        "SELECT ROUND((AVG(avg_sol_scale_score))::numeric, 0) "
                        + "AS avg_sol_scale_score, subject, "
                        + "test_level FROM test_score Where sch_num = ? AND test_level = ? "
                        + "AND federal_race_code = ? AND gender = ? AND disability_flag = ? "
                        + "AND lep_flag = ? AND disadvantaged_flag = ? "
                        + "GROUP BY subject, test_level;");
                if (Integer.parseInt(grade) >= 9) {
                    grade = "EOC";
                }
                st.setInt(1, Integer.parseInt(school_num));
                st.setString(2, grade);
                if (race.equalsIgnoreCase("null")) {
                    st.setInt(3, 0);
                } else {
                    st.setInt(3, Integer.parseInt(race));
                }
                st.setString(4, gender);
                st.setString(5, disability);
                st.setString(6, lep_flag);
                st.setString(7, disadv);
            }
        }

        ResultSet rs = st.executeQuery();
        ArrayList list = new ArrayList();
        while (rs.next()) {
            String test_name = rs.getString(2);
            double avg_sol_scale_score = rs.getDouble(1);
            Parent par = new Parent(test_name, avg_sol_scale_score);
            list.add(test_name);
            list.add(avg_sol_scale_score);
        }
        rs.close();
        st.close();
        db.close();
        System.out.println(list);
        return list;
    }
}
