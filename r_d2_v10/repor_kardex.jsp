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
Statement stmt03 = null;
 
ResultSet rset__001= null;
ResultSet rset__002= null;
ResultSet rset_003= null;
ResultSet rset_001=null;

String llamo_cat_jv="";
  try{
        llamo_cat_jv=request.getParameter("uni");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }

String recibe_jv="";
  try{
        recibe_jv=request.getParameter("clave");   
		
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

String org_jv="";
  try{
        org_jv=request.getParameter("origen");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }




conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
stmt__001 = conn__001.createStatement();
stmt__002 = conn__001.createStatement();
stmt03 = conn__001.createStatement();
Statement stmt01 = conn__001.createStatement();
String clave_jv="",clave2_jv="",descrip_jv="";
String clave_ps_jv="";
String id_jv="";
String cant_ps_jv="";
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

String total_cajas="";
String total_resto="";

int tot_cajas_int=0;
int tot_resto_int=0;

String  totPzs="",totPzs1="";
int cant_pzs=0,cant_pzs1=0;

response.setContentType("application/vnd.ms-excel");
response.setHeader("Content-Disposition","attachment; filename=KARDEX_UNIDAD.xls");
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
.Estilo4 {font-size: 14; font-weight: bold; }
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
	rset__001=stmt__001.executeQuery("select clave,descrip from clave_med where clave='"+recibe_jv+"' group by clave");
 rset__002=stmt__002.executeQuery("select clave,cant_anterior,origen,cant_mov,cant_actual,fecha,usuario,status,obser,hora,folio from modificacion where clave='"+recibe_jv+"' and origen='"+org_jv+"' ");
 
 
	}
if(boton_jv.equals("null"))
	{
 rset__001=stmt__001.executeQuery("select * from modificacion ");
	}
	
%>
<!--img src="http://201.122.57.184:8080/ngb11/logo.png" /--></p>
<p>&nbsp;</p>
<table width="450" cellpadding="3" cellspacing="1" border="2" >
   
    <tr height="20">
    <td height="20" colspan="12" style="border:double"><p align="center">KARDEX DE LA UNIDAD</p></td>
  </tr>
   <%
		  while(rset__001.next())
		{
		clave2_jv=rset__001.getString("clave");
		descrip_jv=rset__001.getString("descrip");	
		
		
		}
		
		  
		  
		  %>
  <tr height="20">
    <td width="49" style="border:double">CLAVE&nbsp;</td>
    <td width="49" style="border:double"><div align="center"><%=clave2_jv%></div></td>
    <td width="89"   style="border:double">DESCRIPCI&Oacute;N</td>
    <td colspan="9"   style="border:double"><%=descrip_jv%></td>
  </tr>
 
	
	<tr height="20" >
	  <td style="border:double" align="left" >FOLIO</td>
	  <td style="border:double" align="left" ><p>EXISTENCIAS ANTERIOR PIEZAS </p>      </td>
	  <td  style="border:double">MOVIMIENTO</td>
	  <td width="64"  style="border:double">EXISTENCIA  ACTUAL PIEZAS </td>
	  <td  style="border:double">PRESENT</td>
	  <td  style="border:double">CAJAS</td>
	  <td  style="border:double">ESTATUS</td>
	  <td  style="border:double">OBSERVACIONES</td>
	  <td  style="border:double">ORIGEN</td>
	  <td  style="border:double">USUARIO</td>
	  <td  style="border:double">FECHA</td>
	  <td  style="border:double">HORA</td>
	  <%
		while(rset__002.next())
		{
		
		cant_ps_jv="1";
		rset_001=stmt01.executeQuery("select clave, cant from pasti_ampu where clave='"+recibe_jv+"';");
			while (rset_001.next()){
			
				cant_ps_jv=rset_001.getString("cant");
				clave_ps_jv=rset_001.getString("clave");
				
				
			}
		
		 
		  int cantidad = Integer.parseInt(cant_ps_jv);
		  int presentacion = Integer.parseInt(rset__002.getString("cant_actual"));
		  int cajas=presentacion/cantidad;
		  int resto=presentacion%cantidad;
		  
		  tot_cajas_int+=cajas;
		  
		  tot_resto_int+=resto;
		  
		  
		  total_cajas=String.valueOf(tot_cajas_int);
			total_resto=String.valueOf(tot_resto_int);
		
		%>
  </tr>
	<tr height="20" >
	  <td style="border:double" align="left" ><div align="center"><%=rset__002.getString("folio")%></div></td>
    <td style="border:double" align="left" ><div align="center"><%=rset__002.getString("cant_anterior")%></div></td>
    <td  style="border:double"><div align="center"><%=rset__002.getString("cant_mov")%></div></td>
    <td  style="border:double"><div align="center">
      <%=rset__002.getString("cant_actual")%>
    </div></td>
    <td  style="border:double"><div align="center">
      <%out.print(cant_ps_jv);%>
    </div></td>
    <td  style="border:double"><div align="center"><%=cajas%></div></td>
    <td  style="border:double"><div align="center">
      <%=rset__002.getString("status")%>
    </div></td>
		  
		 
		  
    <td  style="border:double"><%=rset__002.getString("obser")%></td>
    <td  style="border:double"><div align="center"><%=rset__002.getString("origen")%></div></td>
    <td  style="border:double"><div align="center"><%=rset__002.getString("usuario")%></div></td>
    <td  style="border:double"><div align="center">'<%=rset__002.getString("fecha")%></div></td>
    <td  style="border:double"><div align="center">'<%=rset__002.getString("hora")%></div></td>
  </tr>
 <%
 
 cant_ps_jv="1";
 }%>
</table>
<p>&nbsp;</p>
</body>

</html>
