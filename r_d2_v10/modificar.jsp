<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" import="java.util.Date" import="java.text.SimpleDateFormat"%>
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
<%
/*--------------------------------------------------------------------
Nombre del Archivo: modifica_inv_alm_cb.jsp
Fecha:2010
Autor: RHW
  --------------------------------------------------------------------*/
  
Class.forName("org.gjt.mm.mysql.Driver");

Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/issemym");
Statement stmt__001 = null;  
ResultSet rset__001=null;

ResultSet rset__002=null;
Statement stmt__002 = null;  
stmt__002 = conn__001.createStatement();


 String enc_jv="";
 String clagto_jv="";
 String unigto_jv="";
 String juris3_jv="";
 String juris4_jv="";
 
 String cajas_jv="",pzas_jv="",resto_jv="";
 int cajas_int=0,pzas_int=0,restos_jv=0,exist_jv=0,ban=0;
 
 String encar2_jv="";
 String cuantos_jv="1";
 String exi_jv="";
 
 String cie_jv="";
 int loop=0;
 
 String cve11_jv="";
 
 String cveuni_jv="";
 String fecha="";
 String sps_jv="";
 String jurisdi_jv="";
 String folr_jv="";
 String umed_jv="";
 String tusu_jv="";
 String medico_jv="";
 String paciente_jv="";
 String ccie_jv="";
 String cve1_jv="";
 String desc1_jv="";
 String lote1_jv="";
 String cad1_jv="";
 String cr1_jv="";
 String cs1_jv="";
 //String exi1_jv="";
 String cve2_jv="";
 String descr2_jv="";
 String llote2_jv="";
 String cad2_jv="";
 String cr2_jv="";
 String cs2_jv="";
 String exxi2_jv="";
 String cve3_jv="";
 String descc3_jv="";
 String lote33_jv="";
 String cad3_jv="";
 String cr3_jv="";
 String cs3_jv="";
 String exi33_jv="";
  
   //variable para agregar a la tabla de modificar
  //String clave1_jv="",descrip1_jv="",lote21_jv="",cad21_jv="",ubi1_jv="",cajas1_jv="",pzas1_jv="",resto1_jv="",exi1_jv="";
String pass_jv="";


//fin de variables

int correct1=0;
String cb_jv="",nombre_jv="",edad_jv="",folio_jv="",cause_jv="",foliore_jv="",foliore2_jv="",radiopro_jv="",radiosur_jv="",date_jv="",reloj_jv="",encar_jv="",juris_jv="",clave_jv="",eliminar_jv="",usu_jv="",equipo_jv="",integrantes_jv="",recibe_id_jv="";
//String eliminar_jv="";
//variables medicamento 1
String med1_jv="",descrip1_jv="",indica1_jv="",sol1_jv="",sur1_jv="",present1_jv="",clave1_jv="";

//variables medicamento 1
String med2_jv="",descrip2_jv="",indica2_jv="",sol2_jv="",sur2_jv="",present2_jv="",clave2_jv="";

//variables medicamento 1
String med3_jv="",descrip3_jv="",indica3_jv="",sol3_jv="",sur3_jv="",present3_jv="",clave3_jv="";
//varibles medico
String medico_jv="",uni_jv="",cedu_jv="",nomed_jv="";
String nom_unidad="",no_jur="";

 	  try {
       		eliminar_jv = request.getParameter("id_prov");
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
		encar_jv=request.getParameter("encar");		   
		juris_jv=request.getParameter("juris1");
		clave_jv=request.getParameter("clave_uni");	
		nom_unidad=request.getParameter("uni"); 
		no_jur=request.getParameter("juris");
		uni_jv=request.getParameter("univer");
		cedu_jv=request.getParameter("cedu");
		nomed_jv=request.getParameter("nomed");
		
			       			   
	  } catch (Exception e) { }

  
 
 
 //variable para el proy captura de cb
 String cb_jv="";
 
 
 
 //variable para el segundo Mostrar
 	String clave2_jv="";
	String desc2_jv= "";
	String lote2_jv= ""; 
	String lote_aux_jv= "";
	String lote22_jv= "";
	String cadu2_jv= "";
	String exis2_jv= "";
	String costo2_jv="";
	String exi2_jv="";
	
	String juris2_jv="";
	String date_jv="";
	String day_jv="";
	String mounth_jv="";
	String year_jv="";
//variable for the Captura 3
    String clave3_jv="";
	String desc3_jv= "";
	String lote3_jv= ""; 
	//String lote_3_jv= "";
	String cadu3_jv= "";
	String exis3_jv= "";
	String costo3_jv="";
	String exi3_jv="";
	
	String juris_4_jv="";
	
//variables for get the values of the txtf

String spss_jv="";

String med_jv=""; 
String pac_jv=""; 
String tu_jv="";
 
String spss2_jv="";
String fol22_jv="";
String med2_jv=""; 
String pac2_jv=""; 
String tu2_jv="";

 
cuantos_jv=request.getParameter("txtf_cant");

rset__002 = stmt__002.executeQuery("SELECT STR_TO_DATE('"+date+"', '%d/%m/%Y')"); 
                    while(rset__002.next()){
                    date= rset__002.getString("STR_TO_DATE('"+date+"', '%d/%m/%Y')");
					}	
  

     int tam=0,tam2=0,x1=0;
     String cad1[]=new String[10000];  //array for show clients 
     String arr[]= new String[5000];     //array for the 
	 String lotes[]= new String[5000];
	 String lotes2[]= new String[5000];
	 String lotes3[]= new String[5000];
	 String exis[]= new String[5000];
	 
	 String cie[]= new String[5000];
	 
	 String cad[]= new String[5000];
	 String cad2[]= new String[5000];
	 String cad3[]= new String[5000];
	 
	 lotes[0]="";
	 lotes2[0]="";
	 cad[0]="";
	 cad2[0]="";
     String name="";
     String service_jv="";
	 int pos=0;
	 int pos2=0;
	 int pos3=0;
	 int cont2=0;
	 int cont3=0;
     String mail[]=new String[10];
	 String meses[]=new String[12];
	 meses[0]="Enero";
	 meses[1]="Febrero";
	 meses[2]="Marzo";
	 meses[3]="Abril";
	 meses[4]="Marzo";
	 meses[5]="Abril";
	 meses[6]="Mayo";
	 meses[7]="Junio";
	 meses[8]="Julio";
	 meses[9]="Agosto";
	 meses[10]="Septiembre";
	 meses[11]="Octubre";
	 meses[0]="Noviembre";
	 meses[1]="Diciembre";
	 
     int altaOK=0;
     int altaOKAY=0;	 
     String but="r";
	 String clave="";

     String juris_jv="";
	 //String juris2_jv="";
     String cs_jv="";
	 String lotes2_jv="";
	 
	 String check=request.getParameter("txtf_5");
	 int c=0;
	 int tam_3=0;
	 mail[0]="lasalle_tur@yahoo.com";
     String val="h";
	 String user="h";
	 //variables para mostrar en campos
	    String clave_jv= "";
		String ubi_jv= "";
		String cod_jv= "";
		String descrip_jv= "";
		String desc_jv=  "";
	    String lote_jv= "";
		String cadu_jv= "";
		String exis_jv= "";
		String costo_jv= "";
int cont=1;

        String marca_jv= "";
		String present_jv= "";
		String marca1_jv= "";
		String present1_jv= "";
//Rutina para obtener las claves 
	   
	 

try{
        altaOK=Integer.parseInt(request.getParameter("altaok"));   
       }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
	   
   try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}


 
 	if(but.equals("Modificar"))
     {
		  rset__002=stmt__002.executeQuery("select clave,descr,lote,cadu,ubi,cant,cajas,piezas,resto from datos_inv_cod where id_cap_inv='"+eliminar_jv+"'");
  			
  //out.print("clave"+folgnk_jv);
   			while(rset__002.next()) 
                  {
				 	clave1_jv=rset__002.getString("clave");
				descrip1_jv=rset__002.getString("descr");
					lote21_jv=rset__002.getString("lote");
				//lote_aux1_jv=rset__002.getString("lote");
					cad21_jv=rset__002.getString("cadu");
					ubi1_jv=rset__002.getString("ubi");
					exi1_jv=rset__002.getString("cant");	
				    cajas1_jv=rset__002.getString("cajas");	
					pzas1_jv=rset__002.getString("piezas");
					resto1_jv=rset__002.getString("resto");
					
				  }
				  
		 correct1=3;
		 
	 ban=1;
	// java.util.Calendar currDate = new java.util.GregorianCalendar();
	 cod_jv=request.getParameter("txtf_cod");
	 clave_jv=request.getParameter("txtf_2");
	 descrip_jv =  request.getParameter("txtf_descrip");
	 lote2_jv=  request.getParameter("txtf_lote");
	 cad2_jv =  request.getParameter("txtf_caduc");
	 ubi_jv=request.getParameter("txtf_ubi");
	 lote_aux_jv = request.getParameter("txtf_lote_aux");
	 //las que se agregaron
	 cajas_jv=request.getParameter("txtf_exi");
	 pzas_jv= request.getParameter("txtf_pza");
	 resto_jv=request.getParameter("txtf_rto");
	 exi_jv=request.getParameter("txtf_exis2");
	 marca_jv=request.getParameter("txtf_marca");
	 marca1_jv=request.getParameter("txtf_marca1");
	 present_jv=request.getParameter("txtf_um");
	 present1_jv=request.getParameter("txtf_um1");
	 
	 cajas_int=Integer.parseInt(cajas_jv);
	 pzas_int=Integer.parseInt(pzas_jv);
	 restos_jv=Integer.parseInt(resto_jv);
	 
	 exist_jv=(cajas_int*pzas_int)+restos_jv;
	 exi_jv="";
	 exi_jv=exi_jv+exist_jv;
	  
	 Date fecha1=new Date();
	 int bansicadu =1;
	 SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
	 if(!cad2_jv.equals("")){
	 fecha1=df.parse(cad2_jv);
	 //int month = currDate.get(currDate.MONTH)+1;
     int month2 = (fecha1.getMonth())+1;	 
	 int difmonth = (month2 - month);
	 
	 //int year = currDate.get(currDate.YEAR);
     int year2 = (fecha1.getYear())+1900;
	 int difyear = (year2 - year);
	 
	 //int bansicadu =1;
	 if(difyear==0){
	 	if(difmonth < 6)
			bansicadu=0;		
	 }else if(difyear<0)
	 	bansicadu=0; 
		
	if(difyear>0){
		
		if(difmonth ==0 ){
			if(month2==month);
			else{
			bansicadu=0; 
			}
			}
		}
		//out.print("si o no"+bansicadu);
	 	//out.print("mes"+month);
	    //out.print("num_meses"+difmonth);
		//out.print("meses"+month2);
	}
	 
	 //clave_jv=request.getParameter("txtf_2");
	 // descrip_jv= request.getParameter("txtf_descrip");
		 	 Connection conn = 
                  DriverManager.getConnection("jdbc:mysql://localhost/issemym");
                  Statement stmt = conn.createStatement();				  
                  stmt.execute("commit"); 
 				   
				  //stmt.execute("insert into folio_rec values(null,'morelia')");
                  //stmt.execute("commit"); 

						   
 		 
 			//stmt_fol.execute("update datos_small_fol set status=status+1 where folio_rece='"+folio+"'");
			//update datos_prov_1_0807 set cve_med='0113',descri='BUTILHIOSCINA/metamizol 36grag 10mg/250m',lote='S10820',cadu='30/09/2010',cant='57' where id_rem_prov='275';update datos_inv_cod set clave='mmm',descr='mmm',lote='mmm',cadu='nnnn',cant='nnn' where id_cap_inv='1';
			 System.out.print("Si entra");
			
	 		stmt.execute("update datos_inv_cod set cod_bar='"+cod_jv+"',clave='"+clave_jv+"',descr='"+descrip_jv+"',lote='"+lote2_jv+"',cadu='"+cad2_jv+"',ubi='"+ubi_jv+"',cajas='"+cajas_jv+"',piezas='"+pzas_jv+"',resto='"+resto_jv+"',cant='"+exi_jv+"' ,marca='"+marca_jv+"',um='"+present_jv+"',coincidir_marca='"+marca1_jv+"',coincidir_um='"+present1_jv+"' where id_cap_inv='"+eliminar_jv+"'");	
				 
	 		%>
			<script>			
			 	//self.location='captura_InvBCAlmLeo.jsp?id_prov=<%//=eliminar_jv%>&hora_ini_vi=<%//=hora_ini_jv%>&equi_vi=<%//=equipo_jv%>&integran_vi=<%//=integrantes_jv%>';					
			  	alert("Los datos han sido guardados");
  			</script>
  				<%
				
  				
     }    
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>:: MODIFICACI&Oacute;N AL MEDICAMENTO EN ALMAC&Eacute;N ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_travel2.css" type="text/css" />
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
.style3 {font-size: 24}
.di  {
	font: 20px Verdana, Arial, Helvetica, sans-serif;
	color: #FFFFFF;
	line-height:18px.1e;
	font-weight:bold;
	}
.A {
	color: #003366;
}
-->
</style>
</head>
<body bgcolor="#FFFFFF" onload="fillCategoryMed()">
<script src="scw.js" type="text/javascript"> </script>

<table width="102%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#3366CC">
    <td colspan="3" rowspan="2" bgcolor="#FFFFFF"><div align="left"><img src="gnk_toluca.jpg" alt="Header image" border="0" /></div></td>
    <td height="58" colspan="3" align="center" valign="bottom" nowrap="nowrap" bgcolor="#FFFFFF" id="logo"><div align="center"><img src="issemym1.jpg" width="343" height="91" /></div></td>
    <td width="55" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>

  <tr bgcolor="#3366CC">
    <td height="40" colspan="3" align="center" valign="middle" background="fondo.jpg"  id="tagline"><div align="left"><span class="di style3"><strong>Modificar Datos del Medicamento</strong></span><span class="di">&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>GNKL Software<span class="style6"> </span></strong></div></td>
	<td width="55" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
</table>
<table>
  <tr>
    <td colspan="7" bgcolor="#003366"></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<!--td height="25" colspan="7" bgcolor="#F0F0F0" id="dateformat">&nbsp;&nbsp;
    <script language="JavaScript" type="text/javascript">
      //document.write(TODAY);	</script></td-->
  </tr>
 <tr>
    <td colspan="7" bgcolor="#003366"></td>
  </tr>

 <tr>
    <td width="72" valign="top" bgcolor="#E6F3FF">
	
 	 <br />
  	&nbsp;<br />
  	&nbsp;<br />
  	&nbsp;<br /> 	</td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><img src="mm_spacer.gif" alt="" width="305" height="1" border="0" />
	  <form action="modificar.jsp?id_prov=<%=eliminar_jv%>&uni=<%=nom_unidad%>&juris=<%=no_jur%>&nombre=<%=nombre_jv%>&edad=<%=edad_jv%>&folio=<%=folio_jv%>&clave1=<%=clave1_jv%>&descrip1=<%=descrip1_jv%>&present1=<%=present1_jv%>&indica1=<%=indica1_jv%>&sol1=<%=sol1_jv%>&sur1=<%=sur1_jv%>&clave2=<%=clave2_jv%>&descrip2=<%=descrip2_jv%>&present2=<%=present2_jv%>&indica2=<%=indica2_jv%>&sol2=<%=sol2_jv%>&sur2=<%=sur2_jv%>&clave3=<%=clave3_jv%>&descrip3=<%=descrip3_jv%>&present3=<%=present3_jv%>&indica3=<%=indica3_jv%>&sol3=<%=sol3_jv%>&sur3=<%=sur3_jv%>&cause=<%=cause_jv%>&foliore=<%=foliore_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&univer=<%=uni_jv%>&cedu=<%=cedu_jv%>&nomed=<%=nomed_jv%>" method="post" name="form">

     
    <table width="831" height="39" border="2" bordercolor="#7B1022">
      <tr>
        <td width="821"><p class="navText"><strong>MODIFIQUE LOS DATOS QUE UD. CREA CONVENIENTE: </strong></p>
          <table width="821" border="1">
            <%
  			//Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/issemym");
  			stmt__001 = conn__001.createStatement();  
  			//ResultSet rset__001=null;
  			//select distinct cve_med,descri,lote,cadu,cant,id_rem_prov from datos_prov_1_0807 where id_rem_prov='275'
  				rset__001=stmt__001.executeQuery("select  cod_bar,clave,descr,lote,cadu,ubi,cant,cajas,piezas,resto,marca,um,coincidir_marca,coincidir_um from datos_inv_cod where id_cap_inv='"+eliminar_jv+"'");
  			
  //out.print("clave"+folgnk_jv);
   			while(rset__001.next()) 
                  {
				  	cod_jv=rset__001.getString("cod_bar");
					clave_jv=rset__001.getString("clave");
					descrip_jv=rset__001.getString("descr");
					lote2_jv=rset__001.getString("lote");
					lote_aux_jv=rset__001.getString("lote");
					cad2_jv=rset__001.getString("cadu");
					ubi_jv=rset__001.getString("ubi");
					exi_jv=rset__001.getString("cant");	
				    cajas_jv=rset__001.getString("cajas");	
					pzas_jv=rset__001.getString("piezas");
					resto_jv=rset__001.getString("resto");
					marca_jv=rset__001.getString("marca");
					present_jv=rset__001.getString("um");
					marca1_jv=rset__001.getString("coincidir_marca");
					present1_jv=rset__001.getString("coincidir_um");
					
				//cajas_jv="",pzas_jv="",resto_jv="";		   
				  }
				  
%>
            <tr>
              <td class="bodyText"><strong>CLAVE:</strong></td>
              <td colspan="2"><input name="txtf_2" type="text" size="50" onkeypress="return handleEnter(this, event)" value="<%=clave_jv%>" onchange="toUppercaseCve();" />
                  <label></label></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td class="bodyText"><strong>DESCRIPCI&Oacute;N:</strong></td>
              <td colspan="2"><input name="txtf_descrip" type="text" size="50" onkeypress="return handleEnter(this, event)" value="<%=descrip_jv%>" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td class="bodyText"><strong>MARCA</strong></td>
              <td colspan="2" class="bodyText"><input name="txtf_marca" type="text" size="30" onkeypress="return handleEnter(this, event)" value="<%=marca_jv%>"  />
               COINCIDE MARCA?&nbsp;
                <input name="txtf_marca1" type="text" size="3" onkeypress="return handleEnter(this, event)" value="<%=marca1_jv%>" readonly="readonly" />&nbsp;<label>
                    <select name="slct_marca" onchange="putUbi_en1(this.form)">
                      <option value="Si">Si</option>
                      <option value="No">No</option>
                    </select>
                  </label>              </td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td class="bodyText"><strong>PRESENTACION</strong></td>
              <td colspan="2" class="bodyText"><input name="txtf_um" type="text" size="30" onkeypress="return handleEnter(this, event)" value="<%=present_jv%>"  />
              COINCIDE PRESENTACI&Oacute;N?&nbsp;
                <input name="txtf_um1" type="text" size="3" onkeypress="return handleEnter(this, event)" value="<%=present1_jv%>" readonly="readonly"  />&nbsp;<label>
                    <select name="slct_um" onchange="putUbi_en2(this.form)">

                      <option value="Si">Si</option>
                      <option value="No">No</option>
                    </select>
                  </label>              </td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td class="bodyText"><strong>LOTE:</strong></td>
              <td colspan="2"><input name="txtf_lote_aux" type="hidden" value="<%=lote_aux_jv%>"/>
                  <input name="txtf_lote" type="text" size="50" value="<%=lote2_jv%>" onchange="toUppercaseLote();" onkeypress="return handleEnter(this, event)"/></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="34" class="bodyText"><strong>CADUCIDAD:</strong></td>
              <td colspan="2"><label>
                <input type='text' name='txtf_caduc' id='txtf_caduc' title='DD/MM/AAAA' size='10' maxlength='10' onclick='scwShow(this, event);' value="<%=cad2_jv%>"/>
                </label>
                  <img src="cal2.jpg" width="34" height="30" border="0" alt="De clic para MOSTRAR CALENDARIO" onclick="scwShow(scwID('txtf_caduc'),event);"/> </td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="34" class="bodyText"><strong>UBICACI&Oacute;N:</strong></td>
              <td colspan="2"><label>
                <input type='text' name='txtf_ubi' id='txtf_ubi'  size='10' readonly="true" maxlength='10' value="<%=ubi_jv%>"/>
                <select name="slct_u" onchange="putUbi_en(this.form)">
                  <option>--UBICACI&Oacute;N--</option>
                  <option value="A-1-I">A-1-I </option>
                  <option value="A-1-D">A-1-D </option>
                  <option value="A-2-I">A-2-I </option>
                  <option value="A-2-D">A-2-D </option>
                  <option value="A-3-I">A-3-I </option>
                  <option value="A-3-D">A-3-D </option>
                  <option value="A-4-I">A-4-I </option>
                  <option value="A-4-D">A-4-D </option>
                  <option value="A-5-I">A-5-I </option>
                  <option value="A-5-D">A-5-D </option>
                  <option value="A-6-I">A-6-I </option>
                  <option value="A-6-D">A-6-D </option>
                  <option value="A-7-I">A-7-I </option>
                  <option value="A-7-D">A-7-D </option>
                  <option value="A-8-I">A-8-I </option>
                  <option value="A-8-D">A-8-D </option>
                  <option value="A-9-I">A-9-I </option>
                  <option value="A-9-D">A-9-D </option>
                  <option value="A-10-I">A-10-I </option>
                  <option value="A-10-D">A-10-D </option>
                  <option value="A-11-I">A-11-I </option>
                  <option value="A-11-D">A-11-D </option>
                  <option value="A-12-I">A-12-I </option>
                  <option value="A-12-D">A-12-D </option>
                  <option value="A-13-I">A-13-I </option>
                  <option value="A-13-D">A-13-D </option>
                  <option value="A-14-I">A-14-I </option>
                  <option value="A-14-D">A-14-D </option>
                  <option value="A-15-I">A-15-I </option>
                  <option value="A-15-D">A-15-D </option>
                  <option value="A-16-I">A-16-I </option>
                  <option value="A-16-D">A-16-D </option>
                  <option value="A-17-I">A-17-I </option>
                  <option value="A-17-D">A-17-D </option>
                  <option value="A-18-I">A-18-I </option>
                  <option value="A-18-D">A-18-D </option>
                  <option value="A-19-I">A-19-I </option>
                  <option value="A-19-D">A-19-D </option>
                  <option value="A-20-I">A-20-I </option>
                  <option value="A-20-D">A-20-D </option>
                  <option value="A-21-I">A-21-I </option>
                  <option value="A-21-D">A-21-D </option>
                  <option value="A-22-I">A-22-I </option>
                  <option value="A-22-D">A-22-D </option>
                  <option value="A-23-I">A-23-I </option>
                  <option value="A-23-D">A-23-D </option>
                  <option value="A-24-I">A-24-I </option>
                  <option value="A-24-D">A-24-D </option>
                  <option value="A-25-I">A-25-I </option>
                  <option value="A-25-D">A-25-D </option>
                  <option value="A-26-I">A-26-I </option>
                  <option value="A-26-D">A-26-D </option>
                  <option value="A-27-I">A-27-I </option>
                  <option value="A-27-D">A-27-D </option>
                  <option value="B-1-I">B-1-I </option>
                  <option value="B-1-D">B-1-D </option>
                  <option value="B-2-I">B-2-I </option>
                  <option value="B-2-D">B-2-D </option>
                  <option value="B-3-I">B-3-I </option>
                  <option value="B-3-D">B-3-D </option>
                  <option value="B-4-I">B-4-I </option>
                  <option value="B-4-D">B-4-D </option>
                  <option value="B-5-I">B-5-I </option>
                  <option value="B-5-D">B-5-D </option>
                  <option value="B-6-I">B-6-I </option>
                  <option value="B-6-D">B-6-D </option>
                  <option value="B-7-I">B-7-I </option>
                  <option value="B-7-D">B-7-D </option>
                  <option value="B-8-I">B-8-I </option>
                  <option value="B-8-D">B-8-D </option>
                  <option value="B-9-I">B-9-I </option>
                  <option value="B-9-D">B-9-D </option>
                  <option value="B-10-I">B-10-I </option>
                  <option value="B-10-D">B-10-D </option>
                  <option value="B-11-I">B-11-I </option>
                  <option value="B-11-D">B-11-D </option>
                  <option value="B-12-I">B-12-I </option>
                  <option value="B-12-D">B-12-D </option>
                  <option value="B-13-I">B-13-I </option>
                  <option value="B-13-D">B-13-D </option>
                  <option value="B-14-I">B-14-I </option>
                  <option value="B-14-D">B-14-D </option>
                  <option value="B-15-I">B-15-I </option>
                  <option value="B-15-D">B-15-D </option>
                  <option value="B-16-I">B-16-I </option>
                  <option value="B-16-D">B-16-D </option>
                  <option value="B-17-I">B-17-I </option>
                  <option value="B-17-D">B-17-D </option>
                  <option value="B-18-I">B-18-I </option>
                  <option value="B-18-D">B-18-D </option>
                  <option value="B-19-I">B-19-I </option>
                  <option value="B-19-D">B-19-D </option>
                  <option value="B-20-I">B-20-I </option>
                  <option value="B-20-D">B-20-D </option>
                  <option value="B-21-I">B-21-I </option>
                  <option value="B-21-D">B-21-D </option>
                  <option value="B-22-I">B-22-I </option>
                  <option value="B-22-D">B-22-D </option>
                  <option value="B-23-I">B-23-I </option>
                  <option value="B-23-D">B-23-D </option>
                  <option value="B-24-I">B-24-I </option>
                  <option value="B-24-D">B-24-D </option>
                  <option value="B-25-I">B-25-I </option>
                  <option value="B-25-D">B-25-D </option>
                  <option value="B-26-I">B-26-I </option>
                  <option value="B-26-D">B-26-D </option>
                  <option value="B-27-I">B-27-I </option>
                  <option value="B-27-D">B-27-D </option>
                  <option value="C-9-I">C-9-I </option>
                  <option value="C-9-D">C-9-D </option>
                  <option value="C-10-I">C-10-I </option>
                  <option value="C-10-D">C-10-D </option>
                  <option value="C-11-I">C-11-I </option>
                  <option value="C-11-D">C-11-D </option>
                  <option value="C-12-I">C-12-I </option>
                  <option value="C-12-D">C-12-D </option>
                  <option value="C-13-I">C-13-I </option>
                  <option value="C-13-D">C-13-D </option>
                  <option value="C-14-I">C-14-I </option>
                  <option value="C-14-D">C-14-D </option>
                  <option value="C-15-I">C-15-I </option>
                  <option value="C-15-D">C-15-D </option>
                  <option value="C-16-I">C-16-I </option>
                  <option value="C-16-D">C-16-D </option>
                  <option value="C-17-I">C-17-I </option>
                  <option value="C-17-D">C-17-D </option>
                  <option value="C-18-I">C-18-I </option>
                  <option value="C-18-D">C-18-D </option>
                  <option value="C-19-I">C-19-I </option>
                  <option value="C-19-D">C-19-D </option>
                  <option value="C-20-I">C-20-I </option>
                  <option value="C-20-D">C-20-D </option>
                  <option value="C-21-I">C-21-I </option>
                  <option value="C-21-D">C-21-D </option>
                  <option value="C-22-I">C-22-I </option>
                  <option value="C-22-D">C-22-D </option>
                  <option value="C-23-I">C-23-I </option>
                  <option value="C-23-D">C-23-D </option>
                  <option value="C-24-I">C-24-I </option>
                  <option value="C-24-D">C-24-D </option>
                  <option value="C-25-I">C-25-I </option>
                  <option value="C-25-D">C-25-D </option>
                  <option value="C-26-I">C-26-I </option>
                  <option value="C-26-D">C-26-D </option>
                  <option value="C-27-I">C-27-I </option>
                  <option value="C-27-D">C-27-D </option>
                  <option value="C-28-I">C-28-I </option>
                  <option value="C-28-D">C-28-D </option>
                  <option value="D-9-I">D-9-I </option>
                  <option value="D-9-D">D-9-D </option>
                  <option value="D-10-I">D-10-I </option>
                  <option value="D-10-D">D-10-D </option>
                  <option value="D-11-I">D-11-I </option>
                  <option value="D-11-D">D-11-D </option>
                  <option value="D-12-I">D-12-I </option>
                  <option value="D-12-D">D-12-D </option>
                  <option value="D-13-I">D-13-I </option>
                  <option value="D-13-D">D-13-D </option>
                  <option value="D-14-I">D-14-I </option>
                  <option value="D-14-D">D-14-D </option>
                  <option value="D-15-I">D-15-I </option>
                  <option value="D-15-D">D-15-D </option>
                  <option value="D-16-I">D-16-I </option>
                  <option value="D-16-D">D-16-D </option>
                  <option value="D-17-I">D-17-I </option>
                  <option value="D-17-D">D-17-D </option>
                  <option value="D-18-I">D-18-I </option>
                  <option value="D-18-D">D-18-D </option>
                  <option value="D-19-I">D-19-I </option>
                  <option value="D-19-D">D-19-D </option>
                  <option value="D-20-I">D-20-I </option>
                  <option value="D-20-D">D-20-D </option>
                  <option value="D-21-I">D-21-I </option>
                  <option value="D-21-D">D-21-D </option>
                  <option value="D-22-I">D-22-I </option>
                  <option value="D-22-D">D-22-D </option>
                  <option value="D-23-I">D-23-I </option>
                  <option value="D-23-D">D-23-D </option>
                  <option value="D-24-I">D-24-I </option>
                  <option value="D-24-D">D-24-D </option>
                  <option value="D-25-I">D-25-I </option>
                  <option value="D-25-D">D-25-D </option>
                  <option value="D-26-I">D-26-I </option>
                  <option value="D-26-D">D-26-D </option>
                  <option value="D-27-I">D-27-I </option>
                  <option value="D-27-D">D-27-D </option>
                  <option value="D-28-I">D-28-I </option>
                  <option value="D-28-D">D-28-D </option>
                  <option value="I-1-I">I-1-I </option>
                  <option value="I-1-D">I-1-D </option>
                  <option value="I-2-I">I-2-I </option>
                  <option value="I-2-D">I-2-D </option>
                  <option value="I-3-I">I-3-I </option>
                  <option value="I-3-D">I-3-D </option>
                  <option value="I-4-I">I-4-I </option>
                  <option value="I-4-D">I-4-D </option>
                  <option value="I-5-I">I-5-I </option>
                  <option value="I-5-D">I-5-D </option>
                  <option value="I-6-I">I-6-I </option>
                  <option value="I-6-D">I-6-D </option>
                  <option value="I-7-I">I-7-I </option>
                  <option value="I-7-D">I-7-D </option>
                  <option value="I-8-I">I-8-I </option>
                  <option value="I-8-D">I-8-D </option>
                  <option value="I-9-I">I-9-I </option>
                  <option value="I-9-D">I-9-D </option>
                  <option value="I-10-I">I-10-I </option>
                  <option value="I-10-D">I-10-D </option>
                  <option value="I-11-I">I-11-I </option>
                  <option value="I-11-D">I-11-D </option>
                  <option value="I-12-I">I-12-I </option>
                  <option value="I-12-D">I-12-D </option>
                  <option value="I-13-I">I-13-I </option>
                  <option value="I-13-D">I-13-D </option>
                  <option value="I-14-I">I-14-I </option>
                  <option value="I-14-D">I-14-D </option>
                  <option value="I-15-I">I-15-I </option>
                  <option value="I-15-D">I-15-D </option>
                  <option value="I-16-I">I-16-I </option>
                  <option value="I-16-D">I-16-D </option>
                  <option value="I-17-I">I-17-I </option>
                  <option value="I-17-D">I-17-D </option>
                  <option value="I-18-I">I-18-I </option>
                  <option value="I-18-D">I-18-D </option>
                  <option value="I-19-I">I-19-I </option>
                  <option value="I-19-D">I-19-D </option>
                  <option value="I-20-I">I-20-I </option>
                  <option value="I-20-D">I-20-D </option>
                  <option value="I-21-I">I-21-I </option>
                  <option value="I-21-D">I-21-D </option>
                  <option value="I-22-I">I-22-I </option>
                  <option value="I-22-D">I-22-D </option>
                  <option value="I-23-I">I-23-I </option>
                  <option value="I-23-D">I-23-D </option>
                  <option value="I-24-I">I-24-I </option>
                  <option value="I-24-D">I-24-D </option>
                  <option value="I-25-I">I-25-I </option>
                  <option value="I-25-D">I-25-D </option>
                  <option value="I-26-I">I-26-I </option>
                  <option value="I-26-D">I-26-D </option>
                  <option value="I-27-I">I-27-I </option>
                  <option value="I-27-D">I-27-D </option>
                  <option value="I-28-I">I-28-I </option>
                  <option value="I-28-D">I-28-D </option>
                  <option value="I-29-I">I-29-I </option>
                  <option value="I-29-D">I-29-D </option>
                  <option value="I-30-I">I-30-I </option>
                  <option value="I-30-D">I-30-D </option>
                  <option value="I-31-I">I-31-I </option>
                  <option value="I-31-D">I-31-D </option>
                  <option value="I-32-I">I-32-I </option>
                  <option value="I-32-D">I-32-D </option>
                  <option value="I-33-I">I-33-I </option>
                  <option value="I-33-D">I-33-D </option>
                  <option value="I-34-I">I-34-I </option>
                  <option value="I-34-D">I-34-D </option>
                  <option value="I-35-I">I-35-I </option>
                  <option value="I-35-D">I-35-D </option>
                  <option value="I-36-I">I-36-I </option>
                  <option value="I-36-D">I-36-D </option>
                  <option value="I-37-I">I-37-I </option>
                  <option value="I-37-D">I-37-D </option>
                  <option value="I-38-I">I-38-I </option>
                  <option value="I-38-D">I-38-D </option>
                  <option value="I-39-I">I-39-I </option>
                  <option value="I-39-D">I-39-D </option>
                  <option value="I-40-I">I-40-I </option>
                  <option value="I-40-D">I-40-D </option>
                  <option value="I-41-D">I-41-D</option>
                  <option value="I-41-I">I-41-I</option>
                  <option value="I-42-D">I-42-D</option>
                  <option value="I-42-I">I-42-I</option>
                  <option value="I-43-D">I-43-D</option>
                  <option value="I-43-I">I-43-I</option>
                  <option value="I-44-D">I-44-D</option>
                  <option value="I-44-I">I-44-I</option>
                  <option value="I-45-D">I-45-D</option>
                  <option value="I-45-I">I-45-I</option>
                  <option value="I-46-D">I-46-D</option>
                  <option value="I-46-I">I-46-I</option>
                  <option value="I-47-D">I-47-D</option>
                  <option value="I-47-I">I-47-I</option>
                  <option value="I-48-D">I-48-D</option>
                  <option value="I-48-I">I-48-I</option>
                  <option value="J-1-I">J-1-I </option>
                  <option value="J-1-D">J-1-D </option>
                  <option value="J-2-I">J-2-I </option>
                  <option value="J-2-D">J-2-D </option>
                  <option value="J-3-I">J-3-I </option>
                  <option value="J-3-D">J-3-D </option>
                  <option value="J-4-I">J-4-I </option>
                  <option value="J-4-D">J-4-D </option>
                  <option value="J-5-I">J-5-I </option>
                  <option value="J-5-D">J-5-D </option>
                  <option value="J-6-I">J-6-I </option>
                  <option value="J-6-D">J-6-D </option>
                  <option value="J-7-I">J-7-I </option>
                  <option value="J-7-D">J-7-D </option>
                  <option value="J-8-I">J-8-I </option>
                  <option value="J-8-D">J-8-D </option>
                  <option value="J-9-I">J-9-I </option>
                  <option value="J-9-D">J-9-D </option>
                  <option value="J-10-I">J-10-I </option>
                  <option value="J-10-D">J-10-D </option>
                  <option value="J-11-I">J-11-I </option>
                  <option value="J-11-D">J-11-D </option>
                  <option value="J-12-I">J-12-I </option>
                  <option value="J-12-D">J-12-D </option>
                  <option value="J-13-I">J-13-I </option>
                  <option value="J-13-D">J-13-D </option>
                  <option value="J-14-I">J-14-I </option>
                  <option value="J-14-D">J-14-D </option>
                  <option value="J-15-I">J-15-I </option>
                  <option value="J-15-D">J-15-D </option>
                  <option value="J-16-I">J-16-I </option>
                  <option value="J-16-D">J-16-D </option>
                  <option value="J-17-I">J-17-I </option>
                  <option value="J-17-D">J-17-D </option>
                  <option value="J-18-I">J-18-I </option>
                  <option value="J-18-D">J-18-D </option>
                  <option value="J-19-I">J-19-I </option>
                  <option value="J-19-D">J-19-D </option>
                  <option value="J-20-I">J-20-I </option>
                  <option value="J-20-D">J-20-D </option>
                  <option value="J-21-I">J-21-I </option>
                  <option value="J-21-D">J-21-D </option>
                  <option value="J-22-I">J-22-I </option>
                  <option value="J-22-D">J-22-D </option>
                  <option value="J-23-I">J-23-I </option>
                  <option value="J-23-D">J-23-D </option>
                  <option value="J-24-I">J-24-I </option>
                  <option value="J-24-D">J-24-D </option>
                  <option value="J-25-I">J-25-I </option>
                  <option value="J-25-D">J-25-D </option>
                  <option value="J-26-I">J-26-I </option>
                  <option value="J-26-D">J-26-D </option>
                  <option value="J-27-I">J-27-I </option>
                  <option value="J-27-D">J-27-D </option>
                  <option value="J-28-I">J-28-I </option>
                  <option value="J-28-D">J-28-D </option>
                  <option value="J-29-I">J-29-I </option>
                  <option value="J-29-D">J-29-D </option>
                  <option value="I-30-I">I-30-I </option>
                  <option value="J-30-D">J-30-D </option>
                  <option value="J-31-I">J-31-I </option>
                  <option value="J-31-D">J-31-D </option>
                  <option value="J-32-I">J-32-I </option>
                  <option value="J-32-D">J-32-D </option>
                  <option value="J-33-I">J-33-I </option>
                  <option value="J-33-D">J-33-D </option>
                  <option value="J-34-I">J-34-I </option>
                  <option value="J-34-D">J-34-D </option>
                  <option value="J-35-I">J-35-I </option>
                  <option value="J-35-D">J-35-D </option>
                  <option value="J-36-I">J-36-I </option>
                  <option value="J-36-D">J-36-D </option>
                  <option value="J-37-I">J-37-I </option>
                  <option value="J-37-D">J-37-D </option>
                  <option value="J-38-I">J-38-I </option>
                  <option value="J-38-D">J-38-D </option>
                  <option value="J-39-I">J-39-I </option>
                  <option value="J-39-D">J-39-D </option>
                  <option value="J-40-I">J-40-I </option>
                  <option value="J-40-D">J-40-D </option>
                  <option value="J-41-D">J-41-D</option>
                  <option value="J-41-I">J-41-I</option>
                  <option value="J-42-D">J-42-D</option>
                  <option value="J-42-I">J-42-I</option>
                  <option value="J-43-D">J-43-D</option>
                  <option value="J-43-I">J-43-I</option>
                  <option value="J-44-D">J-44-D</option>
                  <option value="J-44-I">J-44-I</option>
                  <option value="J-45-D">J-45-D</option>
                  <option value="J-45-I">J-45-I</option>
                  <option value="J-46-D">J-46-D</option>
                  <option value="J-46-I">J-46-I</option>
                  <option value="J-47-D">J-47-D</option>
                  <option value="J-47-I">J-47-I</option>
                  <option value="J-48-D">J-48-D</option>
                  <option value="J-48-I">J-48-I</option>
                  <option value="K-1-I">K-1-I </option>
                  <option value="K-1-D">K-1-D </option>
                  <option value="K-2-I">K-2-I </option>
                  <option value="K-2-D">K-2-D </option>
                  <option value="K-3-I">K-3-I </option>
                  <option value="K-3-D">K-3-D </option>
                  <option value="K-4-I">K-4-I </option>
                  <option value="K-4-D">K-4-D </option>
                  <option value="K-5-I">K-5-I </option>
                  <option value="K-5-D">K-5-D </option>
                  <option value="K-6-I">K-6-I </option>
                  <option value="K-6-D">K-6-D </option>
                  <option value="K-7-I">K-7-I </option>
                  <option value="K-7-D">K-7-D </option>
                  <option value="K-8-I">K-8-I </option>
                  <option value="K-8-D">K-8-D </option>
                  <option value="K-9-I">K-9-I </option>
                  <option value="K-9-D">K-9-D </option>
                  <option value="K-10-I">K-10-I </option>
                  <option value="K-10-D">K-10-D </option>
                  <option value="K-11-I">K-11-I </option>
                  <option value="K-11-D">K-11-D </option>
                  <option value="K-12-I">K-12-I </option>
                  <option value="K-12-D">K-12-D </option>
                  <option value="K-13-I">K-13-I </option>
                  <option value="K-13-D">K-13-D </option>
                  <option value="K-14-I">K-14-I </option>
                  <option value="K-14-D">K-14-D </option>
                  <option value="K-15-I">K-15-I </option>
                  <option value="K-15-D">K-15-D </option>
                  <option value="K-16-I">K-16-I </option>
                  <option value="K-16-D">K-16-D </option>
                  <option value="K-17-I">K-17-I </option>
                  <option value="K-17-D">K-17-D </option>
                  <option value="K-18-I">K-18-I </option>
                  <option value="K-18-D">K-18-D </option>
                  <option value="K-19-I">K-19-I </option>
                  <option value="K-19-D">K-19-D </option>
                  <option value="K-20-I">K-20-I </option>
                  <option value="K-20-D">K-20-D </option>
                  <option value="K-21-I">K-21-I </option>
                  <option value="K-21-D">K-21-D </option>
                  <option value="K-22-I">K-22-I </option>
                  <option value="K-22-D">K-22-D </option>
                  <option value="K-23-I">K-23-I </option>
                  <option value="K-23-D">K-23-D </option>
                  <option value="K-24-I">K-24-I </option>
                  <option value="K-24-D">K-24-D </option>
                  <option value="K-25-I">K-25-I </option>
                  <option value="K-25-D">K-25-D </option>
                  <option value="K-26-I">K-26-I </option>
                  <option value="K-26-D">K-26-D </option>
                  <option value="K-27-I">K-27-I </option>
                  <option value="K-27-D">K-27-D </option>
                  <option value="K-28-I">K-28-I </option>
                  <option value="K-28-D">K-28-D </option>
                  <option value="K-29-I">K-29-I </option>
                  <option value="K-29-D">K-29-D </option>
                  <option value="K-30-I">K-30-I </option>
                  <option value="K-30-D">K-30-D </option>
                  <option value="K-31-I">K-31-I </option>
                  <option value="K-31-D">K-31-D </option>
                  <option value="K-32-I">K-32-I </option>
                  <option value="K-32-D">K-32-D </option>
                  <option value="K-33-I">K-33-I </option>
                  <option value="K-33-D">K-33-D </option>
                  <option value="K-34-I">K-34-I </option>
                  <option value="K-34-D">K-34-D </option>
                  <option value="K-35-I">K-35-I </option>
                  <option value="K-35-D">K-35-D </option>
                  <option value="K-36-I">K-36-I </option>
                  <option value="K-36-D">K-36-D </option>
                  <option value="K-37-I">K-37-I </option>
                  <option value="K-37-D">K-37-D </option>
                  <option value="K-38-I">K-38-I </option>
                  <option value="K-38-D">K-38-D </option>
                  <option value="K-39-I">K-39-I </option>
                  <option value="K-39-D">K-39-D </option>
                  <option value="K-40-I">K-40-I </option>
                  <option value="K-40-D">K-40-D </option>
                  <option value="K-41-I">K-41-I </option>
                  <option value="K-41-D">K-41-D </option>
                  <option value="K-42-I">K-42-I </option>
                  <option value="K-42-D">K-42-D </option>
                  <option value="K-43-I">K-43-I </option>
                  <option value="K-43-D">K-43-D </option>
                  <option value="K-44-I">K-44-I </option>
                  <option value="K-44-D">K-44-D </option>
                  <option value="K-45-D">K-45-D</option>
                  <option value="K-45-I">K-45-I</option>
                  <option value="K-46-D">K-46-D</option>
                  <option value="K-46-I">K-46-I</option>
                  <option value="K-47-D">K-47-D</option>
                  <option value="K-47-I">K-47-I</option>
                  <option value="K-48-D">K-48-D</option>
                  <option value="K-48-I">K-48-I</option>
                  <option value="L-1-I">L-1-I </option>
                  <option value="L-1-D">L-1-D </option>
                  <option value="L-2-I">L-2-I </option>
                  <option value="L-2-D">L-2-D </option>
                  <option value="L-3-I">L-3-I </option>
                  <option value="L-3-D">L-3-D </option>
                  <option value="L-4-I">L-4-I </option>
                  <option value="L-4-D">L-4-D </option>
                  <option value="L-5-I">L-5-I </option>
                  <option value="L-5-D">L-5-D </option>
                  <option value="L-6-I">L-6-I </option>
                  <option value="L-6-D">L-6-D </option>
                  <option value="L-7-I">L-7-I </option>
                  <option value="L-7-D">L-7-D </option>
                  <option value="L-8-I">L-8-I </option>
                  <option value="L-8-D">L-8-D </option>
                  <option value="L-9-I">L-9-I </option>
                  <option value="L-9-D">L-9-D </option>
                  <option value="L-10-I">L-10-I </option>
                  <option value="L-10-D">L-10-D </option>
                  <option value="L-11-I">L-11-I </option>
                  <option value="L-11-D">L-11-D </option>
                  <option value="L-12-I">L-12-I </option>
                  <option value="L-12-D">L-12-D </option>
                  <option value="L-13-I">L-13-I </option>
                  <option value="L-13-D">L-13-D </option>
                  <option value="L-14-I">L-14-I </option>
                  <option value="L-14-D">L-14-D </option>
                  <option value="L-15-I">L-15-I </option>
                  <option value="L-15-D">L-15-D </option>
                  <option value="L-16-I">L-16-I </option>
                  <option value="L-16-D">L-16-D </option>
                  <option value="L-17-I">L-17-I </option>
                  <option value="L-17-D">L-17-D </option>
                  <option value="L-18-I">L-18-I </option>
                  <option value="L-18-D">L-18-D </option>
                  <option value="L-19-I">L-19-I </option>
                  <option value="L-19-D">L-19-D </option>
                  <option value="L-20-I">L-20-I </option>
                  <option value="L-20-D">L-20-D </option>
                  <option value="L-21-I">L-21-I </option>
                  <option value="L-21-D">L-21-D </option>
                  <option value="L-22-I">L-22-I </option>
                  <option value="L-22-D">L-22-D </option>
                  <option value="L-23-I">L-23-I </option>
                  <option value="L-23-D">L-23-D </option>
                  <option value="L-24-I">L-24-I </option>
                  <option value="L-24-D">L-24-D </option>
                  <option value="L-25-I">L-25-I </option>
                  <option value="L-25-D">L-25-D </option>
                  <option value="L-26-I">L-26-I </option>
                  <option value="L-26-D">L-26-D </option>
                  <option value="L-27-I">L-27-I </option>
                  <option value="L-27-D">L-27-D </option>
                  <option value="L-28-I">L-28-I </option>
                  <option value="L-28-D">L-28-D </option>
                  <option value="L-29-I">L-29-I </option>
                  <option value="L-29-D">L-29-D </option>
                  <option value="L-30-I">L-30-I </option>
                  <option value="L-30-D">L-30-D </option>
                  <option value="L-31-I">L-31-I </option>
                  <option value="L-31-D">L-31-D </option>
                  <option value="L-32-I">L-32-I </option>
                  <option value="L-32-D">L-32-D </option>
                  <option value="L-33-I">L-33-I </option>
                  <option value="L-33-D">L-33-D </option>
                  <option value="L-34-I">L-34-I </option>
                  <option value="L-34-D">L-34-D </option>
                  <option value="L-35-I">L-35-I </option>
                  <option value="L-35-D">L-35-D </option>
                  <option value="L-36-I">L-36-I </option>
                  <option value="L-36-D">L-36-D </option>
                  <option value="L-37-I">L-37-I </option>
                  <option value="L-37-D">L-37-D </option>
                  <option value="L-38-I">L-38-I </option>
                  <option value="L-38-D">L-38-D </option>
                  <option value="L-39-I">L-39-I </option>
                  <option value="L-39-D">L-39-D </option>
                  <option value="L-40-I">L-40-I </option>
                  <option value="L-40-D">L-40-D </option>
                  <option value="L-41-I">L-41-I </option>
                  <option value="L-41-D">L-41-D </option>
                  <option value="L-42-I">L-42-I </option>
                  <option value="L-42-D">L-42-D </option>
                  <option value="L-43-I">L-43-I </option>
                  <option value="L-43-D">L-43-D </option>
                  <option value="L-44-I">L-44-I </option>
                  <option value="L-44-D">L-44-D </option>
                  <option value="L-45-D">L-45-D</option>
                  <option value="L-45-I">L-45-I</option>
                  <option value="L-46-D">L-46-D</option>
                  <option value="L-46-I">L-46-I</option>
                  <option value="L-47-D">L-47-D</option>
                  <option value="L-47-I">L-47-I</option>
                  <option value="L-48-D">L-48-D</option>
                  <option value="L-48-I">L-48-I</option>
                  <option value="M-1-I">M-1-I </option>
                  <option value="M-1-D">M-1-D </option>
                  <option value="M-2-I">M-2-I </option>
                  <option value="M-2-D">M-2-D </option>
                  <option value="M-3-I">M-3-I </option>
                  <option value="M-3-D">M-3-D </option>
                  <option value="M-4-I">M-4-I </option>
                  <option value="M-4-D">M-4-D </option>
                  <option value="M-5-I">M-5-I </option>
                  <option value="M-5-D">M-5-D </option>
                  <option value="M-6-I">M-6-I </option>
                  <option value="M-6-D">M-6-D </option>
                  <option value="M-7-I">M-7-I </option>
                  <option value="M-7-D">M-7-D </option>
                  <option value="M-8-I">M-8-I </option>
                  <option value="M-8-D">M-8-D </option>
                  <option value="M-9-I">M-9-I </option>
                  <option value="M-9-D">M-9-D </option>
                  <option value="M-10-I">M-10-I </option>
                  <option value="M-10-D">M-10-D </option>
                  <option value="M-11-I">M-11-I </option>
                  <option value="M-11-D">M-11-D </option>
                  <option value="M-12-I">M-12-I </option>
                  <option value="M-12-D">M-12-D </option>
                  <option value="M-13-I">M-13-I </option>
                  <option value="M-13-D">M-13-D </option>
                  <option value="M-14-I">M-14-I </option>
                  <option value="M-14-D">M-14-D </option>
                  <option value="M-15-I">M-15-I </option>
                  <option value="M-15-D">M-15-D </option>
                  <option value="M-16-I">M-16-I </option>
                  <option value="M-16-D">M-16-D </option>
                  <option value="M-17-I">M-17-I </option>
                  <option value="M-17-D">M-17-D </option>
                  <option value="M-18-I">M-18-I </option>
                  <option value="M-18-D">M-18-D </option>
                  <option value="M-19-I">M-19-I </option>
                  <option value="M-19-D">M-19-D </option>
                  <option value="M-20-I">M-20-I </option>
                  <option value="M-20-D">M-20-D </option>
                  <option value="M-21-I">M-21-I </option>
                  <option value="M-21-D">M-21-D </option>
                  <option value="M-22-I">M-22-I </option>
                  <option value="M-22-D">M-22-D </option>
                  <option value="M-23-I">M-23-I </option>
                  <option value="M-23-D">M-23-D </option>
                  <option value="M-24-I">M-24-I </option>
                  <option value="M-24-D">M-24-D </option>
                  <option value="M-25-D">M-25-D</option>
                  <option value="M-25-I">M-25-I</option>
                  <option value="M-26-D">M-26-D</option>
                  <option value="M-26-I">M-26-I</option>
                  <option value="M-27-D">M-27-D</option>
                  <option value="M-27-I">M-27-I</option>
                  <option value="M-28-D">M-28-D</option>
                  <option value="M-28-I">M-28-I</option>
                  <option value="M-29-D">M-29-D</option>
                  <option value="M-29-I">M-29-I</option>
                  <option value="M-30-D">M-30-D</option>
                  <option value="M-30-I">M-30-I</option>
                  <option value="M-31-D">M-31-D</option>
                  <option value="M-31-I">M-31-I</option>
                  <option value="M-32-D">M-32-D</option>
                  <option value="M-32-I">M-32-I</option>
                  <option value="M-33-D">M-33-D</option>
                  <option value="M-33-I">M-33-I</option>
                  <option value="M-34-D">M-34-D</option>
                  <option value="M-34-I">M-34-I</option>
                  <option value="M-35-D">M-35-D</option>
                  <option value="M-35-I">M-35-I</option>
                  <option value="M-36-D">M-36-D</option>
                  <option value="M-36-I">M-36-I</option>
                  <option value="M-37-D">M-37-D</option>
                  <option value="M-37-I">M-37-I</option>
                  <option value="M-38-D">M-38-D</option>
                  <option value="M-38-I">M-38-I</option>
                  <option value="M-39-D">M-39-D</option>
                  <option value="M-39-I">M-39-I</option>
                  <option value="M-40-D">M-40-D</option>
                  <option value="M-40-I">M-40-I</option>
                  <option value="M-41-D">M-41-D</option>
                  <option value="M-41-I">M-41-I</option>
                  <option value="M-42-D">M-42-D</option>
                  <option value="M-42-I">M-42-I</option>
                  <option value="M-43-D">M-43-D</option>
                  <option value="M-43-I">M-43-I</option>
                  <option value="M-44-D">M-44-D</option>
                  <option value="M-44-I">M-44-I</option>
                  <option value="M-45-D">M-45-D</option>
                  <option value="M-45-I">M-45-I</option>
                  <option value="M-46-D">M-46-D</option>
                  <option value="M-46-I">M-46-I</option>
                  <option value="M-47-D">M-47-D</option>
                  <option value="M-47-I">M-47-I</option>
                  <option value="M-48-D">M-48-D</option>
                  <option value="M-48-I">M-48-I</option>
                  <option value="N-1-I">N-1-I </option>
                  <option value="N-1-D">N-1-D </option>
                  <option value="N-2-I">N-2-I </option>
                  <option value="N-2-D">N-2-D </option>
                  <option value="N-3-I">N-3-I </option>
                  <option value="N-3-D">N-3-D </option>
                  <option value="N-4-I">N-4-I </option>
                  <option value="N-4-D">N-4-D </option>
                  <option value="N-5-I">N-5-I </option>
                  <option value="N-5-D">N-5-D </option>
                  <option value="N-6-I">N-6-I </option>
                  <option value="N-6-D">N-6-D </option>
                  <option value="N-7-I">N-7-I </option>
                  <option value="N-7-D">N-7-D </option>
                  <option value="N-8-I">N-8-I </option>
                  <option value="N-8-D">N-8-D </option>
                  <option value="N-9-I">N-9-I </option>
                  <option value="N-9-D">N-9-D </option>
                  <option value="N-10-I">N-10-I </option>
                  <option value="N-10-D">N-10-D </option>
                  <option value="N-11-I">N-11-I </option>
                  <option value="N-11-D">N-11-D </option>
                  <option value="N-12-I">N-12-I </option>
                  <option value="N-12-D">N-12-D </option>
                  <option value="N-13-I">N-13-I </option>
                  <option value="N-13-D">N-13-D </option>
                  <option value="N-14-I">N-14-I </option>
                  <option value="N-14-D">N-14-D </option>
                  <option value="N-15-I">N-15-I </option>
                  <option value="N-15-D">N-15-D </option>
                  <option value="N-16-I">N-16-I </option>
                  <option value="N-16-D">N-16-D </option>
                  <option value="N-17-I">N-17-I </option>
                  <option value="N-17-D">N-17-D </option>
                  <option value="N-18-I">N-18-I </option>
                  <option value="N-18-D">N-18-D </option>
                  <option value="N-19-I">N-19-I </option>
                  <option value="N-19-D">N-19-D </option>
                  <option value="N-20-I">N-20-I </option>
                  <option value="N-20-D">N-20-D </option>
                  <option value="N-21-I">N-21-I </option>
                  <option value="N-21-D">N-21-D </option>
                  <option value="N-22-I">N-22-I </option>
                  <option value="N-22-D">N-22-D </option>
                  <option value="N-23-I">N-23-I </option>
                  <option value="N-23-D">N-23-D </option>
                  <option value="N-24-I">N-24-I </option>
                  <option value="N-24-D">N-24-D </option>
                  <option value="N-25-D">N-25-D</option>
                  <option value="N-25-I">N-25-I</option>
                  <option value="N-26-D">N-26-D</option>
                  <option value="N-26-I">N-26-I</option>
                  <option value="N-27-D">N-27-D</option>
                  <option value="N-27-I">N-27-I</option>
                  <option value="N-28-D">N-28-D</option>
                  <option value="N-28-I">N-28-I</option>
                  <option value="N-29-D">N-29-D</option>
                  <option value="N-29-I">N-29-I</option>
                  <option value="N-30-D">N-30-D</option>
                  <option value="N-30-I">N-30-I</option>
                  <option value="N-31-D">N-31-D</option>
                  <option value="N-31-I">N-31-I</option>
                  <option value="N-32-D">N-32-D</option>
                  <option value="N-32-I">N-32-I</option>
                  <option value="N-33-D">N-33-D</option>
                  <option value="N-33-I">N-33-I</option>
                  <option value="N-34-D">N-34-D</option>
                  <option value="N-34-I">N-34-I</option>
                  <option value="N-35-D">N-35-D</option>
                  <option value="N-35-I">N-35-I</option>
                  <option value="N-36-D">N-36-D</option>
                  <option value="N-36-I">N-36-I</option>
                  <option value="N-37-D">N-37-D</option>
                  <option value="N-37-I">N-37-I</option>
                  <option value="N-38-D">N-38-D</option>
                  <option value="N-38-I">N-38-I</option>
                  <option value="N-39-D">N-39-D</option>
                  <option value="N-39-I">N-39-I</option>
                  <option value="N-40-D">N-40-D</option>
                  <option value="N-40-I">N-40-I</option>
                  <option value="N-41-D">N-41-D</option>
                  <option value="N-41-I">N-41-I</option>
                  <option value="N-42-D">N-42-D</option>
                  <option value="N-42-I">N-42-I</option>
                  <option value="N-43-D">N-43-D</option>
                  <option value="N-43-I">N-43-I</option>
                  <option value="N-44-D">N-44-D</option>
                  <option value="N-44-I">N-44-I</option>
                  <option value="N-45-D">N-45-D</option>
                  <option value="N-45-I">N-45-I</option>
                  <option value="N-46-D">N-46-D</option>
                  <option value="N-46-I">N-46-I</option>
                  <option value="N-47-D">N-47-D</option>
                  <option value="N-47-I">N-47-I</option>
                  <option value="N-48-D">N-48-D</option>
                  <option value="N-48-I">N-48-I</option>
                  <option value="O-1-D">O-1-D</option>
                  <option value="O-1-I">O-1-I</option>
                  <option value="O-2-D">O-2-D</option>
                  <option value="O-2-I">O-2-I</option>
                  <option value="O-3-D">O-3-D</option>
                  <option value="O-3-I">O-3-I</option>
                  <option value="O-4-D">O-4-D</option>
                  <option value="O-4-I">O-4-I</option>
                  <option value="O-5-D">O-5-D</option>
                  <option value="O-5-I">O-5-I</option>
                  <option value="O-6-D">O-6-D</option>
                  <option value="O-6-I">O-6-I</option>
                  <option value="O-7-D">O-7-D</option>
                  <option value="O-7-I">O-7-I</option>
                  <option value="O-8-D">O-8-D</option>
                  <option value="O-8-I">O-8-I</option>
                  <option value="O-9-D">O-9-D</option>
                  <option value="O-9-I">O-9-I</option>
                  <option value="O-10-D">O-10-D</option>
                  <option value="O-10-I">O-10-I</option>
                  <option value="O-11-D">O-11-D</option>
                  <option value="O-11-I">O-11-I</option>
                  <option value="O-12-D">O-12-D</option>
                  <option value="O-12-I">O-12-I</option>
                  <option value="O-13-D">O-13-D</option>
                  <option value="O-13-I">O-13-I</option>
                  <option value="O-14-D">O-14-D</option>
                  <option value="O-14-I">O-14-I</option>
                  <option value="O-15-D">O-15-D</option>
                  <option value="O-15-I">O-15-I</option>
                  <option value="O-16-D">O-16-D</option>
                  <option value="O-16-I">O-16-I</option>
                  <option value="O-17-D">O-17-D</option>
                  <option value="O-17-I">O-17-I</option>
                  <option value="O-18-D">O-18-D</option>
                  <option value="O-18-I">O-18-I</option>
                  <option value="O-19-D">O-19-D</option>
                  <option value="O-19-I">O-19-I</option>
                  <option value="O-20-D">O-20-D</option>
                  <option value="O-20-I">O-20-I</option>
                  <option value="O-21-D">O-21-D</option>
                  <option value="O-21-I">O-21-I</option>
                  <option value="O-22-D">O-22-D</option>
                  <option value="O-22-I">O-22-I</option>
                  <option value="O-23-D">O-23-D</option>
                  <option value="O-23-I">O-23-I</option>
                  <option value="O-24-D">O-24-D</option>
                  <option value="O-24-I">O-24-I</option>
                  <option value="O-25-D">O-25-D</option>
                  <option value="O-25-I">O-25-I</option>
                  <option value="O-26-D">O-26-D</option>
                  <option value="O-26-I">O-26-I</option>
                  <option value="O-27-D">O-27-D</option>
                  <option value="O-27-I">O-27-I</option>
                  <option value="O-28-D">O-28-D</option>
                  <option value="O-28-I">O-28-I</option>
                  <option value="O-29-D">O-29-D</option>
                  <option value="O-29-I">O-29-I</option>
                  <option value="O-30-D">O-30-D</option>
                  <option value="O-30-I">O-30-I</option>
                  <option value="O-31-D">O-31-D</option>
                  <option value="O-31-I">O-31-I</option>
                  <option value="O-32-D">O-32-D</option>
                  <option value="O-32-I">O-32-I</option>
                  <option value="O-33-D">O-33-D</option>
                  <option value="O-33-I">O-33-I</option>
                  <option value="O-34-D">O-34-D</option>
                  <option value="O-34-I">O-34-I</option>
                  <option value="O-35-D">O-35-D</option>
                  <option value="O-35-I">O-35-I</option>
                  <option value="O-36-D">O-36-D</option>
                  <option value="O-36-I">O-36-I</option>
                  <option value="O-37-D">O-37-D</option>
                  <option value="O-37-I">O-37-I</option>
                  <option value="O-38-D">O-38-D</option>
                  <option value="O-38-I">O-38-I</option>
                  <option value="O-39-D">O-39-D</option>
                  <option value="O-39-I">O-39-I</option>
                  <option value="O-40-D">O-40-D</option>
                  <option value="O-40-I">O-40-I</option>
                  <option value="O-41-D">O-41-D</option>
                  <option value="O-41-I">O-41-I</option>
                  <option value="O-42-D">O-42-D</option>
                  <option value="O-42-I">O-42-I</option>
                  <option value="O-43-D">O-43-D</option>
                  <option value="O-43-I">O-43-I</option>
                  <option value="O-44-D">O-44-D</option>
                  <option value="O-44-I">O-44-I</option>
                  <option value="O-45-D">O-45-D</option>
                  <option value="O-45-I">O-45-I</option>
                  <option value="O-46-D">O-46-D</option>
                  <option value="O-46-I">O-46-I</option>
                  <option value="O-47-D">O-47-D</option>
                  <option value="O-47-I">O-47-I</option>
                  <option value="O-48-D">O-48-D</option>
                  <option value="O-48-I">O-48-I</option>
                  <option value="P-1-D">P-1-D</option>
                  <option value="P-1-I">P-1-I</option>
                  <option value="P-2-D">P-2-D</option>
                  <option value="P-2-I">P-2-I</option>
                  <option value="P-3-D">P-3-D</option>
                  <option value="P-3-I">P-3-I</option>
                  <option value="P-4-D">P-4-D</option>
                  <option value="P-4-I">P-4-I</option>
                  <option value="P-5-D">P-5-D</option>
                  <option value="P-5-I">P-5-I</option>
                  <option value="P-6-D">P-6-D</option>
                  <option value="P-6-I">P-6-I</option>
                  <option value="P-7-D">P-7-D</option>
                  <option value="P-7-I">P-7-I</option>
                  <option value="P-8-D">P-8-D</option>
                  <option value="P-8-I">P-8-I</option>
                  <option value="P-9-D">P-9-D</option>
                  <option value="P-9-I">P-9-I</option>
                  <option value="P-10-D">P-10-D</option>
                  <option value="P-10-I">P-10-I</option>
                  <option value="P-11-D">P-11-D</option>
                  <option value="P-11-I">P-11-I</option>
                  <option value="P-12-D">P-12-D</option>
                  <option value="P-12-I">P-12-I</option>
                  <option value="P-13-D">P-13-D</option>
                  <option value="P-13-I">P-13-I</option>
                  <option value="P-14-D">P-14-D</option>
                  <option value="P-14-I">P-14-I</option>
                  <option value="P-15-D">P-15-D</option>
                  <option value="P-15-I">P-15-I</option>
                  <option value="P-16-D">P-16-D</option>
                  <option value="P-16-I">P-16-I</option>
                  <option value="P-17-D">P-17-D</option>
                  <option value="P-17-I">P-17-I</option>
                  <option value="P-18-D">P-18-D</option>
                  <option value="P-18-I">P-18-I</option>
                  <option value="P-19-D">P-19-D</option>
                  <option value="P-19-I">P-19-I</option>
                  <option value="P-20-D">P-20-D</option>
                  <option value="P-20-I">P-20-I</option>
                  <option value="P-21-D">P-21-D</option>
                  <option value="P-21-I">P-21-I</option>
                  <option value="P-22-D">P-22-D</option>
                  <option value="P-22-I">P-22-I</option>
                  <option value="P-23-D">P-23-D</option>
                  <option value="P-23-I">P-23-I</option>
                  <option value="P-24-D">P-24-D</option>
                  <option value="P-24-I">P-24-I</option>
                  <option value="P-25-D">P-25-D</option>
                  <option value="P-25-I">P-25-I</option>
                  <option value="P-26-D">P-26-D</option>
                  <option value="P-26-I">P-26-I</option>
                  <option value="P-27-D">P-27-D</option>
                  <option value="P-27-I">P-27-I</option>
                  <option value="P-28-D">P-28-D</option>
                  <option value="P-28-I">P-28-I</option>
                  <option value="P-29-D">P-29-D</option>
                  <option value="P-29-I">P-29-I</option>
                  <option value="P-30-D">P-30-D</option>
                  <option value="P-30-I">P-30-I</option>
                  <option value="P-31-D">P-31-D</option>
                  <option value="P-31-I">P-31-I</option>
                  <option value="P-32-D">P-32-D</option>
                  <option value="P-32-I">P-32-I</option>
                  <option value="P-33-D">P-33-D</option>
                  <option value="P-33-I">P-33-I</option>
                  <option value="P-34-D">P-34-D</option>
                  <option value="P-34-I">P-34-I</option>
                  <option value="P-35-D">P-35-D</option>
                  <option value="P-35-I">P-35-I</option>
                  <option value="P-36-D">P-36-D</option>
                  <option value="P-36-I">P-36-I</option>
                  <option value="P-37-D">P-37-D</option>
                  <option value="P-37-I">P-37-I</option>
                  <option value="P-38-D">P-38-D</option>
                  <option value="P-38-I">P-38-I</option>
                  <option value="P-39-D">P-39-D</option>
                  <option value="P-39-I">P-39-I</option>
                  <option value="P-40-D">P-40-D</option>
                  <option value="P-40-I">P-40-I</option>
                  <option value="P-41-D">P-41-D</option>
                  <option value="P-41-I">P-41-I</option>
                  <option value="P-42-D">P-42-D</option>
                  <option value="P-42-I">P-42-I</option>
                  <option value="P-43-D">P-43-D</option>
                  <option value="P-43-I">P-43-I</option>
                  <option value="P-44-D">P-44-D</option>
                  <option value="P-44-I">P-44-I</option>
                  <option value="P-45-D">P-45-D</option>
                  <option value="P-45-I">P-45-I</option>
                  <option value="P-46-D">P-46-D</option>
                  <option value="P-46-I">P-46-I</option>
                  <option value="P-47-D">P-47-D</option>
                  <option value="P-47-I">P-47-I</option>
                  <option value="P-48-D">P-48-D</option>
                  <option value="P-48-I">P-48-I</option>
                  <option value="Q-1-I">Q-1-I</option>
                  <option value="Q-1-D">Q-1-D</option>
                  <option value="Q-2-I">Q-2-I</option>
                  <option value="Q-2-D">Q-2-D</option>
                  <option value="Q-3-I">Q-3-I</option>
                  <option value="Q-3-D">Q-3-D</option>
                  <option value="Q-4-I">Q-4-I</option>
                  <option value="Q-4-D">Q-4-D</option>
                  <option value="Q-5-I">Q-5-I</option>
                  <option value="Q-5-D">Q-5-D</option>
                  <option value="Q-6-I">Q-6-I</option>
                  <option value="Q-6-D">Q-6-D</option>
                  <option value="Q-7-I">Q-7-I</option>
                  <option value="Q-7-D">Q-7-D</option>
                  <option value="Q-8-I">Q-8-I</option>
                  <option value="Q-8-D">Q-8-D</option>
                  <option value="Q-9-I">Q-9-I</option>
                  <option value="Q-9-D">Q-9-D</option>
                  <option value="Q-10-I">Q-10-I</option>
                  <option value="Q-10-D">Q-10-D</option>
                  <option value="Q-11-I">Q-11-I</option>
                  <option value="Q-11-D">Q-11-D</option>
                  <option value="Q-12-I">Q-12-I</option>
                  <option value="Q-12-D">Q-12-D</option>
                  <option value="Q-13-I">Q-13-I</option>
                  <option value="Q-13-D">Q-13-D</option>
                  <option value="Q-14-I">Q-14-I</option>
                  <option value="Q-14-D">Q-14-D</option>
                  <option value="Q-15-I">Q-15-I</option>
                  <option value="Q-15-D">Q-15-D</option>
                  <option value="Q-16-I">Q-16-I</option>
                  <option value="Q-16-D">Q-16-D</option>
                  <option value="Q-17-I">Q-17-I</option>
                  <option value="Q-17-D">Q-17-D</option>
                  <option value="Q-18-I">Q-18-I</option>
                  <option value="Q-18-D">Q-18-D</option>
                  <option value="Q-19-I">Q-19-I</option>
                  <option value="Q-19-D">Q-19-D</option>
                  <option value="Q-20-I">Q-20-I</option>
                  <option value="Q-20-D">Q-20-D</option>
                  <option value="Q-21-I">Q-21-I</option>
                  <option value="Q-21-D">Q-21-D</option>
                  <option value="Q-22-I">Q-22-I</option>
                  <option value="Q-22-D">Q-22-D</option>
                  <option value="Q-23-I">Q-23-I</option>
                  <option value="Q-23-D">Q-23-D</option>
                  <option value="Q-24-I">Q-24-I</option>
                  <option value="Q-24-D">Q-24-D</option>
                  <option value="Q-25-I">Q-25-I</option>
                  <option value="Q-25-D">Q-25-D</option>
                  <option value="Q-26-I">Q-26-I</option>
                  <option value="Q-26-D">Q-26-D</option>
                  <option value="Q-27-I">Q-27-I</option>
                  <option value="Q-27-D">Q-27-D</option>
                  <option value="Q-28-I">Q-28-I</option>
                  <option value="Q-28-D">Q-28-D</option>
                  <option value="Q-29-I">Q-29-I</option>
                  <option value="Q-29-D">Q-29-D</option>
                  <option value="Q-30-I">Q-30-I</option>
                  <option value="Q-30-D">Q-30-D</option>
                  <option value="Q-31-I">Q-31-I</option>
                  <option value="Q-31-D">Q-31-D</option>
                  <option value="Q-32-I">Q-32-I</option>
                  <option value="Q-32-D">Q-32-D</option>
                  <option value="Q-33-I">Q-33-I</option>
                  <option value="Q-33-D">Q-33-D</option>
                  <option value="Q-34-I">Q-34-I</option>
                  <option value="Q-34-D">Q-34-D</option>
                  <option value="Q-35-I">Q-35-I</option>
                  <option value="Q-35-D">Q-35-D</option>
                  <option value="Q-36-I">Q-36-I</option>
                  <option value="Q-36-D">Q-36-D</option>
                  <option value="Q-37-I">Q-37-I</option>
                  <option value="Q-37-D">Q-37-D</option>
                  <option value="Q-38-I">Q-38-I</option>
                  <option value="Q-38-D">Q-38-D</option>
                  <option value="Q-39-I">Q-39-I</option>
                  <option value="Q-39-D">Q-39-D</option>
                  <option value="Q-40-I">Q-40-I</option>
                  <option value="Q-40-D">Q-40-D</option>
                  <option value="R-1-I">R-1-I</option>
                  <option value="R-1-D">R-1-D</option>
                  <option value="R-2-I">R-2-I</option>
                  <option value="R-2-D">R-2-D</option>
                  <option value="R-3-I">R-3-I</option>
                  <option value="R-3-D">R-3-D</option>
                  <option value="R-4-I">R-4-I</option>
                  <option value="R-4-D">R-4-D</option>
                  <option value="R-5-I">R-5-I</option>
                  <option value="R-5-D">R-5-D</option>
                  <option value="R-6-I">R-6-I</option>
                  <option value="R-6-D">R-6-D</option>
                  <option value="R-7-I">R-7-I</option>
                  <option value="R-7-D">R-7-D</option>
                  <option value="R-8-I">R-8-I</option>
                  <option value="R-8-D">R-8-D</option>
                  <option value="R-9-I">R-9-I</option>
                  <option value="R-9-D">R-9-D</option>
                  <option value="R-10-I">R-10-I</option>
                  <option value="R-10-D">R-10-D</option>
                  <option value="R-11-I">R-11-I</option>
                  <option value="R-11-D">R-11-D</option>
                  <option value="R-12-I">R-12-I</option>
                  <option value="R-12-D">R-12-D</option>
                  <option value="R-13-I">R-13-I</option>
                  <option value="R-13-D">R-13-D</option>
                  <option value="R-14-I">R-14-I</option>
                  <option value="R-14-D">R-14-D</option>
                  <option value="R-15-I">R-15-I</option>
                  <option value="R-15-D">R-15-D</option>
                  <option value="R-16-I">R-16-I</option>
                  <option value="R-16-D">R-16-D</option>
                  <option value="R-17-I">R-17-I</option>
                  <option value="R-17-D">R-17-D</option>
                  <option value="R-18-I">R-18-I</option>
                  <option value="R-18-D">R-18-D</option>
                  <option value="R-19-I">R-19-I</option>
                  <option value="R-19-D">R-19-D</option>
                  <option value="R-20-I">R-20-I</option>
                  <option value="R-20-D">R-20-D</option>
                  <option value="R-21-I">R-21-I</option>
                  <option value="R-21-D">R-21-D</option>
                  <option value="R-22-I">R-22-I</option>
                  <option value="R-22-D">R-22-D</option>
                  <option value="R-23-I">R-23-I</option>
                  <option value="R-23-D">R-23-D</option>
                  <option value="R-24-I">R-24-I</option>
                  <option value="R-24-D">R-24-D</option>
                  <option value="R-25-I">R-25-I</option>
                  <option value="R-25-D">R-25-D</option>
                  <option value="R-26-I">R-26-I</option>
                  <option value="R-26-D">R-26-D</option>
                  <option value="R-27-I">R-27-I</option>
                  <option value="R-27-D">R-27-D</option>
                  <option value="R-28-I">R-28-I</option>
                  <option value="R-28-D">R-28-D</option>
                  <option value="R-29-I">R-29-I</option>
                  <option value="R-29-D">R-29-D</option>
                  <option value="R-30-I">R-30-I</option>
                  <option value="R-30-D">R-30-D</option>
                  <option value="R-31-I">R-31-I</option>
                  <option value="R-31-D">R-31-D</option>
                  <option value="R-32-I">R-32-I</option>
                  <option value="R-32-D">R-32-D</option>
                  <option value="R-33-I">R-33-I</option>
                  <option value="R-33-D">R-33-D</option>
                  <option value="R-34-I">R-34-I</option>
                  <option value="R-34-D">R-34-D</option>
                  <option value="R-35-I">R-35-I</option>
                  <option value="R-35-D">R-35-D</option>
                  <option value="R-36-I">R-36-I</option>
                  <option value="R-36-D">R-36-D</option>
                  <option value="R-37-I">R-37-I</option>
                  <option value="R-37-D">R-37-D</option>
                  <option value="R-38-I">R-38-I</option>
                  <option value="R-38-D">R-38-D</option>
                  <option value="R-39-I">R-39-I</option>
                  <option value="R-39-D">R-39-D</option>
                  <option value="R-40-I">R-40-I</option>
                  <option value="R-40-D">R-40-D</option>
                  <option value="S-1-I">S-1-I</option>
                  <option value="S-1-D">S-1-D</option>
                  <option value="S-2-I">S-2-I</option>
                  <option value="S-2-D">S-2-D</option>
                  <option value="S-3-I">S-3-I</option>
                  <option value="S-3-D">S-3-D</option>
                  <option value="S-4-I">S-4-I</option>
                  <option value="S-4-D">S-4-D</option>
                  <option value="S-5-I">S-5-I</option>
                  <option value="S-5-D">S-5-D</option>
                  <option value="S-6-I">S-6-I</option>
                  <option value="S-6-D">S-6-D</option>
                  <option value="S-7-I">S-7-I</option>
                  <option value="S-7-D">S-7-D</option>
                  <option value="S-8-I">S-8-I</option>
                  <option value="S-8-D">S-8-D</option>
                  <option value="S-9-I">S-9-I</option>
                  <option value="S-9-D">S-9-D</option>
                  <option value="S-10-I">S-10-I</option>
                  <option value="S-10-D">S-10-D</option>
                  <option value="S-11-I">S-11-I</option>
                  <option value="S-11-D">S-11-D</option>
                  <option value="S-12-I">S-12-I</option>
                  <option value="S-12-D">S-12-D</option>
                  <option value="S-13-I">S-13-I</option>
                  <option value="S-13-D">S-13-D</option>
                  <option value="S-14-I">S-14-I</option>
                  <option value="S-14-D">S-14-D</option>
                  <option value="S-15-I">S-15-I</option>
                  <option value="S-15-D">S-15-D</option>
                  <option value="S-16-I">S-16-I</option>
                  <option value="S-16-D">S-16-D</option>
                  <option value="S-17-I">S-17-I</option>
                  <option value="S-17-D">S-17-D</option>
                  <option value="S-18-I">S-18-I</option>
                  <option value="S-18-D">S-18-D</option>
                  <option value="S-19-I">S-19-I</option>
                  <option value="S-19-D">S-19-D</option>
                  <option value="S-20-I">S-20-I</option>
                  <option value="S-20-D">S-20-D</option>
                  <option value="S-21-I">S-21-I</option>
                  <option value="S-21-D">S-21-D</option>
                  <option value="S-22-I">S-22-I</option>
                  <option value="S-22-D">S-22-D</option>
                  <option value="S-23-I">S-23-I</option>
                  <option value="S-23-D">S-23-D</option>
                  <option value="S-24-I">S-24-I</option>
                  <option value="S-24-D">S-24-D</option>
                  <option value="S-25-I">S-25-I</option>
                  <option value="S-25-D">S-25-D</option>
                  <option value="S-26-I">S-26-I</option>
                  <option value="S-26-D">S-26-D</option>
                  <option value="S-27-I">S-27-I</option>
                  <option value="S-27-D">S-27-D</option>
                  <option value="S-28-I">S-28-I</option>
                  <option value="S-28-D">S-28-D</option>
                  <option value="S-29-I">S-29-I</option>
                  <option value="S-29-D">S-29-D</option>
                  <option value="S-30-I">S-30-I</option>
                  <option value="S-30-D">S-30-D</option>
                  <option value="S-31-I">S-31-I</option>
                  <option value="S-31-D">S-31-D</option>
                  <option value="S-32-I">S-32-I</option>
                  <option value="S-32-D">S-32-D</option>
                  <option value="S-33-I">S-33-I</option>
                  <option value="S-33-D">S-33-D</option>
                  <option value="S-34-I">S-34-I</option>
                  <option value="S-34-D">S-34-D</option>
                  <option value="S-35-I">S-35-I</option>
                  <option value="S-35-D">S-35-D</option>
                  <option value="S-36-I">S-36-I</option>
                  <option value="S-36-D">S-36-D</option>
                  <option value="S-37-I">S-37-I</option>
                  <option value="S-37-D">S-37-D</option>
                  <option value="S-38-I">S-38-I</option>
                  <option value="S-38-D">S-38-D</option>
                  <option value="S-39-I">S-39-I</option>
                  <option value="S-39-D">S-39-D</option>
                  <option value="S-40-I">S-40-I</option>
                  <option value="S-40-D">S-40-D</option>
                  <option value="T-1-I">T-1-I</option>
                  <option value="T-1-D">T-1-D</option>
                  <option value="T-2-I">T-2-I</option>
                  <option value="T-2-D">T-2-D</option>
                  <option value="T-3-I">T-3-I</option>
                  <option value="T-3-D">T-3-D</option>
                  <option value="T-4-I">T-4-I</option>
                  <option value="T-4-D">T-4-D</option>
                  <option value="T-5-I">T-5-I</option>
                  <option value="T-5-D">T-5-D</option>
                  <option value="T-6-I">T-6-I</option>
                  <option value="T-6-D">T-6-D</option>
                  <option value="T-7-I">T-7-I</option>
                  <option value="T-7-D">T-7-D</option>
                  <option value="T-8-I">T-8-I</option>
                  <option value="T-8-D">T-8-D</option>
                  <option value="T-9-I">T-9-I</option>
                  <option value="T-9-D">T-9-D</option>
                  <option value="T-10-I">T-10-I</option>
                  <option value="T-10-D">T-10-D</option>
                  <option value="T-11-I">T-11-I</option>
                  <option value="T-11-D">T-11-D</option>
                  <option value="T-12-I">T-12-I</option>
                  <option value="T-12-D">T-12-D</option>
                  <option value="T-13-I">T-13-I</option>
                  <option value="T-13-D">T-13-D</option>
                  <option value="T-14-I">T-14-I</option>
                  <option value="T-14-D">T-14-D</option>
                  <option value="T-15-I">T-15-I</option>
                  <option value="T-15-D">T-15-D</option>
                  <option value="T-16-I">T-16-I</option>
                  <option value="T-16-D">T-16-D</option>
                  <option value="T-17-I">T-17-I</option>
                  <option value="T-17-D">T-17-D</option>
                  <option value="T-18-I">T-18-I</option>
                  <option value="T-18-D">T-18-D</option>
                  <option value="T-19-I">T-19-I</option>
                  <option value="T-19-D">T-19-D</option>
                  <option value="T-20-I">T-20-I</option>
                  <option value="T-20-D">T-20-D</option>
                  <option value="T-21-I">T-21-I</option>
                  <option value="T-21-D">T-21-D</option>
                  <option value="T-22-I">T-22-I</option>
                  <option value="T-22-D">T-22-D</option>
                  <option value="T-23-I">T-23-I</option>
                  <option value="T-23-D">T-23-D</option>
                  <option value="T-24-I">T-24-I</option>
                  <option value="T-24-D">T-24-D</option>
                  <option value="T-25-I">T-25-I</option>
                  <option value="T-25-D">T-25-D</option>
                  <option value="T-26-I">T-26-I</option>
                  <option value="T-26-D">T-26-D</option>
                  <option value="T-27-I">T-27-I</option>
                  <option value="T-27-D">T-27-D</option>
                  <option value="T-28-I">T-28-I</option>
                  <option value="T-28-D">T-28-D</option>
                  <option value="T-29-I">T-29-I</option>
                  <option value="T-29-D">T-29-D</option>
                  <option value="T-30-I">T-30-I</option>
                  <option value="T-30-D">T-30-D</option>
                  <option value="T-31-I">T-31-I</option>
                  <option value="T-31-D">T-31-D</option>
                  <option value="T-32-I">T-32-I</option>
                  <option value="T-32-D">T-32-D</option>
                  <option value="T-33-I">T-33-I</option>
                  <option value="T-33-D">T-33-D</option>
                  <option value="T-34-I">T-34-I</option>
                  <option value="T-34-D">T-34-D</option>
                  <option value="T-35-I">T-35-I</option>
                  <option value="T-35-D">T-35-D</option>
                  <option value="T-36-I">T-36-I</option>
                  <option value="T-36-D">T-36-D</option>
                  <option value="T-37-I">T-37-I</option>
                  <option value="T-37-D">T-37-D</option>
                  <option value="T-38-I">T-38-I</option>
                  <option value="T-38-D">T-38-D</option>
                  <option value="T-39-I">T-39-I</option>
                  <option value="T-39-D">T-39-D</option>
                  <option value="T-40-I">T-40-I</option>
                  <option value="T-40-D">T-40-D</option>
                  <option value="U-1-I">U-1-I</option>
                  <option value="U-1-D">U-1-D</option>
                  <option value="U-2-I">U-2-I</option>
                  <option value="U-2-D">U-2-D</option>
                  <option value="U-3-I">U-3-I</option>
                  <option value="U-3-D">U-3-D</option>
                  <option value="U-4-I">U-4-I</option>
                  <option value="U-4-D">U-4-D</option>
                  <option value="U-5-I">U-5-I</option>
                  <option value="U-5-D">U-5-D</option>
                  <option value="U-6-I">U-6-I</option>
                  <option value="U-6-D">U-6-D</option>
                  <option value="U-7-I">U-7-I</option>
                  <option value="U-7-D">U-7-D</option>
                  <option value="U-8-I">U-8-I</option>
                  <option value="U-8-D">U-8-D</option>
                  <option value="U-9-I">U-9-I</option>
                  <option value="U-9-D">U-9-D</option>
                  <option value="U-10-I">U-10-I</option>
                  <option value="U-10-D">U-10-D</option>
                  <option value="U-11-I">U-11-I</option>
                  <option value="U-11-D">U-11-D</option>
                  <option value="U-12-I">U-12-I</option>
                  <option value="U-12-D">U-12-D</option>
                  <option value="U-13-I">U-13-I</option>
                  <option value="U-13-D">U-13-D</option>
                  <option value="U-14-I">U-14-I</option>
                  <option value="U-14-D">U-14-D</option>
                  <option value="U-15-I">U-15-I</option>
                  <option value="U-15-D">U-15-D</option>
                  <option value="U-16-I">U-16-I</option>
                  <option value="U-16-D">U-16-D</option>
                  <option value="U-17-I">U-17-I</option>
                  <option value="U-17-D">U-17-D</option>
                  <option value="U-18-I">U-18-I</option>
                  <option value="U-18-D">U-18-D</option>
                  <option value="U-19-I">U-19-I</option>
                  <option value="U-19-D">U-19-D</option>
                  <option value="U-20-I">U-20-I</option>
                  <option value="U-20-D">U-20-D</option>
                  <option value="U-21-I">U-21-I</option>
                  <option value="U-21-D">U-21-D</option>
                  <option value="U-22-I">U-22-I</option>
                  <option value="U-22-D">U-22-D</option>
                  <option value="U-23-I">U-23-I</option>
                  <option value="U-23-D">U-23-D</option>
                  <option value="U-24-I">U-24-I</option>
                  <option value="U-24-D">U-24-D</option>
                  <option value="U-25-I">U-25-I</option>
                  <option value="U-25-D">U-25-D</option>
                  <option value="U-26-I">U-26-I</option>
                  <option value="U-26-D">U-26-D</option>
                  <option value="U-27-I">U-27-I</option>
                  <option value="U-27-D">U-27-D</option>
                  <option value="U-28-I">U-28-I</option>
                  <option value="U-28-D">U-28-D</option>
                  <option value="U-29-I">U-29-I</option>
                  <option value="U-29-D">U-29-D</option>
                  <option value="U-30-I">U-30-I</option>
                  <option value="U-30-D">U-30-D</option>
                  <option value="U-31-I">U-31-I</option>
                  <option value="U-31-D">U-31-D</option>
                  <option value="U-32-I">U-32-I</option>
                  <option value="U-32-D">U-32-D</option>
                  <option value="U-33-I">U-33-I</option>
                  <option value="U-33-D">U-33-D</option>
                  <option value="U-34-I">U-34-I</option>
                  <option value="U-34-D">U-34-D</option>
                  <option value="U-35-I">U-35-I</option>
                  <option value="U-35-D">U-35-D</option>
                  <option value="U-36-I">U-36-I</option>
                  <option value="U-36-D">U-36-D</option>
                  <option value="U-37-I">U-37-I</option>
                  <option value="U-37-D">U-37-D</option>
                  <option value="U-38-I">U-38-I</option>
                  <option value="U-38-D">U-38-D</option>
                  <option value="U-39-I">U-39-I</option>
                  <option value="U-39-D">U-39-D</option>
                  <option value="U-40-I">U-40-I</option>
                  <option value="U-40-D">U-40-D</option>
                  <option value="V-1-I">V-1-I</option>
                  <option value="V-1-D">V-1-D</option>
                  <option value="V-2-I">V-2-I</option>
                  <option value="V-2-D">V-2-D</option>
                  <option value="V-3-I">V-3-I</option>
                  <option value="V-3-D">V-3-D</option>
                  <option value="V-4-I">V-4-I</option>
                  <option value="V-4-D">V-4-D</option>
                  <option value="V-5-I">V-5-I</option>
                  <option value="V-5-D">V-5-D</option>
                  <option value="V-6-I">V-6-I</option>
                  <option value="V-6-D">V-6-D</option>
                  <option value="V-7-I">V-7-I</option>
                  <option value="V-7-D">V-7-D</option>
                  <option value="V-8-I">V-8-I</option>
                  <option value="V-8-D">V-8-D</option>
                  <option value="V-9-I">V-9-I</option>
                  <option value="V-9-D">V-9-D</option>
                  <option value="V-10-I">V-10-I</option>
                  <option value="V-10-D">V-10-D</option>
                  <option value="V-11-I">V-11-I</option>
                  <option value="V-11-D">V-11-D</option>
                  <option value="V-12-I">V-12-I</option>
                  <option value="V-12-D">V-12-D</option>
                  <option value="V-13-I">V-13-I</option>
                  <option value="V-13-D">V-13-D</option>
                  <option value="V-14-I">V-14-I</option>
                  <option value="V-14-D">V-14-D</option>
                  <option value="V-15-I">V-15-I</option>
                  <option value="V-15-D">V-15-D</option>
                  <option value="V-16-I">V-16-I</option>
                  <option value="V-16-D">V-16-D</option>
                  <option value="V-17-I">V-17-I</option>
                  <option value="V-17-D">V-17-D</option>
                  <option value="V-18-I">V-18-I</option>
                  <option value="V-18-D">V-18-D</option>
                  <option value="V-19-I">V-19-I</option>
                  <option value="V-19-D">V-19-D</option>
                  <option value="V-20-I">V-20-I</option>
                  <option value="V-20-D">V-20-D</option>
                  <option value="V-21-I">V-21-I</option>
                  <option value="V-21-D">V-21-D</option>
                  <option value="V-22-I">V-22-I</option>
                  <option value="V-22-D">V-22-D</option>
                  <option value="V-23-I">V-23-I</option>
                  <option value="V-23-D">V-23-D</option>
                  <option value="V-24-I">V-24-I</option>
                  <option value="V-24-D">V-24-D</option>
                  <option value="V-25-I">V-25-I</option>
                  <option value="V-25-D">V-25-D</option>
                  <option value="V-26-I">V-26-I</option>
                  <option value="V-26-D">V-26-D</option>
                  <option value="V-27-I">V-27-I</option>
                  <option value="V-27-D">V-27-D</option>
                  <option value="V-28-I">V-28-I</option>
                  <option value="V-28-D">V-28-D</option>
                  <option value="V-29-I">V-29-I</option>
                  <option value="V-29-D">V-29-D</option>
                  <option value="V-30-I">V-30-I</option>
                  <option value="V-30-D">V-30-D</option>
                  <option value="V-31-I">V-31-I</option>
                  <option value="V-31-D">V-31-D</option>
                  <option value="V-32-I">V-32-I</option>
                  <option value="V-32-D">V-32-D</option>
                  <option value="V-33-I">V-33-I</option>
                  <option value="V-33-D">V-33-D</option>
                  <option value="V-34-I">V-34-I</option>
                  <option value="V-34-D">V-34-D</option>
                  <option value="V-35-I">V-35-I</option>
                  <option value="V-35-D">V-35-D</option>
                  <option value="V-36-I">V-36-I</option>
                  <option value="V-36-D">V-36-D</option>
                  <option value="V-37-I">V-37-I</option>
                  <option value="V-37-D">V-37-D</option>
                  <option value="V-38-I">V-38-I</option>
                  <option value="V-38-D">V-38-D</option>
                  <option value="V-39-I">V-39-I</option>
                  <option value="V-39-D">V-39-D</option>
                  <option value="V-40-I">V-40-I</option>
                  <option value="V-40-D">V-40-D</option>
				  <option value="IA-1-I">IA-1-I </option>
                      <option value="IA-1-D">IA-1-D </option>
                      <option value="IA-2-I">IA-2-I </option>
                      <option value="IA-2-D">IA-2-D </option>
                      <option value="IA-3-I">IA-3-I </option>
                      <option value="IA-3-D">IA-3-D </option>
                      <option value="IA-4-I">IA-4-I </option>
                      <option value="IA-4-D">IA-4-D </option>
                      <option value="IA-5-I">IA-5-I </option>
                      <option value="IA-5-D">IA-5-D </option>
                      <option value="IA-6-I">IA-6-I </option>
                      <option value="IA-6-D">IA-6-D </option>
                      <option value="IA-7-I">IA-7-I </option>
                      <option value="IA-7-D">IA-7-D </option>
                      <option value="IA-8-I">IA-8-I </option>
                      <option value="IA-8-D">IA-8-D </option>
                      <option value="IA-9-I">IA-9-I </option>
                      <option value="IA-9-D">IA-9-D </option>
                      <option value="IA-10-I">IA-10-I </option>
                      <option value="IA-10-D">IA-10-D </option>
                      <option value="IA-11-I">IA-11-I </option>
                      <option value="IA-11-D">IA-11-D </option>
                      <option value="IA-12-I">IA-12-I </option>
                      <option value="IA-12-D">IA-12-D </option>
                      <option value="IA-13-I">IA-13-I </option>
                      <option value="IA-13-D">IA-13-D </option>
                      <option value="IA-14-I">IA-14-I </option>
                      <option value="IA-14-D">IA-14-D </option>
                      <option value="IA-15-I">IA-15-I </option>
                      <option value="IA-15-D">IA-15-D </option>
                      <option value="IA-16-I">IA-16-I </option>
                      <option value="IA-16-D">IA-16-D </option>
                      <option value="IA-17-I">IA-17-I </option>
                      <option value="IA-17-D">IA-17-D </option>
                      <option value="IA-18-I">IA-18-I </option>
                      <option value="IA-18-D">IA-18-D </option>
                      <option value="IA-19-I">IA-19-I </option>
                      <option value="IA-19-D">IA-19-D </option>
                      <option value="IA-20-I">IA-20-I </option>
                      <option value="IA-20-D">IA-20-D </option>
                      <option value="IA-21-I">IA-21-I </option>
                      <option value="IA-21-D">IA-21-D </option>
                      <option value="IA-22-I">IA-22-I </option>
                      <option value="IA-22-D">IA-22-D </option>
                      <option value="IA-23-I">IA-23-I </option>
                      <option value="IA-23-D">IA-23-D </option>
                      <option value="IA-24-I">IA-24-I </option>
                      <option value="IA-24-D">IA-24-D </option>
                      <option value="IA-25-I">IA-25-I </option>
                      <option value="IA-25-D">IA-25-D </option>
                      <option value="IA-26-I">IA-26-I </option>
                      <option value="IA-26-D">IA-26-D </option>
                      <option value="IA-27-I">IA-27-I </option>
                      <option value="IA-27-D">IA-27-D </option>

                      <option value="IA-28-I">IA-28-I </option>
                      <option value="IA-28-D">IA-28-D </option>
                      <option value="IA-29-I">IA-29-I </option>
                      <option value="IA-29-D">IA-29-D </option>
                      <option value="I-30-I">I-30-I </option>
                      <option value="IA-30-D">IA-30-D </option>
                      <option value="IA-31-I">IA-31-I </option>
                      <option value="IA-31-D">IA-31-D </option>
                      <option value="IA-32-I">IA-32-I </option>
                      <option value="IA-32-D">IA-32-D </option>
                      <option value="IA-33-I">IA-33-I </option>
                      <option value="IA-33-D">IA-33-D </option>
                      <option value="IA-34-I">IA-34-I </option>
                      <option value="IA-34-D">IA-34-D </option>
                      <option value="IA-35-I">IA-35-I </option>
                      <option value="IA-35-D">IA-35-D </option>
                      <option value="IA-36-I">IA-36-I </option>
                      <option value="IA-36-D">IA-36-D </option>
                      <option value="IA-37-I">IA-37-I </option>
                      <option value="IA-37-D">IA-37-D </option>
                      <option value="IA-38-I">IA-38-I </option>
                      <option value="IA-38-D">IA-38-D </option>
                      <option value="IA-39-I">IA-39-I </option>
                      <option value="IA-39-D">IA-39-D </option>
                      <option value="IA-40-I">IA-40-I </option>
                      <option value="IA-40-D">IA-40-D </option>
					  
					  <option value="IJ-1-I">IJ-1-I </option>
                      <option value="IJ-1-D">IJ-1-D </option>
                      <option value="IJ-2-I">IJ-2-I </option>
                      <option value="IJ-2-D">IJ-2-D </option>
                      <option value="IJ-3-I">IJ-3-I </option>
                      <option value="IJ-3-D">IJ-3-D </option>
                      <option value="IJ-4-I">IJ-4-I </option>
                      <option value="IJ-4-D">IJ-4-D </option>
                      <option value="IJ-5-I">IJ-5-I </option>
                      <option value="IJ-5-D">IJ-5-D </option>
                      <option value="IJ-6-I">IJ-6-I </option>
                      <option value="IJ-6-D">IJ-6-D </option>
                      <option value="IJ-7-I">IJ-7-I </option>
                      <option value="IJ-7-D">IJ-7-D </option>
                      <option value="IJ-8-I">IJ-8-I </option>
                      <option value="IJ-8-D">IJ-8-D </option>
                      <option value="IJ-9-I">IJ-9-I </option>
                      <option value="IJ-9-D">IJ-9-D </option>
                      <option value="IJ-10-I">IJ-10-I </option>
                      <option value="IJ-10-D">IJ-10-D </option>
                      <option value="IJ-11-I">IJ-11-I </option>
                      <option value="IJ-11-D">IJ-11-D </option>
                      <option value="IJ-12-I">IJ-12-I </option>
                      <option value="IJ-12-D">IJ-12-D </option>
                      <option value="IJ-13-I">IJ-13-I </option>
                      <option value="IJ-13-D">IJ-13-D </option>
                      <option value="IJ-14-I">IJ-14-I </option>
                      <option value="IJ-14-D">IJ-14-D </option>
                      <option value="IJ-15-I">IJ-15-I </option>
                      <option value="IJ-15-D">IJ-15-D </option>
                      <option value="IJ-16-I">IJ-16-I </option>
                      <option value="IJ-16-D">IJ-16-D </option>
                      <option value="IJ-17-I">IJ-17-I </option>
                      <option value="IJ-17-D">IJ-17-D </option>
                      <option value="IJ-18-I">IJ-18-I </option>
                      <option value="IJ-18-D">IJ-18-D </option>
                      <option value="IJ-19-I">IJ-19-I </option>
                      <option value="IJ-19-D">IJ-19-D </option>
                      <option value="IJ-20-I">IJ-20-I </option>
                      <option value="IJ-20-D">IJ-20-D </option>
                      <option value="IJ-21-I">IJ-21-I </option>
                      <option value="IJ-21-D">IJ-21-D </option>
                      <option value="IJ-22-I">IJ-22-I </option>
                      <option value="IJ-22-D">IJ-22-D </option>
                      <option value="IJ-23-I">IJ-23-I </option>
                      <option value="IJ-23-D">IJ-23-D </option>
                      <option value="IJ-24-I">IJ-24-I </option>
                      <option value="IJ-24-D">IJ-24-D </option>
                      <option value="IJ-25-I">IJ-25-I </option>
                      <option value="IJ-25-D">IJ-25-D </option>
                      <option value="IJ-26-I">IJ-26-I </option>
                      <option value="IJ-26-D">IJ-26-D </option>
                      <option value="IJ-27-I">IJ-27-I </option>
                      <option value="IJ-27-D">IJ-27-D </option>

                      <option value="IJ-28-I">IJ-28-I </option>
                      <option value="IJ-28-D">IJ-28-D </option>
                      <option value="IJ-29-I">IJ-29-I </option>
                      <option value="IJ-29-D">IJ-29-D </option>
                      <option value="I-30-I">I-30-I </option>
                      <option value="IJ-30-D">IJ-30-D </option>
                      <option value="IJ-31-I">IJ-31-I </option>
                      <option value="IJ-31-D">IJ-31-D </option>
                      <option value="IJ-32-I">IJ-32-I </option>
                      <option value="IJ-32-D">IJ-32-D </option>
                      <option value="IJ-33-I">IJ-33-I </option>
                      <option value="IJ-33-D">IJ-33-D </option>
                      <option value="IJ-34-I">IJ-34-I </option>
                      <option value="IJ-34-D">IJ-34-D </option>
                      <option value="IJ-35-I">IJ-35-I </option>
                      <option value="IJ-35-D">IJ-35-D </option>
                      <option value="IJ-36-I">IJ-36-I </option>
                      <option value="IJ-36-D">IJ-36-D </option>
                      <option value="IJ-37-I">IJ-37-I </option>
                      <option value="IJ-37-D">IJ-37-D </option>
                      <option value="IJ-38-I">IJ-38-I </option>
                      <option value="IJ-38-D">IJ-38-D </option>
                      <option value="IJ-39-I">IJ-39-I </option>
                      <option value="IJ-39-D">IJ-39-D </option>
                      <option value="IJ-40-I">IJ-40-I </option>
                      <option value="IJ-40-D">IJ-40-D </option>
                  <option value="">--FARMACIA--</option>
                  <option value="SA1-3-1">SA1-3-1</option>
                  <option value="SA4-6-1">SA4-6-1</option>
                  <option value="SA7-9-1">SA7-9-1</option>
                  <option value="SA10-12-1">SA10-12-1</option>
                  <option value="SA13-15-1">SA13-15-1</option>
                  <option value="SA16-18-1">SA16-18-1</option>
                  <option value="SA1-3-2">SA1-3-2</option>
                  <option value="SA4-6-2">SA4-6-2</option>
                  <option value="SA7-9-2">SA7-9-2</option>
                  <option value="SA10-12-2">SA10-12-2</option>
                  <option value="SA13-15-2">SA13-15-2</option>
                  <option value="SA16-18-2">SA16-18-2</option>
                  <option value="SA1-3-3">SA1-3-3</option>
                  <option value="SA4-6-3">SA4-6-3</option>
                  <option value="SA7-9-3">SA7-9-3</option>
                  <option value="SA10-12-3">SA10-12-3</option>
                  <option value="SA13-15-3">SA13-15-3</option>
                  <option value="SA16-18-3">SA16-18-3</option>
                  <option value="SA1-3-4">SA1-3-4</option>
                  <option value="SA4-6-4">SA4-6-4</option>
                  <option value="SA7-9-4">SA7-9-4</option>
                  <option value="SA10-12-4">SA10-12-4</option>
                  <option value="SA13-15-4">SA13-15-4</option>
                  <option value="SA16-18-4">SA16-18-4</option>
                  <option value="SB1-3-1">SB1-3-1</option>
                  <option value="SB4-6-1">SB4-6-1</option>
                  <option value="SB7-9-1">SB7-9-1</option>
                  <option value="SB10-12-1">SB10-12-1</option>
                  <option value="SB1-3-2">SB1-3-2</option>
                  <option value="SB4-6-2">SB4-6-2</option>
                  <option value="SB7-9-2">SB7-9-2</option>
                  <option value="SB10-12-2">SB10-12-2</option>
                  <option value="SB1-3-3">SB1-3-3</option>
                  <option value="SB4-6-3">SB4-6-3</option>
                  <option value="SB7-9-3">SB7-9-3</option>
                  <option value="SB10-12-3">SB10-12-3</option>
                  <option value="SB1-3-4">SB1-3-4</option>
                  <option value="SB4-6-4">SB4-6-4</option>
                  <option value="SB7-9-4">SB7-9-4</option>
                  <option value="SB10-12-4">SB10-12-4</option>
                  <option value="SB1-3-4">SB1-3-4</option>
                  <option value="SB4-6-4">SB4-6-4</option>
                  <option value="SB7-9-4">SB7-9-4</option>
                  <option value="SB10-12-4">SB10-12-4</option>
                  <option value="SB1-3-5">SB1-3-5</option>
                  <option value="SB4-6-5">SB4-6-5</option>
                  <option value="SB7-9-5">SB7-9-5</option>
                  <option value="SB10-12-5">SB10-12-5</option>
                  <option value="SB1-3-6">SB1-3-6</option>
                  <option value="SB4-6-6">SB4-6-6</option>
                  <option value="SB7-9-6">SB7-9-6</option>
                  <option value="SB10-12-6">SB10-12-6</option>
                  <option value="SC1-3-1">SC1-3-1</option>
                  <option value="SC4-6-1">SC4-6-1</option>
                  <option value="SC7-9-1">SC7-9-1</option>
                  <option value="SC10-12-1">SC10-12-1</option>
                  <option value="SC1-3-2">SC1-3-2</option>
                  <option value="SC4-6-2">SC4-6-2</option>
                  <option value="SC7-9-2">SC7-9-2</option>
                  <option value="SC10-12-2">SC10-12-2</option>
                  <option value="SC1-3-3">SC1-3-3</option>
                  <option value="SC4-6-3">SC4-6-3</option>
                  <option value="SC7-9-3">SC7-9-3</option>
                  <option value="SC10-12-3">SC10-12-3</option>
                  <option value="SC1-3-4">SC1-3-4</option>
                  <option value="SC4-6-4">SC4-6-4</option>
                  <option value="SC7-9-4">SC7-9-4</option>
                  <option value="SC10-12-4">SC10-12-4</option>
                  <option value="SC1-3-4">SC1-3-4</option>
                  <option value="SC4-6-4">SC4-6-4</option>
                  <option value="SC7-9-4">SC7-9-4</option>
                  <option value="SC10-12-4">SC10-12-4</option>
                  <option value="SC1-3-5">SC1-3-5</option>
                  <option value="SC4-6-5">SC4-6-5</option>
                  <option value="SC7-9-5">SC7-9-5</option>
                  <option value="SC10-12-5">SC10-12-5</option>
                  <option value="SC1-3-6">SC1-3-6</option>
                  <option value="SC4-6-6">SC4-6-6</option>
                  <option value="SC7-9-6">SC7-9-6</option>
                  <option value="SC10-12-6">SC10-12-6</option>
                  <option value="SD1-3-1">SD1-3-1</option>
                  <option value="SD4-6-1">SD4-6-1</option>
                  <option value="SD7-9-1">SD7-9-1</option>
                  <option value="SD10-12-1">SD10-12-1</option>
                  <option value="SD1-3-2">SD1-3-2</option>
                  <option value="SD4-6-2">SD4-6-2</option>
                  <option value="SD7-9-2">SD7-9-2</option>
                  <option value="SD10-12-2">SD10-12-2</option>
                  <option value="SD1-3-3">SD1-3-3</option>
                  <option value="SD4-6-3">SD4-6-3</option>
                  <option value="SD7-9-3">SD7-9-3</option>
                  <option value="SD10-12-3">SD10-12-3</option>
                  <option value="SD1-3-4">SD1-3-4</option>
                  <option value="SD4-6-4">SD4-6-4</option>
                  <option value="SD7-9-4">SD7-9-4</option>
                  <option value="SD10-12-4">SD10-12-4</option>
                  <option value="SD1-3-4">SD1-3-4</option>
                  <option value="SD4-6-4">SD4-6-4</option>
                  <option value="SD7-9-4">SD7-9-4</option>
                  <option value="SD10-12-4">SD10-12-4</option>
                  <option value="SD1-3-5">SD1-3-5</option>
                  <option value="SD4-6-5">SD4-6-5</option>
                  <option value="SD7-9-5">SD7-9-5</option>
                  <option value="SD10-12-5">SD10-12-5</option>
                  <option value="SD1-3-6">SD1-3-6</option>
                  <option value="SD4-6-6">SD4-6-6</option>
                  <option value="SD7-9-6">SD7-9-6</option>
                  <option value="SD10-12-6">SD10-12-6</option>
                  <option value="SE1-3-1">SE1-3-1</option>
                  <option value="SE4-6-1">SE4-6-1</option>
                  <option value="SE7-9-1">SE7-9-1</option>
                  <option value="SE10-12-1">SE10-12-1</option>
                  <option value="SE1-3-2">SE1-3-2</option>
                  <option value="SE4-6-2">SE4-6-2</option>
                  <option value="SE7-9-2">SE7-9-2</option>
                  <option value="SE10-12-2">SE10-12-2</option>
                  <option value="SE1-3-3">SE1-3-3</option>
                  <option value="SE4-6-3">SE4-6-3</option>
                  <option value="SE7-9-3">SE7-9-3</option>
                  <option value="SE10-12-3">SE10-12-3</option>
                  <option value="SE1-3-4">SE1-3-4</option>
                  <option value="SE4-6-4">SE4-6-4</option>
                  <option value="SE7-9-4">SE7-9-4</option>
                  <option value="SE10-12-4">SE10-12-4</option>
                  <option value="SE1-3-4">SE1-3-4</option>
                  <option value="SE4-6-4">SE4-6-4</option>
                  <option value="SE7-9-4">SE7-9-4</option>
                  <option value="SE10-12-4">SE10-12-4</option>
                  <option value="SE1-3-5">SE1-3-5</option>
                  <option value="SE4-6-5">SE4-6-5</option>
                  <option value="SE7-9-5">SE7-9-5</option>
                  <option value="SE10-12-5">SE10-12-5</option>
                  <option value="SE1-3-6">SE1-3-6</option>
                  <option value="SE4-6-6">SE4-6-6</option>
                  <option value="SE7-9-6">SE7-9-6</option>
                  <option value="SE10-12-6">SE10-12-6</option>
                  <option value="SF1-3-1">SF1-3-1</option>
                  <option value="SF4-6-1">SF4-6-1</option>
                  <option value="SF7-9-1">SF7-9-1</option>
                  <option value="SF1-3-2">SF1-3-2</option>
                  <option value="SF4-6-2">SF4-6-2</option>
                  <option value="SF7-9-2">SF7-9-2</option>
                  <option value="SF1-3-3">SF1-3-3</option>
                  <option value="SF4-6-3">SF4-6-3</option>
                  <option value="SF7-9-3">SF7-9-3</option>
                  <option value="SG1-3-1">SG1-3-1</option>
                  <option value="SG4-6-1">SG4-6-1</option>
                  <option value="SG7-9-1">SG7-9-1</option>
                  <option value="SG10-12-1">SG10-12-1</option>
                  <option value="SG1-3-2">SG1-3-2</option>
                  <option value="SG4-6-2">SG4-6-2</option>
                  <option value="SG7-9-2">SG7-9-2</option>
                  <option value="SG10-12-2">SG10-12-2</option>
                  <option value="SG1-3-3">SG1-3-3</option>
                  <option value="SG4-6-3">SG4-6-3</option>
                  <option value="SG7-9-3">SG7-9-3</option>
                  <option value="SG10-12-3">SG10-12-3</option>
                  <option value="SG1-3-4">SG1-3-4</option>
                  <option value="SG4-6-4">SG4-6-4</option>
                  <option value="SG7-9-4">SG7-9-4</option>
                  <option value="SG10-12-4">SG10-12-4</option>
                  <option value="SH1-3-1">SH1-3-1</option>
                  <option value="SH1-3-2">SH1-3-2</option>
                  <option value="SH1-3-3">SH1-3-3</option>
                  <option value="SI1-3-1">SI1-3-1</option>
                  <option value="SI4-6-1">SI4-6-1</option>
                  <option value="SI1-3-2">SI1-3-2</option>
                  <option value="SI4-6-2">SI4-6-2</option>
                  <option value="SI1-3-3">SI1-3-3</option>
                  <option value="SI4-6-3">SI4-6-3</option>
                  <option value="SI1-3-4">SI1-3-4</option>
                  <option value="SI4-6-4">SI4-6-4</option>
                  <option value="SI1-3-4">SI1-3-4</option>
                  <option value="SI4-6-4">SI4-6-4</option>
                  <option value="SI1-3-5">SI1-3-5</option>
                  <option value="SI4-6-5">SI4-6-5</option>
                  <option value="SI1-3-6">SI1-3-6</option>
                  <option value="SI4-6-6">SI4-6-6</option>
                </select>
              </label></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="33" class="bodyText"><strong>CODIGO DE BARRA :</strong> </td>
              <td colspan="2"><input type='text' name='txtf_cod' id='txtf_cod'  size='30' value="<%=cod_jv%>"/></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="33" class="bodyText"><strong>CAJAS COMPLETAS:</strong></td>
              <td colspan="2"><label>
                <input type='text' name='txtf_exi' id='txtf_exi' size='10' maxlength='10' value="<%=cajas_jv%>"/>
              </label></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="33" class="bodyText"><strong>PIEZAS/CAJAS:</strong></td>
              <td height="33" colspan="2"><input type='text' name='txtf_pza'  size='10' maxlength='10' value="<%=pzas_jv%>"/></td>
              <td height="33">&nbsp;</td>
            </tr>
            <tr>
              <td height="33" class="bodyText"><strong>RESTO:</strong></td>
              <td height="33" colspan="2"><input type='text' name='txtf_rto' size='10' maxlength='10' value="<%=resto_jv%>"/></td>
              <td height="33">&nbsp;</td>
            </tr>
            <tr>
              <td height="21" class="bodyText"><strong>EXISTENCIA:</strong></td>
              <td height="21"><input type='text' name='txtf_exis2'  size='10' maxlength='10' onclick="putSuma1(this.form)" value="<%=exi_jv%>"/></td>
              <td height="21">&nbsp;</td>
              <td height="21">&nbsp;</td>
            </tr>
            <tr>
              <td height="21"><label></label></td>
              <td height="21"><input name="Submit" type="submit" class="subHeader" value="Modificar"/>
                &nbsp;&nbsp;&nbsp; </td>
              <td height="21"><a href='consulta2_inv2.jsp?id_prov=<%=eliminar_jv%>&amp;hora_ini_vi=<%=hora_ini_jv%>&amp;equi_vi=<%=equipo_jv%>&amp;integran_vi=<%=integrantes_jv%>&usuario=<%=usu_jv%>'>Regresar a Captura de Remisi&oacute;n</a></td>
              <td height="21">&nbsp;</td>
            </tr>
          </table>          
      </tr>
    </table>
       
    </p>
	  </form>    </td>
    <td width="79">&nbsp;</td>
        <td width="97" valign="top"><br />
	&nbsp;<br /></td>
        <td width="4">&nbsp;</td>
  </tr>
  <tr>
    <td width="72">&nbsp;</td>
    <td width="22">&nbsp;</td>
    <td width="11">&nbsp;</td>
    <td width="822">&nbsp;</td>
    <td width="79">&nbsp;</td>
    <td width="97">&nbsp;</td>
	<td width="4">&nbsp;</td>
  </tr>
</table>
<img src="mm_spacer.gif" alt="" width="50" height="1" border="0" />
</body>
</html>
