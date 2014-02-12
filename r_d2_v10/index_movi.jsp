<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%
String noaf_jv="",nom_jv="",ap_jv="",ap5_jv="",am_jv="",nombre1_jv="",clave_jv="",clave2_jv="",descrip_jv="",origen_jv="",exist_jv="",origen2="",exist2_jv="0",total22_jv="",clave22_jv="",origen22_jv="",descrip22_jv="";
String but="r";
int cont6=0,am2_jv=0,exist=0,ap2_jv=0,total=0;
ResultSet rset_002=null;
String clave1_jv="",descrip1_jv="",origen1_jv="",exist1_jv="";
Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/r_d", "root", "eve9397");
 
  Statement stmt02 = conn__001.createStatement();

try { 


        but=""+request.getParameter("Submit");
		//but2=""+request.getParameter("Submit2");
		//out.print("but ="+but);
        
    }catch(Exception e){System.out.print("not");} 
	
	
	
	
	if(but.equals("Validar"))
     {
		 am_jv=request.getParameter("txtf_usu");
		 ap_jv=request.getParameter("txtf_pass");
		 
		 
		 rset_002=stmt02.executeQuery("select * from pass where usuario='"+am_jv+"' and pass='"+ap_jv+"' ");
		 while(rset_002.next())
		 {
		    cont6++;
		 }
		 
		if (cont6>0)
		{
		%>
		<script>
alert("Datos correctos");
self.location='index_movi2.jsp?usuario=<%=am_jv%>'
</script>
<%
		}else{
	%>
		<script>
alert("Datos Incorrectos");

</script>
<%	
		
		}
		 
		 
	 } 
	  
     



%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>.:VALIDACI&Oacute;N USUARIO:.</title>
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
<script>
function foco_inicial(){
if (document.form.txtf_clave2.value==""){
document.form.txtf_clave.focus();
}
else
{
document.form.txtf_cant.focus();
}
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
.Estilo8 {color: #FFFFFF}
-->
</style></head>

<body onLoad="foco_inicial();">
<table width="666" height="346" border="3" align="center" cellpadding="2" bgcolor="#FFFFFF">
  <tr>
  
    <td width="650"><form id="form" name="form" method="post" action="index_movi.jsp">
      <table width="650" height="323" border="0" align="center" cellpadding="2">
        <tr>
          <td height="49" bgcolor="#FFFFFF" class="logo style1"><div align="center" class="logo style1">
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
              <param name="movie" value="anima1p.swf" />
              <param name="quality" value="high" />
              <embed src="anima1p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
            </object>
          </div></td>
          <td height="49" colspan="2" bgcolor="#FFFFFF" class="logo style1"><div align="center">Validaci&oacute;n de Usuario </div></td>
          <td height="49" bgcolor="#FFFFFF" class="logo style1"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
            <param name="movie" value="anima4p.swf" />
            <param name="quality" value="high" />
            <embed src="anima4p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
          </object></td>
        </tr>
        <tr>
          <td height="14" colspan="4" bgcolor="#009999"><a href="index.jsp" class="Estilo10 Estilo8">Regresar a Menú </a></td>
          </tr>
        <tr>
          <td width="114" height="20">&nbsp;</td>
          <td width="122" class="bodyText"><label></label></td>
          <td width="274">&nbsp;</td>
          <td width="114">&nbsp;</td>
        </tr>
        <tr>
          <td height="20"><div align="right">
            <div align="left" class="Estilo6"></div>
          </div></td>
          <td class="style5"><label><span class="Estilo6">Ingrese Usuario  :</span></label></td>
          <td class="style5"><input name="txtf_usu" type="text" id="txtf_usu" onKeyPress="return handleEnter(this, event)" size="15"/></td>
          <td class="style5">&nbsp;</td>
        </tr>
        <tr>
          <td height="20"><div align="right">
            <div align="left" class="Estilo6"></div>
          </div></td>
          <td class="style5"><label><span class="Estilo6">Password: </span></label></td>
          <td class="style5"><input name="txtf_pass" type="password" id="txtf_pass" onChange="mayNomm(this.form)" onKeyPress="return handleEnter(this, event)"  size="15" /></td>
          <td>&nbsp;</td>
        </tr>
       
       
        
        <tr>
          <td height="20">&nbsp;</td>
          <td colspan="2"><div align="center">
            <input type="submit" name="Submit" value="Validar" />&nbsp;&nbsp;</div>
          </div></td>
          <td>&nbsp;</td>
        </tr>
      </table>
          </form>
    </td>
  </tr>
</table>
</body>
</html>
