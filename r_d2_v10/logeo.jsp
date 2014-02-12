<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<% Class.forName("org.gjt.mm.mysql.Driver");

Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
        Statement stmt1 = conn1.createStatement();
        ResultSet rset1= null;
     int tam=0,tam2=0,x1=0;
     String cad1[]=new String[1000];  //array for show clients 
     String arr[]= new String[5000];     //array for the importadores
     String name="";
     String service_jv="";
     String mail[]=new String[10];
	 
	 String but="r";
	 String usu_jv="",juris_jv="",no_jv="",receta_jv="",encar_jv="",unidad2_jv="",clave_jv="";
	 String pass_jv="";
	 int correct1=0;
	 mail[0]="lasalle_tur@yahoo.com";
     String val="h";
	 String user="h";
     String hora_ini_jv="";
	 int cont=0;
	 try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}
	 


     
%>
<%
if(but.equals("Mostrar Encargado"))
      {
	  usu_jv=request.getParameter("select");
	  
	  rset1=stmt1.executeQuery("select empleado,unidad from empleado where unidad='"+usu_jv+"' group by empleado ");
          while (rset1.next()) 
                  {
			cad1[tam2]=rset1.getString("empleado");
			unidad2_jv=rset1.getString("unidad");
					tam2++;	   
				  }
	  
	  }


  	if(but.equals("Validar Usuario"))
      {
	    
unidad2_jv=request.getParameter("txtf_unidad");
receta_jv=request.getParameter("select_receta");
encar_jv=request.getParameter("select_encar");
pass_jv=request.getParameter("txtf_pass");

Connection conn = 
                DriverManager.getConnection("jdbc:mysql://localhost/r_d");
                  Statement stmt = conn.createStatement();
				  ResultSet rset = stmt.executeQuery("SELECT STR_TO_DATE('"+date+"', '%d/%m/%Y')"); 
                   while(rset.next())
                       date= rset.getString("STR_TO_DATE('"+date+"', '%d/%m/%Y')");


         rset1=stmt1.executeQuery("select * from uni_atn where uni='"+unidad2_jv+"' and clave='"+pass_jv+"'");
          while (rset1.next()) 
                  { 
				  juris_jv=rset1.getString("juris");
				  no_jv=rset1.getString("name");
				  clave_jv=rset1.getString("clave");
                    cont++;
                   
                   }
		//out.print(""+juris_jv);
		if ((cont==1) && (receta_jv.equals("Receta por Farmacia")))
		{
		%>
		<script>
		alert("DATOS CORRECTOS")
		 self.location='recedgo.jsp?uni=<%=unidad2_jv%>&juris=<%=no_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&nombre=&edad=&folio=&cause=&clave1=&descrip1=&present1=&indica1=&sol1=&sur1=&clave2=&descrip2=&present2=&indica2=&sol2=&sur2=&clave3=&descrip3=&present3=&indica3=&sol3=&sur3=&foliore=&univer=&cedu=&nomed=';
		</script>
		<%
		stmt1.execute("insert into pass_rd values (0,'"+pass_jv+"','"+unidad2_jv+"','"+juris_jv+"','"+date+"','CORRECTO')");
		}else{
		%>
		<script>
		alert("DATOS INCORRECTOS")
		</script>
		<%
		//out.print(""+juris_jv);
		stmt1.execute("insert into pass_rd values (0,'"+pass_jv+"','"+unidad2_jv+"','"+juris_jv+"','"+date+"','INCORRECTO')");
		unidad2_jv="";
		}


	   }
	 


%>


<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Sistema de Reportes WEB :: GNKL</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_health_nutr.css" type="text/css" />
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
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

<table width="103%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr bgcolor="#D5EDB3">
    <td colspan="2" bgcolor="#FFFFFF">&nbsp;
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="134" height="118">
          <param name="movie" value="anima2.swf" />
          <param name="quality" value="high" />
          <embed src="anima2.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="134" height="118"></embed>
      </object></td>
    <td height="50" colspan="3" align="center" valign="bottom" nowrap="nowrap" bgcolor="#FFFFFF" id="logo"><div align="right">
      <table width="721" border="0" align="left" cellpadding="2">
        <tr>
          <td width="509" rowspan="2"><div align="center" class="style5 style6">SISTEMA DE RECETA ELECTRONICA </div></td>
          <td width="198" height="67">&nbsp;</td>
        </tr>
        <tr>
          <td height="23">&nbsp;</td>
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
      <table width="663" border="3" align="left" cellpadding="0" cellspacing="0">
          <tr>
            <td width="453" class="bodyText"><table width="652" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="37" colspan="4" bgcolor="#FFFFFF"><div align="center">
                      <p align="center"><strong><img src="logo_soriana2.jpg" width="191" height="55" /></strong></p>
                  </div></td>
                </tr>
                <tr>
                  <td width="4" nowrap bgcolor="#FFFFFF">&nbsp;</td>
                  <td width="5" bgcolor="#FFFFFF">&nbsp;</td>
                  <td width="453"><div align="center">
                      <table border="0" cellspacing="3" cellpadding="2" align="center">
                        <form action="logeo.jsp" method="post" >
                          <tr>
                            <td colspan="2"><div id="item21" style="display:none" align="justify" >
                                <input type="text" name="txtf_hf" id="txtf_hf" size="10" readonly="true"/>
                            </div></td>
                          </tr>
                          <tr>
                            <td colspan="2"><div align="left"><span class="style7">Ingresa tu claves de acceso:</span></div></td>
                          </tr>
                          <tr>
                            <td width="57" align="right"><div align="left"><span class="style1"><span class="style2">Usuari</span>o</span>:</div></td>
                            <td width="381"><label>
                              <div align="left">
                                <select name="select">
                                  <option selected="selected">-----------------------Escoja un usuario-------------------------</option>
                                  <option value="HOSPITAL GENERAL DE DURANGO">HOSPITAL GENERAL DE DURANGO</option>
                                  <option value="HOSPITAL INTEGRAL LA GUAJOLOTA">HOSPITAL INTEGRAL LA GUAJOLOTA</option>
                                  <option value="HOSPITAL COMUNITARIO FRANCISCO I. MADERO">HOSPITAL COMUNITARIO FRANCISCO I. MADERO</option>
                                  <option value="HOSPITAL DE SALUD MENTAL">HOSPITAL DE SALUD MENTAL</option>
                                  <option value="HOSPITAL INTEGRAL DEL MEZQUITAL">HOSPITAL INTEGRAL DEL MEZQUITAL</option>
                                  <option value="HOSPITAL INTEGRAL DE HUAZAMOTA">HOSPITAL INTEGRAL DE HUAZAMOTA</option>
                                  <option value="HOSPITAL INTEGRAL DEL SALTO">HOSPITAL INTEGRAL DEL SALTO</option>
                                  <option value="HOSPITAL INTEGRAL DE SUCHIL">HOSPITAL INTEGRAL DE SUCHIL</option>
                                  <option value="HOSPITAL INTEGRAL EL DURAZNO">HOSPITAL INTEGRAL EL DURAZNO</option>
                                  <option value="HOSPITAL INTEGRAL DE TAMAZULA">HOSPITAL INTEGRAL DE TAMAZULA</option>
                                  <option value="HOSPITAL INTEGRAL DE CANATLAN">HOSPITAL INTEGRAL DE CANATLAN</option>
                                  <option value="HOSPITAL GENERAL DE CUENCAME">HOSPITAL GENERAL. DE CUENCAME</option>
                                  <option value="HOSPITAL INTEGRAL SIMON BOLIVAR">HOSPITAL INTEGRAL SIMON BOLIVAR</option>
                                  <option value="HOSPITAL GENERAL DE GOMEZ PALACIO">HOSPITAL GENERAL DE GOMEZ PALACIO</option>
                                  <option value="HOSPITAL GENERAL DE LERDO">HOSPITAL GENERAL DE LERDO</option>
                                  <option value="HOSPITAL INTEGRAL MAPIMI">HOSPITAL INTEGRAL MAPIMI</option>
                                  <option value="HOSPITAL INTEGRAL DE PE&Ntilde;ON BLANCO">HOSPITAL INTEGRAL DE PE&Ntilde;ON BLANCO</option>
                                  <option value="HOSPITAL INTEGRAL DE CANATLAN">HOSPITAL INTEGRAL DE CANATLAN</option>
                                  <option value="HOSPITAL GENERAL SANTIAGO PAPASQUIARO">HOSPITAL GENERAL SANTIAGO PAPASQUIARO</option>
                                  <option value="HOSPITAL INTEGRAL DE NUEVO IDEAL">HOSPITAL INTEGRAL DE NUEVO IDEAL</option>
                                  <option value="HOSPITAL GENERAL SANTA MARIA DEL ORO">HOSPITAL GENERAL SANTA MARIA DEL ORO</option>
                                  <option value="HOSPITAL INTEGRAL DE SAN JUAN DEL RIO">HOSPITAL INTEGRAL DE SAN JUAN DEL RIO</option>
                                  <option value="HOSPITAL INTEGRAL DE LAS NIEVES">HOSPITAL INTEGRAL DE LAS NIEVES</option>
                                  </select>
                                </div>
                            </label></td>
                          </tr>
                          <tr>
                            <td class="style1 style2">&nbsp;</td>
                            <td><input type="submit" name="Submit" value="Mostrar Encargado" /></td>
                          </tr>
                          <tr>
                            <td class="style1 style2">Encargado:</td>
                            <td><div align="left"><select name="select_encar">
                              <option selected="selected">--Escoja Encargado--</option>
                              <%
		     
             for(x1=0;x1<tam2;x1++)
                {
                   
           %>
                      <option value="<%=cad1[x1]%>"><%=cad1[x1]%></option>
                      <%
                }
           %>
                            </select></div></td>
                          </tr>
                          <tr>
                            <td class="style1 style2">Unidad</td>
                            <td><div align="left"><input type="text" name="txtf_unidad" size="50" value="<%=unidad2_jv%>"/>
                            </div></td>
                          </tr>
                          <tr>
                            <td align="right" class="style1 style2">Tipo Receta</td>
                            <td><div align="left">
                              <select name="select_receta">
                                <option selected="selected">--Escoja Receta--</option>
                                <option value="Receta por Farmacia">Receta por Farmacia</option>
                                <option value="Receta Colectiva">Receta Colectiva</option>
                              </select>
                            </div></td>
                          </tr>
                          <tr>
                            <td align="right" class="style1 style2"><div align="left">Contrase&ntilde;a:</div></td>
                            <td><div align="left">
                              <input type="password" name="txtf_pass" value="" style="width:90px" class="style2" />
                            </div></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td><p>
                              <label>
                                <div align="center">
                                  <div align="center">
                                    <input type="submit" name="Submit" value="Validar Usuario" />
                                  </div>
                                  </label>
                              <p>
                                <input type="hidden" value="1" name="altaOK" />
                            </p></td>
                          </tr>
                          <input type="hidden" name="cmd" value="1" />
                        </form>
                      </table>
                  </div></td>
                  <td width="194" nowrap bgcolor="#FFFFFF"><img src="imagenes/px.gif" width="1" height="1" alt="" border="0" /><img src="medi.jpg" width="178" height="164" /></td>
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
</table>

	

</body>
</html>
