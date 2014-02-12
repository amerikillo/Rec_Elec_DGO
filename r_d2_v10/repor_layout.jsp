<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.DecimalFormat" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">
<% 
Class.forName("org.gjt.mm.mysql.Driver");
NumberFormat nf1 = NumberFormat.getInstance(Locale.US);
DecimalFormat formateador = new DecimalFormat("###,###,###.##");

Connection conn__001 = null;
Statement stmt__001 = null;
Statement stmt_001 = null;
ResultSet rset__001= null;
ResultSet rset_001= null;
int no_jv=0,cv_med2=0,piezas2m1=0,piezas2m2=0,piezas2m3=0,piezas2m4=0,piezas2m5=0,piezas2m6=0;
double precio2=0.0,precio2p=0.0,total=0.0,totalp=0.0,total2=0.0,total2p=0.0,total3p=0.0,total3=0.0,total_2=0.0,total2_2=0.0,total_3=0.0,total2_3=0.0,total_4=0.0,total2_4=0.0,total_5=0.0,total2_5=0.0,total_6=0.0,total2_6=0.0,disp=7.45,iva=0.16,piezas1_1=0.0,piezas1_1_1=0.0,ptt=0.0,totalm=0.0,total2m=0.0,total3m=0.0,total4m=0.0;
double piezas1_1m1=0.0,piezas1_1_1m1=0.0,pttm1=0.0,totalm2=0.0,total2m2=0.0,total3m2=0.0,total4m2=0.0,piezas1_1m2=0.0,piezas1_1_1m2=0.0,pttm2=0.0,totalm3=0.0,total2m3=0.0,total3m3=0.0,total4m3=0.0,piezas1_1m3=0.0,piezas1_1_1m3=0.0,totalm4=0.0,total2m4=0.0,total3m4=0.0,total4m4=0.0,piezas1_1m4=0.0,piezas1_1_1m4=0.0,totalm5=0.0,total2m5=0.0,total3m5=0.0,total4m5=0.0,piezas1_1m5=0.0,piezas1_1_1m5=0.0,pttm3=0.0,pttm4=0.0,pttm5=0.0,piezas1_1m=0.0,piezas1_1_1m=0.0,pttm=0.0,totalm1=0.0,total2m1=0.0,total3m1=0.0,total4m1=0.0;


String llamo_cat_jv="",recibe_jv="",boton_jv="",date1_jv="",date2_jv="",finan_jv="",financi="",id_med_jv="",piezas1m1="",piezas1m2="",piezas1m3="",piezas1m4="",piezas1m5="",piezas1m6="";
  try{
        date2_jv=request.getParameter("f2");
		date1_jv=request.getParameter("f1");   
		boton_jv=request.getParameter("boton"); 
		recibe_jv=request.getParameter("execu");  
		  llamo_cat_jv=request.getParameter("unidad");
		finan_jv=request.getParameter("finan");
		 
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
		 
		 if (finan_jv.equals("032"))
		{
		financi="SEGURO POPULAR";
		no_jv=12031;
		}else if(finan_jv.equals("041"))
		{
		financi="OPORTUNIDADES";
		no_jv=12041;
		}else if(finan_jv.equals("061"))
		{
		financi="GASTO CATASTRÓFICOS";
		no_jv=12061;
		}else if(finan_jv.equals("011"))
		{
		financi="FASSA";
		no_jv=12011;
		}else if(finan_jv.equals("051"))
		{
		financi="SMNG";
		no_jv=12051;
		}else if(finan_jv.equals("152"))
		{
		financi="ASE";
		no_jv=12152;
		}

conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
stmt__001 = conn__001.createStatement();
stmt_001= conn__001.createStatement();

Statement stmt__002 = conn__001.createStatement();
		ResultSet rset__002 = null;
		Statement stmt__003 = conn__001.createStatement();
		ResultSet rset__003 = null;
		Statement stmt__004 = conn__001.createStatement();
		ResultSet rset__004 = null;
		Statement stmt__005 = conn__001.createStatement();
		ResultSet rset__005 = null;
		Statement stmt__006 = conn__001.createStatement();
		ResultSet rset__006 = null;
		ResultSet rset1=null;
		Statement stmt1 = conn__001.createStatement();
		ResultSet rset_preciop = null;
		ResultSet rset_precio = null;
		Statement stmt_precio = conn__001.createStatement();
		ResultSet rset2 = null;
		Statement stmt2 = conn__001.createStatement();
		ResultSet rset1_2 = null;
		Statement stmt1_2 = conn__001.createStatement();
		Statement stmt_precio_2 = conn__001.createStatement();
		ResultSet rset_precio_2 = null;
		ResultSet rset2_3 = null;
		Statement stmt2_3 = conn__001.createStatement();
		
		
int cont1=0,cont2=0,cont3=0,cont4=0,cont6=0,cont5=0,ban=0,piezas2=0,piezas2m=0,suma_re2=0,suma_re2p=0;
String clave_uni="",clave_re="",suma_re="",suma_rep="",precio="",preciop="",totalnew="",cv_financ2="",piezas1="",piezas3="",piezas4="",piezas5="",piezas6="",piezas1m="";		
String id_jv="";
String na_jv="";	 
String date_jv="";
String execu_jv="";
String cont_jv="";
String pot_jv="";
String ori_jv="";
String dest_jv="";
String obs_jv="";
String next_jv="";
String a_jv="EXECUTE";
String b_jv="DATE";
//String financi="";

response.setContentType("application/vnd.ms-excel");
response.setHeader("Content-Disposition","attachment;filename=LAYOUT "+financi+".xls");
%>
<head>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 11">
<link rel=File-List href="CENSITOSMMMMM_archivos/filelist.xml">
<link rel=Edit-Time-Data href="CENSITOSMMMMM_archivos/editdata.mso">
<link rel=OLE-Object-Data href="CENSITOSMMMMM_archivos/oledata.mso">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
x\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]--><!--[if gte mso 9]><xml>
 <o:DocumentProperties>
  <o:Author> RICARDO HERNANDEZ WENCE</o:Author>
  <o:LastAuthor> RICARDO HERNANDEZ WENCE</o:LastAuthor>
  <o:LastPrinted>2009-09-04T17:35:32Z</o:LastPrinted>
  <o:Created>2009-09-03T22:48:47Z</o:Created>
  <o:LastSaved>2009-09-04T17:37:50Z</o:LastSaved>
  <o:Version>11.5606</o:Version>
 </o:DocumentProperties>
</xml><![endif]-->
<style>
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
@page
	{margin:.98in .79in .98in .79in;
	mso-header-margin:0in;
	mso-footer-margin:0in;
	mso-page-orientation:landscape;}
tr
	{mso-height-source:auto;}
col
	{mso-width-source:auto;}
br
	{mso-data-placement:same-cell;}
.style0
	{mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	white-space:nowrap;
	mso-rotate:0;
	mso-background-source:auto;
	mso-pattern:auto;
	color:windowtext;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	border:none;
	mso-protection:locked visible;
	mso-style-name:Normal;
	mso-style-id:0;}
td
	{mso-style-parent:style0;
	padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial;
	mso-generic-font-family:auto;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border:none;
	mso-background-source:auto;
	mso-pattern:auto;
	mso-protection:locked visible;
	white-space:nowrap;
	mso-rotate:0;}
.xl24
	{mso-style-parent:style0;
	color:white;
	font-size:8.0pt;
	font-weight:700;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	text-align:center;
	background:black;
	mso-pattern:auto none;}
.xl25
	{mso-style-parent:style0;
	font-size:8.0pt;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	text-align:center;}
.xl26
	{mso-style-parent:style0;
	color:white;
	font-weight:700;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	background:black;
	mso-pattern:auto none;}
.xl27
	{mso-style-parent:style0;
	font-weight:700;
	font-family:Arial, sans-serif;
	mso-font-charset:0;}
.xl28
	{mso-style-parent:style0;
	text-align:right;}
.xl29
	{mso-style-parent:style0;
	text-align:left;}
.xl30
	{mso-style-parent:style0;
	text-decoration:underline;
	text-underline-style:single;}
.xl31
	{mso-style-parent:style0;
	border:1.0pt solid windowtext;}
.xl32
	{mso-style-parent:style0;
	text-align:center;}
.xl33
	{mso-style-parent:style0;
	color:white;
	text-align:center;
	background:black;
	mso-pattern:auto none;}
.xl34
	{mso-style-parent:style0;
	color:white;
	font-weight:700;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	text-align:center;
	background:black;
	mso-pattern:auto none;}
.xl35
	{mso-style-parent:style0;
	text-align:center;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;}
.xl36
	{mso-style-parent:style0;
	text-align:center;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:none;}
.xl37
	{mso-style-parent:style0;
	text-align:center;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;}
.xl38
	{mso-style-parent:style0;
	font-size:18.0pt;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	text-align:center;}
.style5 {font-family: Arial, Helvetica, sans-serif; font-size: 12; }
.style49 {font-size: x-small; font-family: Arial, Helvetica, sans-serif; font-weight: bold; }
-->
</style>
<!--[if gte mso 9]><xml>
 <x:ExcelWorkbook>
  <x:ExcelWorksheets>
   <x:ExcelWorksheet>
    <x:Name>Hoja1</x:Name>
    <x:WorksheetOptions>
     <x:DefaultColWidth>10</x:DefaultColWidth>
     <x:Print>
      <x:ValidPrinterInfo/>
      <x:HorizontalResolution>600</x:HorizontalResolution>
      <x:VerticalResolution>600</x:VerticalResolution>
     </x:Print>
     <x:Selected/>
     <x:Panes>
      <x:Pane>
       <x:Number>3</x:Number>
       <x:ActiveRow>2</x:ActiveRow>
       <x:ActiveCol>5</x:ActiveCol>
      </x:Pane>
     </x:Panes>
     <x:ProtectContents>False</x:ProtectContents>
     <x:ProtectObjects>False</x:ProtectObjects>
     <x:ProtectScenarios>False</x:ProtectScenarios>
    </x:WorksheetOptions>
   </x:ExcelWorksheet>
   <x:ExcelWorksheet>
    <x:Name>Hoja2</x:Name>
    <x:WorksheetOptions>
     <x:DefaultColWidth>10</x:DefaultColWidth>
     <x:ProtectContents>False</x:ProtectContents>
     <x:ProtectObjects>False</x:ProtectObjects>
     <x:ProtectScenarios>False</x:ProtectScenarios>
    </x:WorksheetOptions>
   </x:ExcelWorksheet>
   <x:ExcelWorksheet>
    <x:Name>Hoja3</x:Name>
    <x:WorksheetOptions>
     <x:DefaultColWidth>10</x:DefaultColWidth>
     <x:ProtectContents>False</x:ProtectContents>
     <x:ProtectObjects>False</x:ProtectObjects>
     <x:ProtectScenarios>False</x:ProtectScenarios>
    </x:WorksheetOptions>
   </x:ExcelWorksheet>
  </x:ExcelWorksheets>
  <x:WindowHeight>8700</x:WindowHeight>
  <x:WindowWidth>18795</x:WindowWidth>
  <x:WindowTopX>120</x:WindowTopX>
  <x:WindowTopY>120</x:WindowTopY>
  <x:ProtectStructure>False</x:ProtectStructure>
  <x:ProtectWindows>False</x:ProtectWindows>
 </x:ExcelWorkbook>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1026"/>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1"/>
 </o:shapelayout></xml><![endif]-->
</head>

<body link=blue vlink=purple>
<p>
  <%

rset_001 = stmt_001.executeQuery("SELECT STR_TO_DATE('"+date1_jv+"', '%d/%m/%Y')"); 
                    while(rset_001.next()){
                    date1_jv= rset_001.getString("STR_TO_DATE('"+date1_jv+"', '%d/%m/%Y')");
					}
rset_001 = stmt_001.executeQuery("SELECT STR_TO_DATE('"+date2_jv+"', '%d/%m/%Y')"); 
                    while(rset_001.next()){
                    date2_jv= rset_001.getString("STR_TO_DATE('"+date2_jv+"', '%d/%m/%Y')");
					}
		 		 
		 //System.out.print(""+recibe_jv);
		 
	//rset__001=stmt__001.executeQuery("select * from t_rep where execu='Julio Bellota' ");
  	 //System.out.print("unidad"+folgnk_bus_jv);
	if((boton_jv.equals("EXECUTIVE")))
	{
	
	 
  	 rset__001=stmt__001.executeQuery("select * from t_rep where execu='"+recibe_jv+"' ");
	}
	if(boton_jv.equals("DATE"))
	{
 rset__001=stmt__001.executeQuery("select * from t_rep where execu='"+recibe_jv+"'  and date between '"+date1_jv+"' and '"+date2_jv+"' ");
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
if(boton_jv.equals("null"))
	{
 rset__001=stmt__001.executeQuery("select * from t_rep ");
	}
	if(boton_jv.equals("Show Client´s Data"))
	{
 rset__001=stmt__001.executeQuery("select * from t_rep where name='"+llamo_cat_jv+"' ");
	}
%>
</p>

<table width="2100" cellpadding="3" cellspacing="1" border="0" >
   
  
 <%
   while(rset__001.next()) 
                  {
				   cont1++;
				   clave_uni=rset__001.getString("clave_uni");
				 rset1=stmt1.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='011' and id_med='MEDICAMENTO' and clave_uni='"+clave_uni+"' group by clave");
				 
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
				
				rset2=stmt2.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='011' and id_med='MEDICAMENTO' and clave_uni='"+clave_uni+"' group by cv_financ");
				while (rset2.next())
				{
				piezas1=rset2.getString("sum(cant_sur)");
				piezas2=Integer.parseInt(piezas1);
				}
				piezas1_1=piezas2*disp;
				piezas1_1_1=piezas1_1*0.16;
				ptt=piezas1_1+piezas1_1_1;
				  
				  //MATERIAL DE CURACION
				  
			rset1_2=stmt1_2.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='011' and id_med='MATERIAL DE CURACION' and clave_uni='"+clave_uni+"' group by clave");
				 
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
				
				rset2_3=stmt2_3.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='011' and id_med='MTERIAL DE CURACION' and clave_uni='"+clave_uni+"' group by cv_financ");
				while (rset2_3.next())
				{
				piezas1m=rset2_3.getString("sum(cant_sur)");
				piezas2m=Integer.parseInt(piezas1m);
				}
				piezas1_1m=piezas2m*disp;
				piezas1_1_1m=piezas1_1m*0.16;
				pttm=piezas1_1m+piezas1_1_1m;	  
				  
				  
				  
				  
				  
				if (cont1>0)
				{
				
				 if(id_med_jv.equals("MEDICAMENTO")) 
				 {
				 cv_med2=2503001;
				 
				 
				 
				 
				  }else
				  {
				  cv_med2=2504001;
				  } 
					
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
              <td><span class="style49"><%//=cv_med2%>
              2503001</span></td>
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
              <td><span class="style49"><%//=cv_med2%>
              2504001</span></td>
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
              <td><span class="style49"><%//=cv_med2%>
              2504001</span></td>
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
				  
			rset1_2=stmt1_2.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='032' and id_med='MATERIAL DE CURACION' and clave_uni='"+clave_uni+"' group by clave");
				 
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
				
				rset2_3=stmt2_3.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='032' and id_med='MTERIAL DE CURACION' and clave_uni='"+clave_uni+"' group by cv_financ");
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
              <td><span class="style49"><%//=cv_med2%>
              2504001</span></td>
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
              <td><span class="style49"><%//=cv_med2%>
              2504001</span></td>
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
				  
			rset1_2=stmt1_2.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='041' and id_med='MATERIAL DE CURACION' and clave_uni='"+clave_uni+"' group by clave");
				 
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
				
				rset2_3=stmt2_3.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='041' and id_med='MTERIAL DE CURACION' and clave_uni='"+clave_uni+"' group by cv_financ");
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
              <td><span class="style49"><%//=cv_med2%>
              2503001</span></td>
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
              <td><span class="style49"><%//=cv_med2%>
              2504001</span></td>
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
              <td><span class="style49"><%//=cv_med2%>
              2504001</span></td>
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
				  
			rset1_2=stmt1_2.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='061' and id_med='MATERIAL DE CURACION' and clave_uni='"+clave_uni+"' group by clave");
				 
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
				
				rset2_3=stmt2_3.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='061' and id_med='MTERIAL DE CURACION' and clave_uni='"+clave_uni+"' group by cv_financ");
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
              <td><span class="style49"><%//=cv_med2%>
              2504001</span></td>
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
				  
			rset1_2=stmt1_2.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='051' and id_med='MATERIAL DE CURACION' and clave_uni='"+clave_uni+"' group by clave");
				 
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
				
				rset2_3=stmt2_3.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='051' and id_med='MTERIAL DE CURACION' and clave_uni='"+clave_uni+"' group by cv_financ");
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
				  
			rset1_2=stmt1_2.executeQuery("select clave,sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and partida='2' and cv_financ='152' and id_med='MATERIAL DE CURACION' and clave_uni='"+clave_uni+"' group by clave");
				 
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
				
				rset2_3=stmt2_3.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' and cv_financ='152' and id_med='MTERIAL DE CURACION' and clave_uni='"+clave_uni+"' group by cv_financ");
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
<p>&nbsp;</p>
</body>

</html>
