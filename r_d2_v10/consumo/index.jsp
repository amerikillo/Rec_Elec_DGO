<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% java.util.Calendar currDate = new java.util.GregorianCalendar();
   // add 1 to month because Calendar's months start at 0, not 1
   int month = currDate.get(currDate.MONTH)+1;
   int day = currDate.get(currDate.DAY_OF_MONTH);
   int year = currDate.get(currDate.YEAR);
	String date=""; 
   String res=""; 
   int ban=0,cont2=0,cont3=0;
   int ban_ima=0;
   try { 
        ban_ima=Integer.parseInt(request.getParameter("ban"));
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}
	
   String cve_uni_2=""; 	
   String cve_uni="";
    try { 
        //if(cve_uni!="")
           cve_uni=request.getParameter("cve");
		//else
		 //  cve_uni=request.getParameter("cve");
		   
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}
	 

    
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
		//Statement stmt2 = conn1.createStatement();
		Statement stmt_01 = conn1.createStatement();
        ResultSet rset1= null;
		ResultSet rset2= null;
     int tam=0,tam2=0,x1=0;
     String cad1[]=new String[1000];  //array for show clients 
     String arr[]= new String[5000];     //array for the importadores
     String name="";
     String service_jv="";
     String mail[]=new String[10];
	 
	 String but="r";
	 String usu_jv="",juris_jv="",no_jv="",receta_jv="",encar_jv="",unidad2_jv="",clave_jv="",cv_dgo_jv="",cv_uni_jv="",cv_mpio_jv="";
	 String pass_jv="";
	 int correct1=0,customerIds=0;
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
if(but.equals("Receta"))
      {
	    out.print("hello");
      }

if(but.equals("Mostrar"))
      {
	 // out.print("siii");
	  cve_uni_2=request.getParameter("txtf_uni");
	  
	  rset1=stmt1.executeQuery("select * from juris where cve='"+cve_uni_2+"' group by usuario ");
          while (rset1.next()) 
                  {
			cad1[tam2]=rset1.getString("usuario");
			unidad2_jv=rset1.getString("nombre");
			//out.print(""+cad1[tam2]+unidad2_jv);
					tam2++;	   
					ban=1;
		cont2++;
		  		  }
		if(ban==1)
		    ban=4;
	    else				  
	        ban=3;
			if(cont2>0)
			{
		ban_ima=1;
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


rset2=stmt1.executeQuery("select * from juris where nombre='"+unidad2_jv+"' and contra='"+pass_jv+"' ");
          while (rset2.next()) 
                  {
				  cont3++; 
				  }
				  
//				  out.print(""+cont3);

if (cont3>0)
{
         rset1=stmt1.executeQuery("select * from uni_atn where uni='"+unidad2_jv+"' ");
          while (rset1.next()) 
                  { 
				  juris_jv=rset1.getString("juris");
				  no_jv=rset1.getString("name");
				  clave_jv=rset1.getString("clave");
				  cv_dgo_jv=rset1.getString("cv_dgo");
				  cv_uni_jv=rset1.getString("id_uni");
				  cv_mpio_jv=rset1.getString("cv_mpio");
				  
                    cont++;
                   
                   }
				  
		//out.print(""+juris_jv);
		if ((cont==1) && (receta_jv.equals("Receta por Surtir")))
		{
		%>
		<script>
		alert("DATOS CORRECTOS")
		 self.location='receta_por_surtir.jsp?uni=<%=unidad2_jv%>&juris=<%=no_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&nombre=&edad=&folio=&cause=&clave1=&descrip1=&present1=&indica1=&sol1=&sur1=&foliore=&nomed=&cedu=&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&part=&id_med=&day5=&carnet=&mes5=&aa5=';
		</script>
		<%
		stmt1.execute("insert into pass_rd values (0,'"+pass_jv+"','"+unidad2_jv+"','"+juris_jv+"','"+date+"','CORRECTO')");
		}
		if ((cont==1) && (receta_jv.equals("Receta por Surtir Colectiva")))
		{
		%>
		<script>
		alert("DATOS CORRECTOS")
		 self.location='receta_col_surtir.jsp?uni=<%=unidad2_jv%>&juris=<%=no_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&nombre=&edad=&folio=&cause=&clave1=&descrip1=&present1=&indica1=&sol1=&sur1=&foliore=&nomed=&cedu=&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&part=&id_med=&day5=&carnet=&mes5=&aa5=&servicio=';
		</script>
		<%
		stmt1.execute("insert into pass_rd values (0,'"+pass_jv+"','"+unidad2_jv+"','"+juris_jv+"','"+date+"','CORRECTO')");
		}
		
		if ((cont==1) && (receta_jv.equals("Reporte Global por Fecha")))
		{
		%>
		<script>
		alert("DATOS CORRECTOS")
		 self.location='reportes.jsp';
		</script>
		<%
		stmt1.execute("insert into pass_rd values (0,'"+pass_jv+"','"+unidad2_jv+"','"+juris_jv+"','"+date+"','CORRECTO')");
		}
		if ((cont==1) && (receta_jv.equals("Receta por Farmacia")))
		{
		%>
		<script>
		alert("DATOS CORRECTOS")
		 self.location='recedgo.jsp?uni=<%=unidad2_jv%>&juris=<%=no_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&nombre=&edad=0&folio=&cause=SC&clave1=&descrip1=&present1=&indica1=&sol1=&sur1=&foliore=&nomed=&cedu=&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&part=&id_med=&day5=&carnet=-&mes5=&aa5=&programa';
		</script>
		<%
		stmt1.execute("insert into pass_rd values (0,'"+pass_jv+"','"+unidad2_jv+"','"+juris_jv+"','"+date+"','CORRECTO')");
		}
		
		if ((cont==1) && (receta_jv.equals("Receta por Farmacia Fecha Automatica")))
		{
		%>
		<script>
		alert("DATOS CORRECTOS")
		 self.location='recedgo_fecha.jsp?uni=<%=unidad2_jv%>&juris=<%=no_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&nombre=&edad=0&folio=&cause=SC&clave1=&descrip1=&present1=&indica1=&sol1=&sur1=&foliore=&nomed=&cedu=&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&part=&id_med=&day5=&carnet=-&mes5=&aa5=&programa';
		</script>
		<%
		stmt1.execute("insert into pass_rd values (0,'"+pass_jv+"','"+unidad2_jv+"','"+juris_jv+"','"+date+"','CORRECTO')");
		}
		
		if ((cont==1) && (receta_jv.equals("Receta Colectiva")))
		{
		
		stmt1.execute("insert into folio_rec values(null,'morelia')");
		ResultSet rset_01 = stmt_01.executeQuery("select no_rec from folio_rec");
                  while(rset_01.next())
				  {
                       customerIds = rset_01.getInt("no_rec");
                         }
		
		
		%>
		<script>
		alert("DATOS CORRECTOS")
		 self.location='recedgo_col.jsp?uni=<%=unidad2_jv%>&juris=<%=no_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&nombre=&edad=&folio=&cause=&clave1=&descrip1=&present1=&indica1=&sol1=&sur1=&foliore=<%=customerIds%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&part=&id_med=&day5=&carnet=-&mes5=&aa5=&servicio=';
		</script>
		<%
		stmt1.execute("insert into pass_rd values (0,'"+pass_jv+"','"+unidad2_jv+"','"+juris_jv+"','"+date+"','CORRECTO')");
		}
		
		
		if ((cont==1) && (receta_jv.equals("Receta Colectiva Fecha Automatica")))
		{
		
		stmt1.execute("insert into folio_rec values(null,'morelia')");
		ResultSet rset_01 = stmt_01.executeQuery("select no_rec from folio_rec");
                  while(rset_01.next())
				  {
                       customerIds = rset_01.getInt("no_rec");
                         }
						 out.print(customerIds);
		%>
		<script>
		alert("DATOS CORRECTOS")
		 self.location='recedgo_col_fecha.jsp?uni=<%=unidad2_jv%>&juris=<%=no_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&nombre=&edad=&folio=&cause=&clave1=&descrip1=&present1=&indica1=&sol1=&sur1=&foliore=<%=customerIds%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&part=&id_med=&day5=&carnet=-&mes5=&aa5=&servicio=';
		</script>
		<%
		stmt1.execute("insert into pass_rd values (0,'"+pass_jv+"','"+unidad2_jv+"','"+juris_jv+"','"+date+"','CORRECTO')");
		}
		

		if(cont==0){
		%>
		<script>
		alert("DATOS INCORRECTOS")
		</script>
		<%
		//out.print(""+juris_jv);
		stmt1.execute("insert into pass_rd values (0,'"+pass_jv+"','"+unidad2_jv+"','"+juris_jv+"','"+date+"','INCORRECTO')");
		unidad2_jv="";
		cve_uni="";
		}
       }else{
	   %>
	   <script>
	   alert("DATOS INCORRECTOS")
	   </script>
	   <%
	   stmt1.execute("insert into pass_rd values (0,'"+pass_jv+"','"+unidad2_jv+"','"+juris_jv+"','"+date+"','INCORRECTO')");
		unidad2_jv="";
		cve_uni="";
	 }
	   
	   ban_ima=0;
	   }
	   


%>


<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>:: RECETA ELECTR&Oacute;NICA WEB ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_health_nutr.css" type="text/css" />
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
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
.style9 {
	font-size: 12px;
	font-family: Arial, Helvetica, sans-serif;
	color: #990000;
	font-weight: bold;
}
.style10 {color: #EF6703}
.style11 {color: #EF6703; font-weight: bold; }
.style13 {color: #000000}
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
          <td width="509" rowspan="2"><div align="center" class="style5 style6">SISTEMA DE RECETA ELECTR&Oacute;NICA </div></td>
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
          
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p class="style1"><a href="carga_inven_clave.jsp" class="style1">CARGA INVENTARIO</a></p>
      <p class="style1"><a href="index_reporte.jsp" class="style1">REPORTE VALIDACION</a></p>
      <p class="style1"><a href="inventarios.jsp" class="style1">VER EXISTENCIAS</a></p>
      <p><a href="index_reporte_consumo.jsp" class="style1">CONSUMO DIARIO </a></p>
	  <p><a href="index_movi.jsp" class="style1">MOVIMIENTO AL INVENTARIO </a></p>
	 <p><a href="kardex.jsp" class="style1">KARDEX </a></p>
	  <p><!--a href="index_entrega.jsp" class="style1">ENTREGA DIRECTA SSD </a--></p>
  &nbsp;<br />
  &nbsp;<br />
            </p></td>
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
                        <form action="index.jsp?cve=<%=cve_uni%>&ban=<%=ban_ima%>" method="post" name="form" >
                          <tr>
                            <td colspan="3"><div id="item21" style="display:none" align="justify" >
                                <input type="text" name="txtf_hf" id="txtf_hf" size="10" readonly="true"/>
                            </div></td>
                          </tr>
                          <tr>
                            <td colspan="2"><div align="left"><span class="style7">Ingrese el N&uacute;mero de la Unidad:</span></div></td>
                            <td>&nbsp;</td>
						  </tr>
                          <tr>
                            <td colspan="3"><hr color="#000000" /></td>
                          </tr>
                          <tr>
                            <td width="70" align="right"><div align="left"><span class="style1"><span class="style2">No. de Unidad</span></span>:</div></td>
                            <td colspan="2">
                             
                                <div align="left">
								
								 
                                  <input type="text" size="10" name="txtf_uni" value="<%=cve_uni_2!=""?cve_uni_2:(cve_uni!=null?cve_uni:"")%>" />
                                  <input type="submit" name="Submit" value="Mostrar"/>
                                <span class="style7">                               <a href="tab.jsp" accesskey="n" target="_self">Ver Unidad</a></span>
								<%
							if(ban_ima==0)
							 {
							%>
								<img src="paso1.jpg"  />
								<%
								}
								if(ban==3)
								{
								cve_uni="-";
								//out.print("cve_uni"+cve_uni);
								%>
								<br />
								<span class="style9">Unidad inexistente CHECAR UNIDADES</span>
								
								<script>
								document.form.txtf_uni.focus();
								</script>
								<%
								}
								%>
								<script>
								document.form.select_encar.focus();
								</script>
							    </div></td>
                          </tr>
                          <tr>
                            <td colspan="3" class="style1 style2"><hr color="#000000"/></td>
                          </tr>
                          <tr>
                            <td class="style1 style2"><div align="left">Nombre de la Unidad: </div></td>
                            <td colspan="2"><div align="left" class="style10">
                              <input name="txtf_unidad" type="text" class="style11" value="<%=unidad2_jv%>" size="50"/>
                            </div></td>
                          </tr>
                          <tr>
                            <td class="style1 style2"><div align="left">Encargado:</div></td>
                            <td width="173"><div align="left"><select name="select_encar" class="style13" onchange="cerrar()" >
                              <option selected="selected">--Escoja Encargado--</option>
                              <%
		     
             for(x1=0;x1<tam2;x1++)
                {
                   
           %>
                      <option value="<%=cad1[x1]%>"><%=cad1[x1]%></option>
                      <%
                }
           %>
                            </select>
                            </div></td>
                            <td width="220">
							<%
							if(ban_ima==1)
							 {
							%>
							<div id="flotante" style="display:block;"> 
							<img src="emp.jpg" />							</div>							</td>
                            <%
							}
							%>
						  </tr>
                          <tr>
                            <td class="style1 style2"><div align="left">Tipo Receta</div></td>
                            <td><div align="left">
                              <select name="select_receta" class="style13" onchange="cerrar2()">
                                <option selected="selected">--Escoja Receta--</option>
                                <option value="Receta por Farmacia">Receta por Farmacia Fecha Manual</option>
								 <option value="Receta por Farmacia Fecha Automatica">Receta por Farmacia Fecha Automatica</option>
                                <option value="Receta Colectiva">Receta Colectiva Fecha Manual</option>
                                <option value="Receta Colectiva Fecha Automatica">Receta Colectiva Fecha Automatica</option>
								<option value="Receta por Surtir">Pendiente por Surtir/Checar Datos</option>
								<option value="Receta por Surtir Colectiva">Pendiente por Surtir Colectiva/Checar Datos</option>
								<!--option value="Reporte Global por Fecha">Reporte Global por Fecha</option-->
                              </select>
                            </div></td>
                            <td>
							<div id="recetas" style="display:none;">
							<img src="rece.jpg" width="160" height="39" />							</div>
							<div align="left"></div></td>
                          </tr>
                          <tr>
                            <td align="right" class="style1 style2"><div align="left">Contrase&ntilde;a:</div></td>
                            <td><div align="left">
                              <input type="password" name="txtf_pass" id="txtf_pass" value="" style="width:90px" class="style2" onKeyPress="return handleEnter(this, event)" />
                            </div></td>
                            <td>
							<div id="contra" style="display:none;">
							<img src="contr.jpg" width="154" height="39" />							</div>							</td>
                          </tr>
                          <tr>
                            <td align="right" class="style1 style2"><div align="left"></div></td>
                            <td colspan="2"><div align="left" class="style13"></div></td>
                          </tr>
                          <tr>
                            <td colspan="3"><p>
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
                  <td width="194" nowrap bgcolor="#FFFFFF"><img src="imagenes/px.gif" width="1" height="1" alt="" border="0" /><img src="pasti_ampu2.jpg" width="178" height="164" /></td>
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
	&nbsp;<br />
<td width="190" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
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
