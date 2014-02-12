<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.text.SimpleDateFormat" import="java.util.Date" import="java.text.ParsePosition" errorPage="" %>

<% java.util.Calendar currDate = new java.util.GregorianCalendar();
   // add 1 to month because Calendar's months start at 0, not 1
   int month = currDate.get(currDate.MONTH)+1;
   int day = currDate.get(currDate.DAY_OF_MONTH);
   int year = currDate.get(currDate.YEAR);
	String date="";
	String date2=""; 
   String res=""; 
   String day1=""; 
 
 
 if(month >=1 && month <= 9)  
 {
 res ="0"+month;
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
 
 
 if(day >=1 && day <= 9)  
 {
 day1 ="0"+day;
// month=Integer.parseInt(res);
   date2=" "+day;
   date2= date2+"/"+day1;
   date2= date2+"/"+year;  
 //out.print(""+res); 
 }
 else 
{
      date2=" "+day;
      date2= date2+"/"+month;
      date2= date2+"/"+year;  
	  day1+=day;
}  

 //out.print(""+res); 
 //out.print(""+month);
%>

<%
Class.forName("org.gjt.mm.mysql.Driver");

				  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
                  Statement stmt = conn.createStatement();
				  Statement stmtv = conn.createStatement();
				  Statement stmt_total = conn.createStatement();
				  Statement stmt2 = conn.createStatement();
				  Statement stmt1 = conn.createStatement();
				  Statement stmt1m = conn.createStatement();
				  Statement stmt_001 = conn.createStatement();
				   Statement stmt1og1 = conn.createStatement();
				  Statement stmt1og2 = conn.createStatement();
				   Statement stmt_og22 = conn.createStatement();
				  Statement stmt_o1 = conn.createStatement();
				  Statement stmt_o2 = conn.createStatement();
				  ResultSet rset = null;
				  ResultSet rset_total = null;
				  ResultSet rset_001 = null;
				  ResultSet rset1 = null;
				   ResultSet rsetp = null;
				    ResultSet rsetp2 = null;
				  ResultSet rset2 = null;
				  ResultSet rset3 = null; 
				  ResultSet rset_org = null;
				  ResultSet rset_org_o1 = null;
				  ResultSet rset_org_o2 = null;
				  

String t1a_jv="",t2a_jv="",t3a_jv="",t1b_jv="",t2b_jv="",t3b_jv="",t1c_jv="",t2c_jv="",t3c_jv="",noaf_jv="",nom_jv="",ap_jv="",am_jv="",fechana="",fechaini="",fechafin="",nombre1_jv="";
String hora_ini_jv="";
String lugar_jv="";
String cb_jv="",nombre_jv="",edad_jv="",folio_jv="",cause_jv="",foliore_jv="",foliore2_jv="",foliore3_jv="",radiopro_jv="",radiosur_jv="",date_jv="",reloj_jv="",encar_jv="",juris_jv="",clave_jv="",eliminar_jv="",usu_jv="",equipo_jv="",integrantes_jv="",recibe_id_jv="",cv_dgo_jv="",cv_uni_jv="",cv_mpio_jv="",id_med_jv="",part_jv="",layout="",cv_finan_jv="",financiamiento1="",precio_jv="",monto_jv="",exi_jv="",lote2_jv="",cant_jv="",date2_jv="",precio="",carnet_jv="-",programa_jv="",fechanew="",partida_o1_jv="",partida_o2_jv="",cant_o1_jv="",cant_o2_jv="",sumatotal="";
String but="r";
String but2="r"; 
String nom_unidad="",no_jur="";
int cont1=0,cont2=0,cont3=0,cv_med2=0,cv_med3=0,pos=0,posf=0,x1=0,sur2=0,sol2=0,cant2_jv=0,resto_jv=0,cant2_o1_jv=0,cant2_o2_jv=0,mtotalot=0,mtotalotsur=0,mtotalotsur2=0,resto22_jv=0;
double monto2=0.0,precio2=0.0,ptotal=0.0,mtotal=0.0,ptotal2=0.0;
//variables medicamento 1
String med1_jv="",descrip1_jv="",indica1_jv="",sol1_jv="",sur1_jv="",present1_jv="",clave1_jv="";

//variables medicamento 1
String med2_jv="",descrip2_jv="",indica2_jv="",sol2_jv="",sur2_jv="",present2_jv="",clave2_jv="";

//variables medicamento 1
String med3_jv="",descrip3_jv="",indica3_jv="",sol3_jv="",sur3_jv="",present3_jv="",clave3_jv="",t1_jv="",t2_jv="",t3_jv="",tfecha_jv="";
//varibles medico
String medico_jv="",uni_jv="",cedu_jv="",nomed_jv="",status="";

String financiamiento[]= new String[5000];
String afiliado[]= new String[5000];
String afiliadoEdad[]= new String[5000];
String origen[]= new String[5000];
String lotes[]= new String[5000];
String exis[]= new String[5000];
String org[]= {"1","2"};
//array para fuentes
String finan[] = {"SEGURO POPULAR","OPORTUNIDADES","FASSA","ASE","SMNG","Gasto Catastróficos"};
String encontrado="",oring="";
int ban=0,ban2=0,afi=0;

financiamiento[0]="";
afiliado[0]="";
origen[0]="";
int cont=0,cont5=0;
 String perfil="";
  String turno="";
  String vigencia = "";
try{
		perfil=request.getParameter("perfil");
		
        
		  
		
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
		programa_jv=request.getParameter("programa");   
		
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

foliore3_jv=request.getParameter("txtf_foliore");




//out.print(""+foliore_jv);
if(but.equals("Mostrar"))
     {
	  //out.print("hi");
	  cb_jv=request.getParameter("txtf_cb");
	  foliore_jv=request.getParameter("txtf_foliore");
	  carnet_jv=request.getParameter("txtf_carnet");
	  t1_jv=request.getParameter("txtf_t1");
	  t2_jv=request.getParameter("txtf_t2");
	  t3_jv=request.getParameter("txtf_t3");
	  edad_jv=request.getParameter("txtf_edad");
	  folio_jv=request.getParameter("txtf_foliosp");
	  tfecha_jv=t1_jv+t2_jv+t3_jv;
	  //out.print(""+tfecha_jv);
	  
	 rset3= stmt.executeQuery("select * from receta where folio_re='"+foliore_jv+"' ");
	 while(rset3.next())
	 {
	 cont5++;
	 }
	 if (cont5>0)
	 {
	 %>
	 <script>
	 alert("RECETA EXISTENTE")
	 </script>
	 <%
	 foliore_jv="";
	 edad_jv="0";
	 } else
	 { 
	 rsetp= stmt.executeQuery("select * from seguro_p2 where folio='"+cb_jv+"'    ");
	 
	 rsetp2= stmtv.executeQuery("select * from seguro_p2 where folio='"+cb_jv+"'  and f_fin >= sysdate() ");

	 if(!rsetp2.next())
	{
			vigencia = "false";		 
	}
	 String strFecha = "";
	 Date fechaActual = new Date();
	 SimpleDateFormat formatoDeFecha = new SimpleDateFormat("dd/MM/yyyy");
     strFecha = formatoDeFecha.format(fechaActual);
	 
 	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");  
 	Date fecha1 = sdf.parse(strFecha , new ParsePosition(0));
	 
	while(rsetp.next())
				 {
					
				  String fechaLocal =formatoDeFecha.format(rsetp.getDate("f_fin"));
					 
				  Date fecha2 = sdf.parse(fechaLocal , new ParsePosition(0));
					
				
				
					
					 afiliado[afi]=rsetp.getString("nombre1");    
					  afiliadoEdad[afi]=rsetp.getString("nombre1")+","+rsetp.getString("edad") +","+ vigencia +","+ rsetp.getString("folio") +","+ rsetp.getString("f_fin");    
                     afi++;
					 //edad_jv=rsetp.getString("edad");
					 folio_jv=rsetp.getString("folio");
					 programa_jv=rsetp.getString("programa");
			
	 }
	  
	  
	  
	  
	  }	  
					
	cb_jv="";
	clave1_jv="";
	descrip1_jv="";
	part_jv="";
	edad_jv="";
 
}


if(but.equals("Guardar"))
     {
     folio_jv=request.getParameter("txtf_foliosp"); 
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
  


	 stmt.execute("update seguro_p2 set f_inicio='"+fechaini+"' where folio='"+folio_jv+"'   ");
	 stmt.execute("update seguro_p2 set f_fin='"+fechafin+"' where folio='"+folio_jv+"'   ");
	 
	 %>
	 <script>
	 alert("DATOS GUARDADOS")
	 </script>
	 <%
	  	 
     }

	

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>.:Receta Electr&oacute;nica WEB:.</title>
<script language="javascript" src="list02.js">




</script>


<script language="javascript" src="list02.js"></script>
<script type="text/javascript">



function validar(e) { // 1
    tecla = (document.all) ? e.keyCode : e.which; // 2
    if (tecla==8) return true; // 3
  patron = /\d/; // Solo acepta números



  //SOLO LETRAS-->patron =/[A-Za-z\s]/; // 4
  //SOLO LETRAS Y NUMEROS --> patron = /\d/; // Solo acepta números
  //numeros y letras --> patron = /\w/; // Acepta números y letras
//no aceptan numeros --> patron = /\D/; // No acepta números
//aceptan las letras ñÑ --> patron =/[A-Za-zñÑ\s]/; // igual que el ejemplo, pero acepta también las letras ñ y Ñ  
//determinado letras y numeros --> patron = /[ajt69]/;//También se puede hacer un patrón que acepte determinados caracteres, poniendolos entre corchetes. Veamos un ejemplo para validar que solo se acepte a, j, t, 6 y 9:
   
    te = String.fromCharCode(tecla); // 5
    return patron.test(te); // 6
} 

function foco_inicial(){

	if(document.form.txtf_med1.value==""){
	document.form.txtf_med1.focus();
	}
	else if(document.form.txtf_sol1.value==""){
	document.form.txtf_sol1.focus();
	}
	else if(document.form.txtf_medico.value==""){
	document.form.txtf_medico.focus();
	}
	if((document.form.txtf_foliosp!="")&&(document.form.txtf_nomed.value=="")){
	document.form.slct_afiliados.focus();
	}
	if(document.form.txtf_foliosp.value==""){
	document.form.txtf_cb.focus();
	}
	
	//alert("Entra");
	/*if (document.form.txtf_t1.value==""){
	document.form.txtf_t1.focus();
	}*/
	
	if (document.form.txtf_foliore.value==""){
	document.form.txtf_foliore.focus();
	}
	//alert("Entra");
	
	
	mueveReloj();
}
var statSend = false;
function checkSubmit() {
    if (!statSend) {
        statSend = true;
        return true;
    } else {
        alert("El formulario ya se esta enviando...");
        return false;
    }
}

</script>

<style type="text/css">
<!--
.style2 {
	font-size: 10px;
	font-family: Arial, Helvetica, sans-serif;
}
.style4 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	color: #00F;
}
.style5 {font-size: 14px}
.style7 {
	font-size: 16px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style11 {font-size: 12px}
.style13 {
	font-size: 12px;
	color: #990000;
	font-weight: bold;
}
.Estilo1 {color: #000000}
.Estilo4 {
	color: #000066;
	font-weight: bold;
}
.Estilo5 {
	font-size: 16px;
	font-weight: bold;
}
.Estilo6 {color: #000099}
.Estilo7 {
	font-size: 10px;
	font-family: Arial, Helvetica, sans-serif;
	color: #000099;
	font-weight: bold;
}
.Estilo8 {color: #003399}
.style4 table tr td div {
	color: #000;
}
.da {
	font-size: 12px;
}
.Estilo11 {	font-size: 12px;
	font-weight: bold;
}
body {
	background-color: #FFF;
	background-image: url();
	background-repeat: repeat;
}
-->
</style>
</head>

<body onLoad="foco_inicial();">
<form name="form" method="post" onsubmit="return checkSubmit();" action="renovacion.jsp?nombre=<%=nombre_jv%>&edad=<%=edad_jv%>&folio=<%=folio_jv%>">
<table width="703" border="1">
  <tr>
    <th width="644" bgcolor="#CCCCCC" class="TITULO" scope="col"><h2>RENOVACI&Oacute;N DE VIGENCIA DE AFILIADOS AL SEGURO POPULAR</h2></th>
  </tr>
</table>

<table width="704" border="0">
  <tr>
    <th width="339" height="89" scope="col" align="left"><img src="logo_dgo.jpg" width="112" height="87" alt="logo" /></th>
    <th width="339" scope="col" align="right"><img src="logo_salud.jpg" width="99" height="76" /></th>
  </tr>
</table>

<table width="703" border="0">
  <tr>
    <th width="196" bgcolor="#CCCCCC" class="azul" scope="col"><div align="left"><u><span class="style7">Introduzca C&oacute;digo  Paciente:</span></u></div></th>
    <th width="242" bgcolor="#CCCCCC" class="left" scope="col"><span class="style7">
      <input name="txtf_cb" type="text" id="txtf_cb"  onchange="<%=but="Mostrar"%>" />
      <input name="Submit" type="submit" class="subHeader" value="Mostrar"/>
    </span></th>
    <th width="243" bgcolor="#CCCCCC" class="left" scope="col"><span class="style7">
      <select name="slct_afiliados" id="slct_afiliados" class="style2" onkeypress="return handleEnter(this, event)" onchange="putNom(this.form)">
        <option>---- AFILIADOS------</option>
        <%
		   if(afi>0)
		   {
		%>
        <span class="style2">AFILIADOS
                  
					
                
        
        
        
        
        
        <%
		     
             for(x1=0;x1<afi;x1++)
                {
                  // out.print(""+x1);
           %>
        <option value="<%=afiliadoEdad[x1]%>"><%=afiliado[x1]%></option>
        <%
					  }
					%>
        <%
					  }
					%>
      </select>
    </span></th>
  </tr>
  <tr>
    <th bgcolor="#CCCCCC" class="azul" scope="row"><div align="left"><u><span class="style7">Nombre Del Paciente:</span></u></div></th>
    <td bgcolor="#CCCCCC" class="left"><span class="style5">
      <input name="txtf_paciente" type="text" class="style13" value="<%=nombre_jv%>" size="40"  onkeypress="return handleEnter(this, event)"/>
    </span></td>
    <td bgcolor="#CCCCCC" class="left"><span class="style7">&nbsp;&nbsp;&nbsp;
      <input name="txtf_foliosp" type="text" class="style13" value="<%=folio_jv%>" size="22
              " onkeypress="return handleEnter(this, event)"/>
      N&deg; SP. </span></td>
  </tr>
  <tr>
    <th bgcolor="#CCCCCC" class="azul" scope="row"><div align="left"><u><span class="style7">Edad:</span></u></div></th>
    <td bgcolor="#CCCCCC" class="left"><span class="style7">
      <input name="txtf_edad" type="text" class="style13" value="<%=edad_jv%>" size="10"  onkeypress="return handleEnter(this, event)"/>
    </span></td>
    <td bgcolor="#CCCCCC" class="left">&nbsp;</td>
  </tr>
  <tr>
    <th bgcolor="#CCCCCC" class="azul" scope="row"><div align="left"><u><span class="style7">Fecha De Inicio De Vigencia:</span></u></div></th>
    <td bgcolor="#CCCCCC" class="left"><span class="style7">
      <input name="txtf_t1b" type="text" id="fechadia_id" onkeypress="return 					  					handleEnter(this, event)" onkeyup="putDaysb()"  size="1" maxlength="2"/>
      <strong> /</strong>
      <input name="txtf_t2b" type="text" id="fechames_id" size="1" maxlength="2" 		  					onkeyup="putMonthssb()"  onkeypress="return handleEnter(this, event)" />
      <strong> /</strong>
      <input name="txtf_t3b" type="text" id="fechaano_id" size="2" maxlength="4" 			  					onkeyup="putYearssb(this.form)"  onkeypress="return handleEnter(this, event)" />
    </span></td>
    <td bgcolor="#CCCCCC" class="left">&nbsp;</td>
  </tr>
  <tr>
    <th bgcolor="#CCCCCC" class="azul" scope="row"><div align="left"><u><span class="style7">Fecha De Fin De Vigencia:</span></u></div></th>
    <td bgcolor="#CCCCCC" class="left"><span class="style7">
      <input name="txtf_t1c" id="fecha_diav" type="text" onkeypress="return handleEnter(this, event)" onkeyup="putDaysc()"  size="1" maxlength="2"/>
      <strong> /</strong>
      <input name="txtf_t2c"  id="fecha_mesv" type="text" size="1" maxlength="2" onkeyup="putMonthssc()"  onkeypress="return handleEnter(this, event)" />
      <strong> /</strong>
      <input name="txtf_t3c"  id="fecha_anov" type="text" size="2" maxlength="4" onkeyup="putYearssc(this.form)"  onkeypress="return handleEnter(this, event)" />
    </span></td>
    <td bgcolor="#CCCCCC" class="left">&nbsp;</td>
  </tr>
  <tr>
    <th bgcolor="#CCCCCC" class="azul" scope="row"><div align="left"><u></u></div></th>
    <td bgcolor="#CCCCCC" class="left"><div align="center"> <span class="style2">
      <input type="submit" name="Submit" value="Guardar" onclick="return verificaPaciente(document.forms.form)" />
    </span></div></td>
    <td bgcolor="#CCCCCC" class="left">Cerrar Aplicación
      <button name="boton" type="button" class="style7" onclick="CloseWin()" />      
      <img src="borr.jpg" /></td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
