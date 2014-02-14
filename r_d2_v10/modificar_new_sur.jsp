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

				  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/r_d", "root", "eve9397");
                  Statement stmt = conn.createStatement();
				  Statement stmt2 = conn.createStatement();
				  Statement stmt3 = conn.createStatement();
				  Statement stmt_001 = conn.createStatement();
				  ResultSet rset = null;
				  ResultSet rset_001 = null;
				  ResultSet rset1 = null;
				  ResultSet rset2 = null;
				  ResultSet rset3 = null;
				   ResultSet rset_org = null; 
				  
				  ResultSet rset_re =null;
					ResultSet rset_inv =null;
					 Statement stmt_re = conn.createStatement();
					 Statement stmt_inv = conn.createStatement();
					 Statement stmt_inv2 = conn.createStatement();
					 Statement stmt1 = conn.createStatement();
	
String hora_ini_jv="";
String lugar_jv="";
String cb_jv="",nombre_jv="",edad_jv="",folio_jv="",cause_jv="",foliore_jv="",foliore2_jv="",radiopro_jv="",radiosur_jv="",date_jv="",reloj_jv="",encar_jv="",juris_jv="",clave_jv="",eliminar_jv="",usu_jv="",equipo_jv="",integrantes_jv="",recibe_id_jv="",t2_jv="",t3_jv="";
String but="r";
String but2="r";
String nom_unidad="",no_jur="";

//variables medicamento 1
String med1_jv="",descrip1_jv="",indica1_jv="",sol1_jv="",sur1_jv="",present1_jv="",clave1_jv="";

//variables medicamento 1
String med2_jv="",descrip2_jv="",indica2_jv="",sol2_jv="",sur2_jv="",present2_jv="",clave2_jv="";

//variables medicamento 1
String med3_jv="",descrip3_jv="",indica3_jv="",sol3_jv="",sur3_jv="",present3_jv="",clave3_jv="";
//varibles medico
String medico_jv="",uni_jv="",cedu_jv="",nomed_jv="";
String cv_dgo_jv="",cv_uni_jv="",cv_mpio_jv="",id_med_jv="",part_jv="";
String cantsur="",cantsur2="",clavesur="",partidasur="",cantinv="",descripsur="",cant_jv="",t1_jv="",status="",carnet_jv="";
int cantinv2=0,cont1=0,cant2_jv=0,cant22_jv=0,mtotal=0,mtotal2=0,sur11=0,sol2=0,sur2=0,resto_jv=0;

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
		encar_jv=request.getParameter("encar");		   
		juris_jv=request.getParameter("juris1");
		clave_jv=request.getParameter("clave_uni");		   
  uni_jv=request.getParameter("univer");
		cedu_jv=request.getParameter("cedu");
		nomed_jv=request.getParameter("nomed");
		cv_dgo_jv=request.getParameter("cv_dgo");
		cv_uni_jv=request.getParameter("cv_uni");
		cv_mpio_jv=request.getParameter("cv_mpio");
		
		id_med_jv=request.getParameter("id_med");
		t3_jv=request.getParameter("day5");
				t2_jv=request.getParameter("mes5");
		t3_jv=request.getParameter("aa5");
		carnet_jv=request.getParameter("carnet");
		   
		
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


rset1= stmt.executeQuery("select * from receta where id='"+eliminar_jv+"'");
rset2= stmt2.executeQuery("select * from receta where id='"+eliminar_jv+"'");
	 while(rset2.next())
	 {
	 med1_jv=rset2.getString("clave");
	 part_jv=rset2.getString("partida");
	 cantsur2=rset2.getString("cant_sur");
	 cant22_jv = Integer.parseInt(cantsur2);
	 t1_jv=rset2.getString("fecha_re");
	 }  
	 
	  rset_org= stmt3.executeQuery("select * from inventario where clave='"+med1_jv+"' and origen='"+part_jv+"' ");
	  
	  while(rset_org.next())
	  {
	   cant_jv=rset_org.getString("cant");
	   cant2_jv=Integer.parseInt(cant_jv);
	  }  
	   
	

if(but.equals("Modificar"))
     {
	if (Integer.parseInt(request.getParameter("txtf_sur1"))==0){
	  sol1_jv=request.getParameter("txtf_sol1");
	  sur1_jv=request.getParameter("txtf_sur1");
	  date_jv=request.getParameter("txtf_date1");
	  
	 sol2 = Integer.parseInt(sol1_jv); 
	  sur2 = Integer.parseInt(sur1_jv);
	  rset_001 = stmt_001.executeQuery("SELECT STR_TO_DATE('"+date_jv+"', '%d/%m/%Y')"); 
                    while(rset_001.next()){
                    date_jv= rset_001.getString("STR_TO_DATE('"+date_jv+"', '%d/%m/%Y')");
					}

			rset_re = stmt_re.executeQuery("select * from receta WHERE id='"+eliminar_jv+"'");
			while (rset_re.next())
			{
			cantsur=rset_re.getString("cant_sur");
			cant2_jv = Integer.parseInt(cantsur);
			clavesur=rset_re.getString("clave");
			partidasur=rset_re.getString("partida");
			descripsur=rset_re.getString("descrip");
			}
	int sol = Integer.parseInt(sol1_jv);
	int sol1=Integer.parseInt(sol1_jv);
	int sur=0;
	int cant_o3=0, cant_o2=0, cant_o1=0;
	status="";

	String receta="insert into receta values (";
	rset3 = stmt3.executeQuery("select * from receta where id='"+eliminar_jv+"'");
	while(rset3.next()){
		for(int i = 1; i<50;i++){
			receta=receta+" '"+rset3.getString(i)+"',";
		}
		receta=receta+" '0'";
	}
	receta=receta+")";
	//out.println(receta+"<br>");
	//------------------------------------------Origen 1--------------------------------------------------------------
	rset_re = stmt_re.executeQuery("select cant from inventario where clave = '"+clavesur+"' and origen = 1;");
	while(rset_re.next()){
		cant_o3=Integer.parseInt(rset_re.getString("cant"));
	}
	if (sol>0){
		if (cant_o3>0){
			sol = sol-cant_o3;
			if (sol<=0){
				sur=sol1;
				sol=0;
				status="SURTIDO";
			} else {
				sur = cant_o3;
				sol1=(sol);
				status="SURTIDO";
			}
			//out.println("update receta set cant_sol='"+sur+"',cant_sur='"+sur+"',cant_pendi='0',status_receta='"+status+"' where id='"+eliminar_jv+"'");
			receta="insert into receta values (";
			rset3 = stmt3.executeQuery("select * from receta where id='"+eliminar_jv+"'");
			while(rset3.next()){
				for(int i = 1; i<17;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+"'"+sur+"', '"+sur+"', 'SI', ";
				for(int i = 20; i<28;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+"'1', ";
				for(int i = 29; i<31;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+"'SURTIDO', ";
				for(int i = 32; i<50;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+" '0'";
			}
				
			receta=receta+")";
			stmt3.execute("insert into modificacion values ('"+clavesur+"','"+descripsur+"','-','-','"+cant_o3+"','1','-"+cant_o3+"','0','"+date_jv+"','"+encar_jv+"','SALIDA VÍA RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");
			//out.println("<br>");
			stmt3.execute("update inventario set cant='"+(cant_o3-sur)+"' where clave='"+clavesur+"' and origen='1'");
			stmt3.execute(receta);
			//out.println("<br>"+sol+"<br>");
		}
	}
	//------------------------------------------Origen 3--------------------------------------------------------------
	cant_o3=0;
	rset_re = stmt_re.executeQuery("select cant from inventario where clave = '"+clavesur+"' and origen = 3;");
	while(rset_re.next()){
		cant_o3=Integer.parseInt(rset_re.getString("cant"));
	}
	if (sol>0){
		if (cant_o3>0){
			sol = sol-cant_o3;
			if (sol<=0){
				sur=sol1;
				sol=0;
				status="SURTIDO";
			} else {
				sur = cant_o3;
				sol1=(sol);
				status="SURTIDO";
			}
			//out.println("update receta set cant_sol='"+sur+"',cant_sur='"+sur+"',cant_pendi='0',status_receta='"+status+"' where id='"+eliminar_jv+"'");
			receta="insert into receta values (";
			rset3 = stmt3.executeQuery("select * from receta where id='"+eliminar_jv+"'");
			while(rset3.next()){
				for(int i = 1; i<17;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+"'"+sur+"', '"+sur+"', 'SI', ";
				for(int i = 20; i<28;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+"'3', ";
				for(int i = 29; i<31;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+"'SURTIDO', ";
				for(int i = 32; i<50;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+" '0'";
			}
				
			receta=receta+")";
			stmt3.execute("insert into modificacion values ('"+clavesur+"','"+descripsur+"','-','-','"+cant_o3+"','3','-"+cant_o3+"','0','"+date_jv+"','"+encar_jv+"','SALIDA VÍA RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");
			//out.println("<br>");
			stmt3.execute("update inventario set cant='"+(cant_o3-sur)+"' where clave='"+clavesur+"' and origen='3'");
			stmt3.execute(receta);
			//out.println("<br>"+sol+"<br>");
		}
	}
	//------------------------------------------Origen 2--------------------------------------------------------------
	cant_o3=0;
	rset_re = stmt_re.executeQuery("select cant from inventario where clave = '"+clavesur+"' and origen = 2;");
	while(rset_re.next()){
		cant_o3=Integer.parseInt(rset_re.getString("cant"));
	}
	if (sol>0){
		if (cant_o3>0){
			sol = sol-cant_o3;
			if (sol<=0){
				sur=sol1;
				sol=0;
				status="SURTIDO";
			} else {
				sur = cant_o3;
				sol1=(sol);
				status="SURTIDO";
			}
			//out.println("update receta set cant_sol='"+sur+"',cant_sur='"+sur+"',cant_pendi='0',status_receta='"+status+"' where id='"+eliminar_jv+"'");
			receta="insert into receta values (";
			rset3 = stmt3.executeQuery("select * from receta where id='"+eliminar_jv+"'");
			while(rset3.next()){
				for(int i = 1; i<17;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+"'"+sur+"', '"+sur+"', 'SI', ";
				for(int i = 20; i<28;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+"'2', ";
				for(int i = 29; i<31;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+"'SURTIDO', ";
				for(int i = 32; i<50;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+" '0'";
			}
				
			receta=receta+")";
			stmt3.execute("insert into modificacion values ('"+clavesur+"','"+descripsur+"','-','-','"+cant_o3+"','2','-"+cant_o3+"','0','"+date_jv+"','"+encar_jv+"','SALIDA VÍA RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");
			//out.println("<br>");
			stmt3.execute("update inventario set cant='"+(cant_o3-sur)+"' where clave='"+clavesur+"' and origen='2'");
			stmt3.execute(receta);
			//out.println("<br>"+sol+"<br>");
		}
	}
	//-----------------------------PENDIENTE POR SURTIR---------------------------------------------------------------------------------
	cant_o3=0;

	if (sol>0){
			//out.println("update receta set cant_sol='"+sur+"',cant_sur='"+sur+"',cant_pendi='0',status_receta='"+status+"' where id='"+eliminar_jv+"'");
			receta="insert into receta values (";
			rset3 = stmt3.executeQuery("select * from receta where id='"+eliminar_jv+"'");
			while(rset3.next()){
				for(int i = 1; i<17;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+"'"+sol+"', '0', ";
				for(int i = 19; i<50;i++){
					receta=receta+" '"+rset3.getString(i)+"',";
				}
				receta=receta+" '0'";
			}
				
			receta=receta+")";
			stmt3.execute(receta);
	}
	stmt3.execute("delete from receta where id='"+eliminar_jv+"'");
	%>
	<script>alert("Datos Modificados")</script>
	<script>self.location='receta_por_surtir.jsp?id_prov=<%=eliminar_jv%>&uni=<%=nom_unidad%>&juris=<%=no_jur%>&nombre=<%=nombre_jv%>&edad=<%=edad_jv%>&folio=<%=folio_jv%>&clave1=&descrip1=&present1=&indica1=<%=indica1_jv%>&sol1=&sur1=&cause=<%=cause_jv%>&foliore=<%=foliore_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&univer=<%=uni_jv%>&cedu=<%=cedu_jv%>&nomed=<%=nomed_jv%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&part=&id_med=<%=id_med_jv%>&day5=<%=t3_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&carnet=<%=carnet_jv%>'</script>
	<%
/*
	 rset_re = stmt_re.executeQuery("select * from receta WHERE id='"+eliminar_jv+"'");
			while (rset_re.next())
			{
			cantsur=rset_re.getString("cant_sur");
			cant2_jv = Integer.parseInt(cantsur);
			clavesur=rset_re.getString("clave");
			partidasur=rset_re.getString("partida");
			descripsur=rset_re.getString("descrip");
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
			stmt1.execute("insert into modificacion values ('"+clavesur+"','"+descripsur+"','-','-','"+cantinv2+"','"+partidasur+"','-"+mtotal+"','"+mtotal2+"','"+date_jv+"','"+encar_jv+"','SALIDA VÍA RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");
			}else{
			mtotal=cant22_jv-sur11;
			mtotal2=mtotal+cantinv2;
			stmt1.execute("insert into modificacion values ('"+clavesur+"','"+descripsur+"','-','-','"+cantinv2+"','"+partidasur+"','"+mtotal+"','"+mtotal2+"','"+date_jv+"','"+encar_jv+"','AJUSTE VÍA RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");
			}
			
			if ((mtotal2>0) || (mtotal2==0))
			{
		
			
			//}
			
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
				   
	   stmt_001.execute("update receta set cant_sol='"+sol1_jv+"',cant_sur='"+sur1_jv+"',cant_pendi='"+resto_jv+"',status_receta='"+status+"' where id='"+eliminar_jv+"'");
	   
	   %>
	   <script>
	   alert("DATOS MODIFICADOS")
	   self.location='receta_por_surtir.jsp?id_prov=<%=eliminar_jv%>&uni=<%=nom_unidad%>&juris=<%=no_jur%>&nombre=<%=nombre_jv%>&edad=<%=edad_jv%>&folio=<%=folio_jv%>&clave1=&descrip1=&present1=&indica1=<%=indica1_jv%>&sol1=&sur1=&cause=<%=cause_jv%>&foliore=<%=foliore_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&univer=<%=uni_jv%>&cedu=<%=cedu_jv%>&nomed=<%=nomed_jv%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&part=&id_med=<%=id_med_jv%>&day5=<%=t3_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&carnet=<%=carnet_jv%>'
	   </script>
	   
	   <%
	   
	   //stmt.execute("update receta set ('"+foliore_jv+"','"+date_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','"+nombre_jv+"','"+edad_jv+"','"+folio_jv+"','"+radiopro_jv+"','"+uni_jv+"','"+cedu_jv+"','"+nomed_jv+"','"+cause_jv+"','"+clave1_jv+"','"+descrip1_jv+"','"+sol1_jv+"','"+sur1_jv+"','"+radiosur_jv+"','"+encar_jv+"','"+clave_jv+"',0 where id_cap_inv='"+eliminar_jv+"'");	
	   
	  
	   }else{
	   %>
	   <script>
	   alert("EXISTENCIA MENOR")
	   
	   </script>	
			<%
			}
	   	*/
	   }
	   %>
	   <script>alert("Este insumo ya estaba surtido")</script>
		<script>self.location='receta_por_surtir.jsp?id_prov=<%=eliminar_jv%>&uni=<%=nom_unidad%>&juris=<%=no_jur%>&nombre=<%=nombre_jv%>&edad=<%=edad_jv%>&folio=<%=folio_jv%>&clave1=&descrip1=&present1=&indica1=<%=indica1_jv%>&sol1=&sur1=&cause=<%=cause_jv%>&foliore=<%=foliore_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&univer=<%=uni_jv%>&cedu=<%=cedu_jv%>&nomed=<%=nomed_jv%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&part=&id_med=<%=id_med_jv%>&day5=<%=t3_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&carnet=<%=carnet_jv%>'</script>
	<%
}	

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>.:Receta Medica:.</title>
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
<form name="form" method="post" action="modificar_new_sur.jsp?uni=<%=nom_unidad%>&juris=<%=no_jur%>&nombre=<%=nombre_jv%>&edad=<%=edad_jv%>&folio=<%=folio_jv%>&clave1=<%=clave1_jv%>&descrip1=<%=descrip1_jv%>&present1=<%=present1_jv%>&indica1=<%=indica1_jv%>&sol1=<%=sol1_jv%>&sur1=<%=sur1_jv%>&clave2=<%=clave2_jv%>&descrip2=<%=descrip2_jv%>&present2=<%=present2_jv%>&indica2=<%=indica2_jv%>&sol2=<%=sol2_jv%>&sur2=<%=sur2_jv%>&clave3=<%=clave3_jv%>&descrip3=<%=descrip3_jv%>&present3=<%=present3_jv%>&indica3=<%=indica3_jv%>&sol3=<%=sol3_jv%>&sur3=<%=sur3_jv%>&cause=<%=cause_jv%>&foliore=<%=foliore_jv%>&encar=<%=encar_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&univer=<%=uni_jv%>&cedu=<%=cedu_jv%>&nomed=<%=nomed_jv%>&id_prov=<%=eliminar_jv%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&part=<%=part_jv%>&id_med=<%=id_med_jv%>&day5=<%=t1_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&carnet=<%=carnet_jv%>">

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
                  <input name="txtf_date1" type="text" size="15" value="<%= day>10?day:day %>/<%= month>10?month:month %>/<%= year %>" onKeyPress="return handleEnter(this, event)" readonly="true"/></td>
              </tr>
            </table>          </td>
          <td width="250"><table width="167" height="0%" border="0" cellpadding="2">
            <tr>
              <td width="225" height="100%" class="style2">HORA:
                <input name="reloj" type="text" class="styl2" onKeyPress="return handleEnter(this, event)" size="15" readonly="true" ></td>
            </tr>
          </table>            </td>
          <td width="172" align="center" class="style2">Ingrese No. Folio
            <input type="text" name="txtf_foliore" size="20"  value="<%=foliore_jv%>" readonly="true"/>
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
              <td width="152" class="style11"><label> <br />
              </label></td>
              <td width="201" class="style11"><label></label></td>
              <td width="74" class="style11">&nbsp;</td>
              <td width="49" class="style11"><label></label></td>
              <td width="142" class="style11">&nbsp;</td>
              <td width="90" class="style11">&nbsp;</td>
            </tr>
            <tr>
              <td width="152" class="style11"><span class="style2">CLAVE CUADRO BASICO</span></td>
              <td ><span class="style2">DESCRIPCI&Oacute;N</span></td>
              <td ><span class="style2">CANT. SOL</span></td>
              <td ><span class="style2">CANT. SUR </span></td>
              <td colspan="2" class="style11"><span class="style2">EXIST</span>&nbsp;<input type="text" name="txtf_exist" size="1"  class="style2" value="<%=cant_jv%>" onKeyPress="return handleEnter(this, event)" readonly="true"/>
                <span class="style2">Origen</span>
                  <input name="txtf_part" type="text" class="style2" value="<%=part_jv%>" size="1" readonly="true" />
                <span class="style2">Cant.</span>
                  <input name="txtf_cant2" type="text" class="style2" value="<%=cant22_jv%>" size="1" readonly="true" />
                  **</td>
            </tr>
			<%
			while (rset1.next())
	   {
	     
			%>
            <tr>
              <td class="style11"><input type="text" name="txtf_clave1" size="10" value="<%=rset1.getString("clave")%>"  readonly="true"/></td>
              <td class="style11"><textarea name="txtf_descrip1" cols="25" readonly="true"><%=rset1.getString("descrip")%></textarea></td>
              <td class="style11"><input type="text" name="txtf_sol1" size="5" value="<%=rset1.getString("cant_sol")%>" onKeyPress="return validar(event)"/></td>
              <td class="style11"><input type="text" name="txtf_sur1" size="5" value="<%=rset1.getString("cant_sur")%>"  onchange="setSur1(this.form)" onKeyPress="return validar(event)"/></td>
			  
			  <%}%>
              <td colspan="2" class="style11"><input name="Submit" type="submit" class="but" value="Modificar" onChange="setSur1(this.form)" onClick="return verificaN1(document.forms.form)"/>&nbsp; <a href="javascript:history.back(1)">Regresar</a></td>
            </tr>
            
			
            
            
          </table></td>
        </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
