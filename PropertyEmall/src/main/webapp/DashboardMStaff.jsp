<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Dashboard</title>
        <style>
            td,tr{
                border:10px ridge green;
                padding:25px;
                text-align: center;
                font-size:30px; 
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                background-color: burlywood;
            }
            .view{                               
                border-collapse: separate;
                border-spacing: 30px 30px;
            }
            #top, #bottom, #left, #right {
	            background: lightseagreen;
	            position: fixed;
	        }
	        #left, #right {
		        top: 0; bottom: 0;
		        width: 15px;
		    }
		    #left { left: 0; }
		    #right { right: 0; }		
	        #top, #bottom {
		    left: 0; right: 0;
		    height: 15px;
		    }
		    #top { top: 0; }
		    #bottom { bottom: 0; }
            #cmpy{
                font-size: 70px;
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                color: lightseagreen;
                text-shadow: 3px 3px 10px black;
            }
            a{
                text-decoration: none;
                color: black;
            }
        </style>
    </head>
    <body style="background-color: lightgoldenrodyellow">
        <div id="left"></div>
        <div id="right"></div>
        <div id="top"></div>
        <div id="bottom"></div>
        <br>
        <h1 id="cmpy"><center>ABC MALL</center></h1>        
        <marquee hspace=15% behavior=alternate><h3>*** Select an option to proceed ***</h3></marquee>
        <center>
        <table class="view">
            <tr>
                <td id="a"><a href="RegisterSpace.jsp">Register New Space</a></td>
                <td id="b"><a href="BookSpace.jsp">Book Space</a></td>
            </tr>
            <tr>
                <td id="c"><a href="UtilityReport.jsp">View Utility Report</a></td>
                <td id="d"><a href="RevenueReport.jsp">View Revenue Report</a></td>
            </tr>
        </table>
        </center>
    </body>
</html>
