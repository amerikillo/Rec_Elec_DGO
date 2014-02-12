<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style type="text/css">
    a:active {color:blue}
    </style>
    <script type="text/javascript">
    function getfocus()
    {
            document.getElementById('w3s').focus();
    }
 
    function losefocus()
    {
            document.getElementById('w3s').blur();
    }
    </script>
    </head>
 
    <body>
    <a id="w3s" href="http://www.google.com">Visita Google.com</a><br><br>//solo por presentacion
    <form>
    <input type="button" onclick="getfocus()" value="Coge el foco">
    <input type="button" onclick="losefocus()" value="Pierde el foco">
    </form>
    </body>
    </html>

