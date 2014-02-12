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
Statement stmt_001 = null;
Statement stmt_4 = null;
ResultSet rset__001= null;
ResultSet rset_001= null;
ResultSet rset_7= null;

String llamo_cat_jv="",tt="",present="",clave22="",sur_u="",clave="",sur111="";
int tt2=0,present2=0,total3=0,sur11=0,multi=0,resto=0,total2=0,present22=0,sur222=0,resto_jv=0;
double present1=0.0,sur22=0.0;
  try{
        llamo_cat_jv=request.getParameter("unidad");   
		
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
        date1_jv=request.getParameter("f1");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
		 
String origen_jv="",origen2_jv="";
  try{
        
		origen_jv=request.getParameter("org");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
		 
		 if(origen_jv.equals("1"))
		 {
		 origen2_jv="SSD";
		 }else{
		 origen2_jv="SORIANA";
		 }

conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
stmt__001 = conn__001.createStatement();
stmt_001= conn__001.createStatement();
stmt_4= conn__001.createStatement();
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

response.setContentType("application/vnd.ms-excel");
response.setHeader("Content-Disposition","attachment; filename=REPORTE POR RECETA COLECTIVA.xls");
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

		 		 
		 //System.out.print(""+recibe_jv);
		 
	//rset__001=stmt__001.executeQuery("select * from t_rep where execu='Julio Bellota' ");
  	 //System.out.print("unidad"+folgnk_bus_jv);
	if((boton_jv.equals("EXECUTIVE")))
	{
	
	 
  	 rset__001=stmt__001.executeQuery("select * from t_rep where execu='"+recibe_jv+"' ");
	}
	if(boton_jv.equals("DATE"))
	{
 rset__001=stmt__001.executeQuery("select * from t_rep where execu='"+recibe_jv+"'  and date='"+date1_jv+"' ");
	}
	if(boton_jv.equals("Show ALL"))
	{
 rset__001=stmt__001.executeQuery("select clave,descrip,sum(cant_sur),present from receta_colectiva where unidad='"+llamo_cat_jv+"' and fecha_re='"+date1_jv+"' and partida='"+origen_jv+"' and tipo_receta='rc' group by clave order by clave asc; ");
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

<table width="1320" cellpadding="3" cellspacing="1" border="0" >
  <tr height="20">
    <td height="20" colspan="10"  align="center"><p align="center">REPORTE  DIARIO RECETA COLECTIVA </p>
      <p align="center">DE LA UNIDAD: <%=llamo_cat_jv%></p>
    <p align="center">PERIODO: <%=date1_jv%></p>
    <p align="center">&nbsp;</p></td>
  </tr>
  
  <tr height="20">
    <td width="140" height="20" style="border:double"><div align="center">CLAVE ARTICULO </div></td>
    <td width="421" height="20" colspan="5" style="border:double"><div align="center">DESCRIPCI&Oacute;N</div></td>
   <td width="122" style="border:double"><div align="center">UM</div></td>
    <td width="129" style="border:double"><div align="center">TOTAL PIEZAS </div></td>
    <td width="103" style="border:double"><div align="center">PRESENTACI&Oacute;N</div></td>
    <td width="94" style="border:double"><div align="center">TOTAL CAJAS</div></td>
    <td colspan="2" style="border:double"><div align="center">PIEZAS PROXIMAS A COBRAR </div>
    
  </tr>
  <%
   present="1";
    while(rset__001.next()) 
                  {		
				  clave= rset__001.getString("clave");
				  /*partida_jv= rset__001.getString("origen");
				  servicio_jv= rset__001.getString("servicio");
				  date_jv=rset__001.getString("fecha_re");
				  Connection conn = 
                  DriverManager.getConnection("jdbc:mysql://localhost/r_d");
                  Statement stmt_date = conn.createStatement();
				  ResultSet rset_date = stmt_date.executeQuery("SELECT DATE_FORMAT('"+date_jv+"', '%d/%m/%Y')"); //;SELECT STR_TO_DATE('"+date_jv+"', '%m/%d/%Y')
                    while(rset_date.next())
					
                    date_jv= rset_date.getString("DATE_FORMAT('"+date_jv+"', '%d/%m/%Y')");
				*/	
				  
				  rset_7=stmt_4.executeQuery("select cant from pasti_ampu where clave='"+clave+"' group by clave;");
					while(rset_7.next())
					{
					present=rset_7.getString("cant");
					present22=Integer.parseInt(present);
					
					}
					present1=Double.parseDouble(present);
					present2=Integer.parseInt(present);
					//out.print(""+present2);
					sur111=rset__001.getString("sum(cant_sur)");
					sur22=Double.parseDouble(sur111);
					sur222=Integer.parseInt(sur111);
					
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
					
	%>
				   
  <tr height="20" >
    <td align="left" style="border:double" ><%=rset__001.getString("clave")%></td>
    <td height="20" colspan="5" style="border:double"><div align="center"><%=rset__001.getString("descrip")%></div>      <div align="center"></div></td>
    <td style="border:double"><%=rset__001.getString("present")%></td>
    <td style="border:double"><%=rset__001.getString("sum(cant_sur)")%></td>
    <td style="border:double"><%=present%></td>
    <td style="border:double"><%=total3%></td>
    <td colspan="2" style="border:double"><%=resto%></td>
    
  </tr>
  <%
  present="1";
  
  }
  
  %>
</table>
<p>&nbsp;</p>
</body>

</html>
