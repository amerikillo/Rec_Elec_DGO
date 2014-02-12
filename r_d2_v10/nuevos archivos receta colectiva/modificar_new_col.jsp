<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date" errorPage="" %>

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
				   Statement stmt2 = conn.createStatement();
				   Statement stmt3 = conn.createStatement();
				  Statement stmt_001 = conn.createStatement();
				  ResultSet rset = null;
				  ResultSet rset_org = null;
				  ResultSet rset_001 = null;
				  ResultSet rset1 = null;
				  ResultSet rset2 = null;
				  ResultSet rset3 = null;
				  ResultSet rset_re =null;
				  ResultSet rset_receta =null;
				  ResultSet rset_receta1 =null;
				  ResultSet rset_inv =null;
				  ResultSet rset_pasti =null;
				  
				  
				   Statement stmt_re = conn.createStatement();
				   Statement stmt_receta = conn.createStatement();
				   Statement stmt_receta1 = conn.createStatement();
				   Statement stmt_inv = conn.createStatement();
				   Statement stmt_inv2 = conn.createStatement();
				   Statement stmt_pasti = conn.createStatement(); 
				    Statement stmt1= conn.createStatement();
				    //Statement stmt = conn.createStatement(); 
String hora_ini_jv="";
String lugar_jv="";
String cb_jv="",nombre_jv="",edad_jv="",folio_jv="",cause_jv="",foliore_jv="",foliore2_jv="",radiopro_jv="",radiosur_jv="",date_jv="",reloj_jv="",ela2_jv="",juris_jv="",clave_jv="",eliminar_jv="",usu_jv="",equipo_jv="",integrantes_jv="",recibe_id_jv="",cant_jv="",part_jv="",cantsur="",clavesur="",partidasur="",cantinv="",descripsur="",cv_dgo_jv="",cv_uni_jv="",cv_mpio_jv="",id_med_jv="",cantsur2="",servicio_jv="",encarser_jv="";
String but="r";
String but2="r";
String nom_unidad="",no_jur="",status="";
int cont1=0,cant22_jv=0,cant2_jv=0,cantinv2=0,sur11=0,mtotal=0,mtotal2=0,resto_jv=0,sol2=0,sur2=0,resto2_jv=0;
//variables medicamento 1
String med1_jv="",descrip1_jv="",indica1_jv="",sol1_jv="",sur1_jv="",present1_jv="",clave1_jv="";

//variables medicamento 1
String med2_jv="",descrip2_jv="",indica2_jv="",sol2_jv="",sur2_jv="",present2_jv="",clave2_jv="";

//variables medicamento 1
String med3_jv="",descrip3_jv="",indica3_jv="",sol3_jv="",sur3_jv="",present3_jv="",clave3_jv="";
//varibles medico
String medico_jv="",uni_jv="",cedu_jv="",nomed_jv="",t1_jv="",t2_jv="",t3_jv="",tfecha_jv="",cant_receta="",cant_receta2="",clave_pasti="",cant_pasti="";
int cont6=0,cant_receta1=0,cant_receta3=0,totalreceta=0,cant_pasti1=0,mtotalreceta=0,mtotalreceta2=0,ttcant_surpas_amp2=0,total=0,total2=0,ttcant_surpas_amp=0;
String ela_jv="",cv_finan_jv="",financiamiento1="",layout="";


try{
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
		ela2_jv=request.getParameter("encar");		   
		juris_jv=request.getParameter("juris1");
		clave_jv=request.getParameter("clave_uni");		   
  uni_jv=request.getParameter("univer");
		cedu_jv=request.getParameter("cedu");
		nomed_jv=request.getParameter("nomed");
		t1_jv=request.getParameter("day5");
		t2_jv=request.getParameter("mes5");
		t3_jv=request.getParameter("aa5");
		cv_dgo_jv=request.getParameter("cv_dgo");
		cv_uni_jv=request.getParameter("cv_uni");
		cv_mpio_jv=request.getParameter("cv_mpio");
		servicio_jv=request.getParameter("servicio");
encarser_jv=request.getParameter("encarser");
		   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }


try{
        nom_unidad=request.getParameter("uni");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
try{
        no_jur=request.getParameter("juris");   
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
try { 


        but=""+request.getParameter("Submit");
		
		//out.print("but ="+but);
        
    }catch(Exception e){System.out.print("not");} 

foliore2_jv=request.getParameter("txtf_foliore");


rset1= stmt.executeQuery("select * from receta_colectiva where id='"+eliminar_jv+"'");
rset2= stmt2.executeQuery("select * from receta_colectiva where id='"+eliminar_jv+"'");
	 while(rset2.next())
	 {
	 med1_jv=rset2.getString("clave");
	 part_jv=rset2.getString("partida");
	 cantsur2=rset2.getString("cant_sur");
	 cant22_jv = Integer.parseInt(cantsur2);
	 
	 }  
	 
	  rset_org= stmt3.executeQuery("select * from inventario where clave='"+med1_jv+"' and origen='"+part_jv+"' ");
	  
	  while(rset_org.next())
	  {
	   cant_jv=rset_org.getString("cant");
	   cant2_jv=Integer.parseInt(cant_jv);
	  }  
	   
	   
	

if(but.equals("Modificar"))
     {
			 
			  sol1_jv=request.getParameter("txtf_sol1");
			  sur1_jv=request.getParameter("txtf_sur1");
			  sol2 = Integer.parseInt(sol1_jv); 
			  sur2 = Integer.parseInt(sur1_jv);
			  date_jv=request.getParameter("txtf_date1");
			   
			   rset_001 = stmt_001.executeQuery("SELECT STR_TO_DATE('"+date_jv+"', '%d/%m/%Y')"); 
                    while(rset_001.next()){
                    date_jv= rset_001.getString("STR_TO_DATE('"+date_jv+"', '%d/%m/%Y')");
					}
			   
			   rset_re = stmt_re.executeQuery(" select * from receta_colectiva WHERE id='"+eliminar_jv+"'");
					while (rset_re.next())
					{
					cantsur=rset_re.getString("cant_sur");
					cant2_jv = Integer.parseInt(cantsur);
					clavesur=rset_re.getString("clave");
					partidasur=rset_re.getString("partida");
					descripsur=rset_re.getString("descrip");
					tfecha_jv=rset_re.getString("fecha_re");
					ela_jv=rset_re.getString("encargado");
					id_med_jv=rset_re.getString("id_med");
					clave1_jv=rset_re.getString("clave");
				  descrip1_jv=rset_re.getString("descrip");
					
					financiamiento1=rset_re.getString("fuente");
					reloj_jv=rset_re.getString("hora");
					cv_finan_jv=rset_re.getString("cv_financ");
					layout=rset_re.getString("layout");
					present1_jv=rset_re.getString("present");
					//resto_jv=rset_re.getString("cant_pendi");
					status=rset_re.getString("status_receta");
					radiosur_jv=rset_re.getString("surtido");
					encarser_jv=rset_re.getString("7");
					}
					
					rset_receta = stmt_receta.executeQuery(" select * from receta WHERE clave='"+clavesur+"' and folio_re='"+foliore_jv+"' and partida='"+partidasur+"' group by folio_re");
					while (rset_receta.next())
					{
					cont6++;
					}
					rset_pasti = stmt_pasti.executeQuery(" select * from pasti_ampu WHERE clave='"+clavesur+"'");
							while (rset_pasti.next())
							{
							clave_pasti=rset_pasti.getString("clave");
							cant_pasti=rset_pasti.getString("cant");
							cant_pasti1=Integer.parseInt(cant_pasti);
							
						/*			*/
							}
					
					
					
							
							rset_inv = stmt_inv.executeQuery(" select * from inventario WHERE clave='"+clavesur+"' and origen='"+partidasur+"'");
							while (rset_inv.next())
							{
							cantinv=rset_inv.getString("cant");
							cantinv2=Integer.parseInt(cantinv);
							cont1++;
							}
									sur11=Integer.parseInt(sur1_jv);
									
						   //if(cantinv2>0)
							 // {
									if (sur11>cant22_jv)
									{
									mtotal=sur11-cant22_jv;
									mtotal2=cantinv2-mtotal;
									stmt1.execute("insert into modificacion values ('"+clavesur+"','"+descripsur+"','-','-','"+cantinv2+"','"+partidasur+"','-"+mtotal+"','"+mtotal2+"','"+date_jv+"','"+ela2_jv+"','SALIDA VÍA RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");
									}else{
									mtotal=cant22_jv-sur11;
									mtotal2=mtotal+cantinv2;
									stmt1.execute("insert into modificacion values ('"+clavesur+"','"+descripsur+"','-','-','"+cantinv2+"','"+partidasur+"','"+mtotal+"','"+mtotal2+"','"+date_jv+"','"+ela2_jv+"','AJUSTE VÍA RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");
									}
									//out.print(""+mtotal2);
									
											if ((mtotal2>0) || (mtotal2==0))
											{
										
													if (cont1>0)
													{
													stmt_inv2.execute("update inventario set cant='"+mtotal2+"' where clave='"+clavesur+"' and origen='"+partidasur+"'");
													}else{
													stmt_inv2.execute("insert into inventario values ('"+clavesur+"','"+descripsur+"','-','-','"+mtotal2+"','"+partidasur+"')");
													}
														if(mtotal2==0)
														{
													   stmt_001.execute("delete from inventario where clave='"+clavesur+"' and origen='"+partidasur+"'");
													   }
													   
													   resto_jv=sol2-sur2;
																if (resto_jv==0)
															   {
															   status="SURTIDO COMPLETO";
															   }else{
															   status="SURTIDO PARCIAL";
															   }
															   //out.print(""+cont6);
															   
									if(cant_pasti1>0)
							{						   
												if(cont6>0)
												{
						rset_receta = stmt_receta.executeQuery(" select clave,sum(cant_sur) from receta WHERE clave='"+clavesur+"' and folio_re='"+foliore_jv+"' and partida='"+partidasur+"' group by folio_re");
						while (rset_receta.next())
						{
						cant_receta=rset_receta.getString("sum(cant_sur)");
						cant_receta1=Integer.parseInt(cant_receta);
						}
						
						stmt_receta.execute(" DELETE FROM receta WHERE clave='"+clavesur+"' and partida='"+partidasur+"' and folio_re='"+foliore_jv+"'"); 	
						
			rset_receta1 = stmt_receta1.executeQuery(" select clave,sum(cant_sur) from receta_pasti_ampu WHERE clave='"+clavesur+"' and folio_re='"+foliore_jv+"' and partida='"+partidasur+"' group by folio_re");
						while (rset_receta1.next())
						{
						cant_receta2=rset_receta1.getString("sum(cant_sur)");
						cant_receta3=Integer.parseInt(cant_receta2);
						}
						
						stmt_receta1.execute(" DELETE FROM receta_pasti_ampu WHERE clave='"+clavesur+"' and partida='"+partidasur+"' and folio_re='"+foliore_jv+"'");
						
						totalreceta=cant_receta1*cant_pasti1;
			            mtotalreceta=totalreceta+cant_receta3;
											
									
						
						if(sol2>sur2)
						{
						resto2_jv=sol2-sur2;
									mtotalreceta2=mtotalreceta-resto2_jv;
												out.print(""+mtotalreceta2);
												out.print("resto-->"+resto2_jv);
										%>
										<script>
										alert("mayor")
										</script>
										<%		
							
															
									if(sur2>cant_pasti1)
							{
								ttcant_surpas_amp2=sur2/cant_pasti1;
								total=ttcant_surpas_amp2*cant_pasti1;
								total2=sur2-total;
								ttcant_surpas_amp=sur2-cant_pasti1;
								
								
												
							stmt_001.execute("insert into receta values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+ttcant_surpas_amp2+"','"+ttcant_surpas_amp2+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+partidasur+"','"+present1_jv+"','0','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");
							
							stmt_001.execute("insert into receta_pasti_ampu values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+total2+"','"+total2+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+part_jv+"','"+present1_jv+"','0','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");				
							}}	}			   
					} else
					{
					
					%>
										<script>
										//alert("menor o igual")
										</script>
										<%	
					resto2_jv=sur2-mtotalreceta;
					mtotalreceta2=mtotalreceta+resto2_jv;
												//out.print(""+mtotalreceta2);
												
							
							if(cant_pasti1>0)
							{
															
									if(mtotalreceta2>cant_pasti1)
							{
								ttcant_surpas_amp2=mtotalreceta2/cant_pasti1;
								total=ttcant_surpas_amp2*cant_pasti1;
								total2=mtotalreceta2-total;
								ttcant_surpas_amp=mtotalreceta2-cant_pasti1;
								
								
												
							stmt_001.execute("insert into receta values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+ttcant_surpas_amp2+"','"+ttcant_surpas_amp2+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+partidasur+"','"+present1_jv+"','0','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");
							
							stmt_001.execute("insert into receta_pasti_ampu values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+total2+"','"+total2+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+part_jv+"','"+present1_jv+"','0','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");				
							}
							}else
							{
							
		stmt_001.execute("update receta set cant_sol='"+sol1_jv+"',cant_sur='"+sur1_jv+"',cant_pendi='"+resto_jv+"',status_receta='"+status+"' where folio_re='"+foliore_jv+"' and clave='"+clave1_jv+"' and partida='"+partidasur+"' and cv_financ='"+cv_finan_jv+"'  ");
							
							%>
							
							
										<script>
										//alert("pasti menor o igual")
										</script>
										<%	
							
							}					   
							
						}														   
									   stmt_001.execute("update receta_colectiva set cant_sol='"+sol1_jv+"',cant_sur='"+sur1_jv+"',cant_pendi='"+resto_jv+"',status_receta='"+status+"' where id='"+eliminar_jv+"'");
															   
															   %>
															   <script>
															   alert("DATOS MODIFICADOS")
		self.location='recedgo_col.jsp?id_prov=<%=eliminar_jv%>&foliore=<%=foliore_jv%>&encar=<%=ela2_jv%>&juris=<%=no_jur%>&uni=<%=nom_unidad%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&clave1=&descrip1=&sur1=&sol1=&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&part=&id_med=<%=id_med_jv%>&day5=<%=t1_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&servicio=<%=servicio_jv%>&encarser=<%=encarser_jv%>'
															   </script>
															   
															   <%
															   
																}else{
															   %>
															   <script>
															   alert("EXISTENCIA MENOR")
															   
															   </script>	
																	<%
																	}
													   
						
	   
}	

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>.:Receta Medica:.</title>
<script language="javascript" src="list02.js"></script>
<style type="text/css">
<!--
.style2 {
	font-size: 10px;
	font-family: Arial, Helvetica, sans-serif;
}
.style4 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
}
.style5 {font-size: 14px}
.style6 {
	font-size: 12px;
	font-weight: bold;
}
.style7 {
	font-size: 16px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style11 {font-size: 12px}
-->
</style>
</head>

<body onLoad="mueveReloj();SetCur()">
<form name="form" method="post" action="modificar_new_col.jsp?id_prov=<%=eliminar_jv%>&foliore=<%=foliore_jv%>&encar=<%=ela2_jv%>&juris=<%=no_jur%>&uni=<%=nom_unidad%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&clave1=&descrip1=&sur1=&sol1=&day5=<%=t1_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&servicio=<%=servicio_jv%>&encarser=<%=encarser_jv%>">

<table width="779" height="339" border="3" align="center" cellpadding="2">
  <tr>
    <td width="725" height="137"><table width="710" border="0" align="center" cellpadding="2">
      <tr>
        <td width="114" height="82"><img src="logo_salud.jpg" width="114" height="78" /></td>
        <td width="339"><div align="center"><span class="style7">SERVICIO DE SALUD DE DURANGO<br />
        RECETA MEDICA </span></div></td>
        <td width="225"><img src="logo_salud_gob.jpg" width="225" height="45" /></td>
      </tr>
    </table>
      <table width="710" height="45" border="0" align="center" cellpadding="2">
        <tr>
          <td width="284" height="41">
            <table width="270" height="0%" border="0" cellpadding="2">
              <tr>
                <td width="221" height="100%" class="style2">FECHA:
                    
                
                  <span class="style2">
                  <label>                  </label>
                  <input name="txtf_date1" type="text" size="15" value="<%= day>10?day:day %>/<%= month>10?month:month %>/<%= year %>" onKeyPress="return handleEnter(this, event)" readonly="true"/>                </td>
              </tr>
            </table>          </td>
          <td width="250"><table width="167" height="0%" border="0" cellpadding="2">
            <tr>
              <td width="225" height="100%" class="style2">HORA:
                <input name="reloj" type="text" class="styl2" onKeyPress="return handleEnter(this, event)" size="15" readonly="true" ></td>
            </tr>
          </table>            </td>
          <td width="172" align="center" class="style2">Ingrese No. Folio
            <input type="text" name="txtf_foliore" size="20"  value="<%=foliore_jv%>"/>
            <table width="152" height="0%" border="0" align="right" cellpadding="2">
          </table></td>
        </tr>
    </table>    </td>
  </tr>
        <tr>
          <td height="71" colspan="3" class="style4"><table width="710" border="0" align="center" cellpadding="2">
            <tr>
              <td width="533" class="style2">UNIDAD DE SALUD</td>
              <td width="170"><table width="170" border="0" align="left" cellpadding="2">
                <tr>
                  <td width="162" align="center"><div align="center" class="style2">JURISDICCION&nbsp;&nbsp;<input name="txtf_njuris" type="text" size="1" value="<%=no_jur%>" readonly="true"/>
                  </div></td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td colspan="2"><input type="text" name="txtf_unidadmed" size="95" colspan="3" class="style4"  value="<%=nom_unidad%>" readonly="true"/></td>
            </tr>
          </table></td>
        </tr>
        
        
        
        <tr>
          <td height="123" colspan="3" class="style4"><table width="746" border="0" align="center" cellpadding="2">
            
            
            <tr>
              <td width="78" class="style11"><label> <br />
              </label></td>
              <td width="275" class="style11"><label></label></td>
              <td width="67" class="style11">&nbsp;</td>
              <td width="56" class="style11"><label></label></td>
              <td width="142" class="style11">&nbsp;</td>
              <td width="90" class="style11">&nbsp;</td>
            </tr>
            <tr>
              <td width="78" class="style11"><span class="style2">CLAVE</span></td>
              <td class="style11"><span class="style2">DESCRIPCI&Oacute;N</span></td>
              <td class="style11"><span class="style2">CANT. SOL</span></td>
              <td class="style11"><span class="style2">CANT. SUR </span></td>
              <td colspan="2" class="style2">EXIST&nbsp;
                <input type="text" name="txtf_exist" size="1"  class="style2" value="<%=cant_jv%>" onKeyPress="return handleEnter(this, event)" readonly="true"/>
                <span class="style2">Origen</span>
                  <input name="txtf_part" type="text" class="style2" value="<%=part_jv%>" size="1" readonly="true" />
                <span class="style2">Cant.</span>
              <input name="txtf_cant2" type="text" class="style2" value="<%=cant22_jv%>" size="1" readonly="true" /></td>
            </tr>
			<%
			while (rset1.next())
	   {
			%>
            <tr>
              <td class="style11"><input type="text" name="txtf_clave1"  class="style2" size="10" value="<%=rset1.getString("clave")%>" /></td>
              <td class="style11"><textarea name="txtf_descrip1" class="style2" cols="60"><%=rset1.getString("descrip")%></textarea></td>
              <td class="style11"><input type="text" name="txtf_sol1" size="5" class="style2" value="<%=rset1.getString("cant_sol")%>"/></td>
              <td class="style11"><input type="text" class="style2" name="txtf_sur1" size="5" value="<%=rset1.getString("cant_sur")%>"  onchange="setSur1(this.form)"/></td>
			  <%}%>
              <td class="style11"><input name="Submit" type="submit" class="but" value="Modificar" onChange="setSur1(this.form)"/>&nbsp; <a href="javascript:history.back(1)">Regresar</a></td>
              <td class="style11">&nbsp;</td>
            </tr>
            
			
            
            
          </table></td>
        </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
