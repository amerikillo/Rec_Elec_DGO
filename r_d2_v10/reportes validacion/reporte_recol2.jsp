<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="errorbusglob.html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% Class.forName("org.gjt.mm.mysql.Driver");
Connection conn10 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
        Statement stmt__001 = conn10.createStatement();
		Statement stmt_001 = conn10.createStatement();
		Statement stmt_4 = conn10.createStatement();
		ResultSet rset__001 = null;
		ResultSet rset_001=null;
		ResultSet rset_1=null;
		ResultSet rset_7 = null;
 //ResultSet rset_1 =null;
 

String llamo_cat_jv="",date1_jv="",date2_jv="",date11_jv="",date22_jv="",boton_jv="",tip_uni_jv="",date_jv="",sol="",sur="",org_jv="",precio="";
int sol1=0,sur1=0;
	  try {
       		llamo_cat_jv=request.getParameter("unidad");   
			boton_jv=request.getParameter("boton");   
			date1_jv=request.getParameter("f1"); 
			date2_jv=request.getParameter("f2");
			date11_jv=request.getParameter("f1"); 
			date22_jv=request.getParameter("f2");
			org_jv=request.getParameter("org");	   
	  } catch (Exception e) { }
 

     

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
 rset__001=stmt__001.executeQuery("select servicio,clave,descrip,partida,sum(cant_sol),sum(cant_sur),fecha_re from receta where unidad='"+llamo_cat_jv+"' and fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='"+org_jv+"' and tipo_receta='rc' group by (servicio),clave order by (clave+0)");
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
<title>:: CAPTURA DE CENSOS ::</title>
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
  	<td height="25" colspan="7" bgcolor="#2CACAD" id="dateformat">&nbsp;&nbsp;<span class="style76">
  	  <script language="JavaScript" type="text/javascript">
      //document.write(TODAY);	</script>
      <a href="reportes.jsp" class="style76"><span class="Estilo1">Regresar a Menú</span></a></span>&nbsp;</td>
  </tr>
 <tr>
    <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    
    <td colspan="2" valign="top"><form action="reporte_recol2.jsp" method="post" name="form" onSubmit="javascript:return ValidateAbas(this)">
    <table width="427" border="0" align="center">
      <tr>
        <td width="418"><table width="421" border="1">
            <tr>
              
              <td> <span class="style49">Servicio</span></td>
              <td> <span class="style49">Clave Articulo </span></td>
              <td> <span class="style49">Descripci&oacute;n</span></td>
              <td> <span class="style49">Costo Unitario </span></td>
         <td> <span class="style49">Origen</span></td>
              <td> <span class="style49">Cant. Sol </span></td>
              <td> <span class="style49">Cant. Sur</span></td>
            </tr>
			<%
    while(rset__001.next()) 
                  {		
				   clave= rset__001.getString("clave");
				  date_jv=rset__001.getString("fecha_re");
				  Connection conn = 
                  DriverManager.getConnection("jdbc:mysql://localhost/r_d");
                  Statement stmt_date = conn.createStatement();
				  ResultSet rset_date = stmt_date.executeQuery("SELECT DATE_FORMAT('"+date_jv+"', '%d/%m/%Y')"); //;SELECT STR_TO_DATE('"+date_jv+"', '%m/%d/%Y')
                    while(rset_date.next())
					
                    date_jv= rset_date.getString("DATE_FORMAT('"+date_jv+"', '%d/%m/%Y')");
					
					rset_7=stmt_4.executeQuery("select precio from precios where clave='"+clave+"' group by clave;");
					while(rset_7.next())
					{
					precio=rset_7.getString("precio");
					}			
				  
					
	%>
            <tr>
              
              <td><span class="style49"><%=rset__001.getString("servicio")%></span></td>
              <td><span class="style49"><%=rset__001.getString("clave")%></span></td>
              <td><span class="style49"><%=rset__001.getString("descrip")%></span></td>
              <td align="center"><span class="style49"><%=precio%></span></td>
              <td align="center"><span class="style49"><%=rset__001.getString("partida")%></span></td>
              <td align="center"><span class="style49"><%=rset__001.getString("sum(cant_sol)")%></span></td>
              <td align="center"><span class="style49"><%=rset__001.getString("sum(cant_sur)")%></span></td>
            </tr>
			<%}
			rset_1=stmt__001.executeQuery("select sum(cant_sol),sum(cant_sur) from receta where unidad='"+llamo_cat_jv+"' and fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='"+org_jv+"' and tipo_receta='rc'");
			while(rset_1.next()) 
                  {
				  sol=rset_1.getString("sum(cant_sol)");
				  sol1= Integer.parseInt(sol);
  				  sur=rset_1.getString("sum(cant_sur)");
				  sur1= Integer.parseInt(sur);
				  		
				  }
			%>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td class="style49" align="center">TOTAL</td>
              <td class="style49" align="center">&nbsp;</td>
              <td class="style49" align="center"><%=sol1%></td>
              <td class="style49" align="center"><%=sur1%></td>
            </tr>
            <tr>
              <td colspan="7">&nbsp;</td>
              </tr>
            <tr>
              
              <td colspan="7"><div align="center"><span class="style49">NOMBRE Y FIRMA DEL FILTRO DE LA SSD</span></div></td>
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
