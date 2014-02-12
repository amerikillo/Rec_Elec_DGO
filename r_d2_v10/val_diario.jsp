<%@page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date"  import="java.text.NumberFormat" import="java.util.Locale" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<% Class.forName("org.gjt.mm.mysql.Driver");

Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
        Statement stmt1 = conn1.createStatement();
        ResultSet rset1= null;
     int tam=0,tam2=0,x1=0,afi=0;
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
     String date="",reporte_jv="",unidad_jv="",fecha_1_jv="";
	 int ban=0;
	 int ban_cur=0;

	 int cont=0;
	 try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}
	 

 rset1= stmt1.executeQuery("select unidad from receta group by unidad ");
	  
	  while(rset1.next())
				     {
					 cad1[afi]=rset1.getString("unidad");     
                     afi++;
}

     
%>
<%



  	 
if(but.equals("Por Fechas"))
      {	    
	  ban=2;	 
	  ban_cur=1;
	  
// Rutina para fechas
           fecha_1= request.getParameter("txtf_caduc");
		   
		 
		   
		 int bancom =1;  
	     if(!(fecha_1.equals(""))){         
		 java.util.Calendar currDate = new java.util.GregorianCalendar();			
		 Date fecha1=new Date();
		 
	 	 
		 SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		 fecha1=df.parse(fecha_1);
		 
		 
		 int month = (fecha1.getMonth())+1;
		 int years = (fecha1.getYear());
		
		 
		
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
		

		 		   Connection conne_day = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
   				  Statement stmt_day = conne_day.createStatement();
		   ResultSet rset_day = stmt_day.executeQuery("SELECT STR_TO_DATE('"+fecha_1+"', '%d/%m/%Y')"); 
                    while(rset_day.next()){
                    fecha_1= rset_day.getString("STR_TO_DATE('"+fecha_1+"', '%d/%m/%Y')");
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
	   	   	
	  

if(!(fecha_1.equals("")))

{
				  	
					reporte_jv=request.getParameter("reporte");
					unidad_jv=request.getParameter("select");
					fecha_1_jv=request.getParameter("txtf_caduc");
					finan_jv=request.getParameter("finan");
					org_jv=request.getParameter("selector");
					
					//out.print(""+reporte_jv);
			
					
					 if((reporte_jv.equals("global")) && (!(org_jv.equals("ambos"))))
					{
					%>
					<script>
				self.location='global_diario_rf.jsp?reporte=<%=reporte_jv%>&unidad=<%=unidad_jv%>&f1=<%=fecha_1_jv%>&org=<%=org_jv%>&boton=Show ALL';
					</script>
					<%
					 }else if((reporte_jv.equals("global")) && ((org_jv.equals("ambos"))))
					{
					%>
					<script>
				self.location='global_diario_rf.jsp?reporte=<%=reporte_jv%>&unidad=<%=unidad_jv%>&f1=<%=fecha_1_jv%>&org=<%=org_jv%>&boton=Show ALL&boton2=Show ALL2';
					</script>
					<%
					}
					  
					 else if((reporte_jv.equals("global2")) && (!(org_jv.equals("ambos"))))
					{
					%>
					<script>
				self.location='reporte_glob_rc_val.jsp?reporte=<%=reporte_jv%>&unidad=<%=unidad_jv%>&f1=<%=fecha_1_jv%>&org=<%=org_jv%>&boton=Show ALL';
					</script>
					<%
					 }else if((reporte_jv.equals("global2")) && ((org_jv.equals("ambos"))))
					{
					%>
					<script>
				self.location='reporte_global_rc_val.jsp?reporte=<%=reporte_jv%>&unidad=<%=unidad_jv%>&f1=<%=fecha_1_jv%>&org=<%=org_jv%>&boton=Show ALL&boton2=Show ALL2';
					</script>
					<%
					 }
					 
					 else if((reporte_jv.equals("layout")) )
					{
					%>
					<script>
				self.location='reporte_layout_val.jsp?reporte=<%=reporte_jv%>&f1=<%=fecha_1_jv%>&boton=Show ALL';
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
      <table width="946" border="0" align="left" cellpadding="2">
        <tr>
          <td width="870" rowspan="2"><div align="center" class="style5 style6">SISTEMA REPORTEADOR DE VALIDACIONES  </div></td>
          <td width="62" height="67">&nbsp;</td>
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
      <table width="925" border="3" align="left" cellpadding="0" cellspacing="0">
          <tr>
            <td width="453" class="bodyText"><table width="917" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="37" colspan="4" bgcolor="#FFFFFF"><div align="center">
                      <p align="center"><strong><img src="logo_soriana2.jpg" width="191" height="55" /></strong></p>
                  </div></td>
                </tr>
                <tr>
                  <td width="4" nowrap bgcolor="#FFFFFF">&nbsp;</td>
                  <td width="4" bgcolor="#FFFFFF">&nbsp;</td>
                  <td width="638"><div align="center">
                      <table width="687" border="0" align="center" cellpadding="2" cellspacing="3">
                        <form action="reportes_val.jsp" method="post" >
                          <tr>
                            <td colspan="14"><div id="item21" style="display:none" align="justify" >
                                <input type="text" name="txtf_hf" id="txtf_hf" size="10" readonly="true"/>
                            </div></td>
                          </tr>
                          <tr>
                            <td colspan="14" class="style1"><a href="index.jsp">Regresar</a></td>
                          </tr>
                          <tr>
                            <td colspan="14" class="style1"><div align="center">Tipo de Reporte:</div></td>
                          </tr>
                          <tr>
                            <td colspan="16" class="style1" ><input name="reporte" type="radio" value="global"  checked="checked"/>
                           Global Receta Farmacia 
                           <input name="reporte" type="radio" value="global2" />
Global Receta Colectiva
                              <input name="reporte" type="radio" value="receta" />
                            Desglose  Receta Farmacia
                          
                              
                            
                            <input name="reporte" type="radio" value="receta2" />
                            Desglose  Receta Colectiva                            </td>
                          </tr>
                          <tr>
                            <td colspan="2" align="right">&nbsp;</td>
                            <td colspan="12" align="right" class="style1">&nbsp;</td>
                          </tr>
                          <tr>
                            <td colspan="2" align="right">&nbsp;</td>
                            <td colspan="12" align="right" class="style1">&nbsp;</td>
                          </tr>
                          <tr>
                            <td colspan="2" align="right">&nbsp;</td>
                            <td colspan="12" align="right" class="style1"><div align="left"></div>
                              <label>

                              <div align="center"><span class="style2">Unidad</span>:
                                  <select name="select" class="style1">
                                    <option selected="selected">-----------------------Escoja un unidad-------------------------</option>
                                    <%
		   if(afi>0)
		   {
		%>
                                    
                                    
                                    <%
		     
             for(x1=0;x1<afi;x1++)
                {
                  // out.print(""+x1);
           %>
                                                  <option value="<%=cad1[x1]%>"><%=cad1[x1]%></option>
                                    <%
					  }
					%>
                                    
                                    <%
					  }
					%> 
                                  </select>
                                Origen
                                <select name="selector" class="style1">
                                    <!--option value="ambos">Ambos</option-->
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                                </div>
                                </label></td>
                          </tr>
                          <tr>
                            <td bgcolor="#FFFFFF" colspan="15" class="style1">&nbsp;</td>
                          </tr>
                          <tr>
                            <td bgcolor="#FFFFFF" colspan="15" class="style1">Rango de fechas del:&nbsp;&nbsp;<label>
          <input type='text' name='txtf_caduc' id='txtf_caduc' title='DD/MM/AAAA' size='10' maxlength='10' onclick='scwShow(this, event);' readonly="true" class="style1"/>
        </label><img src="calendar.jpg" width="27" height="26" border="0" onClick="scwShow(scwID('txtf_caduc'),event);"/> &nbsp;&nbsp;&nbsp;&nbsp;<label>
         al&nbsp;&nbsp;<input type='text' name='txtf_caduci' id='txtf_caduci' title='DD/MM/AAAA' size='10' maxlength='10' onclick='scwShow(this, event);' readonly="true" class="style1"/>
		 <%
		String fechaa1_jv="";
		
		      	  Connection connn = 
		      	         DriverManager.getConnection("jdbc:mysql://localhost/r_d");
		      	         Statement stmt_day = connn.createStatement();
		      			 ResultSet rset_day = stmt_day.executeQuery("SELECT DATE_FORMAT('"+fecha_1+"', '%d/%m/%Y')"); //;SELECT STR_TO_DATE('"+date_jv+"', '%m/%d/%Y')
		      	           while(rset_day.next())
		      	        	   fechaa1_jv= rset_day.getString("DATE_FORMAT('"+fecha_1+"', '%d/%m/%Y')");
						
							   
							   %>
        </label>
        <img src="calendar.jpg" width="27" height="26" border="0" onClick="scwShow(scwID('txtf_caduci'),event);"/> <input type="submit" name="Submit" value="Por Fechas" class="style1"/>
        
          <label></label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                          </tr>
                          <tr>
                            <td width="26" class="style1 style2">&nbsp;</td>
                            <td width="23" class="style1 style2">&nbsp;</td>
                            <td width="22" class="style1 style2">&nbsp;</td>
                            <td width="22" class="style1 style2">&nbsp;</td>
                            <td colspan="7" class="style1 style2">
                            <td width="22" class="style1 style2">&nbsp;</td>
                            <td width="324" colspan="2"><div align="left"></div></td>
                          </tr>
                          <tr>
                            <td class="style1 style2">&nbsp;</td>
                            <td class="style1 style2">&nbsp;</td>
                            <td class="style1 style2">&nbsp;</td>
                            <td class="style1 style2">&nbsp;</td>
                            <td width="22" class="style1 style2">&nbsp;</td>
                            <td width="22" class="style1 style2">&nbsp;</td>
                            <td width="22" class="style1 style2">&nbsp;</td>
                            <td width="22" class="style1 style2">&nbsp;</td>
                            <td width="22" class="style1 style2">&nbsp;</td>
                            <td width="22" class="style1 style2">&nbsp;</td>
                            <td width="22" class="style1 style2">&nbsp;</td>
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
                  <td width="179" nowrap bgcolor="#FFFFFF"><img src="imagenes/px.gif" width="1" height="1" alt="" border="0" /></td>
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
	&nbsp;<br />
<td width="190" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
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
