<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%
String t1a_jv="",t2a_jv="",t3a_jv="",t1b_jv="",t2b_jv="",t3b_jv="",t1c_jv="",t2c_jv="",t3c_jv="",noaf_jv="",nom_jv="",ap_jv="",am_jv="",fechana="",fechaini="",fechafin="",nombre1_jv="";
String but="r";
String cb_jv="",nombre_jv="",edad_jv="",folio_jv="",cause_jv="",foliore_jv="",foliore2_jv="",foliore3_jv="",radiopro_jv="",radiosur_jv="",date_jv="",reloj_jv="",encar_jv="",juris_jv="",clave_jv="",eliminar_jv="",usu_jv="",equipo_jv="",integrantes_jv="",recibe_id_jv="",cv_dgo_jv="",cv_uni_jv="",cv_mpio_jv="",id_med_jv="",part_jv="",layout="",cv_finan_jv="",financiamiento1="",precio_jv="",monto_jv="",exi_jv="",lote2_jv="",cant_jv="",date2_jv="",precio="",carnet_jv="";
String med1_jv="",descrip1_jv="",indica1_jv="",sol1_jv="",sur1_jv="",present1_jv="",clave1_jv="";
String med2_jv="",descrip2_jv="",indica2_jv="",sol2_jv="",sur2_jv="",present2_jv="",clave2_jv="";
String med3_jv="",descrip3_jv="",indica3_jv="",sol3_jv="",sur3_jv="",present3_jv="",clave3_jv="",t1_jv="",t2_jv="",t3_jv="",tfecha_jv="",programa_jv="";
//varibles medico
String medico_jv="",uni_jv="",cedu_jv="",nomed_jv="",status="";
String nom_unidad="",no_jur="";

try{
        nombre_jv=request.getParameter("nombre");
		edad_jv=request.getParameter("edad");      
		folio_jv=request.getParameter("folio");
		descrip1_jv=request.getParameter("descrip1");
		indica1_jv=request.getParameter("indica1");   
		present1_jv=request.getParameter("present1");   
		sol1_jv=request.getParameter("sol1");   
		sur1_jv=request.getParameter("sur1");   
		clave1_jv=request.getParameter("clave1");
		descrip2_jv=request.getParameter("descrip2");
		indica2_jv=request.getParameter("indica2");   
		present2_jv=request.getParameter("present2");   
		sol2_jv=request.getParameter("sol2");   
		sur2_jv=request.getParameter("sur2");   
		clave2_jv=request.getParameter("clave2"); 
		descrip3_jv=request.getParameter("descrip3");
		indica3_jv=request.getParameter("indica3");   
		present3_jv=request.getParameter("present3");   
		sol3_jv=request.getParameter("sol3");   
		sur3_jv=request.getParameter("sur3");   
		clave3_jv=request.getParameter("clave3");
		cause_jv=request.getParameter("cause");
		foliore_jv=request.getParameter("foliore");
		//foliore3_jv=request.getParameter("foliore2");
		encar_jv=request.getParameter("encar");		   
		juris_jv=request.getParameter("juris1");
		clave_jv=request.getParameter("clave_uni");		   
  uni_jv=request.getParameter("univer");
		cedu_jv=request.getParameter("cedu");
		nomed_jv=request.getParameter("nomed");
	
		cv_dgo_jv=request.getParameter("cv_dgo");
		cv_uni_jv=request.getParameter("cv_uni");
		cv_mpio_jv=request.getParameter("cv_mpio");
		
		part_jv=request.getParameter("part");
		id_med_jv=request.getParameter("id_med");
		t1_jv=request.getParameter("day5");
		t2_jv=request.getParameter("mes5");
		t3_jv=request.getParameter("aa5");
		carnet_jv=request.getParameter("carnet");
		   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }

//out.print(""+foliore3_jv);
try{
        nom_unidad=request.getParameter("uni");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
try{
        no_jur=request.getParameter("juris");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }

try { 


        but=""+request.getParameter("Submit");
		//but2=""+request.getParameter("Submit2");
		//out.print("but ="+but);
        
    }catch(Exception e){System.out.print("not");} 
	
	
	if(but.equals("Guardar"))
     {
	 noaf_jv=request.getParameter("txtf_noaf");
	 nom_jv=request.getParameter("txtf_nom");
	 ap_jv=request.getParameter("txtf_ap");
	 am_jv=request.getParameter("txtf_am");
	 t1a_jv=request.getParameter("txtf_t1a");
	 t2a_jv=request.getParameter("txtf_t2a");
	 t3a_jv=request.getParameter("txtf_t3a");
	 t1b_jv=request.getParameter("txtf_t1b");
	 t2b_jv=request.getParameter("txtf_t2b");
	 t3b_jv=request.getParameter("txtf_t3b");
	 t1c_jv=request.getParameter("txtf_t1c");
	 t2c_jv=request.getParameter("txtf_t2c");
	 t3c_jv=request.getParameter("txtf_t3c");
	 programa_jv=request.getParameter("programa");
	 fechana=t3a_jv+t2a_jv+t1a_jv;
	 fechaini=t3b_jv+t2b_jv+t1b_jv;
	 fechafin=t3c_jv+t2c_jv+t1c_jv;
	 nombre1_jv=nom_jv+" "+ap_jv+" "+am_jv;
	 
	 Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
  Statement stmt = conn__001.createStatement();


	 stmt.execute("insert into seguro_p2 values ('"+noaf_jv+"','"+ap_jv+"','"+am_jv+"','"+nom_jv+"','"+nombre1_jv+"','-','-','-','"+fechaini+"','"+fechafin+"','"+programa_jv+"','0','"+fechana+"','-',0)");
	 
	 %>
	 <script>
	 alert("DATOS GUARDADOS")
	 </script>
	 <%
	  	 
     }



%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>.: Datos Paciente:.</title>

<script language="javascript" src="pacienteMedico.js">
</script>
<script language="javascript" src="list02.js">


function validaTurno() 
{
	
	
		
		alert("Debes elegir un turno");
		return false;
	
	
}


function close1()
{//alert("huge");


top.close();  
/*if(navigator.appName=="Microsoft Internet Explorer") { 
this.focus();self.opener = this;self.close(); } 
else { window.open('','_parent',''); window.close(); } 

*/
}

</script>

<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
<style type="text/css">
<!--
.style5 {font-size: 36}
.style7 {color: #000000}
#Layer1 {
	position:absolute;
	left:0px;
	top:0px;
	width:125px;
	height:172px;
	z-index:1;
}
body {
	background-color: #E6E6E6;
}
.style8 {
	font-family: "Times New Roman", Times, serif;
	font-size: 18px;
	font-weight: bold;
}
.style11 {
	color: #009999;
	font-size: 8px;
}
.Estilo1 {
	font-size: 12px;
	font-weight: bold;
}
.Estilo2 {
	font-size: 14px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<form id="form" name="form" method="post" action="paciente.jsp?uni=<%=nom_unidad%>&juris=<%=no_jur%>&nombre=<%=nombre_jv%>&edad=<%=edad_jv%>&folio=<%=folio_jv%>&clave1=<%=clave1_jv%>&descrip1=<%=descrip1_jv%>&present1=<%=present1_jv%>&indica1=<%=indica1_jv%>&sol1=<%=sol1_jv%>&sur1=<%=sur1_jv%>&cause=<%=cause_jv%>&foliore=<%=foliore_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&univer=<%=uni_jv%>&cedu=<%=cedu_jv%>&nomed=<%=nomed_jv%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&day5=<%=t1_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>">
  <table width="650" height="335" border="3" align="center" cellpadding="2" bgcolor="#FFFFFF">
    <tr>
      <td width="731"><table width="650" height="478" border="0" align="center" cellpadding="2">
        <tr>
          <th width="114" height="82" scope="row"><label>
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
              <param name="movie" value="anima1p.swf" />
              <param name="quality" value="high" />
              <embed src="anima1p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
            </object>
            <br />
          </label></th>
          <td colspan="2"><div align="center" class="pageHeader style7">
              <p class="style8">Datos del Paciente </p>
          </div>
            <label></label>
            <label></label></td>
          <td width="114"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
            <param name="movie" value="anima3p.swf" />
            <param name="quality" value="high" />
            <embed src="anima3p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
          </object></td>
        </tr>
        <tr>
          <th height="14" colspan="4" bgcolor="#009999" scope="row"><span class="style11">OOO</span></th>
          </tr>
        <tr>
          <th height="26" scope="row"><div align="center"></div></th>
          <td width="167">&nbsp;</td>
          <td width="229">&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th height="26" scope="row">&nbsp;</th>
          <td><span class="style5">
            <label></label>
            </span><div align="left" class="Estilo1"><strong>No. AFILIACION</strong>:
            </div></td>
          <td><input name="txtf_noaf" type="text" id="txtf_noaf"  onKeyPress="validar(event);"/></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th height="26" scope="row">&nbsp;</th>
          <td class="bodyText"><div align="left" class="Estilo1"><strong>NOMBRE(s)</strong>:
            <label></label>
          </div></td>
          <td><span class="bodyText"><span class="style5">
            <input name="txtf_nom" type="text" id="txtf_nom" onKeyPress="return handleEnter(this, event)" onChange="mayNom(this.form)"/>
          </span></span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th height="26" scope="row">&nbsp;</th>
          <td class="bodyText"><div align="left" class="Estilo1"><strong>APELLIDO PATERNO:</strong>
                <label></label>
          </div></td>
          <td><span class="bodyText"><span class="style5">
            <input name="txtf_ap" type="text" id="txtf_ap" onKeyPress="return handleEnter(this, event)" onChange="mayApep(this.form)"/>
          </span></span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th height="26" scope="row">&nbsp;</th>
          <td class="bodyText"><div align="left" class="Estilo1"><strong>APELLIDO MATERNO:</strong>
              <label></label>
          </div></td>
          <td><span class="bodyText"><span class="style5">
            <input name="txtf_am" type="text" id="txtf_am" onKeyPress="return handleEnter(this, event)" onChange="mayApem(this.form)"/>
          </span></span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th height="28" scope="row">&nbsp;</th>
          <td class="bodyText"><div align="left" class="Estilo1">FECHA DE NACIMIENTO: </div></td>
          <td><span class="bodyText"><div align="left" class="Estilo1">
            
                  <input name="txtf_t1a" type="text" onKeyPress="return handleEnter(this, event)" onKeyUp="putDaysa()"  size="1" maxlength="2"/>
			        <strong>                    /</strong>
                    <input name="txtf_t2a" type="text" size="1" maxlength="2" onKeyUp="putMonthssa()"  onKeyPress="return handleEnter(this, event)" />
                    <strong>                    /</strong>
                    <input name="txtf_t3a" type="text" size="2" maxlength="4" onKeyUp="putYearssa(this.form)" onKeyPress="return handleEnter(this, event)" />
          </div></span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th height="23" scope="row">&nbsp;</th>
          <td class="style5"><div align="left" class="Estilo1">PROGRAMA: </div></td>
          <td class="style5"><select name="programa" class="style13" >
                                <option value="SP">SEGURO POPULAR</option>
                                <option value="PA">POBLACION ABIERTA</option>
								<option value="OP">OPORTUNIDADES</option>
								
                              </select></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th height="11" scope="row">&nbsp;</th>
          <td bordercolor="#FF0000" bgcolor="#CCCCCC" class="style5"><div align="left" class="Estilo1">DATOS DE LA POLIZA</div></td>
          <td class="style5">&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th height="13" scope="row">&nbsp;</th>
          <td><div align="left" class="Estilo1"><strong>FECHA DE INICIO VIGENCIA </strong>: </div></td>
          <td><div align="left" class="Estilo1">
            
                  <input name="txtf_t1b" type="text" id="fechadia_id" onKeyPress="return handleEnter(this, event)" onKeyUp="putDaysb()"  size="1" maxlength="2"/>
			        <strong>                    /</strong>
                    <input name="txtf_t2b" type="text" id="fechames_id" size="1" maxlength="2" onKeyUp="putMonthssb()"  onKeyPress="return handleEnter(this, event)" />
                    <strong>                    /</strong>
                    <input name="txtf_t3b" type="text" id="fechaano_id" size="2" maxlength="4" onKeyUp="putYearssb(this.form)"  onKeyPress="return handleEnter(this, event)" />
          </div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th height="26" scope="row">&nbsp;</th>
          <td><div align="left" class="Estilo1"><strong>FECHA DE FIN VIGENCIA </strong>:</span></div></td>
          <td><div align="left" class="Estilo1">
            
                  <input name="txtf_t1c" id="fecha_diav" type="text" onKeyPress="return handleEnter(this, event)" onKeyUp="putDaysc()"  size="1" maxlength="2"/>
			        <strong>                    /</strong>
                    <input name="txtf_t2c"  id="fecha_mesv" type="text" size="1" maxlength="2" onKeyUp="putMonthssc()"  onKeyPress="return handleEnter(this, event)" />
                    <strong>                    /</strong>
                    <input name="txtf_t3c"  id="fecha_anov" type="text" size="2" maxlength="4" onKeyUp="putYearssc(this.form)"  onKeyPress="return handleEnter(this, event)" />
          </div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th height="18" scope="row">&nbsp;</th>
          <td colspan="2"><div align="center"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th height="47" scope="row">&nbsp;</th>
          <td colspan="2"><div align="center">
            <input type="submit" name="Submit" value="Guardar" onClick="return verificaPaciente(document.forms.form)" />
          &nbsp;Cerrar Aplicación <button name="boton" type="button" class="style7" onClick="CloseWin()" /><img src="borr.jpg" /></button></div></td>
          <td>&nbsp;</td>
        </tr>
      </table></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>
