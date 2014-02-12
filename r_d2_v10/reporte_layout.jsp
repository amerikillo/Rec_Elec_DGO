<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.DecimalFormat" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% Class.forName("org.gjt.mm.mysql.Driver");
NumberFormat nf1 = NumberFormat.getInstance(Locale.US);
DecimalFormat formateador = new DecimalFormat("###,###,###.##");

Connection conn10 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
        Statement stmt__001 = conn10.createStatement();
		Statement stmt_001 = conn10.createStatement();
		ResultSet rset__001 = null;
		Statement stmt__002 = conn10.createStatement();
		ResultSet rset__002 = null;
		Statement stmt__003 = conn10.createStatement();
		ResultSet rset__003 = null;
		Statement stmt__004 = conn10.createStatement();
		ResultSet rset__004 = null;
		Statement stmt__005 = conn10.createStatement();
		ResultSet rset__005 = null;
		Statement stmt__006 = conn10.createStatement();
		ResultSet rset__006 = null;
		
		Statement stmt1 = conn10.createStatement();
		Statement stmt1_2 = conn10.createStatement();
		Statement stmt2 = conn10.createStatement();
		Statement stmt2_3 = conn10.createStatement();
		 
		Statement stmt_precio_2 = conn10.createStatement();
		Statement stmt1p = conn10.createStatement();
		Statement stmt_preciop = conn10.createStatement();
		Statement stmt_precio = conn10.createStatement();
		ResultSet rset1 = null;
		ResultSet rset1_2 = null;
		ResultSet rset2 = null;
		ResultSet rset2_3 = null;
		ResultSet rset_precio = null;
		ResultSet rset_precio_2 = null;
		ResultSet rset1p = null;
		ResultSet rset_preciop = null;
		
		ResultSet rset_001=null;
		ResultSet rset_1=null;
		
 //ResultSet rset_1 =null;
 

String llamo_cat_jv="",date1_jv="",date2_jv="",date11_jv="",date22_jv="",boton_jv="",tip_uni_jv="",date_jv="",sol="",sur="",id_med_jv="",finan_jv="",financi="",clave_re="",suma_re="",suma_rep="",precio="",preciop="",totalnew="",cv_financ2="",piezas1="",piezas3="",piezas4="",piezas5="",piezas6="",clave_uni="",piezas1m="";
int sol1=0,sur1=0,cv_med2=0,no_jv=0,suma_re2=0,suma_re2p=0,cont1=0,cont2=0,cont3=0,cont4=0,cont6=0,cont5=0,ban=0,piezas2=0,piezas2m=0;
double precio2=0.0,precio2p=0.0,total=0.0,totalp=0.0,total2=0.0,total2p=0.0,total3p=0.0,total3=0.0,total_2=0.0,total2_2=0.0,total_3=0.0,total2_3=0.0,total_4=0.0,total2_4=0.0,total_5=0.0,total2_5=0.0,total_6=0.0,total2_6=0.0,disp=7.45,iva=0.16,piezas1_1=0.0,piezas1_1_1=0.0,ptt=0.0,totalm=0.0,total2m=0.0,total3m=0.0,total4m=0.0;
double piezas1_1m=0.0,piezas1_1_1m=0.0,pttm=0.0,totalm1=0.0,total2m1=0.0,total3m1=0.0,total4m1=0.0;
double piezas1_1m1=0.0,piezas1_1_1m1=0.0,pttm1=0.0,totalm2=0.0,total2m2=0.0,total3m2=0.0,total4m2=0.0,piezas1_1m2=0.0,piezas1_1_1m2=0.0,pttm2=0.0,totalm3=0.0,total2m3=0.0,total3m3=0.0,total4m3=0.0,piezas1_1m3=0.0,piezas1_1_1m3=0.0,totalm4=0.0,total2m4=0.0,total3m4=0.0,total4m4=0.0,piezas1_1m4=0.0,piezas1_1_1m4=0.0,totalm5=0.0,total2m5=0.0,total3m5=0.0,total4m5=0.0,piezas1_1m5=0.0,piezas1_1_1m5=0.0,pttm3=0.0,pttm4=0.0,pttm5=0.0;
int piezas2m1=0,piezas2m2=0,piezas2m3=0,piezas2m4=0,piezas2m5=0,piezas2m6=0;
String piezas1m1="",piezas1m2="",piezas1m3="",piezas1m4="",piezas1m5="",piezas1m6="";
	  try {
       		llamo_cat_jv=request.getParameter("unidad");   
			boton_jv=request.getParameter("boton");   
			date1_jv=request.getParameter("f1"); 
			date2_jv=request.getParameter("f2");
			date11_jv=request.getParameter("f1"); 
			date22_jv=request.getParameter("f2");
			finan_jv=request.getParameter("finan");	   
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
	 
	 
	 String claverecetada[]= new String[5000];
	 String clavetotal[]= new String[5000];
	 String precionew[]= new String[5000];
	 String preciocv[]= new String[5000];
	 
	 preciocv[0]="";
	 precionew[0]="";
	 clavetotal[0]="";
	 //claverecetada[0]="";
	 lotes[0]="";
	 lotes2[0]="";
	 cad[0]="";
	 cad2[0]="";
     String name="";
     String service_jv="";
	 double posnew=0.0;
	 int pos=0;
	 int pos2=0;
	 int pos3=0;
	 int pos4=0;
	 //int cont2=0;
	 //int cont3=0;
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
 rset__001=stmt__001.executeQuery("select * from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='011' group by clave_uni");
 rset__002=stmt__002.executeQuery("select * from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='032' group by cv_financ");
 rset__003=stmt__003.executeQuery("select * from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='041' group by cv_financ");
 rset__004=stmt__004.executeQuery("select * from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='061' group by cv_financ");
 rset__005=stmt__005.executeQuery("select * from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='051' group by cv_financ");
 rset__006=stmt__006.executeQuery("select * from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='152' group by cv_financ");
  
				  
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
<title>:: LAYOUT ::</title>
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
<table width="1021" border="0" align="center" cellpadding="2">
  <tr>
    <td width="105"><img src="logo_dgo.jpg" width="96" height="88" /></td>
    <td height="63" colspan="2" align="center" valign="bottom" nowrap="nowrap" bgcolor="#FFFFFF" id="logo"><div align="center">
      GOBIERNO DEL ESTADO DE DURANGO<br />
      SECRETARIA DE SALUD</br>
	  TIENDAS SORIANA S.A DE C.V<br />
	  REPORTE LAYOUT GLOBAL <br />
    PERIODO: <%=date1_jv%> al <%=date2_jv%><br />
    <br />
    </div></td>
    <td width="121"><img src="soriana.jpg" width="96" height="88" /></td>
  </tr>
  
</table>
<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">

  <tr>
    <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<td height="25" colspan="7" bgcolor="#2CACAD" id="dateformat">&nbsp;&nbsp;<span class="style76">
  	  <script language="JavaScript" type="text/javascript">
      //document.write(TODAY);	</script>
      <a href="reportes.jsp" class="style76"><span class="Estilo1">Regresar a Menú</span></a></span>&nbsp;&nbsp;<span class="Estilo1">Exportar</span>&nbsp;<img src="icono_excel.gif" border="0" usemap="#Map2"/></td>
  </tr>
 <tr>
    <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    <td width="4" valign="top" bgcolor="#ffffff">
	
 	 <br />
  	&nbsp;<br />
  	&nbsp;<br />
  	&nbsp;<br /> 	</td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><form action="reporte_layout.jsp" method="post" name="form" onSubmit="javascript:return ValidateAbas(this)">
    <table width="1906" border="0" align="center">
      <tr>
        <td width="1900"><table width="2100" border="1">
		<%
   while(rset__001.next()) 
                  {
				   cont1++;
				   clave_uni=rset__001.getString("clave_uni");
				 rset1=stmt1.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='011' and id_med='MEDICAMENTO'  group by clave");
				 
				 while(rset1.next())
				 {
				 clave_re=rset1.getString("clave");
				 suma_re=rset1.getString("sum(cant_sur)");
				 suma_re2=Integer.parseInt(suma_re);
				 
				 rset_precio=stmt_precio.executeQuery("select clave,precio from precios where clave='"+clave_re+"'");
				 
					 while(rset_precio.next())
					 {
				
					 precio=rset_precio.getString("precio");
					 precio2=Double.parseDouble(precio);
					 
					 
					 
							total=precio2*suma_re2;
							total2+=total;
							//out.print(""+total);
							}
				 }
				//out.print(""+suma_re2);
				
				rset2=stmt2.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='011' and id_med='MEDICAMENTO'  group by cv_financ");
				while (rset2.next())
				{
				piezas1=rset2.getString("sum(cant_sur)");
				piezas2=Integer.parseInt(piezas1);
				}
				piezas1_1=piezas2*disp;
				piezas1_1_1=piezas1_1*0.16;
				ptt=piezas1_1+piezas1_1_1;
				  
				  //MATERIAL DE CURACION
				  
			rset1_2=stmt1_2.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='011' and id_med='MATERIAL DE CURACION'  group by clave");
				 
				 while(rset1_2.next())
				 {
				 clave_re=rset1_2.getString("clave");
				 suma_re=rset1_2.getString("sum(cant_sur)");
				 suma_re2=Integer.parseInt(suma_re);
				 
				 rset_precio_2=stmt_precio_2.executeQuery("select clave,precio from precios where clave='"+clave_re+"'");
				 
					 while(rset_precio_2.next())
					 {
				
					 precio=rset_precio_2.getString("precio");
					 precio2=Double.parseDouble(precio);
					 
					 
					 
							totalm=precio2*suma_re2;
							total2m+=totalm;
							total3m=total2m*0.16;
							total4m=total2m+total3m;
							//out.print(""+total);
							}
				 }
				//out.print(""+suma_re2);
				
				rset2_3=stmt2_3.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='011' and id_med='MATERIAL DE CURACION'  group by cv_financ");
				while (rset2_3.next())
				{
				piezas1m=rset2_3.getString("sum(cant_sur)");
				piezas2m=Integer.parseInt(piezas1m);
				}
				piezas1_1m=piezas2m*disp;
				piezas1_1_1m=piezas1_1m*0.16;
				pttm=piezas1_1m+piezas1_1_1m;	  
				  
				  
				  if(id_med_jv.equals("MEDICAMENTO")) 
				 {
				 cv_med2=2503001;
				 
				 
				 
				 
				  }else
				  {
				  cv_med2=2504001;
				  } 
				  
				  
				if (cont1>0)
				{
				
				 
					
	%>
            <tr>
              <td width="35" ><span class="style49">TAB</span></td>
              <td width="54"> <span class="style49">TAB</span></td>
              <td width="164"> <span class="style49">TIENDAS SORIANA S.A DE C.V</span></td>
              <td width="25"> <span class="style49">TAB</span></td>
              <td width="23"> <span class="style49">TAB</span></td>
              <td width="138"> <span class="style49">TAB</span></td>
              <td width="23"> <span class="style49">TAB</span></td>
              <td width="23"> <span class="style49">TAB</span></td>
              <td width="23"> <span class="style49">TAB</span></td>
              <td width="364"> <span class="style49">ABASTO CONTRATO CSIAAMMC0-131/2011.<%=rset__001.getString("cv_financ")%>&nbsp;<%=rset__001.getString("fuente")%></span></td>
			  <td width="44" align="center"><span class="style49">TAB</span></td>
			  <td width="22" align="center"><span class="style49">\%A</span></td>
			  <td width="22" align="center">&nbsp;</td>
			  <td width="22" align="center"><span class="style49"></span></td>
			  <td width="22" align="center"><span class="style49"></span></td>
			  <td width="22" align="center"><span class="style49"></span></td>
			  <td width="22" align="center"><span class="style49"></span></td>
			  <td width="22" align="center"><span class="style49"></span></td>
			  <td width="22" align="center"><span class="style49"></span></td>
			  <td width="22" align="center"><span class="style49"></span></td>
			  <td width="22" align="center"><span class="style49"></span></td>
			  <td width="22" align="center">&nbsp;</td>
			  <td width="20" align="center"><span class="style49"></span></td>
			  <td width="31" align="center"><span class="style49"></span></td>
			  <td width="44" align="center"><span class="style49"></span></td>
			  <td width="25" align="center"><span class="style49"></span></td>
			  <td width="22" align="center"><span class="style49"></span></td>
			  <td width="22" align="center"><span class="style49"></span></td>
			  <td width="23" align="center"><span class="style49"></span></td>
			  <td width="22" align="center"><span class="style49"></span></td>
			  <td width="22" align="center">&nbsp;</td>
			  <td width="52" align="center">&nbsp;</td>
			  <td width="250" align="center">&nbsp;</td>
			  <td width="45" align="center">&nbsp;</td>
			  <td width="39" align="center">&nbsp;</td>
			  <td width="33" align="center">&nbsp;</td>
			  <td width="18" align="center">&nbsp;</td>
			  <td width="18" align="center">&nbsp;</td>
			  <td width="18" align="center"><span class="style49"></span></td>
            </tr>
			
            <tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>2503001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">MEDICAMENTO</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%=formateador.format(total2)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>1-5025301-12011-151001-20701-05
			                </span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>2503001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">DISPENSACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(ptt)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(piezas1_1_1)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5025301-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>2504001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">MATERIAL DE CURACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(total4m)%></span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(total3m)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5025401-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>2504001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">DISPENSACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(pttm)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(piezas1_1_1m)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5025401-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td ><span class="style49">*SAVE</span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			<tr>
			  <td ><span class="style49">\%</span></td>
              <td> <span class="style49">*dn</span></td>
              <td><span class="style49">\+C</span></td>
              <td> <span class="style49">*SL1</span></td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  </tr>
			<tr>
              <td ><span class="style49">ENT</span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			<%}
			}
			
			%>
           
		   <%
   while(rset__002.next()) 
                  {
				  //cv_financ2=rset__001.getString("cv_financ");
				  cont2++;
				 
				  rset1=stmt1.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='032' and id_med='MEDICAMENTO' group by clave");
				 
				 while(rset1.next())
				 {
				 clave_re=rset1.getString("clave");
				 suma_re=rset1.getString("sum(cant_sur)");
				 suma_re2=Integer.parseInt(suma_re);
				 
				 rset_precio=stmt_precio.executeQuery("select clave,precio from precios where clave='"+clave_re+"'");
				 
					 while(rset_precio.next())
					 {
				
					 precio=rset_precio.getString("precio");
					 precio2=Double.parseDouble(precio);
					 
					 
					 
							total_2=precio2*suma_re2;
							total2_2+=total_2;
							//out.print(""+total);
							}
				 }
				  
				  rset2=stmt2.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='032' and id_med='MEDICAMENTO' group by cv_financ");
				while (rset2.next())
				{
				piezas1=rset2.getString("sum(cant_sur)");
				piezas2=Integer.parseInt(piezas1);
				}
				piezas1_1=piezas2*disp;
				piezas1_1_1=piezas1_1*0.16;
				ptt=piezas1_1+piezas1_1_1;
				
				
				 //MATERIAL DE CURACION
				  
			rset1_2=stmt1_2.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='032' and id_med='MATERIAL DE CURACION'  group by clave");
				 
				 while(rset1_2.next())
				 {
				 clave_re=rset1_2.getString("clave");
				 suma_re=rset1_2.getString("sum(cant_sur)");
				 suma_re2=Integer.parseInt(suma_re);
				 
				 rset_precio_2=stmt_precio_2.executeQuery("select clave,precio from precios where clave='"+clave_re+"'");
				 
					 while(rset_precio_2.next())
					 {
				
					 precio=rset_precio_2.getString("precio");
					 precio2=Double.parseDouble(precio);
					 
					 
					 
							totalm1=precio2*suma_re2;
							total2m1+=totalm1;
							total3m1=total2m1*0.16;
							total4m1=total2m1+total3m1;
							//out.print(""+total);
							}
				 }
				//out.print(""+suma_re2);
				
				rset2_3=stmt2_3.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='032' and id_med='MATERIAL DE CURACION'  group by cv_financ");
				while (rset2_3.next())
				{
				piezas1m1=rset2_3.getString("sum(cant_sur)");
				piezas2m1=Integer.parseInt(piezas1m1);
				}
				piezas1_1m1=piezas2m1*disp;
				piezas1_1_1m1=piezas1_1m1*0.16;
				pttm1=piezas1_1m1+piezas1_1_1m1;	  
				  
				
				
				
				if (cont2>0)
				{ 
					
	%>
		   <tr>
              <td ><span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TIENDAS SORIANA S.A DE C.V</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">ABASTO CONTRATO CSIAAMMC0-131/2011.<%=rset__002.getString("cv_financ")%>&nbsp;<%=rset__002.getString("fuente")%></span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">\%A</span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			
            <tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>
              2503001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">MEDICAMENTO</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%=formateador.format(total2_2)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5025301-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>2503001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">DISPENSACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(ptt)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(piezas1_1_1)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
		                    1-5025301-12011-151001-20701-05			                </span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>2504001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">MATERIAL DE CURACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(total4m1)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(total3m1)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5025401-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>2504001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">DISPENSACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(pttm1)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(piezas1_1_1m1)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5024301-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td ><span class="style49">*SAVE</span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			<tr>
			  <td ><span class="style49">\%</span></td>
              <td> <span class="style49">*dn</span></td>
              <td><span class="style49">\+C</span></td>
              <td> <span class="style49">*SL1</span></td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  </tr>
			<tr>
              <td ><span class="style49">ENT</span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			    <%
   
   }
   }
   while(rset__003.next()) 
                  {
				  //cv_financ2=rset__001.getString("cv_financ");
				  cont3++;
				 
				 rset1=stmt1.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='041' and partida='2' and id_med='MEDICAMENTO' group by clave");
				 
				 while(rset1.next())
				 {
				 clave_re=rset1.getString("clave");
				 suma_re=rset1.getString("sum(cant_sur)");
				 suma_re2=Integer.parseInt(suma_re);
				 
				 rset_precio=stmt_precio.executeQuery("select clave,precio from precios where clave='"+clave_re+"'");
				 
					 while(rset_precio.next())
					 {
				
					 precio=rset_precio.getString("precio");
					 precio2=Double.parseDouble(precio);
					 
					 
					 
							total_3=precio2*suma_re2;
							total2_3+=total_3;
							//out.print(""+total);
							}
				 }
				 
				 
				 rset2=stmt2.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='041' and id_med='MEDICAMENTO' group by cv_financ");
				while (rset2.next())
				{
				piezas1=rset2.getString("sum(cant_sur)");
				piezas2=Integer.parseInt(piezas1);
				}
				piezas1_1=piezas2*disp;
				piezas1_1_1=piezas1_1*0.16;
				ptt=piezas1_1+piezas1_1_1; 
				  
				  
				   //MATERIAL DE CURACION
				  
			rset1_2=stmt1_2.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='041' and id_med='MATERIAL DE CURACION'  group by clave");
				 
				 while(rset1_2.next())
				 {
				 clave_re=rset1_2.getString("clave");
				 suma_re=rset1_2.getString("sum(cant_sur)");
				 suma_re2=Integer.parseInt(suma_re);
				 
				 rset_precio_2=stmt_precio_2.executeQuery("select clave,precio from precios where clave='"+clave_re+"'");
				 
					 while(rset_precio_2.next())
					 {
				
					 precio=rset_precio_2.getString("precio");
					 precio2=Double.parseDouble(precio);
					 
					 
					 
							totalm2=precio2*suma_re2;
							total2m2+=totalm2;
							total3m2=total2m2*0.16;
							total4m2=total2m2+total3m2;
							//out.print(""+total);
							}
				 }
				//out.print(""+suma_re2);
				
				rset2_3=stmt2_3.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='041' and id_med='MATERIAL DE CURACION'  group by cv_financ");
				while (rset2_3.next())
				{
				piezas1m2=rset2_3.getString("sum(cant_sur)");
				piezas2m2=Integer.parseInt(piezas1m2);
				}
				piezas1_1m2=piezas2m2*disp;
				piezas1_1_1m2=piezas1_1m2*0.16;
				pttm2=piezas1_1m2+piezas1_1_1m2;	  
				  
				  
				if (cont3>0)
				{ 
				
					
	%>   
				   
			
			
			 <tr>
              <td ><span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TIENDAS SORIANA S.A DE C.V</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">ABASTO CONTRATO CSIAAMMC0-131/2011.<%=rset__003.getString("cv_financ")%>&nbsp;<%=rset__003.getString("fuente")%></span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">\%A</span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			
            <tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>2503001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">MEDICAMENTO</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%=formateador.format(total2_3)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5025301-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>2503001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">DISPENSACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(ptt)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(piezas1_1_1)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
		                    1-5025301-12011-151001-20701-05			                </span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>2504001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">MATERIAL DE CURACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(total4m2)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(total3m2)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5025401-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>2504001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">DISPENSACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(pttm2)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(piezas1_1_1m2)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5025401-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td ><span class="style49">*SAVE</span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			<tr>
			  <td ><span class="style49">\%</span></td>
              <td> <span class="style49">*dn</span></td>
              <td><span class="style49">\+C</span></td>
              <td> <span class="style49">*SL1</span></td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  </tr>
			<tr>
              <td ><span class="style49">ENT</span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			
			 <%
   
   }
   }
   while(rset__004.next()) 
                  {
				  //cv_financ2=rset__001.getString("cv_financ");
				  cont4++;
				 
				  rset1=stmt1.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='061' and id_med='MEDICAMENTO' group by clave");
				 
				 while(rset1.next())
				 {
				 clave_re=rset1.getString("clave");
				 suma_re=rset1.getString("sum(cant_sur)");
				 suma_re2=Integer.parseInt(suma_re);
				 
				 rset_precio=stmt_precio.executeQuery("select clave,precio from precios where clave='"+clave_re+"'");
				 
					 while(rset_precio.next())
					 {
				
					 precio=rset_precio.getString("precio");
					 precio2=Double.parseDouble(precio);
					 
					 
					 
							total_4=precio2*suma_re2;
							total2_4+=total_4;
							//out.print(""+total);
							}
				 }
				  
				  
				  
				  
				  rset2=stmt2.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='061' and id_med='MEDICAMENTO' group by cv_financ");
				while (rset2.next())
				{
				piezas1=rset2.getString("sum(cant_sur)");
				piezas2=Integer.parseInt(piezas1);
				}
				piezas1_1=piezas2*disp;
				piezas1_1_1=piezas1_1*0.16;
				pttm3=piezas1_1+piezas1_1_1;
				
				 //MATERIAL DE CURACION
				  
			rset1_2=stmt1_2.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='061' and id_med='MATERIAL DE CURACION'  group by clave");
				 
				 while(rset1_2.next())
				 {
				 clave_re=rset1_2.getString("clave");
				 suma_re=rset1_2.getString("sum(cant_sur)");
				 suma_re2=Integer.parseInt(suma_re);
				 
				 rset_precio_2=stmt_precio_2.executeQuery("select clave,precio from precios where clave='"+clave_re+"'");
				 
					 while(rset_precio_2.next())
					 {
				
					 precio=rset_precio_2.getString("precio");
					 precio2=Double.parseDouble(precio);
					 
					 
					 
							totalm3=precio2*suma_re2;
							total2m3+=totalm3;
							total3m3=total2m3*0.16;
							total4m3=total2m3+total3m3;
							//out.print(""+total);
							}
				 }
				//out.print(""+suma_re2);
				
				rset2_3=stmt2_3.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='061' and id_med='MATERIAL DE CURACION'  group by cv_financ");
				while (rset2_3.next())
				{
				piezas1m3=rset2_3.getString("sum(cant_sur)");
				piezas2m3=Integer.parseInt(piezas1m2);
				}
				piezas1_1m3=piezas2m3*disp;
				piezas1_1_1m3=piezas1_1m3*0.16;
				pttm3=piezas1_1m3+piezas1_1_1m3;	  
				  
				  
				if (cont4>0)
				{ 
					
	%>   
			
			
			
			
			 <tr>
              <td ><span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TIENDAS SORIANA S.A DE C.V</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">ABASTO CONTRATO CSIAAMMC0-131/2011.<%=rset__004.getString("cv_financ")%>&nbsp;<%=rset__004.getString("fuente")%></span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">\%A</span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			
            <tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>
                2503001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">MEDICAMENTO</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%=formateador.format(total2_4)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5025301-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>
                2503001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">DISPENSACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(ptt)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(piezas1_1_1)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5025301-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%=cv_med2%>2504001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">MATERIAL DE CURACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(total4m3)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(total3m3)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5025401-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>
                2504001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">DISPENSACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(pttm3)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(piezas1_1_1m3)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                1-5025401-12011-151001-20701-05</span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td ><span class="style49">*SAVE</span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			<tr>
			  <td ><span class="style49">\%</span></td>
              <td> <span class="style49">*dn</span></td>
              <td><span class="style49">\+C</span></td>
              <td> <span class="style49">*SL1</span></td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  </tr>
			<tr>
              <td ><span class="style49">ENT</span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			
			 <%
   
   }
   }
   while(rset__005.next()) 
                  {
				  //cv_financ2=rset__001.getString("cv_financ");
				  cont5++;
				 
				 
				 rset1=stmt1.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='051' and id_med='MEDICAMENTO' group by clave");
				 
				 while(rset1.next())
				 {
				 clave_re=rset1.getString("clave");
				 suma_re=rset1.getString("sum(cant_sur)");
				 suma_re2=Integer.parseInt(suma_re);
				 
				 rset_precio=stmt_precio.executeQuery("select clave,precio from precios where clave='"+clave_re+"'");
				 
					 while(rset_precio.next())
					 {
				
					 precio=rset_precio.getString("precio");
					 precio2=Double.parseDouble(precio);
					 
					 
					 
							total_5=precio2*suma_re2;
							total2_5+=total_5;
							//out.print(""+total);
							}
				 }
				  
				  
				  rset2=stmt2.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='051' and id_med='MEDICAMENTO' group by cv_financ");
				while (rset2.next())
				{
				piezas1=rset2.getString("sum(cant_sur)");
				piezas2=Integer.parseInt(piezas1);
				}
				piezas1_1=piezas2*disp;
				piezas1_1_1=piezas1_1*0.16;
				pttm4=piezas1_1+piezas1_1_1;
				
				
				
				 //MATERIAL DE CURACION
				  
			rset1_2=stmt1_2.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='051' and id_med='MATERIAL DE CURACION'  group by clave");
				 
				 while(rset1_2.next())
				 {
				 clave_re=rset1_2.getString("clave");
				 suma_re=rset1_2.getString("sum(cant_sur)");
				 suma_re2=Integer.parseInt(suma_re);
				 
				 rset_precio_2=stmt_precio_2.executeQuery("select clave,precio from precios where clave='"+clave_re+"'");
				 
					 while(rset_precio_2.next())
					 {
				
					 precio=rset_precio_2.getString("precio");
					 precio2=Double.parseDouble(precio);
					 
					 
					 
							totalm4=precio2*suma_re2;
							total2m4+=totalm4;
							total3m4=total2m4*0.16;
							total4m4=total2m4+total3m4;
							//out.print(""+total);
							}
				 }
				//out.print(""+suma_re2);
				
				rset2_3=stmt2_3.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='051' and id_med='MATERIAL DE CURACION'  group by cv_financ");
				while (rset2_3.next())
				{
				piezas1m4=rset2_3.getString("sum(cant_sur)");
				piezas2m4=Integer.parseInt(piezas1m4);
				}
				piezas1_1m4=piezas2m4*disp;
				piezas1_1_1m4=piezas1_1m4*0.16;
				pttm4=piezas1_1m4+piezas1_1_1m4;	  
				  
				  
				if (cont5>0)
				{ 
				
					
	%>   
			
			
			
			
			 <tr>
              <td ><span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TIENDAS SORIANA S.A DE C.V</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">ABASTO CONTRATO CSIAAMMC0-131/2011.<%=rset__005.getString("cv_financ")%>&nbsp;<%=rset__005.getString("fuente")%></span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">\%A</span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			
            <tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>
                2503001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">MEDICAMENTO</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%=formateador.format(total2_5)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>1-5025301-12011-151001-20701-05
			                </span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>
                2503001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">DISPENSACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(ptt)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(piezas1_1_1)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>1-5025301-12011-151001-20701-05
			                </span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>
                2504001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">MATERIAL DE CURACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(total4m4)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(total3m4)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>1-5025401-12011-151001-20701-05
			                </span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>
                2504001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">DISPENSACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(pttm4)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(piezas1_1_1m4)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>
			                  1-5025401-12011-151001-20701-05
			                </span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td ><span class="style49">*SAVE</span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			<tr>
			  <td ><span class="style49">\%</span></td>
              <td> <span class="style49">*dn</span></td>
              <td><span class="style49">\+C</span></td>
              <td> <span class="style49">*SL1</span></td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  </tr>
			<tr>
              <td ><span class="style49">ENT</span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			 <%
   
   }
   }
   while(rset__006.next()) 
                  {
				  //cv_financ2=rset__001.getString("cv_financ");
				  cont6++;
				 
				  rset1=stmt1.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='152' and id_med='MEDICAMENTO' group by clave");
				 
				 while(rset1.next())
				 {
				 clave_re=rset1.getString("clave");
				 suma_re=rset1.getString("sum(cant_sur)");
				 suma_re2=Integer.parseInt(suma_re);
				 
				 rset_precio=stmt_precio.executeQuery("select clave,precio from precios where clave='"+clave_re+"'");
				 
					 while(rset_precio.next())
					 {
				
					 precio=rset_precio.getString("precio");
					 precio2=Double.parseDouble(precio);
					 
					 
					 
							total_6=precio2*suma_re2;
							total2_6+=total_6;
							//out.print(""+total);
							}
				 }
				  
				  
				  rset2=stmt2.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='152' and id_med='MEDICAMENTO' group by cv_financ");
				while (rset2.next())
				{
				piezas1=rset2.getString("sum(cant_sur)");
				piezas2=Integer.parseInt(piezas1);
				}
				piezas1_1=piezas2*disp;
				piezas1_1_1=piezas1_1*0.16;
				pttm5=piezas1_1+piezas1_1_1;
				  
				  
				   //MATERIAL DE CURACION
				  
			rset1_2=stmt1_2.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='152' and id_med='MATERIAL DE CURACION'  group by clave");
				 
				 while(rset1_2.next())
				 {
				 clave_re=rset1_2.getString("clave");
				 suma_re=rset1_2.getString("sum(cant_sur)");
				 suma_re2=Integer.parseInt(suma_re);
				 
				 rset_precio_2=stmt_precio_2.executeQuery("select clave,precio from precios where clave='"+clave_re+"'");
				 
					 while(rset_precio_2.next())
					 {
				
					 precio=rset_precio_2.getString("precio");
					 precio2=Double.parseDouble(precio);
					 
					 
					 
							totalm5=precio2*suma_re2;
							total2m5+=totalm5;
							total3m5=total2m5*0.16;
							total4m5=total2m5+total3m5;
							//out.print(""+total);
							}
				 }
				//out.print(""+suma_re2);
				
				rset2_3=stmt2_3.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='152' and id_med='MATERIAL DE CURACION'  group by cv_financ");
				while (rset2_3.next())
				{
				piezas1m5=rset2_3.getString("sum(cant_sur)");
				piezas2m5=Integer.parseInt(piezas1m5);
				}
				piezas1_1m5=piezas2m5*disp;
				piezas1_1_1m5=piezas1_1m5*0.16;
				pttm5=piezas1_1m5+piezas1_1_1m5;	  
				  
				  
				if (cont6>0)
				{ 
				
					
	%>   
			
			
			 <tr>
              <td ><span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TIENDAS SORIANA S.A DE C.V</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">TAB</span></td>
              <td> <span class="style49">ABASTO CONTRATO CSIAAMMC0-131/2011.<%=rset__006.getString("cv_financ")%>&nbsp;<%=rset__006.getString("fuente")%></span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">\%A</span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			
            <tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>
                2503001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">MEDICAMENTO</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%=formateador.format(total2_6)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>1-5025301-12011-151001-20701-05
			                </span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>
                2503001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">DISPENSACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(ptt)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(piezas1_1_1)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>1-5025301-12011-151001-20701-05
			                </span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>
                2504001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">MATERIAL DE CURACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(total4m5)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(total3m5)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>1-5025401-12011-151001-20701-05
			                </span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">Servicios</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49"><%//=cv_med2%>
                2504001</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">DISPENSACION</span></td>
              <td><span class="style49">TAB</span></td>
              <td><span class="style49">
                <%=formateador.format(pttm5)%>
              </span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
              <td align="center"><span class="style49">TAB</span></td>
			  <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49"><%=formateador.format(piezas1_1_1m5)%></span></td>
			                <td align="center"><span class="style49">\%A</span></td>
			                <td align="center"><span class="style49">\%N</span></td>
			                <td align="center"><span class="style49">\%D</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">TAB</span></td>
			                <td align="center"><span class="style49">\%C</span></td>
			                <td align="center"><span class="style49">
			                  <%//=rset__001.getString("layout")%>1-5025401-12011-151001-20701-05
			                </span></td>
			                <td align="center"><span class="style49">*SL1</span></td>
			                <td align="center"><span class="style49">*SAVE</span></td>
			                <td align="center"><span class="style49">*SL2.3</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*PB</span></td>
			                <td align="center"><span class="style49">*DN</span></td>
            </tr>
			<tr>
              <td ><span class="style49">*SAVE</span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>
			<tr>
			  <td ><span class="style49">\%</span></td>
              <td> <span class="style49">*dn</span></td>
              <td><span class="style49">\+C</span></td>
              <td> <span class="style49">*SL1</span></td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  </tr>
			<tr>
              <td ><span class="style49">ENT</span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center"><span class="style49"></span></td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td align="center"><span class="style49"></span></td>
            </tr>	 
				 <%
				 }
				 }
				 %>  
				   
          </table>
            </td>
        
      </tr>
    </table>
    </form>   
	  
	  <div align="center"></div>
	  </td>
    
       
	
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
<%

    }
%>
<map name="Map" id="Map">
<area shape="poly" coords="241,165" href="#" />
<area shape="poly" coords="230,40,231,88,270,43" href="#" />
</map>
<map name="Map2" id="Map2">
  <area shape="rect" coords="4,2,31,28" href="repor_layout.jsp?f1=<%=date11_jv%>&f2=<%=date22_jv%>&boton=Show ALL&finan=<%=finan_jv%>" />
</map>
</body>
</html>
