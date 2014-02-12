<%@page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date"  import="java.text.NumberFormat" import="java.util.Locale" errorPage="" %>

<%
Class.forName("org.gjt.mm.mysql.Driver");
String noaf_jv="",nom_jv="",ap_jv="",ap5_jv="",am_jv="",nombre1_jv="",clave_jv="",clave2_jv="",descrip_jv="",origen_jv="",exist_jv="",origen2="",exist2_jv="0",total22_jv="",clave22_jv="",origen22_jv="",descrip22_jv="";
String but="r";
int cont6=0,am2_jv=0,exist=0,ap2_jv=0,total=0;
ResultSet rset_001=null;
ResultSet rset_002=null;
String fecha_min="";
String fecha_max="";




String clave1_jv="",descrip1_jv="",origen1_jv="",exist1_jv="", total_disp="";
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

<%
		
		fecha_min=request.getParameter("txtf_fecha_min"); 
		fecha_max=request.getParameter("txtf_fecha_max"); 
		
		
		//---------------------------------------------------------------
		if (fecha_min==null && fecha_max==null){
		fecha_min="01/01/2013";
		java.util.Calendar fecha = java.util.Calendar.getInstance();
		//out.println(fecha.get(java.util.Calendar.DATE) + "/" + fecha.get(java.util.Calendar.MONTH)    + "/" + fecha.get(java.util.Calendar.YEAR));
		fecha_max=(fecha.get(java.util.Calendar.DATE) + "/" + (fecha.get(java.util.Calendar.MONTH)+1)    + "/"  + fecha.get(java.util.Calendar.YEAR));
		//out.print(fecha_max+" "+fecha_min);
		}
		//---------------------------------------------------------------
		   
		  
	     if((fecha_min!=null) && (fecha_max!=null))
		 {         
		 java.util.Calendar currDate = new java.util.GregorianCalendar();			
		 Date fecha1=new Date();
		 Date fecha2=new Date();
		 Date fecha1_1=new Date();
		 Date fecha2_1=new Date();
	 	 
		 SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		 fecha1=df.parse(fecha_min);
		 fecha2=df.parse(fecha_max);
		 
		 //out.print(fecha1);
		 //out.print(fecha2);
		 
		 String month =String.valueOf((fecha1.getMonth())+1);
		 String month2 =String.valueOf((fecha2.getMonth())+1);
		 String years =String.valueOf((fecha1.getYear()));
		 String years2 =String.valueOf((fecha2.getYear()));
		 String day=String.valueOf((fecha1.getDate()));
		 String day2=String.valueOf((fecha2.getDate()));
		 
		 //out.print("mes1: "+month+" mes2: "+month2+" año1: "+years+" año2: "+years2+" dia: "+day+" dia2: "+day2); %> <br /> <%
		 years="2013";
		 years2="2013";
		 fecha_min=years+"-"+month+"-"+day;
		 fecha_max=years2+"-"+month2+"-"+day2;
		 
		 //out.println(fecha_min);
		 
		 //out.println(fecha_max);
		 
		 SimpleDateFormat df2 = new SimpleDateFormat("yyyy-MM-dd");
		 //fecha1_1=df2.parse(fecha1);
		 //fecha2_1=df2.parse(fecha2);
		 /*int month = (fecha1.getMonth())+1;
		 int month2 = (fecha2.getMonth())+1;
		 int years = (fecha1.getYear());
		 int years2 = (fecha2.getYear());
		 */
		 //out.print(fecha_min);
		 }
		 
		 
		 
		//---------------------------------------------------------------
		
		
		%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>.:CONSUMO PROMEDIO:.</title>

<script src="scw.js" type="text/javascript"> </script>
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
.Estilo8 {font-size: 12px}
-->
</style></head>

<body onLoad="foco_inicial();">
<table width="783" height="346" border="3" align="center" cellpadding="2" bgcolor="#FFFFFF">
  <tr>
  
    <td width="780"><form id="form" name="form" method="get" action="dispen_diario_col.jsp">
	<a href="index_reporte_diario.jsp">Regresar a Menú </a>
      <table width="775" height="281" border="0" align="center" cellpadding="2">
        <tr>
          <td height="90" bgcolor="#FFFFFF" class="logo style1"><div align="center" class="logo style1">
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
              <param name="movie" value="anima1p.swf" />
              <param name="quality" value="high" />
              <embed src="anima1p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
            </object>
          </div></td>
          <td height="90" bgcolor="#FFFFFF" class="logo style1"><div align="center">Dispensado por Clave Receta Colectiva </div></td>
          <td height="90" bgcolor="#FFFFFF" class="logo style1"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
            <param name="movie" value="anima4p.swf" />
            <param name="quality" value="high" />
            <embed src="anima4p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
          </object></td>
        </tr>
        <tr>
          <td height="14" colspan="3" bgcolor="#009999"><span class="style2">iiiiii</span></td>
          </tr>
		  <tr>
		  <td height="50">
		    <div align="right"></div></td>
		  <td><!--input type='text' name='txtf_fecha_min' id='txtf_fecha_min' title='DD/MM/AAAA' size='10' maxlength='10' onclick='scwShow(this, event);' readonly="false"/>
        <img src="calendar.jpg" width="27" height="26" border="0" onClick="scwShow(scwID('txtf_caduc'),event);"/> &nbsp;&nbsp;&nbsp;&nbsp;
         al&nbsp;&nbsp;<input type='text' name='txtf_fecha_max' id='txtf_fecha_max' title='DD/MM/AAAA' size='10' maxlength='10' onclick='scwShow(this, event);' readonly="false"/>
		  <img src="calendar.jpg" width="27" height="26" border="0" onClick="scwShow(scwID('txtf_caduci'),event);"/>
		  <input name="Fechas" type="submit" value="Fechas"/-->
		  Rango de fechas del:&nbsp;&nbsp;
		  <label>
          <input type='text' name='txtf_fecha_min' id='txtf_fecha_min' title='DD/MM/AAAA' size='10' maxlength='10' onclick='scwShow(this, event);' readonly="false"/>
        </label><img src="calendar.jpg" width="27" height="26" border="0" onClick="scwShow(scwID('txtf_fecha_min'),event);"/> &nbsp;&nbsp;&nbsp;&nbsp;<label>
         al&nbsp;&nbsp;<input type='text' name='txtf_fecha_max' id='txtf_fecha_max' title='DD/MM/AAAA' size='10' maxlength='10' onclick='scwShow(this, event);' readonly="false"/>
		
        </label>
        <img src="calendar.jpg" width="27" height="26" border="0" onClick="scwShow(scwID('txtf_fecha_max'),event);"/> <input type="submit" name="Submit" value="Por Fechas"/>
		  </td>
		  <td>
		    <div align="center"><a href="export_col.jsp?boton=Show ALL&date1=<%=fecha_min%>&date2=<%=fecha_max%>"><img src="icono_excel.gif" alt="Exportar a Excel" /></a>
	        </div></td>
		  </tr>
		  <tr>
		  <td height="33">		  </td>
		  <td>
		    <div align="center" class="Estilo8">Rango 
		      <%out.print(fecha_min);%> 
		      del al 
		      <% out.print(fecha_max);%> 
	          </div></td>
		  <td>
		  </td>
		  </tr>
        <tr>
          <td height="20"><div align="center">CLAVE</div></td>
          <td class="bodyText"><div align="center">DESCRIPCI&Oacute;N</div></td>
          <td><div align="center">CANTIDAD</div></td>
        </tr>
		 <%
		 if(fecha_min==null&&fecha_max==null){
		 rset_002=stmt01.executeQuery ("select sum(cant_sur) from receta_colectiva group by juris");
		while(rset_002.next()){
		 total_disp=rset_002.getString("sum(cant_sur)");
		 }
		 rset_001=stmt.executeQuery ("select clave,descrip,sum(cant_sur) from receta_colectiva group by clave order by (clave+0)");
		 
		 }
		 else{
		 rset_002=stmt01.executeQuery ("select sum(cant_sur) from receta_colectiva where fecha_re between '"+fecha_min+"' and '"+fecha_max+"' and partida='2' group by juris");
		 while(rset_002.next()){
		 total_disp=rset_002.getString("sum(cant_sur)");
		 }
		 rset_001=stmt.executeQuery ("select clave, descrip, sum(cant_sur) from receta_colectiva where fecha_re between '"+fecha_min+"' and '"+fecha_max+"' and partida='2' group by clave order by (clave+0)");
		
		 }
		 while (rset_001.next())
		 {
		 %>
        <tr>
          <td width="157" height="20"><div align="center"><%=rset_001.getString("clave") %></div></td>
          <td width="484" class="bodyText"><%=rset_001.getString("descrip") %></td>
          <td width="114"><div align="center"><%=rset_001.getString("sum(cant_sur)") %></div></td>
        </tr>
		<%
		}
		//out.print("hola");
			
		 %>
		  <tr>
          <td width="157" height="20"><div align="center"></div></td>
          <td width="484" class="bodyText"><div align="right">Total</div></td>
          <td width="114"><div align="center"><%=total_disp%></div></td>
        </tr>
      </table>
          <div align="center"></div>
    </form>
    </td>
  </tr>
</table>
</body>
</html>
