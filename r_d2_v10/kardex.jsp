<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%
String noaf_jv="",nom_jv="",ap_jv="",ap5_jv="",am_jv="",nombre1_jv="",clave_jv="",clave2_jv="",descrip_jv="",origen_jv="",exist_jv="",origen2="",exist2_jv="0",total22_jv="",clave22_jv="",origen22_jv="",descrip22_jv="",org_jv="";
String cant_ps_jv="", clave_ps_jv="", total_cant="", total_cajas="", total_resto="";
int tot_cajas_int=0, tot_resto_int=0;
String but="r";
int cont6=0,am2_jv=0,exist=0,ap2_jv=0,total=0;
ResultSet rset_001=null;
ResultSet rset_002=null;
String clave1_jv="",descrip1_jv="",origen1_jv="",exist1_jv="";
Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/r_d", "root", "eve9397");
  Statement stmt = conn__001.createStatement();
  Statement stmt01 = conn__001.createStatement();
  Statement stmt02 = conn__001.createStatement();

try { 


        but=""+request.getParameter("Submit");
		//but2=""+request.getParameter("Submit2");
		//out.print("but ="+but);
        
    }catch(Exception e){System.out.print("not");} 
	
	
	
	
		
	
	
	


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>.:KARDEX:.</title>
<script language="javascript" src="list02.js">

function close1()
{//alert("huge");


top.close();  
/*if(navigator.appName=="Microsoft Internet Explorer") { 
this.focus();self.opener = this;self.close(); } 
else { window.open('','_parent',''); window.close(); } 

*/
}



</script>
<script>
function foco_inicial(){
if (document.form.txtf_clave2.value==""){
document.form.txtf_clave.focus();
}
else
{
document.form.txtf_cant.focus();
}
}
</script>
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
<style type="text/css">
<!--
body {
	background-color: #E6E6E6;
}
.style1 {color: #000000}
.style2 {
	font-size: 8px;
	color: #009999;
}
.style5 {font-size: 36}
.Estilo8 {color: #FFFFFF}
.Estilo9 {font-size: 14px}
-->
</style></head>

<body onLoad="foco_inicial();">
<table width="1133" height="346" border="3" align="center" cellpadding="2" bgcolor="#FFFFFF">
  <tr>
  
    <td width="650"><form id="form" name="form" method="post" action="kardex.jsp">
        <a href="index.jsp">Regresar a Menú </a>
        <table width="1546" height="221" border="0" align="center" cellpadding="2">
        <tr>
          <td height="90" colspan="12" bgcolor="#FFFFFF" class="logo style1">
            <div align="center">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
    <param name="movie" value="anima1p.swf" />
    <param name="quality" value="high" />
    <embed src="anima1p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
  </object>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kardex Unidad &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
                <param name="movie" value="anima4p.swf" />
                <param name="quality" value="high" />
                <embed src="anima4p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
              </object>
            </div></td>
          </tr>
        <tr>
          <td height="14" colspan="12" bgcolor="#009999"><span class="style2">ii<span class="Estilo8"><span class="Estilo9">Exportar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><img src="icono_excel.gif" border="0" usemap="#Map2"/></span></span></td>
          </tr>
        <tr>
          <td>&nbsp;</td>
          <td height="20">Ingrese Clave </td>
          <td colspan="10" class="bodyText"><input name="txtf_clave" type="text" id="txtf_clave" onKeyPress="return handleEnter(this, event)" size="15"/>&nbsp;&nbsp;Origen
                                <select name="selector" class="style1">
                                    <!--option value="ambos">Ambos</option-->
                                    <option value="1">1</option>
                                    <option value="2">2</option>
									<option value="3">3</option>
                                </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="submit" name="Submit" value="Clave" /></td>
          </tr>
		  <%
		 if(but.equals("Clave"))
     {
		 clave_jv=request.getParameter("txtf_clave");
		
		rset_001=stmt01.executeQuery("select clave,descrip from clave_med where clave='"+clave_jv+"' group by clave");
		while(rset_001.next())
		{
		clave2_jv=rset_001.getString("clave");
		descrip_jv=rset_001.getString("descrip");	
		
		
		}
		 
		 
		  }
		  
		  %>
        <tr>
          <td>CLAVE</td>
          <td height="20"><div align="center"><span class="bodyText"><%=clave_jv%></span></div></td>
          <td class="bodyText">DESCRIPCI&Oacute;N</td>
          <td colspan="9"><div align="left"><span class="bodyText"><%=descrip_jv%></span></div></td>
          </tr>
        <tr>
          <td>FOLIO</td>
         
          <td><div align="center">EXISTENCIA ANTERIOR PIEZAS </div></td>
          <td><div align="center">MOVIMIENTO</div></td>
          <td><div align="center">EXISTENCIA ACTUAL PIEZAS </div></td>
          <td><div align="center">PRESENT</div></td>
          <td><div align="center">CAJAS</div></td>
          <td><div align="center">ESTATUS</div></td>
          <td><div align="center">OBSERVACI&Oacute;N</div></td>
          <td><div align="center">ORIGEN</div></td>
          <td><div align="center">USUARIO</div></td>
          <td><div align="center">FECHA</div></td>
          <td><div align="center">HORA</div></td>
        </tr>
		<%
		if(but.equals("Clave"))
     {
		 clave_jv=request.getParameter("txtf_clave");
		org_jv=request.getParameter("selector");
		
		
		rset_002=stmt02.executeQuery("select clave,cant_anterior,origen,cant_mov,cant_actual,fecha,usuario,status,obser,hora,folio from modificacion where clave='"+clave_jv+"' and origen='"+org_jv+"' order by id desc");
	
	
	
		 
		  
		 	cant_ps_jv="1";
		while(rset_002.next())
		{
		
		rset_001=stmt01.executeQuery("select clave, cant from pasti_ampu where clave='"+clave_jv+"';");
			while (rset_001.next()){
			
				cant_ps_jv=rset_001.getString("cant");
				clave_ps_jv=rset_001.getString("clave");
				
				
			}
		
		 
		  int cantidad = Integer.parseInt(cant_ps_jv);
		  int presentacion = Integer.parseInt(rset_002.getString("cant_actual"));
		  int cajas=presentacion/cantidad;
		  int resto=presentacion%cantidad;
		  
		  tot_cajas_int+=cajas;
		  
		  tot_resto_int+=resto;
		  
		  
		  total_cajas=String.valueOf(tot_cajas_int);
			total_resto=String.valueOf(tot_resto_int);
		  //out.print(presentacion+" / "+cantidad+" = "+cajas+" - "+resto);
		
		
		%>
        <tr>
          <td width="78"><div align="center"><%=rset_002.getString("folio")%></div></td>
          
          <td width="112"><div align="center"><%=rset_002.getString("cant_anterior")%></div></td>
          <td width="76"><div align="center"><%=rset_002.getString("cant_mov")%></div></td>
		  <td width="106"><div align="center"><%=rset_002.getString("cant_actual")%></div></td>
          <td width="46"><div align="center">
            <%out.print(cant_ps_jv);%>
          </div></td>
          <td width="52"><div align="center"><%=cajas%></div></td>
          <td width="234"><div align="center"><%=rset_002.getString("status")%></div></td>
          <td width="547"><div align="center"><%=rset_002.getString("obser")%></div></td>
          <td width="38"><div align="center"><%=rset_002.getString("origen")%></div></td>
          <td width="70"><div align="center"><%=rset_002.getString("usuario")%></div></td>
          <td width="61"><div align="center"><%=rset_002.getString("fecha")%></div></td>
          <td width="52"><div align="center"><%=rset_002.getString("hora")%></div></td>
        </tr>
		<%
		cant_ps_jv="1";
		}
		}%>
      </table>
          </form>
    </td>
  </tr>
</table>
<map name="Map" id="Map">
<area shape="poly" coords="241,165" href="#" />
<area shape="poly" coords="230,40,231,88,270,43" href="#" />
</map>
<map name="Map2" id="Map2">
  <area shape="rect" coords="4,2,31,28" href="repor_kardex.jsp?boton=Show ALL&clave=<%=clave_jv%>&origen=<%=org_jv%>" />
</map>
</body>
</html>
