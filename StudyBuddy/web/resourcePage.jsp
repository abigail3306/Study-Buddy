<%-- 
    Document   : resourcePage
    Created on : Mar 25, 2013, 10:52:44 PM
    Author     : a-team
    The resource page provides a list of of resouces we have gathered for this
    app.  The resources are split by subject and grade.
--%>

<%@page import="db.Parent"%>
<%@page import="db.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*, db.*" errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
        <title>Resource Page - Resources for all SOL test subjects</title>
    </head>
    <body>

        <h2><img src="resource.png"></h2>
        <div>
            <input type="button"
                   value="Home Page" 
                   onClick="self.location = 'index.jsp'">
        </div>

        <p>
            Welcome to our resources page.  Here we have provided links to sites
            that have great advice, activities, and lesson plans that can help
            students in any grade with any subject.
        </p>
        
        <div id="container">
            <div class="resource">
                <h3>Resources for parents and students</h3>
                <a href="http://www.scholastic.com/teachers/teaching-strategies?esp=CORPHP/ib/////NAV/Teachers/Tab/StrategiesIdeasLP////">Scholastic Strategies & Ideas</a><br>
                <a href="http://www.scholastic.com/teachers/student-activities?esp=CORPHP/ib/////NAV/Teachers/Tab/StudentActivitiesLP////">Scholastic Student Activities</a><br>
                <p>Scholastic offers teaching strategies and ideas along with
                    student activities.  It offers different ideas and
                    activities for various grades K-12.</p>
                <a href="http://quizlet.com/">Quizlet</a><br> 
                <p>Quizlet offers help for not only SOL subject but also
                    provides help for SAT, AP, and other standardized tests.
                    It covers a huge variety of subjects from Foreign languages
                    to Medicine to Theater.</p>
                <a href="http://www.learner.org/jnorth/tm/ReadStrats_20Best.html">Reading Strategies</a><br>    
                <p>The site provided displays the top 20 strategies to improve
                    a students reading ability.  The strategies are short,
                    simple, and easy to remember.</p>
                <br>
            </div>
            
            <div class="resource">
                <h3>Resources for parents and students</h3>
                <a href="http://www.theteacherscorner.net/teacher-resources/websites.php">The Teacher's Corner</a><br>
                <p>The teachers corner provides teachers ideas for lesson
                    plans, events, and homework material.  It even offers the
                    "teacher's lounge" where one can connect to other teachers
                    and this site also shows teaching jobs that are currently
                    open.</p>
                <a href="http://www.busyteacherscafe.com/">Busy Teacher Cafe</a><br>
                <p>Busy teacher's cafe gives teachers strategies for teaching
                    English grammar, reading, and math.  It also has printable
                    lesson plans and "theme's" to get the interest of students
                    in specific subject areas.</p>
                <br>
                <a href="http://www.sadlier-oxford.com/reading/student.cfm">Sadlier-Oxford</a><br>
                <p>Sadlier-Oxford gives students a good amount of activities
                    for students that focus on subject areas such as math,
                    social studies, science, health, and reading.</p>
            </div>

            <div class="resource">
                <h3>Mathematics</h3>
                Grade 3-5<br>
                <a href="http://www.pbs.org/teachers/classroom/3-5/math/resources/">PBS Math</a><br>
                <p>PBS  Math provides typical lesson plans, games, and videos
                    that will help students improve their math abilities.</p>
                <a href="http://www.discoveryeducation.com/search/page/k-5/mathematics/-/-/index.cfm">Discovery Education Math</a><br>
                <p>Discovery Math helps students by provided example math
                    problems and activities.  It also gives lists of common math
                    vocabulary and suggested reading materials.</p>
            </div>

            <div class="resource">
                <h3>Mathematics</h3>
                Grade 6-8<br>
                <a href="http://www.pbs.org/teachers/classroom/6-8/math/resources/">PBS Math</a><br>
                <p>PBS Math provides typical lesson plans, games, and videos
                    that will help students improve their math abilities.</p>
            </div>

            <div class="resource">
                <h3>Reading and Writing</h3>
                Grade 3-5<br>
                <a href="http://www.pbs.org/teachers/classroom/3-5/reading/resources/">PBS Reading & Language Arts</a><br>
                <p>PBS Language Art provides activities and lesson plans for
                    specific readings commonly found in Grades 3-5. PBS offers
                    several hands on activities that help students remember
                    what they have read and build up their writing skills.</p>
                <a href="http://www.discoveryeducation.com/search/page/k-5/english-language-arts/-/-/index.cfm">Discovery Education English/Language Arts</a><br>
                <p>Discovery English helps students learn how to brainstorm in
                    order to get ideas for timed essays and creative writing.
                    They can also learn about proper grammar in writting and
                    various reading strategies.</p>
            </div>

            <div class="resource">
                <h3>Reading and Writing</h3>
                Grade 6-8<br>
                <a href="http://www.pbs.org/teachers/classroom/6-8/reading/resources/">PBS Reading & Language Arts</a><br>
                <p>PBS Language Arts uses video's and lesson plans to help
                    students improve reading and writing skills.</p>
                <a href="http://www.discoveryeducation.com/search/page/6-8/english-language-arts/-/-/index.cfm">Discovery Education English/Language Arts</a><br>
                <p>Discovery English provides lesson plans for specific
                    Language Arts subjects.  Providing a thorough list of
                    vocabulary terms and discussion ideas.  It also includes
                    suggested readings that students may find interesting.</p>
            </div>

            <div class="resource">
                <h3>Science</h3>
                Grade 3-5<br>
                <a href="http://www.pbs.org/teachers/classroom/3-5/science-tech/resources/">PBS Science & Tech</a><br>
                <p>PBS Science provides articles and lesson plans that discuss
                    the natural forces that carved out the Grand Canyon, study
                    images taken in space, learn about the habitat's of national
                    parks, and more topics for students to select from.</p>
                <a href="http://www.discoveryeducation.com/search/page/k-5/science/-/-/index.cfm">Discovery Education Science</a><br>
                <p>Discovery Science has typical lesson plans used to teach
                    students about technology and science.  These lesson plans
                    include common vocabulary students should know, example
                    question, and suggested readings.</p>
            </div>

            <div class="resource">
                <h3>Science</h3>
                Grade 6-8<br>
                <a href="http://www.pbs.org/teachers/classroom/6-8/science-tech/resources/">PBS Science & Tech</a><br>
                <p>PBS Science offers article and activities to help students
                    increase their scientific knowledge.  Subjects include recent
                    natural disasters, volcanos, and how our current actions
                    affect our environment.</p>
                <a href="http://www.discoveryeducation.com/search/page/6-8/science/-/-/index.cfm">Discovery Education Science</a><br>
                <p>Discovery Science offers lesson plans for specific scientific
                    subjects such as water safety, space milestones, and other
                    science & technology related fields.  Like all Discovery
                    links lesson plans include vocabulary and example
                    problems.</p>
            </div>

            <div class="resource">
                <h3>History</h3>
                Grade 3-5<br>
                <a href="http://www.pbs.org/teachers/classroom/3-5/social-studies/resources/">PBS Social Studies</a><br>
                <p>The PBS Social Studies link provides articles and videos
                    about the history of various places of interest such as the
                    world's largest city, New York City, the Grand Canyon, and
                    Flathead Valley.</p>
                <a href="http://www.discoveryeducation.com/search/page/k-5/social-studies/-/-/index.cfm">Discovery Education Social Studies</a><br>
                <p>Discovery Social Studies provides the general lesson plans
                    for History divided by specific time periods.  As usual
                    discovery lesson plans provide vocabulary and common
                    questions but for history also provides a variety of
                    discussion ideas.</p>
            </div>

            <div class="resource">
                <h3>History</h3>
                Grade 6-8<br>
                <a href="http://www.pbs.org/teachers/classroom/6-8/social-studies/resources/">PBS Social Studies</a><br>
                <p>The PBS social studies link provides articles and videos
                    about the history of various persons and topics.</p>
                <a href="http://www.discoveryeducation.com/search/page/6-8/social-studies/-/-/index.cfm">Discovery Education Social Studies</a><br>
                <p>Discovery Social Studies provides the general lesson plans
                    for history divided by specific time periods and places
                    around the world.  Lesson plans provide vocabulary
                    and common questions but for history also provides a variety
                    of discussion ideas.</p>
            </div>
          
            <div class="resource">
                <h3>Reading, Writing, and Spelling Resources</h3>
                <a href="http://www.k12reader.com/">K12 Reader</a><br>
                <p>K12 Reader provides games and activities for those wishing to
                    improve there reading skills.  It also offers specific
                    advice in the topics section including tips for parents.</p>
                <a href="http://www.readingquest.org//">Reading Quest</a><br> 
                <p>Reading Quest mainly focuses on improving reading skills for
                    social studies readings.  It has a large amount of
                    strategies for improving your reading and social studies
                    education.</p>
                <a href="http://www.adlit.org/">Adolescent Literacy</a><br> 
                <p>Adolescent Literacy provides students (Grade 4 - 12) with
                    peer-assisted learning strategies encouraging students to
                    work with other and various resources to further their
                    education.</p>
                <a href="http://www.ttms.org/content_area_reading/content_area_reading.htm">Teaching that Makes Sense</a><br> 
                <p>This site is mainly to help teachers with the challenges of
                    teaching reading skills to their students.  It can provide
                    good advice to parents seeking to help their students
                    improve their reading skills.</p>
            </div>
        </div>
    </body>
</html>
