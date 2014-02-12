<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%
String noaf_jv="",nom_jv="",ap_jv="",ap5_jv="",am_jv="",nombre1_jv="",clave_jv="",clave2_jv="",descrip_jv="",origen_jv="",exist_jv="",origen2="",exist2_jv="0",total22_jv="",clave22_jv="",origen22_jv="",descrip22_jv="";
String cant_ps_jv="", clave_ps_jv="", total_cant="", total_cajas="", total_resto="";
int tot_cajas_int=0, tot_resto_int=0;
String but="r";
int cont6=0,am2_jv=0,exist=0,ap2_jv=0,total=0;
ResultSet rset_001=null;
ResultSet rset_002=null;
String clave1_jv="",descrip1_jv="",origen1_jv="",exist1_jv="";
Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
  Statement stmt = conn__001.createStatement();
  Statement stmt01 = conn__001.createStatement();
  Statement stmt02 = conn__001.createStatement();

try { 


        but=""+request.getParameter("Submit");
		//but2=""+request.getParameter("Submit2");
		//out.print("but ="+but);
        
    }catch(Exception e){System.out.print("not");} 
	
	
	
	
	
		 	
	
	
	


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>.: INVENTARIO UNIDAD:.</title>
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
.Estilo8 {color: #FFFFFF}
.Estilo9 {font-size: 14px}
-->
</style></head>

<body onLoad="foco_inicial();">
<table width="666" height="346" border="3" align="center" cellpadding="2" bgcolor="#FFFFFF">
  <tr>
  
    <td width="650"><form id="form" name="form" method="post" action="inventarios.jsp">
        <a href="index.jsp">Regresar a Menú </a>
        <table width="782" height="221" border="0" align="center" cellpadding="2">
        <tr>
          <td height="90" colspan="4" bgcolor="#FFFFFF" class="logo style1">
            <div align="center">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
    <param name="movie" value="anima1p.swf" />
    <param name="quality" value="high" />
    <embed src="anima1p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
  </object>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inventario Unidad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
                <param name="movie" value="anima4p.swf" />
                <param name="quality" value="high" />
                <embed src="anima4p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
              </object>
            </div></td>
          </tr>
        <tr>
          <td height="14" colspan="4" bgcolor="#009999"><span class="style2">ii<span class="Estilo8"><span class="Estilo9">Exportar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><img src="icono_excel.gif" border="0" usemap="#Map2"/></span></span></td>
          </tr>
        <tr>
          <td height="20"><div align="center">CLAVE</div></td>
          <td class="bodyText"><div align="center">DESCRIPCI&Oacute;N</div></td>
          <td><div align="center">CANTIDAD</div></td>
         
          <td><div align="center">ORIGEN</div></td>
        </tr>
		<%
		
		rset_002=stmt02.executeQuery("select sum(cant) from inventario ");
		while(rset_002.next())
		{
			total_cant=rset_002.getString("sum(cant)");
		}
		rset_002=stmt02.executeQuery("select inventario.clave,inventario.descrip,inventario.cant,inventario.origen from inventario order by (clave+0),origen  ");
		
		cant_ps_jv="1";
		while(rset_002.next())
		{
		clave_jv=rset_002.getString("clave");
			rset_001=stmt01.executeQuery("select clave, cant from pasti_ampu where clave='"+clave_jv+"';");
			while (rset_001.next()){
			
				cant_ps_jv=rset_001.getString("cant");
				clave_ps_jv=rset_001.getString("clave");
				
				
			}
		//out.print(clave_ps_jv);%><!--br /--><%
				//out.print(cant_ps_jv);
		%>
        <tr>
          <td width="73" height="20"><div align="center"><%=rset_002.getString("clave")%></div></td>
          <td width="458" class="bodyText"><%=rset_002.getString("descrip")%></td>
          <td width="55"><div align="center"><%=rset_002.getString("cant")%></div></td>
          
          <td width="38"><div align="center"><%=rset_002.getString("origen")%></div></td>
        </tr>
		<%
		cant_ps_jv="1";
		}%>
		<tr>
		<td height="22">		</td>
		<td>
		  <p align="right" class="Estilo9"><strong>Total</strong></p>		  </td>
		<td>
		
		    <div align="center" class="Estilo9"><strong>
		      <%
		out.print(total_cant);
		%>
	        </strong></div></td>
			
			<td>
			<div align="center" class="Estilo9"><strong>
		      <%
		out.print(total_resto);
		%>
	        </strong></div>			</td>
		</tr>
      </table>
          </form>
    </td>
  </tr>
</table>
<map name="Map" id="Map">
<area shape="poly" coords="241,165" href="#" />
<area shape="poly" coords="230,40,231,88,270,43" href="#" />
</map>
<map name="Map2" id="Map2">
  <area shape="rect" coords="4,2,31,28" href="repor_inventario.jsp?boton=Show ALL" />
</map>
</body>
</html>
