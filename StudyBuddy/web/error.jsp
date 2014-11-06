<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.io.*, db.*" isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <h3>Oops!</h3>
        <p>Something went wrong, please try again later.</p>
        <pre style="background-color: gray">
        <%
            if (exception != null) {
                exception.printStackTrace(new PrintWriter(out));
            }
        %>
        </pre>
    </body>
</html>
