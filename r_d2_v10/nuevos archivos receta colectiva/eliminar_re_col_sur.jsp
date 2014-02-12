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
<%

/*----------------------------------------------------------------------------------------------------------------------
Nombre del Archivo: eliminar_inv_alm.jsp
Fecha:2010
Autor: RHW
  ----------------------------------------------------------------------------------------------------------------------*/
String cb_jv="",nombre_jv="",edad_jv="",folio_jv="",cause_jv="",foliore_jv="",foliore2_jv="",radiopro_jv="",radiosur_jv="",date_jv="",reloj_jv="",ela2_jv="",juris_jv="",clave_jv="",eliminar_jv="",usu_jv="",equipo_jv="",integrantes_jv="",recibe_id_jv="",t1_jv="",t2_jv="",t3_jv="",tfecha_jv="",servicio_jv="";
//String eliminar_jv="";
//variables medicamento 1
String med1_jv="",descrip1_jv="",indica1_jv="",sol1_jv="",sur1_jv="",present1_jv="",clave1_jv="";

//variables medicamento 1
String med2_jv="",descrip2_jv="",indica2_jv="",sol2_jv="",sur2_jv="",present2_jv="",clave2_jv="";

//variables medicamento 1
String med3_jv="",descrip3_jv="",indica3_jv="",sol3_jv="",sur3_jv="",present3_jv="",clave3_jv="";
//varibles medico
String medico_jv="",uni_jv="",cedu_jv="",nomed_jv="";
String nom_unidad="",no_jur="",cantsur="",clavesur="",partidasur="",descripsur="",cantinv="",cv_dgo_jv="",cv_uni_jv="",cv_mpio_jv="";
int cant2_jv=0,cantinv2=0,cont1=0,mtotal=0,cont6=0,cant_receta1=0,cant_receta3=0,totalreceta=0,mtotalreceta=0,cant_pasti1=0,totalreceta2=0,totalreceta3=0,ttcant_surpas_amp2=0,total=0,total2=0,ttcant_surpas_amp=0;
String clave_pasti="",cant_pasti="",cant_receta="",cant_receta2="";

String ela_jv="",id_med_jv="",cant_jv="",cv_finan_jv="",financiamiento1="",layout="",part_jv="",resto_jv="",status="",encarser_jv="";

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
		ela2_jv=request.getParameter("encar");		   
		juris_jv=request.getParameter("juris1");
		clave_jv=request.getParameter("clave_uni");	
		nom_unidad=request.getParameter("uni"); 
		no_jur=request.getParameter("juris");
		uni_jv=request.getParameter("univer");
		cedu_jv=request.getParameter("cedu");
		nomed_jv=request.getParameter("nomed");
		cv_dgo_jv=request.getParameter("cv_dgo");
		cv_uni_jv=request.getParameter("cv_uni");
		cv_mpio_jv=request.getParameter("cv_mpio");
t1_jv=request.getParameter("day5");
		t2_jv=request.getParameter("mes5");
		t3_jv=request.getParameter("aa5");
		servicio_jv=request.getParameter("servicio");
		encarser_jv=request.getParameter("encarser");

			       			   
	  } catch (Exception e) { }
	  
	  ResultSet rset =null;
	  ResultSet rset_re =null;
	ResultSet rset_inv =null;
    Statement stmt = null ;
	Statement stmt1 = null ;
	Statement stmt_re = null ;
	Statement stmt_inv = null ;
	Statement stmt_inv2 = null ;
	ResultSet rset_receta =null;
	Statement stmt_receta = null ;
	ResultSet rset_receta1 =null;
	Statement stmt_receta1 = null ;
	ResultSet rset_receta2 =null;
	Statement stmt_receta2 = null ;
	ResultSet rset_pasti =null;
	Statement stmt_pasti = null ;
	Class.forName("org.gjt.mm.mysql.Driver");
	 Connection conn_001 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
 stmt = conn_001.createStatement();
 stmt1 = conn_001.createStatement();
 stmt_re = conn_001.createStatement();
stmt_inv = conn_001.createStatement();
stmt_inv2 = conn_001.createStatement();
stmt_receta = conn_001.createStatement();
stmt_receta1 = conn_001.createStatement();
stmt_receta2 = conn_001.createStatement();
stmt_pasti = conn_001.createStatement();
	
	rset = stmt.executeQuery("SELECT STR_TO_DATE('"+date+"', '%d/%m/%Y')"); 
                    while(rset.next()){
                    date= rset.getString("STR_TO_DATE('"+date+"', '%d/%m/%Y')");
					}	
					
					
					//regresar valores al inventario
			rset_re = stmt_re.executeQuery(" select * from receta_colectiva WHERE id='"+eliminar_jv+"'");
						while (rset_re.next())
						{
						cantsur=rset_re.getString("cant_sur");
						cant2_jv = Integer.parseInt(cantsur);
						clavesur=rset_re.getString("clave");
						partidasur=rset_re.getString("partida");
						descripsur=rset_re.getString("descrip");
						tfecha_jv=rset_re.getString("fecha_re");
						
						
//	String ela_jv="",id_med_jv="",cant_jv="",cv_finan_jv="",financiamiento1="",layout="",part_jv="",resto_jv="",status="";					
						//variables 
		ela_jv=rset_re.getString("encargado");
		id_med_jv=rset_re.getString("id_med");
		clave1_jv=rset_re.getString("clave");
	  descrip1_jv=rset_re.getString("descrip");
		
		financiamiento1=rset_re.getString("fuente");
		reloj_jv=rset_re.getString("hora");
		cv_finan_jv=rset_re.getString("cv_financ");
		layout=rset_re.getString("layout");
		present1_jv=rset_re.getString("present");
		resto_jv=rset_re.getString("cant_pendi");
		status=rset_re.getString("status_receta");
		radiosur_jv=rset_re.getString("surtido");
		//cant_jv=rset_re.getString("txtf_exist");
		//part_jv=rset_re.getString("txtf_part");
						
	  /*foliore_jv=rset_re.getString("txtf_foliore");
	  date_jv=rset_re.getString("txtf_date");
	  reloj_jv=rset_re.getString("reloj");
	  no_jur=rset_re.getString("txtf_njuris");
	  nom_unidad=rset_re.getString("txtf_unidadmed");
	  
	  clave1_jv=rset_re.getString("txtf_clave1");
	  descrip1_jv=rset_re.getString("txtf_descrip1");
	  sol1_jv=rset_re.getString("txtf_sol1");
	  sur1_jv=rset_re.getString("txtf_sur1");
	  radiosur_jv=rset_re.getString("radiosur");
	  
	  
	  
	  
	  t1_jv=rset_re.getString("txtf_t1");
	  t2_jv=rset_re.getString("txtf_t2");
	  t3_jv=rset_re.getString("txtf_t3");
	  servicio_jv=rset_re.getString("txtf_servicio");*/
						
						
						
						
						}
			rset_pasti = stmt_pasti.executeQuery(" select * from pasti_ampu WHERE clave='"+clavesur+"'");
							while (rset_pasti.next())
							{
							clave_pasti=rset_pasti.getString("clave");
							cant_pasti=rset_pasti.getString("cant");
							cant_pasti1=Integer.parseInt(cant_pasti);
							}
			rset_receta = stmt_receta.executeQuery(" select * from receta WHERE clave='"+clavesur+"' and folio_re='"+foliore_jv+"' and partida='"+partidasur+"'");
						while (rset_receta.next())
						{
						cont6++;
						}
			
					
			rset_inv = stmt_inv.executeQuery(" select * from inventario WHERE clave='"+clavesur+"' and origen='"+partidasur+"'");
						while (rset_inv.next())
						{
						cantinv=rset_inv.getString("cant");
						cantinv2=Integer.parseInt(cantinv);
						cont1++;
						}
			mtotal=cantinv2+cant2_jv;
			if(cont6>0)
			{
			rset_receta1 = stmt_receta1.executeQuery(" select clave,sum(cant_sur) from receta WHERE clave='"+clavesur+"' and folio_re='"+foliore_jv+"' and partida='"+partidasur+"' group by folio_re");
						while (rset_receta1.next())
						{
						cant_receta=rset_receta1.getString("sum(cant_sur)");
						cant_receta1=Integer.parseInt(cant_receta);
						}
						
						stmt_receta1.execute(" DELETE FROM receta WHERE clave='"+clavesur+"' and partida='"+partidasur+"' and folio_re='"+foliore_jv+"'"); 	
						
			rset_receta2 = stmt_receta2.executeQuery(" select clave,sum(cant_sur) from receta_pasti_ampu WHERE clave='"+clavesur+"' and folio_re='"+foliore_jv+"' and partida='"+partidasur+"' group by folio_re");
						while (rset_receta2.next())
						{
						cant_receta2=rset_receta2.getString("sum(cant_sur)");
						cant_receta3=Integer.parseInt(cant_receta2);
						}
						
						stmt_receta2.execute(" DELETE FROM receta_pasti_ampu WHERE clave='"+clavesur+"' and partida='"+partidasur+"' and folio_re='"+foliore_jv+"'"); 	
						
			totalreceta=cant_receta1*cant_pasti1;
			mtotalreceta=totalreceta+cant_receta3;
			}
			if(mtotalreceta==cant2_jv)
			{
					%>
					<script>
					//alert("iguales");
					</script>
					<%
			}
			else if(mtotalreceta>cant2_jv)
			{
					totalreceta2=mtotalreceta-cant2_jv;
						
						if(totalreceta2>=cant_pasti1)
				{
					ttcant_surpas_amp2=totalreceta2/cant_pasti1;
					total=ttcant_surpas_amp2*cant_pasti1;
					total2=totalreceta2-total;
					ttcant_surpas_amp=totalreceta2-cant_pasti1;
				
				stmt.execute("insert into receta values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+ttcant_surpas_amp2+"','"+ttcant_surpas_amp2+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+partidasur+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");
				
				stmt.execute("insert into receta_pasti_ampu values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+total2+"','"+total2+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+partidasur+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");
				
						
				}
				else if(totalreceta2<cant_pasti1)
				{
				stmt.execute("insert into receta_pasti_ampu values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+totalreceta2+"','"+totalreceta2+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+partidasur+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");
				
				}
			 }
				
				else
				{
				stmt_receta2.execute(" DELETE FROM receta_pasti_ampu WHERE clave='"+clavesur+"' and partida='"+partidasur+"' and folio_re='"+foliore_jv+"'"); 
				stmt_receta1.execute(" DELETE FROM receta WHERE clave='"+clavesur+"' and partida='"+partidasur+"' and folio_re='"+foliore_jv+"'"); 
				
				}				
			
			
			out.print(""+totalreceta2);
			//}
			
			
			//totalreceta3=totalreceta2/cant_pasti1;
			
			if (cont1>0)
			{
			stmt_inv2.execute("update inventario set cant='"+mtotal+"' where clave='"+clavesur+"' and origen='"+partidasur+"'");
			stmt1.execute("insert into modificacion values ('"+clavesur+"','"+descripsur+"','-','-','"+cantinv2+"','"+partidasur+"','"+cant2_jv+"','"+mtotal+"','"+date+"','"+ela2_jv+"','AJUSTE VÍA RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");
			}
			else{
			stmt_inv2.execute("insert into inventario values ('"+clavesur+"','"+descripsur+"','-','-','"+cant2_jv+"','"+partidasur+"')");
			stmt1.execute("insert into modificacion values ('"+clavesur+"','"+descripsur+"','-','-','0','"+partidasur+"','"+cant2_jv+"','"+mtotal+"','"+date+"','"+ela2_jv+"','AJUSTE VÍA RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");
			}
			
			
			
			

%>
<%!
String clave1_jv="",descrip1_jv="",lote21_jv="",cad21_jv="",ubi1_jv="",cajas1_jv="",pzas1_jv="",resto1_jv="",exi1_jv="";
int correct1=0;

public int ban=0;
public void eliminarReg(String id_inv,int ban) {
  
  System.out.print("valor"+id_inv);
  //int aux=0;
 //aux=Integer.parseInt(request.getParameter("id_dat_aux"));
 if(ban==1){ 
 System.out.print("dato eliminado"+id_inv);
 String idDS="0";
 idDS=id_inv;
 
 //veces=1;
 ResultSet rset__002=null;
	Statement stmt__001 = null ;
    ResultSet rset_elimDS =null;
	Statement stmt_elimDS = null ;
	


	try {
		Connection conn = 
     		// cambie hoy DriverManager.getConnection("jdbc:mysql://localhost/gnk_ubi");
			DriverManager.getConnection("jdbc:mysql://localhost/r_d");         
     		stmt_elimDS = conn.createStatement();
			
			stmt__001 = conn.createStatement();
			System.out.print("id2"+idDS); 
			
					
			rset_elimDS = stmt_elimDS.executeQuery(" DELETE FROM receta_colectiva WHERE id='"+id_inv+"'"); 				  		
			System.out.print("Entra");
			
		while(rset_elimDS.next()){			
			rset_elimDS.deleteRow();
		}
		//conn.close();

	}catch(Exception e){}				  
  
  }
}%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form action="eliminar_re_col_sur.jsp?id_prov=<%=eliminar_jv%>&foliore=<%=foliore_jv%>&encar=<%=ela2_jv%>&juris=<%=no_jur%>&uni=<%=nom_unidad%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&clave1=&descrip1=&sur1=&sol1=&day5=<%=t1_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&servicio=<%=servicio_jv%>&encarser=<%=encarser_jv%>" method="post" name="form" onSubmit="javascript:return ValidateFar1(this)">
<%eliminarReg(eliminar_jv,1);%>
<%
if(!(eliminar_jv.equals("0"))){
	
	correct1=4;
		    
	
	//stmt.execute("insert into eliminar_issemym values ('"+usu_jv+"','"+correct1+"','"+date+"','"+clave1_jv+"','"+descrip1_jv+"','"+lote21_jv+"','"+cad21_jv+"','"+ubi1_jv+"','"+cajas1_jv+"','"+pzas1_jv+"','"+resto1_jv+"','"+exi1_jv+"',0)");
	
	%>
<script>
alert("El dato ha sido Eliminado");
self.location='receta_col_surtir.jsp?id_prov=<%=eliminar_jv%>&foliore=<%=foliore_jv%>&encar=<%=ela2_jv%>&juris=<%=no_jur%>&uni=<%=nom_unidad%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&clave1=&descrip1=&sur1=&sol1=&part=&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&day5=<%=t1_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&servicio=<%=servicio_jv%>&encarser=<%=encarser_jv%>'
</script>
<%}else{%><script>
self.location='receta_col_surtir.jsp?id_prov=<%=eliminar_jv%>&foliore=<%=foliore_jv%>&encar=<%=ela2_jv%>&juris=<%=no_jur%>&uni=<%=nom_unidad%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&clave1=&descrip1=&sur1=&sol1=&part=&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&day5=<%=t1_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&servicio=<%=servicio_jv%>&encarser=<%=encarser_jv%>'
</script>
<%}%>

</form>
</body>

</html>
