<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%
String noaf_jv="",nom_jv="",ap_jv="",am_jv="",nombre1_jv="";
String but="r";


try { 


        but=""+request.getParameter("Submit");
		//but2=""+request.getParameter("Submit2");
		//out.print("but ="+but);
        
    }catch(Exception e){System.out.print("not");} 
	
	
	if(but.equals("Guardar"))
     {
	 noaf_jv=request.getParameter("txtf_ced");
	 nom_jv=request.getParameter("txtf_nom");
	 ap_jv=request.getParameter("txtf_pat");
	 am_jv=request.getParameter("txtf_mat");
	 
	 
	 nombre1_jv=nom_jv+" "+ap_jv+" "+am_jv;
	 
	 Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
  Statement stmt = conn__001.createStatement();


	 stmt.execute("insert into medico values ('"+nombre1_jv+"','-','"+noaf_jv+"','-')");
	 
	 %>
	 <script>
	 alert("DATOS GUARDADOS")
	 </script>
	 <%
	  	 
     }



%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>.: Datos Medico:.</title>
<script language="javascript" src="pacienteMedico.js">
</script>
<script language="javascript" src="list02.js">
function close1()
{//alert("huge");


top.close();  
/*if(navigator.appName=="Microsoft Internet Explorer") { 
this.focus();self.opener = this;self.close(); } 
else { window.open('','_parent',''); window.close(); } 

*/
}

</script>

<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
<style type="text/css">
<!--
body {
	background-color: #E6E6E6;
}
.style1 {color: #000000}
.style2 {
	font-size: 8px;
	color: #009999;
}
.style5 {font-size: 36}
.Estilo6 {font-size: 12; }
-->
</style></head>

<body>
<table width="666" height="346" border="3" align="center" cellpadding="2" bgcolor="#FFFFFF">
  <tr>
    <td width="650"><form id="form" name="form" method="post" action="">
      <table width="650" height="323" border="0" align="center" cellpadding="2">
        <tr>
          <td height="49" bgcolor="#FFFFFF" class="logo style1"><div align="center" class="logo style1">
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
              <param name="movie" value="anima1p.swf" />
              <param name="quality" value="high" />
              <embed src="anima1p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
            </object>
          </div></td>
          <td height="49" colspan="2" bgcolor="#FFFFFF" class="logo style1"><div align="center">Datos del M&eacute;dico</div></td>
          <td height="49" bgcolor="#FFFFFF" class="logo style1"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
            <param name="movie" value="anima4p.swf" />
            <param name="quality" value="high" />
            <embed src="anima4p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
          </object></td>
        </tr>
        <tr>
          <td height="14" colspan="4" bgcolor="#009999"><span class="style2">iiiiii</span></td>
          </tr>
        <tr>
          <td width="114" height="20">&nbsp;</td>
          <td width="153" class="bodyText"><div align="right"></div>            
          <label></label></td>
          <td width="243">&nbsp;</td>
          <td width="114">&nbsp;</td>
        </tr>
        <tr>
          <td height="20"><div align="right"></div></td>
          <td class="style5"><div align="left" class="Estilo6">C&Eacute;DULA PROFESIONAL :</div></td>
          <td><label>
            <input name="txtf_ced" type="text" id="txtf_ced" onKeyPress="return handleEnter(this, event)"/>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="20"><div align="right"></div></td>
          <td class="style5"><div align="left" class="Estilo6">NOMBRE: </div></td>
          <td><label>
            <input name="txtf_nom" type="text" id="txtf_nom" onKeyPress="return handleEnter(this, event)" onChange="mayNomm(this.form)" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="20"><div align="right"></div></td>
          <td class="style5"><div align="left" class="Estilo6">APELLIDO PATERNO:</div></td>
          <td><label>
            <input name="txtf_pat" type="text" id="txtf_pat" onKeyPress="return handleEnter(this, event)" onChange="mayApepm(this.form)"/>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="20"><div align="right"></div></td>
          <td class="style5"><div align="left"><span class="Estilo6">APELLIDO MATERNO:
          </span></div>            
          <span class="style5"><label></label>
              </span></td>
          <td><label>
          <input name="txtf_mat" type="text" id="txtf_mat" onKeyPress="return handleEnter(this, event)" onChange="mayApemm(this.form)"/>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        
        <tr>
          <td height="20">&nbsp;</td>
          <td colspan="2"><label>
            <span class="style5">
            <label></label>
            <div align="center"></div>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="20">&nbsp;</td>
          <td colspan="2"><div align="center">
            <input type="submit" name="Submit" value="Guardar" onClick="return verificaMedico(document.forms.form)"  />
          &nbsp;Cerrar Aplicación <button name="boton" type="button" class="style7" onClick="CloseWin()" /><img src="borr.jpg" /></button></div></div></td>
          <td>&nbsp;</td>
        </tr>
      </table>
          </form>
    </td>
  </tr>
</table>
</body>
</html>
