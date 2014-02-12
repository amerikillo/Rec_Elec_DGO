<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<% java.util.Calendar currDate = new java.util.GregorianCalendar();
   // add 1 to month because Calendar's months start at 0, not 1
   int month = currDate.get(currDate.MONTH)+1;
   int day = currDate.get(currDate.DAY_OF_MONTH);
   int year = currDate.get(currDate.YEAR);
	String date=""; 
   String res=""; 
 
 if(month >=1 && month <= 9)  
 {
 res ="0"+month;
// month=Integer.parseInt(res);
   date=" "+day;
   date= date+"/"+res;
   date= date+"/"+year;  

 //out.print(""+res); 
 }
 else 
{
      date=" "+day;
      date= date+"/"+month;
      date= date+"/"+year;  
	  res+=month;
}
 
%>

<%
Class.forName("org.gjt.mm.mysql.Driver");

				  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
                  Statement stmt = conn.createStatement();
				  ResultSet rset = null; 
// Variables para el Programa
String emp_jv="";
String nom_jv="";
String apat_jv="";
String amat_jv="";
String rfc_jv="";
String area_jv="";
String puesto_jv="";
String sangre_jv="";
String alergia_jv="";
String fecha_jv="";
String but="r";
String nombre_jv="",contra_jv="",folio_jv="",usu_jv="";
int folio=0;
int ban=0;


try { 


        but=""+request.getParameter("Submit");
		//out.print("but ="+but);
        
    }catch(Exception e){System.out.print("not");} 
	
	
	rset = stmt.executeQuery("SELECT STR_TO_DATE('"+date+"', '%d/%m/%Y')"); 
                    while(rset.next()){
                    date= rset.getString("STR_TO_DATE('"+date+"', '%d/%m/%Y')");
					}	
					//out.print(""+folio);
	
if(but.equals("Guardar Datos"))
     {
	 	//out.print("hi");
	  	folio_jv= request.getParameter("txtf_folio");
		contra_jv= request.getParameter("txtf_contra");
		nombre_jv= request.getParameter("txtf_nombre");
		usu_jv= request.getParameter("txtf_usu");
		

		stmt.execute("insert into juris values ('"+folio_jv+"','"+usu_jv+"','"+contra_jv+"','"+nombre_jv+"','"+date+"')");

%>			
<script>
		//	alert('<< DATOS CAPTURADOS>>');

</script>

<%
response.sendRedirect("index_issemym.jsp");
}
%>		
<%! public int customerIds=0;
   public String id="61";
	
  public int regulaCont2()
  
      {
                      
             try { 
                           
                  Connection conn_01 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/r_d");
                  Statement stmt_01 = conn_01.createStatement();
				 	
			      stmt_01.execute("insert into folio_issemym values(null,'morelia')");
                 
				  //stmt_01.execute("insert into rec values(null,'morelia')");
                  //stmt_01.execute("commit"); 
                  ResultSet rset_01 = stmt_01.executeQuery("select no_rec from folio_issemym");
                  while(rset_01.next())
                       customerIds = rset_01.getInt("no_rec");
                conn_01.close();
                 System.out.print("halo");           
                } catch (Exception e)
                     {  
                       System.out.print("haloja");  
                     }
       /* id+=customerIds;
		 customerIds=Integer.parseInt(id); 
		 id="61";*/   
  return customerIds;
     }  
%>	
	
		

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>CREAR CONTRASE&Ntilde;A</title>
<link href="Styl1.css" rel="stylesheet" type="text/css">
<script language="javascript" src="list02.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 9px}
body {
	background-color: #FFFFFF;
}
.style14 {font-family: Verdana, Arial, Helvetica, sans-serif}
.Estilo4 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 24px; }
-->
</style>
</head>

<body onLoad="SetCur()">
<table width="647" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#333333">
  <tr>
    <td><table width="643" border="0" cellpadding="2">
      <tr>
        <td width="134" height="82" ><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="134" height="118">
          <param name="movie" value="anima2.swf" />
          <param name="quality" value="high" />
          <embed src="anima2.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="134" height="118"></embed>
      </object></td>
        <td width="478"><div align="center"><span class="Estilo4">CREAR CONTRASE&Ntilde;A USUARIOS</span></div></td>
        <td width="171"><h2 align="center"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
            <param name="movie" value="anima4p.swf" />
            <param name="quality" value="high" />
            <embed src="anima4p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
          </object></h2></td>
      </tr>
      
    </table>    </td>
  </tr>
  <tr>
    <td bgcolor="#CCCCCC">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="640" height="60" border="0" align="center" cellpadding="2" bordercolor="#0B4680">
      <tr>
        <td width="632"><form name="form" method="post" action="contra_receta.jsp">
            <table width="600" border="0" align="center" cellpadding="2">
              <tr>
                <td height="11" class="style1">&nbsp;</td>
                <td height="11" bgcolor="#FFFFFF" class="style12">&nbsp;</td>
                <td height="11" colspan="4" class="style1">&nbsp;</td>
                <td class="styl1">&nbsp;</td>
              </tr>
              <tr>
                <td width="11" height="26">&nbsp;</td>
                <td width="133" height="26" bgcolor="#FFFFFF" class="style12">Folio: </td>
                <td width="146" class="styl1"><label>
                  <%
	if(ban==0)
	folio=regulaCont2(); 
	%>
                  
                  <input name="txtf_folio" type="text" id="txtf_emp" value="<%=folio%>" onKeyPress="return handleEnter(this, event)" size="20" >
                </label></td>
                <td width="49" class="style12"><div align="right">Fecha:</div></td>
                <td width="202" class="styl1"><input name="txtf_date" type="text" id="txtf_date" onkeypress="return handleEnter(this, event)" size="15" value="<%=date%>" ></td>
                <td width="2" rowspan="8" align="right" valign="top" class="styl1">&nbsp;</td>
                <td width="13" class="styl1">&nbsp;</td>
              </tr>
              <tr>
                <td height="26">&nbsp;</td>
                <td height="26" bgcolor="#FFFFFF" class="style12">Jurisdicci&oacute;n</td>
                <td height="26" colspan="3" bgcolor="#FFFFFF" class="style12"><select name="Category" class="bodyText" onchange="SelectSubCat01();" >
                <option>---------------- JURISDICCIÓN SANITARIA ----------------</option>
              </select></td>
                <td class="styl1">&nbsp;</td>
              </tr>
              <tr>
                <td height="26">&nbsp;</td>
                <td height="26" bgcolor="#FFFFFF" class="style12">Unidad</td>
                <td height="26" colspan="3" bgcolor="#FFFFFF" class="style12"><select name="SubCat" class="bodyText" >
                
				<option>-- SELECCIONE UNIDAD --</option>
				<%            
				  
					  for(int x=0;x<tam;x++)
						  {	                     
					  %>
					<option value="<%=censo2[x]%>"><%=censo2[x]%></option>
					<%
						   }
					  %>
            </select></td>
                <td class="styl1">&nbsp;</td>
              </tr>
              <tr>
                <td height="26">&nbsp;</td>
                <td height="26" colspan="4" bgcolor="#FFFFFF" class="style12">Favor de llenar los siguientes datos: </td>
                <td class="styl1">&nbsp;</td>
              </tr>
              <tr>
                <td height="26">&nbsp;</td>
                <td height="26" bgcolor="#FFFFFF" class="style12">Usuario:</td>
                <td colspan="3" class="styl1"><input name="txtf_usu" type="text" id="txtf_usu" onchange="toUppercaseNom();" onkeypress="return handleEnter(this, event)" size="50" ></td>
                <td class="styl1">&nbsp;</td>
              </tr>
              <tr>
                <td height="26">&nbsp;</td>
                <td height="26" bgcolor="#FFFFFF" class="style12">Contrase&ntilde;a:</td>
                <td colspan="3" class="styl1"><input name="txtf_contra" type="password" id="txtf_contra" onchange="toUppercaseNom();" onkeypress="return handleEnter(this, event)" size="50" ></td>
                <td class="styl1">&nbsp;</td>
              </tr>
              
              <tr>
                <td height="26">&nbsp;</td>
                <td height="26" bgcolor="#FFFFFF" class="style12">Nombre: </td>
                <td colspan="3" class="styl1"><input name="txtf_nombre" type="text" id="txtf_nombre" onchange="toUppercaseNom();" onkeypress="return handleEnter(this, event)" size="50" ></td>
                <td class="styl1">&nbsp;</td>
              </tr>
              
              
              
              <tr>
                <td height="34" align="center" valign="middle">&nbsp;</td>
                <td align="center" valign="middle" class="styl1 style1">&nbsp;</td>
                <td colspan="4" align="center" valign="middle" class="styl1 style1"><label>
                  <input name="Submit" type="submit" class="but" value="Guardar Datos" onclick="return verifica(document.forms.form)" >
                </label></td>
                <td align="center" valign="middle" class="styl1 style1">&nbsp;</td>
              </tr>
            </table>
        </form></td>
      </tr>
    </table></td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
<table width="600" border="0" cellpadding="2">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
