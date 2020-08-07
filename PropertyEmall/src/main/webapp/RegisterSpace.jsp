<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta  charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Space_Registration</title>
    <style>
        #top,
        #bottom,
        #left,
        #right {
            background: lightseagreen;
            position: fixed;
        }

        #left,
        #right {
            top: 0;
            bottom: 0;
            width: 15px;
        }

        #left {
            left: 0;
        }

        #right {
            right: 0;
        }

        #top,
        #bottom {
            left: 0;
            right: 0;
            height: 15px;
        }

        #top {
            top: 0;
        }

        #bottom {
            bottom: 0;
        }

        table,tr,
        td {
            border-collapse: collapse;
            padding: 10px;
            text-align: center;
            font-weight: bold;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-size: 15px;
            font-style: italic;
        }

        #btn {
            border: none;
            color: white;
            padding: 25px 32px;
            text-align: center;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            background-color: green;
        }
        input{
            width:200px;
            height: 30px;
        }
        .dd{
            width: 100px;
            font-size: 20px;
        }
    </style>
</head>

<body style="background-color: lightgoldenrodyellow">
    <div id="left"></div>
    <div id="right"></div>
    <div id="top"></div>
    <div id="bottom"></div>
    <br>
    <center>
        <h1 id="sr">Shop Registration</h1>
        <table>
            <form>
                <tr>
                    <td><label>Shop No</label> </td>
                    <td><input type="number" name="shopno" placeholder=" Enter shop no" /></td>
                </tr>
                <tr>
                    <td><label>Length </label> </td>
                    <td><input type="number" name="len" placeholder=" Enter Length"/></td>
                </tr>
                <tr>
                    <td><label>Breadth </label> </td>
                    <td><input type="number" name="br"  placeholder=" Enter Breadth"/></td>
                </tr>
                <tr>
                
                <tr>
                    <td><label> Floor Number </label></td>
                    <td><input type="number" name="floorno"  placeholder=" Enter Floor No"/></td>
                </tr>
                <tr>
                    <td><label>Facing Location </label></td>
                    <td class="dd"><select> <br>
                            <option> Choose a facing location   ... </option>
                            <option value="EastFacing"> East Facing </option>
                            <option value="WestFacing"> West Facing </option>
                            <option value="NorthFacing"> North Facing </option>
                            <option value="SouthFacing"> South Facing </option>
                        </select> </td>
                </tr>
                <tr>
                    <td><label> Shop Category </label></td>
                    <td class="dd"><select> <br>
                            <option> Choose a shop category    ... </option>
                            <option value="small"> Small </option>
                            <option value="medium"> Medium </option>
                            <option value="large"> Large </option>
                        </select> </td>
                </tr>
                <tr>
                    <td><label>Rent Duration</label></td>
                    <td class="dd"><select> <br>
                        <option> Choose a rent duration     ...    </option>
                        <option value="weekdays"> Week Days </option>
                        <option value="weekends"> Week Ends </option>
                        <option value="Publicholidays"> Public Holidays </option>
                    </select> </td>
                </tr>
                <tr>
                    <td><label>Rent Type</label></td>
                    <td class="dd"><select> <br>
                        <option> Choose a rent type     ... </option>
                        <option value="daywise"> Day wise </option>
                        <option value="hourwise"> Hour Wise </option>
                    </select> </td>
                </tr>
                <tr>
                    <td><label>Cost per Unit</label></td>
                    <td><input type="number" name="cost"  placeholder=" Enter Cost per unit"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="button" id="btn" value=" Register " /></td>
                    </td>
                </tr>
            
            </form>
        </table>        
    </center>
</body>

</html>