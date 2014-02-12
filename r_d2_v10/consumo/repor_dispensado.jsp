<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">
<% 
Class.forName("org.gjt.mm.mysql.Driver");

Connection conn__001 = null;
Statement stmt__001 = null;
Statement stmt__002 = null;
ResultSet rset__001= null;
ResultSet rset__002= null;

String llamo_cat_jv="";
  try{
        llamo_cat_jv=request.getParameter("uni");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }

String recibe_jv="";
  try{
        recibe_jv=request.getParameter("execu");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
		 
String boton_jv="";
  try{
        boton_jv=request.getParameter("boton");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
		 
String date1_jv="";
  try{
        date1_jv=request.getParameter("date1");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
		 
String date2_jv="";
  try{
        date2_jv=request.getParameter("date2");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }

conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
stmt__001 = conn__001.createStatement();
stmt__002 = conn__001.createStatement();

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

String  totPzs="",totPzs1="";
int cant_pzs=0,cant_pzs1=0;

response.setContentType("application/vnd.ms-excel");
response.setHeader("Content-Disposition","attachment; filename=CONSUMO DIARIO RECETA FARMACIA.xls");
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


		 		 
		 //System.out.print(""+recibe_jv);
		 
	//rset__001=stmt__001.executeQuery("select * from datos_inv_cod where execu='Julio Bellota' ");
  	 //System.out.print("unidad"+folgnk_bus_jv);
	
	if(boton_jv.equals("Show ALL"))
	{
	
	if (date1_jv==null && date2_jv==null){
 	rset__001=stmt__001.executeQuery("select clave, descrip, sum(cant_sur) from receta group by clave order by (clave+0)");
	rset__002=stmt__002.executeQuery("select sum(cant_sur) from receta");
	 }
	 else {
	 rset__001=stmt__001.executeQuery("select clave, descrip, sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"'  group by clave order by (clave+0)");
	rset__002=stmt__002.executeQuery("select sum(cant_sur) from receta where fecha_re between '"+date1_jv+"' and '"+date2_jv+"' ");
 	}
 
	}
if(boton_jv.equals("null"))
	{
 //rset__001=stmt__001.executeQuery("select * from datos_inv_cod ");
	}
	
%>
<!--img src="http://201.122.57.184:8080/ngb11/logo.png" /--></p>
<p>&nbsp;</p>
<table width="400" cellpadding="3" cellspacing="1" border="2" >
   
    <tr height="20">
    <td height="20" colspan="3" style="border:double"><p align="center">DISPENSADO POR UNIDAD RECETA FARMACIA </p></td>
  </tr>
  <tr height="20">
		  <td height="33" >		  </td>
		  <td >
		    <div align="center" class="Estilo8">Rango 
		      <%out.print(date1_jv);%> 
		      del al 
		      <% out.print(date2_jv);%> 
	          </div></td>
		  <td>
		  </td>
		  </tr>
  <tr height="20">
    <td width="52" height="20" style="border:double"><div align="center">CLAVE&nbsp;</div></td>
    <td width="42"   style="border:double">DESCRIPCI&Oacute;N</td>
    <td width="42"   style="border:double"><div align="center">CANTIDAD</div></td>
  </tr>
  <%
    while(rset__001.next()) 
                  {		
				  /*id_jv=rset__001.getString("clave");
				  totPzs=rset__001.getString("sum(cant)");
				  cant_pzs=Integer.parseInt(totPzs);*/
	 %>
	<tr height="20" >
    <td style="border:double" align="left" ><%=rset__001.getString("clave")%></td>
    <td  style="border:double"><%=rset__001.getString("descrip")%></td>
    <td  style="border:double"><div align="center"><%=rset__001.getString("sum(cant_sur)")%></div></td>
  </tr>
  <%
  }
  
  %>
  <%
	while(rset__002.next()) 
                  {		
				  totPzs1=rset__002.getString("sum(cant_sur)");
				  cant_pzs1=Integer.parseInt(totPzs1);
				 // }
		
	%>
  
  <tr height="20" >
    <td style="border:double" align="left" >&nbsp;</td>
    <td  style="border:double">Total de Piezas</td>
    <td  style="border:double"><div align="center"><%=cant_pzs1%></div></td>
  </tr>
  <%
				  }
  %>
</table>
<p>&nbsp;</p>
</body>

</html>
