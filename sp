<!-- Write a PHP script for the following: Design a form having a text box and a drop down list 
containing any 3 separators (e.g. #, |, %, @, ! or comma) accept a strings from the user and also a 
separator. 
a. Split the string into separate words using the given separator. 
b. Replace all the occurrences of separator in the given string with some other separator. 
c. Find the last word in the given string (Use strrchr() function). -->
<!DOCTYPE html> 
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
 
<body>
    <form action="q2.php">
        ENTER A STRING
        <input type="text" name="str">
        SELECT A SEPARATOR
        <!-- dropdownlist -->
        <select name="sep">
            <option value="#"> # </option>
            <option value="|"> | </option>
            <option value="@"> @ </option>
            <option value="!"> ! </option>
            <option value=","> , </option>
            <option value="%"> % </option>
        </select>
        <br>
        <!-- <br><br><br><br><br><br><br><br><br><br><br><br><br> -->
        SELECT YOUR OPERATION <br>
        <input type="radio" name="op" value="1">Split the string into separate words using the given separator.</input>
        <br>
        <input type="radio" name="op" value="2">Replace all occurrences of separator with some other separator.</input>
        <br>
        <input type="radio" name="op" value="3">Find the last word in the given string.</input> <br>
        <input type="submit" value="Submit">
    </form>
</body>

</html>

<?php
$str = $_REQUEST['str'];
$sep = $_REQUEST['sep'];
$op = $_REQUEST['op'];

switch ($op) 
{  
    case 1: $a = explode($sep, $str);
            foreach ($a as $t)
                echo $t . "<br>";
            break;
    case 2: $b = str_replace($sep, '?', $str);
            echo $b;
            break;
    case 3: 
         echo strrchr($str, $sep);
            // $a = explode($sep, $str);
            // $index = count($a) - 1;
            // echo $a[$index];
            // break;
}
?>
