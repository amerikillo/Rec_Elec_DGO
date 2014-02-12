<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% 

        


 Statement stmt__001 = null;
 ResultSet rset__001 = null;
 Statement stmt__002 = null;
 ResultSet rset__002 = null;


  
/*---------parametros para la conexion*/
Connection conexion=null;
    String mensaje="";
   /*parametros para la conexion*/
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/r_d";
    String usuario = "root";
    String pass2 = "eve9397";
/*procedimiento de la conexion*/
    try{
         Class.forName(driver);
    conexion = DriverManager.getConnection(url,usuario,pass2);
     
	    stmt__001 = conexion.createStatement();
		stmt__002 = conexion.createStatement();
		
	
	 
	 
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


// Variables de entorno
		
 String llamo_cat_jv="",date1_jv="",date2_jv="",date11_jv="",date22_jv="",boton_jv="",tip_uni_jv="",date_jv="",sol="",sur="",org_jv="",precio="",org1_jv="",clave="";
 
 int sol1=0,sur1=0,folio_re2=0;
 int altaOK=0;
 int altaOKAY=0;	 
 String but="r";
 
// fin variables de entorno
// Se obtienen los valores pasados como parametro por el URL
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
	   
   try { 
        but=""+request.getParameter("Submit");
       }catch(Exception e){System.out.print("not");}

rset__001 = stmt__001.executeQuery("SELECT STR_TO_DATE('"+date1_jv+"', '%d/%m/%Y')"); 
                    while(rset__001.next()){
                    date1_jv= rset__001.getString("STR_TO_DATE('"+date1_jv+"', '%d/%m/%Y')");
					}
rset__001 = stmt__001.executeQuery("SELECT STR_TO_DATE('"+date2_jv+"', '%d/%m/%Y')"); 
                    while(rset__001.next()){
                    date2_jv= rset__001.getString("STR_TO_DATE('"+date2_jv+"', '%d/%m/%Y')");
					}
					
// Se borran los datos de la tabla dinámica
stmt__001.execute("delete from compras;");
// ------ fin borrar					
					
					
// se ingresa a la tabla compras las coincidencias de receta y receta colectiva
stmt__001.execute("insert into compras select clave,descrip,sum(cant_sol),sum(cant_sur) from receta where unidad='"+llamo_cat_jv+"' and fecha_re between '"+date1_jv+"' and '"+date2_jv+"' group by clave union all select clave,descrip,sum(cant_sol),sum(cant_sur) from receta_colectiva where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and unidad='"+llamo_cat_jv+"' group by clave;");
// --- fin proceso					
					
		if(boton_jv.equals("Show ALL"))
	{
 rset__001=stmt__001.executeQuery("select clave,descrip,sum(cant_sol),sum(cant_sur) from compras group by clave+0");
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
<script language="javascript" src="file:///C|/Program Files/Apache Group/Tomcat 4.1/webapps/r_n_v2/list02.js"></script>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>:: REPORTE VENTAS ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="file:///C|/Program Files/Apache Group/Tomcat 4.1/webapps/r_n_v2/mm_travel2.css" type="text/css" />
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
 
</p>
<table width="618" border="0" align="center" cellpadding="2">
  <tr>
    <td width="102"><img src="logo_salud.jpg" width="142" height="72" /></td>
    <td height="63" colspan="2" align="center" valign="bottom" nowrap="nowrap" bgcolor="#FFFFFF" id="logo"><div align="center">
     <span class="style49">	GOBIERNO DEL ESTADO DE DURANGO<br />
	 SECRETARIA DE SALUD<br />
	  TIENDAS SORIANA S.A DE C.V<br />
	  REPORTE PARA COMPRAS<br />SOLICITADO CONTRA SURTIDO<br />
    DE LA UNIDAD: <%=llamo_cat_jv%><br />
    PERIODO: <%=date1_jv%> al <%=date2_jv%><br /></span>
  
    </div></td>
    <td width="103"><img src="logo_dgo.jpg" width="126" height="76" /></td>
  </tr>
  
</table>
<table width="40%" border="0" align="center" cellpadding="0" cellspacing="0">

  <tr>
    <td colspan="7" bgcolor="#003366"><img src="file:///C|/Program Files/Apache Group/Tomcat 4.1/webapps/r_n_v2/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<td height="25" colspan="7" bgcolor="#009999" id="dateformat">&nbsp;&nbsp;<span class="style76">
  	  <script language="JavaScript" type="text/javascript">
      //document.write(TODAY);	</script>
      <a href="menu_compras.jsp" class="style76"><span class="Estilo1">Regresar a Menú</span></a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Estilo1">REPORTE PARA REPOSICI&Oacute;N / VENTAS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="icono_excel.gif" width="37" height="29" usemap="#Map" border="0" /></span></td>
  </tr>
 <tr>
    <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    
    <td colspan="2" valign="top"><form action="reporte_com.jsp" method="post" name="form" onSubmit="javascript:return ValidateAbas(this)">
    <table width="618" border="0" align="center">
      <tr>
        <td width="418"><table width="612" border="1">
            <tr>
              
              
              
              
              <td width="56" align="center"> <span class="style49">Clave  </span></td>
              <td width="193" align="center"> <span class="style49">Descripci&oacute;n</span></td>
              
         	  <td width="31" align="center"> <span class="style49">Amp. </span></td>
              <td width="31" align="center"> <span class="style49">Cant. Sol </span></td>
              <td width="44" align="center"> <span class="style49">Cant. Sur</span></td>
			  
			  
			  
			
			  
			
            </tr>
			<%
            while(rset__001.next())
			  {
			  int ampu=1;
			  int cant_sol=0;
			  int cant_sur=0;
			  rset__002=stmt__002.executeQuery("select cant from pasti_ampu where clave = '"+rset__001.getString("clave")+"' ");
			  while(rset__002.next()){
			  	ampu= Integer.parseInt(rset__002.getString("cant"));
			  }
			  cant_sol = (Integer.parseInt(rset__001.getString("sum(cant_sol)")))/ampu;
			  cant_sur = (Integer.parseInt(rset__001.getString("sum(cant_sur)")))/ampu;
			  
			  sol1+=cant_sol;
			  sur1+=cant_sur;
			  
             %>
            <tr>
              <td align="center"><span class="style49"><%=rset__001.getString("clave")%></span></td>
              <td><span class="style49"><%=rset__001.getString("descrip")%></span></td>
              
             
              <td align="center"><span class="style49"><%=ampu%></span></td>
			  <td align="center"><span class="style49"><%=cant_sol%></span></td>
              <td align="center"><span class="style49"><%=cant_sur%></span></td>
			  
	 		</tr>
			 <%
			 
			  }
             %>
            <tr>
              
              
              
              
              <td class="style49" align="center">&nbsp;</td>
			  <td class="style49" align="center">&nbsp;</td>
              <td class="style49" align="right">PIEZAS</td>
              <td class="style49" align="center"><%=sol1%></td>
			  <td class="style49" align="center"><%=sur1%></td>
			  
		
            </tr>

           
            
           
			
            
            
            
            
            
          </table>
            </td>
       
      </tr>
    </table>
    </form>   
	  
	 
</table>
        </div></td>
        </tr>
    </table>    </td>
<td width="4">&nbsp;</td>
        <td width="6" valign="top"><br />
	&nbsp;<br /></td>
	<td width="96">&nbsp;</td>
  </tr>
<tr>
    <td width="4">&nbsp;</td>
    <td width="68">&nbsp;</td>
    <td width="27">&nbsp;</td>
    <td width="1036">&nbsp;</td>
    <td width="4">&nbsp;</td>
    <td width="6">&nbsp;</td>
	<td width="96">&nbsp;</td>
  </tr>
</table>



<map name="Map" id="Map">
  <area shape="rect" coords="2,5,36,28" href="excel_compras.jsp?unidad=<%=llamo_cat_jv%>&f1=<%=date11_jv%>&f2=<%=date22_jv%>&boton=Show ALL" />
</map>
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
