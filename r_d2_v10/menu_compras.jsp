<%@page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date"  import="java.text.NumberFormat" import="java.util.Locale" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<% 

 Statement stmt02 = null;
 Statement stmt1 = null;
 Statement stmt_d = null;
 ResultSet rset_d = null;
 Statement stmt_day = null;
 ResultSet rset_day = null;
  ResultSet rset_200 = null;
 Statement stmt_min_max=null;

  
/*---------parametros para la conexion*/
Connection conexion=null;
    String mensaje="";
   /*parametros para la conexion*/
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/r_d";
    String usuario = "root";
    String pass = "eve9397";
/*procedimiento de la conexion*/
    try{
         Class.forName(driver);
    conexion = DriverManager.getConnection(url,usuario,pass);
     
	    stmt1 = conexion.createStatement();
		stmt_d = conexion.createStatement();
		stmt_day = conexion.createStatement();
		stmt02 = conexion.createStatement();
		stmt_min_max = conexion.createStatement();
	
	 
	 
         /*guardando la conexion en la session*/
        session.setAttribute("conexion",conexion);
       } catch (Exception ex){
        mensaje=ex.toString();
    }
    mensaje="conectado";
    if(conexion.isClosed()){
        mensaje="desconectado";
    }
//-----FIN PARAMETROS -----------


int anio1_jv=0,mes1_jv=0,dia1_jv=0,anio2_jv=0,mes2_jv=0,dia2_jv=0,fecha_t1=0,fecha_t2=0;
String  anio1F_jv="",	mes1F_jv="",	dia1F_jv="",	anio2F_jv="",	mes2F_jv="",	dia2F_jv="",	anio1C_jv="",	mes1C_jv="",	dia1C_jv="",	anio2C_jv="",	mes2C_jv="",	dia2C_jv="";
int anio1F1_jv=0,	mes1F1_jv=0,	dia1F1_jv=0,	anio2F1_jv=0,	mes2F1_jv=0,	dia2F1_jv=0,	anio1C1_jv=0,	mes1C1_jv=0,	dia1C1_jv=0,	anio2C1_jv=0,	mes2C1_jv=0,	dia2C1_jv=0;


       
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
	 int ban=0,afi=0;
	 int ban_cur=0;

	 int cont=0;
	 try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}
	 
	 /*
	 rset_200 = stmt_min_max.executeQuery("SELECT YEAR(min(RF.FECHA_RE)) AS anio1F,MONTH(Min(RF.FECHA_RE)) AS mes1F ,DAY(Min(RF.FECHA_RE)) AS dia1F,YEAR(MAX(RF.FECHA_RE)) AS anio2F,MONTH(MAX(RF.FECHA_RE)) AS mes2F ,DAY(MAX(RF.FECHA_RE)) AS dia2F,YEAR(min(RC.FECHA_RE)) AS anio1C,MONTH(Min(RC.FECHA_RE)) AS mes1C ,DAY(Min(RC.FECHA_RE)) AS dia1C,YEAR(MAX(RC.FECHA_RE)) AS anio2C,MONTH(MAX(RC.FECHA_RE)) AS mes2C ,DAY(MAX(RC.FECHA_RE)) AS dia2C FROM receta RF, receta_colectiva RC ;");
	  
	  while(rset_200.next())
	  {
		  
		anio1F_jv=rset_200.getString("anio1F");
		mes1F_jv=rset_200.getString("mes1F");
		dia1F_jv=rset_200.getString("dia1F");
		anio2F_jv=rset_200.getString("anio2F");
		mes2F_jv=rset_200.getString("mes2F");
		dia2F_jv=rset_200.getString("dia2F");
		anio1C_jv=rset_200.getString("anio1C");
		mes1C_jv=rset_200.getString("mes1C");
		dia1C_jv=rset_200.getString("dia1C");
		anio2C_jv=rset_200.getString("anio2C");
		mes2C_jv=rset_200.getString("mes2C");
		dia2C_jv=rset_200.getString("dia2C");
		
		anio1F1_jv=Integer.parseInt(anio1F_jv);
		mes1F1_jv=Integer.parseInt(mes1F_jv);
		dia1F1_jv=Integer.parseInt(dia1F_jv);
		anio2F1_jv=Integer.parseInt(anio2F_jv);
		mes2F1_jv=Integer.parseInt(mes2F_jv);
		dia2F1_jv=Integer.parseInt(dia2F_jv);
		
		anio1C1_jv=Integer.parseInt(anio1C_jv);
		mes1C1_jv=Integer.parseInt(mes1C_jv);
		dia1C1_jv=Integer.parseInt(dia1C_jv);
		anio2C1_jv=Integer.parseInt(anio2C_jv);
		mes2C1_jv=Integer.parseInt(mes2C_jv);
		dia2C1_jv=Integer.parseInt(dia2C_jv);

		
		if(anio1F1_jv<=anio1C1_jv)
		{
			anio1_jv=anio1F1_jv;
		}else{
			anio1_jv=anio1C1_jv;
		}
		if(mes1F1_jv<=mes1C1_jv)
		{
			mes1_jv=mes1F1_jv;
			dia1_jv=dia1F1_jv;
		}else{
			mes1_jv=mes1C1_jv;
			dia1_jv=dia1C1_jv;
		}
		
		
		if(anio2F1_jv>=anio2C1_jv)
		{
			anio2_jv=anio2F1_jv;
		}else{
			anio2_jv=anio2C1_jv;
		}
		if((mes2F1_jv>mes2C1_jv) || (dia2F1_jv>dia2C1_jv))
		{
			mes2_jv=mes2F1_jv;
			dia2_jv=dia2F1_jv;
		}else{
			mes2_jv=mes2C1_jv;
			dia2_jv=dia2C1_jv;
		}
		
  
	
	  }

*/

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
		   fecha_2= request.getParameter("txtf_caduci");
		    unidad_jv=request.getParameter("select");
		 
		   
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
		 
		 
		 out.print("mes1:"+month+"mes2:"+month2+"año1:"+years+"año2:"+years2);
		 if( (month>=1 && (years>=113 || years<=108))  || (month2>=11 && (years2>=113 || years<=108)) )
		     {bancom=4;}
		
   				  rset_d = stmt_d.executeQuery("select MAX(fecha_re) from receta;"); 
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

		 		  rset_day = stmt_day.executeQuery("SELECT STR_TO_DATE('"+fecha_1+"', '%d/%m/%Y')"); 
                    while(rset_day.next()){
                    fecha_1= rset_day.getString("STR_TO_DATE('"+fecha_1+"', '%d/%m/%Y')");
					}
	       rset_day = stmt_day.executeQuery("SELECT STR_TO_DATE('"+fecha_2+"', '%d/%m/%Y')"); 
                    while(rset_day.next()){
                    fecha_2= rset_day.getString("STR_TO_DATE('"+fecha_2+"', '%d/%m/%Y')"); }
					//select sum(costo),sum(uni) from xjurisixt1 where fecha between '2009-06-10' and '2009-06-12'; 
   					  if(month2>=13 && years2==114)
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

 if(unidad_jv.equals("-----------------------Escoja un unidad-------------------------"))
{
%>
<script>
alert("FAVOR DE SELECCIONAR UNA UNIDAD");
</script>
<%	
}else
{	
if(!(fecha_1.equals("")) && !(fecha_2.equals("")))

{
				  	
					reporte_jv=request.getParameter("reporte");
					unidad_jv=request.getParameter("select");
					fecha_1_jv=request.getParameter("txtf_caduc");
					fecha_2_jv=request.getParameter("txtf_caduci");
					finan_jv=request.getParameter("finan");
					//org_jv=request.getParameter("selector");
					
					//out.print(""+reporte_jv);
					 if((reporte_jv.equals("rf")) && (!(org_jv.equals("ambos"))))
					{
					%>
					<script>
				self.location='reporte_com.jsp?reporte=<%=reporte_jv%>&unidad=<%=unidad_jv%>&f1=<%=fecha_1_jv%>&f2=<%=fecha_2_jv%>&org=<%=org_jv%>&boton=Show ALL';
					</script>
					
					<%
					}
                }
					 
			}
				  
%>


<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>:: Reporte para Compras ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_health_nutr.css" type="text/css" />
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septimbre","Octubre","Noviembre","Diciembre");
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
    <td colspan="2" bgcolor="#FFFFFF"><img src="logo_salud.jpg" /></td>
    <td height="50" colspan="3" align="center" valign="bottom" nowrap="nowrap" bgcolor="#FFFFFF" id="logo"><div align="right">
      <table width="721" border="0" align="left" cellpadding="2">
        <tr>
          <td width="509"><div align="center" class="style5 style6">SISTEMA REPORTEADOR COMPRAS</div></td>
          <td width="198" height="67"><img src="logo_dgo.jpg" width="123" height="123"  /></td>
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
                      <p align="center"><img src="logo_soriana2.jpg" width="191" height="55" /></p>
                  </div></td>
                </tr>
                <tr>
                  <td width="4" nowrap bgcolor="#FFFFFF">&nbsp;</td>
                  <td width="5" bgcolor="#FFFFFF">&nbsp;</td>
                  <td width="453"><div align="center">
                      <table width="555" border="0" align="center" cellpadding="2" cellspacing="3">
                        <form action="menu_compras.jsp" method="post" >
                          <tr>
                            <td colspan="14"><div id="item21" style="display:none" align="justify" >
                                <input type="text" name="txtf_hf" id="txtf_hf" size="10" readonly="true"/>
                            </div></td>
                          </tr>
                          <tr>
                            <td colspan="14" class="style1"><div align="left"><a href="index_compras.jsp">Regresar a Menú</a></div></td>
                          </tr>
                          <tr>
                            <td colspan="14" class="style1" >Tipo de Reporte: 
                              
                                 
                          
                              
                            
                              <input name="reporte" type="radio" value="rf" checked="checked" />
                            COMPRAS  </td>
                            <td colspan="2" >&nbsp;</td>
                          </tr>
                          <tr>
                            <td colspan="2" align="right"><span class="style1"><span class="style2">Unidad</span></span>:</td>
                            <td colspan="12" align="right" class="style1"><div align="left"></div>
                              <label>
                              <div align="left">
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
                          </div>                              </label></td>
                          </tr>
                          <tr>
                            <td bgcolor="#FFFFFF" colspan="15" class="style1">Rango de fechas del:&nbsp;&nbsp;<label>
                  <input name="txtf_caduc" type="text" id="txtf_caduc" size="10" readonly title="dd/mm/aaaa">
                  </label> <img src="calendar.jpg" width="26" height="27" border="0" onClick="scwShow(scwID('txtf_caduc'), event)" />                 &nbsp;&nbsp;&nbsp;&nbsp;
                  <label> al&nbsp;&nbsp;
                  <input name="txtf_caduci" type="text" id="txtf_caduci" size="10" readonly title="dd/mm/aaaa"> <img src="calendar.jpg" width="26" height="27" border="0" onClick="scwShow(scwID('txtf_caduci'), event)" />
                  </label>                  &nbsp;&nbsp;&nbsp;&nbsp;<label>
                    <%
		String fechaa1_jv="";
		String fechaa2_jv="";
		      	   rset_day = stmt_day.executeQuery("SELECT DATE_FORMAT('"+fecha_1+"', '%d/%m/%Y')"); //;SELECT STR_TO_DATE('"+date_jv+"', '%m/%d/%Y')
		      	           while(rset_day.next())
		      	        	   fechaa1_jv= rset_day.getString("DATE_FORMAT('"+fecha_1+"', '%d/%m/%Y')");
						rset_day = stmt_day.executeQuery("SELECT DATE_FORMAT('"+fecha_2+"', '%d/%m/%Y')"); //;SELECT STR_TO_DATE('"+date_jv+"', '%m/%d/%Y')
		      	           while(rset_day.next())
		      	        	   fechaa2_jv= rset_day.getString("DATE_FORMAT('"+fecha_2+"', '%d/%m/%Y')");
							   
							   %>
        </label>
                  <input type="submit" name="Submit" value="Por Fechas" class="style1"/>
        
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
                  <td width="194" nowrap bgcolor="#FFFFFF"><img src="imagenes/px.gif" width="1" height="1" alt="" border="0" /></td>
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
   <link rel="stylesheet" href="themes/base/jquery.ui.all.css">
	<script src="jquery-1.9.0.js"></script>
	<script src="ui/jquery.ui.core.js"></script>
	<script src="ui/jquery.ui.widget.js"></script>
	<script src="ui/i18n/jquery.ui.datepicker-es.js"></script>
	<script src="ui/jquery.ui.datepicker.js"></script>
	<link rel="stylesheet" href="demos.css">
	<script>
//--FUNCIÓN PARA EL CALENDARIO SOLO SE VISUALIZA LA FECHA MINIMA Y MAXIMA SELECCIONADA ANTERIORMENTE	
	$(function() {
	
	var año1=<%=anio1_jv%>;
	var mes1=<%=mes1_jv%>;
	var dia1=<%=dia1_jv%>;
	var año2=<%=anio2_jv%>;
	var mes2=<%=mes2_jv%>;
	var dia2=<%=dia2_jv%>;
	var ft1=<%=dia1_jv%>+"/"+<%=mes1_jv%>+"/"+<%=anio1_jv%>;
	
	
		$( "#datepicker" ).datepicker({
			//defaultDate: "+1w",
			changeMonth: true,
			changeYear: true,
			showOn: "button",
			buttonImage: "calendar.gif",
			buttonImageOnly: true,
			//numberOfMonths: 1,
			defaultDate: ft1,
			minDate:new Date(año1, mes1 - 1, dia1),
			//maxDate: '+0m',
			maxDate:new Date(año2, mes2 - 1, dia2)
		});
		$( "#datepicker1" ).datepicker({
			//defaultDate: "+1w",
			changeMonth: true,
			changeYear: true,
			showOn: "button",
			buttonImage: "calendar.gif",
			buttonImageOnly: true,
			//numberOfMonths: 1,
			minDate:new Date(año1, mes1 - 1, dia1),
			//maxDate: '+0m',
			maxDate:new Date(año2, mes2 - 1, dia2)
		});
	});
  
  </script>
</table>
<%  //----- CIERRE DE LAS CONEXIONES  ------
      try{

conexion.close();
   
    }catch (Exception e) {
                  mensaje=e.toString();
                }
finally { 
if (conexion!=null) {

conexion.close();
                
                 if(conexion.isClosed()){

        mensaje="desconectado";}


      }
}   
//---FIN -----         
%>
	

</body>
</html>
