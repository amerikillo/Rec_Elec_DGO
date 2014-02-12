<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date" errorPage="" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% Class.forName("org.gjt.mm.mysql.Driver");
NumberFormat nf1 = NumberFormat.getInstance(Locale.US);
DecimalFormat formateador = new DecimalFormat("###,###,###.##");
Connection conn10 = DriverManager.getConnection("jdbc:mysql://localhost/r_d", "root", "eve9397");
        Statement stmt__001 = conn10.createStatement();
		Statement stmt__001m = conn10.createStatement();
		Statement stmt_001 = conn10.createStatement();
		Statement stmt__002 = conn10.createStatement();
		Statement stmt_4 = conn10.createStatement();
		ResultSet rset__001 = null;
		ResultSet rset_001=null;
		ResultSet rset_1=null;
		ResultSet rset_2=null;
		ResultSet rset_7 = null;
 //ResultSet rset_1 =null;
 

String llamo_cat_jv="",date1_jv="",date2_jv="",date11_jv="",date22_jv="",boton_jv="",tip_uni_jv="",date_jv="",sol="",sur="",org_jv="",precio="",present="",sur11="",partida_jv="",servicio_jv="",org1_jv="";
int sol1=0,sur1=0,resto=0,resto_jv=0,total3=0,present2=0,multi=0,total2=0,sur222=0,folio_re2=0,sur223=0,present22=0;
double total=0.0,present1=0.0,sur22=0.0;
	  try {
       		llamo_cat_jv=request.getParameter("unidad");   
			boton_jv=request.getParameter("boton");   
			date1_jv=request.getParameter("f1"); 
			date2_jv=request.getParameter("f2");
			date11_jv=request.getParameter("f1"); 
			date22_jv=request.getParameter("f2");
			org_jv=request.getParameter("org");	   
	org1_jv=request.getParameter("org");	   
	  } catch (Exception e) { }
 
 if(org1_jv.equals("1"))
{
org1_jv="SSD";
}
if (org1_jv.equals("2")){
org1_jv="SORIANA";
}

if(org1_jv.equals("3"))
{
org1_jv="DONACIÓN";
}
     

     int tam=0,tam2=0,x1=0;
     String cad1[]=new String[1000];  //array for show clients 
     String arr[]= new String[5000];     //array for the 
	 String lotes[]= new String[5000];
	 String lotes2[]= new String[5000];
	 String lotes3[]= new String[5000];
	 String exis[]= new String[5000];
	 
	 String cie[]= new String[5000];
	 
	 String cad[]= new String[5000];
	 String cad2[]= new String[5000];
	 String cad3[]= new String[5000];
	 String censo[]=new String[1000];
	 String censo2[]=new String[1000];
	 lotes[0]="";
	 lotes2[0]="";
	 cad[0]="";
	 cad2[0]="";
     String name="";
     String service_jv="";
	 int pos=0;
	 int pos2=0;
	 int pos3=0;
	 int cont2=0;
	 int cont3=0;
     String mail[]=new String[10];
	 String meses[]=new String[12];
	 meses[0]="Enero";
	 meses[1]="Febrero";
	 meses[2]="Marzo";
	 meses[3]="Abril";
	 meses[4]="Marzo";
	 meses[5]="Abril";
	 meses[6]="Mayo";
	 meses[7]="Junio";
	 meses[8]="Julio";
	 meses[9]="Agosto";
	 meses[10]="Septiembre";
	 meses[11]="Octubre";
	 meses[0]="Noviembre";
	 meses[1]="Diciembre";
	 
     int altaOK=0;
     int altaOKAY=0;	 
     String but="r";
	 String but_juris="e";
	 String clave="";

     String juris_jv="";
	 //String juris2_jv="";
     String cs_jv="";
	 String lotes2_jv="";
	 
	 String check=request.getParameter("txtf_5");
	 int c=0;
	 int tam_3=0;
	 mail[0]="lasalle_tur@yahoo.com";
     String val="h";
	 String user="h";
	 //variables para mostrar en campos
	    String clave_jv= "";
		String desc_jv=  "";
	    String lote_jv= "";
		String cadu_jv= "";
		String exis_jv= "";
		String costo_jv= "";
int cont=1;
//Rutina para obtener las claves 
	 
	 

try{
        altaOK=Integer.parseInt(request.getParameter("altaok"));   
       }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
	   
   try { 
        but=""+request.getParameter("Submit");
        but_juris=""+request.getParameter("option1");
		
		//altaOK="no";
    }catch(Exception e){System.out.print("not");}



	  
%>
<%
rset_001 = stmt_001.executeQuery("SELECT STR_TO_DATE('"+date1_jv+"', '%d/%m/%Y')"); 
                    while(rset_001.next()){
                    date1_jv= rset_001.getString("STR_TO_DATE('"+date1_jv+"', '%d/%m/%Y')");
					}
rset_001 = stmt_001.executeQuery("SELECT STR_TO_DATE('"+date2_jv+"', '%d/%m/%Y')"); 
                    while(rset_001.next()){
                    date2_jv= rset_001.getString("STR_TO_DATE('"+date2_jv+"', '%d/%m/%Y')");
					}
					
		if(boton_jv.equals("Show ALL"))
	{
 rset__001=stmt__001.executeQuery("select servicio,clave,descrip,partida,cant_sol,cant_sur,fecha_re,folio_re,sum(cant_sur) from receta_colectiva where unidad='"+llamo_cat_jv+"' and fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='"+org_jv+"' and tipo_receta='rc' group by (clave)");
	}

%>



<% java.util.Calendar currDate = new java.util.GregorianCalendar();
   // add 1 to month because Calendar's months start at 0, not 1
   int month = currDate.get(currDate.MONTH)+1;
   int day = currDate.get(currDate.DAY_OF_MONTH);
   int year = currDate.get(currDate.YEAR);
   
   String date=" "+year;
   date= date+"/"+month;
   date= date+"/"+day;  
  // out.println(altaOK);
 
%>


<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<script language="javascript" src="list02.js"></script>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>:: REPORTE DIARIO SALIDA POR COLECTIVA ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_travel2.css" type="text/css" />
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------

//<script language="javascript" src="list02.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #000000;
	font-weight: bold;
}
.style33 {font-size: x-small}
.style40 {font-size: 9px}
.style41 {font-size: 9}
.style42 {font-family: Arial, Helvetica, sans-serif}
.style32 {font-size: x-small; font-family: Arial, Helvetica, sans-serif; }
.style43 {
	font-size: x-small;
	color: #FFFFFF;
	font-weight: bold;
}
.style47 {font-size: x-small; font-weight: bold; }
.style49 {font-size: x-small; font-family: Arial, Helvetica, sans-serif; font-weight: bold; }
.style50 {color: #000000}
.style51 {color: #BA236A}
.style58 {font-size: x-small; font-weight: bold; color: #666666; }
.style66 {font-size: x-small; font-weight: bold; color: #333333; }
a:hover {
	color: #333333;
}
.style68 {color: #CCCCCC}
.style75 {color: #333333; }
a:link {
	color: #711321;
}
.style76 {color: #003366}
.style77 {
	color: #711321;
	font-weight: bold;
}
.Estilo1 {color: #FFFFFF}
-->
</style>
</head>
<body bgcolor="#ffffff" onload="fillCategory2()">
<p>
  <%
    
	 if (altaOK==0)
       { 
	  
      
%>
</p>
<table width="451" border="0" align="center" cellpadding="2">
  <tr>
    <td width="96"><img src="logo_dgo.jpg" width="87" height="81" /></td>
    <td height="63" colspan="2" align="center" valign="bottom" nowrap="nowrap" bgcolor="#FFFFFF" id="logo"><div align="center"><span class="style40"><span class="style49">
      GOBIERNO DEL ESTADO DE DURANGO<br />
      SECRETARIA DE SALUD</br>
	  TIENDAS SORIANA S.A DE C.V<br />
	  REPORTE DETALLADO DE CONSUMO POR RECETA <br />
    DE LA UNIDAD: <%=llamo_cat_jv%><br />
    PERIODO: <%=date1_jv%> al <%=date2_jv%></span><br />
    <br />
    </div></td>
    <td width="126"><img src="soriana.jpg" width="72" height="73" /></td>
  </tr>
  
</table>
<table width="29%" border="0" align="center" cellpadding="0" cellspacing="0">

  <tr>
    <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<td height="25" colspan="6" bgcolor="#2CACAD" id="dateformat">&nbsp;&nbsp;<span class="style76">
  	  <script language="JavaScript" type="text/javascript">
      //document.write(TODAY);	</script>
      <a href="reportes_colectiva.jsp" class="style76"><span class="Estilo1">Regresar a Menú</span></a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Estilo1">ORIGEN <%=org1_jv%></span></td>
  </tr>
 <tr>
    <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    
    <td colspan="2" valign="top"><form action="reporte_recol2.jsp" method="post" name="form" onSubmit="javascript:return ValidateAbas(this)">
    <table width="427" border="0" align="center">
      <tr>
        <td width="418"><table width="432" border="1">
            <tr>
              
              <td width="54"><span class="style49">Servicio</span></td>
              
              <td width="63"><span class="style49">Clave Articulo</span></td>
              <td width="104"><span class="style49">Descripci&oacute;n</span></td>
              <td width="36"><span class="style49">Total piezas</span></td>
              <td width="43"><span class="style49">Presen- taci&oacute;n</span></td>
         
              <td width="30"><span class="style49">Total a Cobrar </span></td>
              <td width="56"> <p class="style49">Piezas Pr&oacute;ximas a Cobrar </p>                </td>
            </tr>
			<%
			present="1";
			  while(rset__001.next()) 
                  {	
				  	
				  clave= rset__001.getString("clave");
				  partida_jv= rset__001.getString("partida");
				  servicio_jv= rset__001.getString("servicio");
				  date_jv=rset__001.getString("fecha_re");
				  Connection conn = 
                  DriverManager.getConnection("jdbc:mysql://localhost/r_d", "root", "eve9397");
                  Statement stmt_date = conn.createStatement();
				  ResultSet rset_date = stmt_date.executeQuery("SELECT DATE_FORMAT('"+date_jv+"', '%d/%m/%Y')"); //;SELECT STR_TO_DATE('"+date_jv+"', '%m/%d/%Y')
                    while(rset_date.next())
					
                    date_jv= rset_date.getString("DATE_FORMAT('"+date_jv+"', '%d/%m/%Y')");
					
				  
				  rset_7=stmt_4.executeQuery("select cant from pasti_ampu where clave='"+clave+"' group by clave;");
					while(rset_7.next())
					{
					present=rset_7.getString("cant");
					present22=Integer.parseInt(present);
					
					}
					present1=Double.parseDouble(present);
					present2=Integer.parseInt(present);
					//out.print(""+present2);
					sur11=rset__001.getString("sum(cant_sur)");
					sur22=Double.parseDouble(sur11);
					sur222=Integer.parseInt(sur11);
					
					if(present2==0)
					{
					present="1";
					present2=1;
					}
					
					total3=sur222/present2;
					multi=total3*present2;
					resto=sur222-multi;
					
					total2+=total3;
					resto_jv+=resto;
					//out.print(""+total3+"="+sur222+"/"+present2);
					rset_1=stmt__001m.executeQuery("select servicio,clave,descrip,partida,cant_sol,cant_sur,fecha_re,folio_re,sum(cant_sur) from receta_colectiva where unidad='"+llamo_cat_jv+"' and fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='"+partida_jv+"' and clave ='"+clave+"' and tipo_receta='rc'  group by (clave),servicio");
			while(rset_1.next()) 
                  {
				 
  				  sur=rset_1.getString("sum(cant_sur)");
				  sur1= Integer.parseInt(sur);
				  		
				 sur223+=sur1;
					
					
					
	%>
            <tr>
             
              <td><span class="style49"><%=rset_1.getString("servicio")%></span></td>
              
              <td><div align="center"><span class="style49"><%=rset_1.getString("clave")%></span></div></td>
              <td><span class="style49"><%=rset_1.getString("descrip")%></span></td>
                <td><div align="center"><span class="style49"><%=rset_1.getString("sum(cant_sur)")%></span></div></td>
              <td align="center"><div align="center"></div></td><td align="center"><div align="center"></div></td><td align="center"><div align="center"></div></td>         </tr>
			
            <tr>
              <%}%>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td><div align="right"><span class="style49">TOTAL</span></div></td>
              <td><div align="center"><span class="style49"><%=(present2*total3)+resto%></span></div></td>
              <td class="style49" align="center"><div align="center"><%=present%></div></td>
              <td class="style49" align="center"><div align="center"><%=formateador.format(total3)%></div></td>
              <td class="style49" align="center"><div align="center"><%=resto%></div></td>
            </tr>
			 <%
			
			present="1";
			}
			%><%
			
			/*	  
				  
rset_2=stmt__002.executeQuery("select count(folio_re) from receta_colectiva where unidad='"+llamo_cat_jv+"' and fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='"+org_jv+"' and tipo_receta='rc' group by folio_re");
			while(rset_2.next()) 
                  {
				  folio_re2++;
				  		
				  }*/
				  

				  
			%>
           
            <tr>
              <td colspan="8">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="3">               <div align="left"><span class="style49">TOTAL DISPENSADO=&nbsp;<%=formateador.format(total2)%></span></div> <div align="left"></div></td>
              <td colspan="4"><span class="style49">TOTAL PENDIENTE POR COBRAR=&nbsp;<%=formateador.format(resto_jv)%></span></td>
              </tr>
            <tr>
              <td colspan="8">&nbsp;</td>
              </tr>
            <tr>
              
              <td colspan="8"><div align="center"><span class="style49">NOMBRE Y FIRMA DEL FILTRO DE LA SSD</span></div></td>
              </tr>
            
            <%//}%>
           
			
            
            
            
            
            
          </table>
            
    </table>
    </form>   
	  
	  <div align="center"></div>
	  </td>
    
        
	
  </tr>
  
</table>
<%

    }
%>
<map name="Map" id="Map">
<area shape="poly" coords="241,165" href="#" />
<area shape="poly" coords="230,40,231,88,270,43" href="#" />
</map>
</body>
</html>
