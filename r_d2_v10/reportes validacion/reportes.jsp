<%@page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date"  import="java.text.NumberFormat" import="java.util.Locale" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<% Class.forName("org.gjt.mm.mysql.Driver");

Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
        Statement stmt1 = conn1.createStatement();
        ResultSet rset1= null;
     int tam=0,tam2=0,x1=0;
     String cad1[]=new String[1000];  //array for show clients 
     String arr[]= new String[5000];     //array for the importadores
     String name="";
     String service_jv="";
     String mail[]=new String[10];
	 
	 String but="r";
	 String usu_jv="",juris_jv="",no_jv="",receta_jv="",encar_jv="",unidad2_jv="",clave_jv="",finan_jv="",org_jv="";
	 String pass_jv="";
	 int correct1=0;
	 mail[0]="lasalle_tur@yahoo.com";
     String val="h";
	 String user="h";
     String hora_ini_jv="";
	 //variables fechas
	 String fecha_1= "";
     String fecha_2= "",date="",reporte_jv="",unidad_jv="",fecha_1_jv="",fecha_2_jv="";
	 int ban=0;
	 int ban_cur=0;

	 int cont=0;
	 try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}
	 


     
%>
<%



  	 
if(but.equals("Por Fechas"))
      {	    
	  ban=2;	 
	  ban_cur=1;
	  
// Rutina para fechas
           fecha_1= request.getParameter("txtf_caduc");
		   fecha_2= request.getParameter("txtf_caduci");
		 
		   
		 int bancom =1;  
	     if(!(fecha_1.equals("")) && !(fecha_2.equals(""))){         
		 java.util.Calendar currDate = new java.util.GregorianCalendar();			
		 Date fecha1=new Date();
		 Date fecha2=new Date();
	 	 
		 SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		 fecha1=df.parse(fecha_1);
		 fecha2=df.parse(fecha_2);
		 
		 int month = (fecha1.getMonth())+1;
		 int month2 = (fecha2.getMonth())+1;
		 int years = (fecha1.getYear());
		 int years2 = (fecha2.getYear());
		 
		 if(years>years2){
		 	 bancom=2;
		 }
		 if(month>month2){
		    if(years>=years2)
		       bancom=2;
		 } 
		 
		 
		 //out.print("mes1:"+month+"mes2:"+month2+"año1:"+years+"año2:"+years2);
		 if( (month>=1 && (years>=113 || years<=108))  || (month2>=11 && (years2>=113 || years<=108)) )
		     {bancom=3;}
		 Connection conne_d = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
   				  Statement stmt_d = conne_d.createStatement();
		   ResultSet rset_d = stmt_d.executeQuery("select MAX(fecha_re) from receta;"); 
                    String fechmax="";
					int banexi=1;
					while(rset_d.next()){
                    fechmax=rset_d.getString("MAX(fecha_re)");
					}
					rset_d = stmt_d.executeQuery("select MIN(fecha_re) from receta;"); 
                    String fechmin="";
					while(rset_d.next()){
                    fechmin=rset_d.getString("MIN(fecha_re)");
					}
		SimpleDateFormat df2 = new SimpleDateFormat("yyyy-MM-dd");
		Date fechaMa=new Date();
		Date fechaMi=new Date();
		
		fechaMa=df2.parse(fechmax);
   	    fechaMi=df2.parse(fechmin);
 		
		int monthMa = (fechaMa.getMonth())+1;
		int monthMi = (fechaMi.getMonth())+1;
		int yearMa =  (fechaMa.getYear());
		int yearMi =  (fechaMi.getYear());
		if(monthMa < month || month < monthMi){
		 banexi=0;
		 }
		
		if(monthMa < month2 || month < monthMi){
		 banexi=0;
		 }

		 		   Connection conne_day = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
   				  Statement stmt_day = conne_day.createStatement();
		   ResultSet rset_day = stmt_day.executeQuery("SELECT STR_TO_DATE('"+fecha_1+"', '%d/%m/%Y')"); 
                    while(rset_day.next()){
                    fecha_1= rset_day.getString("STR_TO_DATE('"+fecha_1+"', '%d/%m/%Y')");
					}
	       rset_day = stmt_day.executeQuery("SELECT STR_TO_DATE('"+fecha_2+"', '%d/%m/%Y')"); 
                    while(rset_day.next()){
                    fecha_2= rset_day.getString("STR_TO_DATE('"+fecha_2+"', '%d/%m/%Y')"); }
					//select sum(costo),sum(uni) from xjurisixt1 where fecha between '2009-06-10' and '2009-06-12'; 
   					  if(month2>=12 && years2==113)
						{
						  banexi=2;
						}  				
		
					    				
		   	 if(bancom==2){
		   fecha_1="";
			fecha_2="";
			
			%>
			<script>
			alert("Verifica las fechas, La primera fecha debe ser menor a la segunda, GRACIAS")
			</script>
			<%
		   }
		   
		   if(banexi==2){
		   fecha_1="";
			fecha_2="";
			%>
			<script>
			alert("El rango de fechas no se ha registrado todavía o bien ya se ha borrado, GRACIAS")
			</script>
			<%
		   }
		    if(bancom==3){
		   fecha_1="";
			fecha_2="";
			
			%>
			<script>
			alert("Verifica las fechas, ESTAN FUERA DE RANGO, GRACIAS")
			</script>
			<%
		   }
		}else{
		   //fecha_1="";
			//fecha_2="";
			%>
			<script>
			alert("Debes ingresar un rango de fechas")
			</script><%
		   }
	  
	  	
	   	   	
	   }

if(!(fecha_1.equals("")) && !(fecha_2.equals("")))

{
				  	
					reporte_jv=request.getParameter("reporte");
					unidad_jv=request.getParameter("select");
					fecha_1_jv=request.getParameter("txtf_caduc");
					fecha_2_jv=request.getParameter("txtf_caduci");
					finan_jv=request.getParameter("finan");
					org_jv=request.getParameter("selector");
					
					//out.print(""+reporte_jv);
					if((reporte_jv.equals("receta")) && (!(org_jv.equals("ambos"))))
					{
					%>
					<script>
				self.location='reporte_re.jsp?reporte=<%=reporte_jv%>&unidad=<%=unidad_jv%>&f1=<%=fecha_1_jv%>&f2=<%=fecha_2_jv%>&org=<%=org_jv%>&boton=Show ALL';
					</script>
					
					<%
					}else if((reporte_jv.equals("rf")) && ((org_jv.equals("ambos"))))
					{
					%>
					<script>
				self.location='reporte_rerf.jsp?reporte=<%=reporte_jv%>&unidad=<%=unidad_jv%>&f1=<%=fecha_1_jv%>&f2=<%=fecha_2_jv%>&org=<%=org_jv%>&boton=Show ALL&boton2=Show ALL2';
					</script>
					
					<%
					}else if((reporte_jv.equals("rf")) && (!(org_jv.equals("ambos"))))
					{
					%>
					<script>
				self.location='reporte_rerf2.jsp?reporte=<%=reporte_jv%>&unidad=<%=unidad_jv%>&f1=<%=fecha_1_jv%>&f2=<%=fecha_2_jv%>&org=<%=org_jv%>&boton=Show ALL';
					</script>
					
					<%
					}else if((reporte_jv.equals("rc")) && ((org_jv.equals("ambos"))))
					{
					%>
					<script>
				self.location='reporte_recol.jsp?reporte=<%=reporte_jv%>&unidad=<%=unidad_jv%>&f1=<%=fecha_1_jv%>&f2=<%=fecha_2_jv%>&org=<%=org_jv%>&boton=Show ALL&boton2=Show ALL2';
					</script>
					
					<%
					}else if((reporte_jv.equals("rc")) && (!(org_jv.equals("ambos"))))
					{
					%>
					<script>
				self.location='reporte_recol2.jsp?reporte=<%=reporte_jv%>&unidad=<%=unidad_jv%>&f1=<%=fecha_1_jv%>&f2=<%=fecha_2_jv%>&org=<%=org_jv%>&boton=Show ALL';
					</script>
					
					<%
					}
					
					else if((reporte_jv.equals("global")) && (!(org_jv.equals("ambos"))))
					{
					%>
					<script>
				self.location='reporte_glob.jsp?reporte=<%=reporte_jv%>&unidad=<%=unidad_jv%>&f1=<%=fecha_1_jv%>&f2=<%=fecha_2_jv%>&org=<%=org_jv%>&boton=Show ALL';
					</script>
					<%
					 }else if((reporte_jv.equals("global")) && ((org_jv.equals("ambos"))))
					{
					%>
					<script>
				self.location='reporte_global.jsp?reporte=<%=reporte_jv%>&unidad=<%=unidad_jv%>&f1=<%=fecha_1_jv%>&f2=<%=fecha_2_jv%>&org=<%=org_jv%>&boton=Show ALL';
					</script>
					<%
					 }
					 
					 else if((reporte_jv.equals("layout")) )
					{
					%>
					<script>
				self.location='reporte_layout.jsp?reporte=<%=reporte_jv%>&f1=<%=fecha_1_jv%>&f2=<%=fecha_2_jv%>&boton=Show ALL';
					</script>
					<%
					 }
					 
			}
				  
%>


<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Sistema de Reportes WEB :: GNKL</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_health_nutr.css" type="text/css" />
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------
</script>
<script language="javascript" src="list02.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 12px}
body {
	background-image: url();
	background-color: #E1E1E1;
}
.style2 {font-family: Arial, Helvetica, sans-serif}
a:link {
	color: #000000;
}
a:visited {
	color: #990000;
}
a:hover {
	color: #0000FF;
}
.style5 {
	font-size: 36px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.style6 {font-size: 18px}
.style7 {font-size: 12px; font-family: Arial, Helvetica, sans-serif; }
-->
</style>
</head>
<body onload="hora_Inv()">
<script src="scw.js" type="text/javascript"> </script>
<table width="103%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr bgcolor="#D5EDB3">
    <td colspan="2" bgcolor="#FFFFFF">&nbsp;
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="134" height="118">
          <param name="movie" value="anima2.swf" />
          <param name="quality" value="high" />
          <embed src="anima2.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="134" height="118"></embed>
      </object></td>
    <td height="50" colspan="3" align="center" valign="bottom" nowrap="nowrap" bgcolor="#FFFFFF" id="logo"><div align="right">
      <table width="721" border="0" align="left" cellpadding="2">
        <tr>
          <td width="509" rowspan="2"><div align="center" class="style5 style6">SISTEMA REPORTEADOR  </div></td>
          <td width="198" height="67">&nbsp;</td>
        </tr>
        <tr>
          <td height="23">&nbsp;</td>
        </tr>
      </table>
    </div></td>
    <td width="4" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr bgcolor="#99CC66">
    <td height="20" colspan="7" background="fn1.jpg" bgcolor="#FFFFFF" id="dateformat">&nbsp;&nbsp;
        <script language="JavaScript" type="text/javascript">
      document.write(TODAY);	</script></td>
  </tr>
  <tr>
    <td width="165" valign="top" bgcolor="#FFFFFF"><table border="0" cellspacing="0" cellpadding="0" width="165" id="navigation">
    </table>
          <br />
      &nbsp;<br />
      &nbsp;<br />
      &nbsp;<br />
    </td>
    <td width="4">&nbsp;</td>
    <td colspan="2" valign="top"><div align="center"></div>
        <div align="left"></div>
      <div align="left"></div>
      <table width="751" border="3" align="left" cellpadding="0" cellspacing="0">
          <tr>
            <td width="453" class="bodyText"><table width="652" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="37" colspan="4" bgcolor="#FFFFFF"><div align="center">
                      <p align="center"><strong><img src="logo_soriana2.jpg" width="191" height="55" /></strong></p>
                  </div></td>
                </tr>
                <tr>
                  <td width="4" nowrap bgcolor="#FFFFFF">&nbsp;</td>
                  <td width="5" bgcolor="#FFFFFF">&nbsp;</td>
                  <td width="453"><div align="center">
                      <table width="555" border="0" align="center" cellpadding="2" cellspacing="3">
                        <form action="reportes.jsp" method="post" >
                          <tr>
                            <td colspan="14"><div id="item21" style="display:none" align="justify" >
                                <input type="text" name="txtf_hf" id="txtf_hf" size="10" readonly="true"/>
                            </div></td>
                          </tr>
                          <tr>
                            <td colspan="14" class="style1"><div align="left"><a href="index.jsp">Regresar a Menú</a></div></td>
                          </tr>
                          <tr>
                            <td colspan="14" class="style1" >Tipo de Reporte: 
                              
                                <input name="reporte" type="radio" value="global" />
                           Global
                            
                              <input name="reporte" type="radio" value="receta" checked="checked"/>
                            Por Receta 
                          
                              <input name="reporte" type="radio" value="layout" />
                            Layout
                            
                              <input name="reporte" type="radio" value="rf" />
                            RF  <input name="reporte" type="radio" value="rc" />
                            RC </td>
                            <td colspan="2" >&nbsp;</td>
                          </tr>
                          <tr>
                            <td colspan="2" align="right"><span class="style1"><span class="style2">Unidad</span></span>:</td>
                            <td colspan="12" align="right" class="style1"><div align="left"></div>
                              <label>
                              <div align="left">
                                <select name="select" class="style1">
                                  <option selected="selected">-----------------------Escoja un unidad-------------------------</option>
                                 <option value="ALMACÉN JURISDICCIÓN SANITARIA NO. 2">ALMACÉN JURISDICCIÓN SANITARIA NO. 2</option>
<option value="ALMACÉN JURISDICCIÓN SANITARIA NO. 3">ALMACÉN JURISDICCIÓN SANITARIA NO. 3</option>
<option value="ALMACÉN JURISDICCIÓN SANITARIA NO.4 RODEO">ALMACÉN JURISDICCIÓN SANITARIA NO.4 RODEO</option>
<option value="CENTRO DE SALUD BOSQUES DEL VALLE">CENTRO DE SALUD BOSQUES DEL VALLE</option>
<option value="CENTRO DE SALUD CUENCAME">CENTRO DE SALUD CUENCAME</option>
<option value="CENTRO DE SALUD DE GÓMEZ PALACIO">CENTRO DE SALUD DE GÓMEZ PALACIO</option>
<option value="CENTRO DE SALUD DE GUADALUPE VICTORIA">CENTRO DE SALUD DE GUADALUPE VICTORIA</option>
<option value="CENTRO DE SALUD DE GUANACEVI">CENTRO DE SALUD DE GUANACEVI</option>
<option value="CENTRO DE SALUD DE NOMBRE DE DIOS">CENTRO DE SALUD DE NOMBRE DE DIOS</option>
<option value="CENTRO DE SALUD DE TEPEHUANES">CENTRO DE SALUD DE TEPEHUANES</option>
<option value="CENTRO DE SALUD DE VICENTE GUERRERO">CENTRO DE SALUD DE VICENTE GUERRERO</option>
<option value="CENTRO DE SALUD DE VILLA UNION">CENTRO DE SALUD DE VILLA UNION</option>
<option value="CENTRO DE SALUD INDE">CENTRO DE SALUD INDE</option>
<option value="CENTRO DE SALUD JARDINES DE CANCUN">CENTRO DE SALUD JARDINES DE CANCUN</option>
<option value="CENTRO DE SALUD LA VIRGEN">CENTRO DE SALUD LA VIRGEN</option>
<option value="CENTRO DE SALUD LERDO">CENTRO DE SALUD LERDO</option>
<option value="CENTRO DE SALUD NAZAS">CENTRO DE SALUD NAZAS</option>
<option value="CENTRO DE SALUD No 1">CENTRO DE SALUD No 1</option>
<option value="CENTRO DE SALUD No 2">CENTRO DE SALUD No 2</option>
<option value="CENTRO DE SALUD PAPASQUIARO">CENTRO DE SALUD PAPASQUIARO</option>
<option value="CENTRO DE SALUD RODEO">CENTRO DE SALUD RODEO</option>
<option value="CENTRO DE SALUD TLAHUALILO">CENTRO DE SALUD TLAHUALILO</option>
<option value="CENTRO ESTATAL DE CANCEROLOGÍA">CENTRO ESTATAL DE CANCEROLOGÍA</option>
<option value="CS LA CIUDAD">CS LA CIUDAD</option>
<option value="CS SAN MIGUEL DE CRUCES">CS SAN MIGUEL DE CRUCES</option>
<option value="CS SANTA MARÍA DE OCOTAN">CS SANTA MARÍA DE OCOTAN</option>
<option value="CSR FELIPE CARRILLO PUERTO">CSR FELIPE CARRILLO PUERTO</option>
<option value="CSR LA JOYA">CSR LA JOYA</option>
<option value="CSR LLANO GRANDE">CSR LLANO GRANDE</option>
<option value="CSR PRAXEDIS GUERRERO">CSR PRAXEDIS GUERRERO</option>
<option value="CSS COL. HIDALGO">CSS COL. HIDALGO</option>
<option value="CSS INDEPENDENCIA Y LIBERTAD">CSS INDEPENDENCIA Y LIBERTAD</option>
<option value="CSU AZCAPOTZALCO">CSU AZCAPOTZALCO</option>
<option value="CSU BENJAMIN MENDEZ">CSU BENJAMIN MENDEZ</option>
<option value="CSU COL. EJIDAL">CSU COL. EJIDAL</option>
<option value="CSU DIVISION DEL NORTE">CSU DIVISION DEL NORTE</option>
<option value="CSU JOSE ANGEL LEAL">CSU JOSE ANGEL LEAL</option>
<option value="CSU JOSE LOPEZ PORTILLO">CSU JOSE LOPEZ PORTILLO</option>
<option value="DIF ESTATAL">DIF ESTATAL</option>
<option value="FARMACIA SEGURO POPULAR DE GOMEZ PALACIO">FARMACIA SEGURO POPULAR DE GOMEZ PALACIO</option>
<option value="FARMACIA SEGURO POPULAR DURANGO">FARMACIA SEGURO POPULAR DURANGO</option>
<option value="HOSPITAL COMUNITARIO FRANCISCO I. MADERO">HOSPITAL COMUNITARIO FRANCISCO I. MADERO</option>
<option value="HOSPITAL DE SALUD MENTAL">HOSPITAL DE SALUD MENTAL</option>
<option value="HOSPITAL GENERAL DE CUENCAME">HOSPITAL GENERAL DE CUENCAME</option>
<option value="HOSPITAL GENERAL DE DURANGO">HOSPITAL GENERAL DE DURANGO</option>
<option value="HOSPITAL GENERAL DE GOMEZ PALACIO">HOSPITAL GENERAL DE GOMEZ PALACIO</option>
<option value="HOSPITAL GENERAL DE LERDO">HOSPITAL GENERAL DE LERDO</option>
<option value="HOSPITAL GENERAL SANTA MARIA DEL ORO">HOSPITAL GENERAL SANTA MARIA DEL ORO</option>
<option value="HOSPITAL GENERAL SANTIAGO PAPASQUIARO">HOSPITAL GENERAL SANTIAGO PAPASQUIARO</option>
<option value="HOSPITAL INTEGRAL DE CANATLAN">HOSPITAL INTEGRAL DE CANATLAN</option>
<option value="HOSPITAL INTEGRAL DE HUAZAMOTA">HOSPITAL INTEGRAL DE HUAZAMOTA</option>
<option value="HOSPITAL INTEGRAL DE LAS NIEVES">HOSPITAL INTEGRAL DE LAS NIEVES</option>
<option value="HOSPITAL INTEGRAL DE NUEVO IDEAL">HOSPITAL INTEGRAL DE NUEVO IDEAL</option>
<option value="HOSPITAL INTEGRAL DE PEÑON BLANCO">HOSPITAL INTEGRAL DE PEÑON BLANCO</option>
<option value="HOSPITAL INTEGRAL DE SAN JUAN DEL RIO">HOSPITAL INTEGRAL DE SAN JUAN DEL RIO</option>
<option value="HOSPITAL INTEGRAL DE SUCHIL">HOSPITAL INTEGRAL DE SUCHIL</option>
<option value="HOSPITAL INTEGRAL DE TAMAZULA">HOSPITAL INTEGRAL DE TAMAZULA</option>
<option value="HOSPITAL INTEGRAL DEL MEZQUITAL">HOSPITAL INTEGRAL DEL MEZQUITAL</option>
<option value="HOSPITAL INTEGRAL DEL SALTO">HOSPITAL INTEGRAL DEL SALTO</option>
<option value="HOSPITAL INTEGRAL EL DURAZNO">HOSPITAL INTEGRAL EL DURAZNO</option>
<option value="HOSPITAL INTEGRAL LA GUAJOLOTA">HOSPITAL INTEGRAL LA GUAJOLOTA</option>
<option value="HOSPITAL INTEGRAL MAPIMI">HOSPITAL INTEGRAL MAPIMI</option>
<option value="HOSPITAL INTEGRAL SIMON BOLIVAR">HOSPITAL INTEGRAL SIMON BOLIVAR</option>
<option value="SANTA MARIA DEL ORO">SANTA MARIA DEL ORO</option>


                                </select>
                           Origen<select name="selector" class="style1">
                                  <option value="ambos">Ambos</option>
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                 
                                  </select> </div>                              </label></td>
                          </tr>
                          <tr>
                            <td bgcolor="#FFFFFF" colspan="15" class="style1">Rango de fechas del:&nbsp;&nbsp;<label>
          <input type='text' name='txtf_caduc' id='txtf_caduc' title='DD/MM/AAAA' size='10' maxlength='10' onclick='scwShow(this, event);' readonly="true" class="style1"/>
        </label><img src="calendar.jpg" width="27" height="26" border="0" onClick="scwShow(scwID('txtf_caduc'),event);"/> &nbsp;&nbsp;&nbsp;&nbsp;<label>
         al&nbsp;&nbsp;<input type='text' name='txtf_caduci' id='txtf_caduci' title='DD/MM/AAAA' size='10' maxlength='10' onclick='scwShow(this, event);' readonly="true" class="style1"/>
		 <%
		String fechaa1_jv="";
		String fechaa2_jv="";
		      	  Connection connn = 
		      	         DriverManager.getConnection("jdbc:mysql://localhost/r_d");
		      	         Statement stmt_day = connn.createStatement();
		      			 ResultSet rset_day = stmt_day.executeQuery("SELECT DATE_FORMAT('"+fecha_1+"', '%d/%m/%Y')"); //;SELECT STR_TO_DATE('"+date_jv+"', '%m/%d/%Y')
		      	           while(rset_day.next())
		      	        	   fechaa1_jv= rset_day.getString("DATE_FORMAT('"+fecha_1+"', '%d/%m/%Y')");
						rset_day = stmt_day.executeQuery("SELECT DATE_FORMAT('"+fecha_2+"', '%d/%m/%Y')"); //;SELECT STR_TO_DATE('"+date_jv+"', '%m/%d/%Y')
		      	           while(rset_day.next())
		      	        	   fechaa2_jv= rset_day.getString("DATE_FORMAT('"+fecha_2+"', '%d/%m/%Y')");
							   
							   %>
        </label>
        <img src="calendar.jpg" width="27" height="26" border="0" onClick="scwShow(scwID('txtf_caduci'),event);"/> <input type="submit" name="Submit" value="Por Fechas" class="style1"/>
        
          <label></label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                          </tr>
                          <tr>
                            <td width="57" class="style1 style2">&nbsp;</td>
                            <td width="57" class="style1 style2">&nbsp;</td>
                            <td width="57" class="style1 style2">&nbsp;</td>
                            <td width="57" class="style1 style2">&nbsp;</td>
                            <td colspan="7" class="style1 style2"><%=!(fecha_1.equals(""))?"Rango desde "+fechaa1_jv+" hasta "+fechaa2_jv:""%></td>
                            <td width="57" class="style1 style2">&nbsp;</td>
                            <td width="381" colspan="2"><div align="left"></div></td>
                          </tr>
                          <tr>
                            <td class="style1 style2">&nbsp;</td>
                            <td class="style1 style2">&nbsp;</td>
                            <td class="style1 style2">&nbsp;</td>
                            <td class="style1 style2">&nbsp;</td>
                            <td width="57" class="style1 style2">&nbsp;</td>
                            <td width="57" class="style1 style2">&nbsp;</td>
                            <td width="57" class="style1 style2">&nbsp;</td>
                            <td width="57" class="style1 style2">&nbsp;</td>
                            <td width="57" class="style1 style2">&nbsp;</td>
                            <td width="57" class="style1 style2">&nbsp;</td>
                            <td width="57" class="style1 style2">&nbsp;</td>
                            <td class="style1 style2">&nbsp;</td>
                            <td colspan="2"><div align="left"></div></td>
                          </tr>
                          <tr>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td colspan="2"><div align="left"></div></td>
                          </tr>
                          <tr>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2">&nbsp;</td>
                            <td align="right" class="style1 style2"><div align="left"></div></td>
                            <td colspan="2"><div align="left"></div></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td colspan="2"><p>
                              <label>
                                <div align="center">
                                  <div align="center"></div>
                                  </label>
                              <p>&nbsp;</p></td>
                          </tr>
                          <input type="hidden" name="cmd" value="1" />
                        </form>
                      </table>
                  </div></td>
                  <td width="194" nowrap bgcolor="#FFFFFF"><img src="imagenes/px.gif" width="1" height="1" alt="" border="0" /><img src="medi.jpg" width="178" height="164" /></td>
                </tr>
                <tr>
                  <td colspan="4">&nbsp;</td>
                </tr>
            </table></td>
          </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <table width="497" border="0" cellpadding="2">
          <tr>
            <td width="489">&nbsp;</td>
          </tr>
      </table></td>
  </tr>
</table>
 <br />
	&nbsp;<br />	</td>
    <td width="50"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
        <td width="190" valign="top" bgcolor="#FFFFFF"><br />
		&nbsp;<br />
		<table border="0" cellspacing="0" cellpadding="0" width="190" id="leftcol">

	   <tr>
       <td width="10"><img src="mm_spacer.gif" alt="" width="10" height="1" border="0" /></td>
		<td width="170" class="smallText">&nbsp;</td>
         <td width="10">&nbsp;</td>
        </tr>
      </table>	</td>
	<td width="266" bordercolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td width="165">&nbsp;</td>
    <td width="50">&nbsp;</td>
    <td width="4">&nbsp;</td>
    <td width="301">&nbsp;</td>
    <td width="50">&nbsp;</td>
    <td width="190">&nbsp;</td>
	<td width="266">&nbsp;</td>
  </tr>
</table>

	

</body>
</html>
