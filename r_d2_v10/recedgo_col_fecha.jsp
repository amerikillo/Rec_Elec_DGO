<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.DecimalFormat" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date" errorPage="" %>

<% java.util.Calendar currDate = new java.util.GregorianCalendar();
   // add 1 to month because Calendar's months start at 0, not 1
   int month = currDate.get(currDate.MONTH)+1;
   int day = currDate.get(currDate.DAY_OF_MONTH);
   int year = currDate.get(currDate.YEAR);
	String date="";
	String date2=""; 
   String res="";
   String day1=""; 
   String foliore2_jv="";
   String clave_jv="1001";
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
 
 
%>

<%
Class.forName("org.gjt.mm.mysql.Driver");
NumberFormat nf1 = NumberFormat.getInstance(Locale.US); 
DecimalFormat formateador = new DecimalFormat("###,###,###.####");

				  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/r_d", "root", "eve9397");
                  Statement stmt = conn.createStatement();
				  Statement stmt1 = conn.createStatement();
				  Statement stmt_001 = conn.createStatement();
				  Statement stmt_01= conn.createStatement();
				  Statement stmt_0001= conn.createStatement();
				  Statement stmt_00001= conn.createStatement();
				  Statement stmt_elimDS= conn.createStatement();
				  Statement stmt_total= conn.createStatement();
				  Statement stmt1og1= conn.createStatement();
				  Statement stmt_og22= conn.createStatement();
				  Statement stmt1og2= conn.createStatement();
				  ResultSet rset = null;
				   ResultSet rset_total = null;
				  ResultSet rset_001 = null;
				  ResultSet rset_org = null;
				  ResultSet rset1 = null;
				  ResultSet rset2 = null;
				  ResultSet rset3 = null; 
				  ResultSet rset_elimDS=null;
				  //ResultSet stmt1og1=null;
				  Statement stmt_o1 = conn.createStatement();
				  ResultSet rset_org_o1 = null;
				  Statement stmt_o2 = conn.createStatement();
				  ResultSet rset_org_o2 = null;
				  
				  
String cad1[]=new String[1000];
String financiamiento[]= new String[5000];
String origen[]= new String[5000];
String finan[] = {"SEGURO POPULAR","OPORTUNIDADES","FASSA","ASE","SMNG","Gasto Catastr�ficos"};
String org[]= {"1","3","2"};
financiamiento[0]="";
origen[0]="";
int pos=0,tam2=0,x1=0,cont3=0,ban=0,posf=0,ban2=0,cant2_jv=0,cv_med2=0,cv_med3=0,cont1=0,cont5=0,cont6=0,sur2=0,sol2=0,mtotal=0,total2=0,total=0,flag=0,customerIds=0,cant_pasti_ampu=0,cant_surpas_amp=0,ttcant_surpas_amp=0,ttcant_surpas_amp2=0;
String encontrado="",cant_jv="",financiamiento1="",cv_finan_jv="",layout="",status="",cant_pasti="",cant_surpas="",count_cv="",servicio_jv="",fechanew="",sumatotal="";
String f_gnk=request.getParameter("txtf_fol2");
String partida_o1_jv="",cant_o1_jv="",partida_o2_jv="",cant_o2_jv="";
int cant2_o1_jv=0,cant2_o2_jv=0,mtotalot=0,mtotal_col=0,mtotalotsur=0,mtotalotsur2=0,resto22_jv=0;
//double ttcant_surpas_amp2=0.0;				  
String hora_ini_jv="";
String lugar_jv="";
String cb_jv="",nombre_jv="",edad_jv="",folio_jv="",cause_jv="",foliore_jv="",radiopro_jv="",radiosur_jv="",date_jv="",reloj_jv="",eliminar_jv="";
String but="r";
String nom_unidad="",no_jur="",juris_jv="";
//variables medicamento 1
String med1_jv="",descrip1_jv="",indica1_jv="",sol1_jv="",sur1_jv="",present1_jv="",clave1_jv="",desdmed_jv="",descripmed_jv="";

//variables medicamento 1
String med2_jv="",descrip2_jv="",indica2_jv="",sol2_jv="",sur2_jv="",present2_jv="",clave2_jv="";

//variables medicamento 1
String med3_jv="",descrip3_jv="",indica3_jv="",sol3_jv="",sur3_jv="",present3_jv="",clave3_jv="";
//varibles medico
String medico_jv="",uni_jv="",cedu_jv="",nomed_jv="",t1_jv="",t2_jv="",t3_jv="",tfecha_jv="",encarser_jv="";
String ela_jv="", ela2_jv="";
int cont2=0,resto_jv=0;
String fol2_jv="";
String fol2_vi_jv="";
 	  try {
       		fol2_vi_jv = request.getParameter("fol_vi");       			   
	  } catch (Exception e) { }
String folgnk_vi_jv="";
 	  try {
       		folgnk_vi_jv = request.getParameter("fol_gnk_vi");       			   
	  } catch (Exception e) { }


String cv_dgo_jv="",cv_uni_jv="",cv_mpio_jv="",part_jv="",id_med_jv="";
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
		cause_jv=request.getParameter("cause");
		foliore_jv=request.getParameter("foliore");		   
        clave_jv=request.getParameter("clave_uni");
		ela2_jv=request.getParameter("encar");   
		no_jur=request.getParameter("juris");
		nom_unidad=request.getParameter("uni");
		juris_jv=request.getParameter("juris1");   
		
		cv_dgo_jv=request.getParameter("cv_dgo");
		cv_uni_jv=request.getParameter("cv_uni");
		cv_mpio_jv=request.getParameter("cv_mpio");
		part_jv=request.getParameter("part");
		id_med_jv=request.getParameter("id_med");
		
		t1_jv=request.getParameter("day5");
		t2_jv=request.getParameter("mes5");
		t3_jv=request.getParameter("aa5");
		servicio_jv=request.getParameter("servicio");
		encarser_jv=request.getParameter("encarser");
		
		 }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }



try { 


        but=""+request.getParameter("Submit");
		//out.print("but ="+but);
        
    }catch(Exception e){System.out.print("not");} 

//foliore_jv=request.getParameter("txtf_foliore");

if(but.equals("Ver"))
{
descripmed_jv=request.getParameter("select_servi2");
  med1_jv=request.getParameter("txtf_med1");
	  cause_jv=request.getParameter("txtf_cause");
	  uni_jv=request.getParameter("txtf_uni");	
	  cedu_jv=request.getParameter("txtf_cedu");	
	  nomed_jv=request.getParameter("txtf_nomed");
	  foliore_jv=request.getParameter("txtf_foliore");
	   ela2_jv=request.getParameter("txtf_ela");
	  servicio_jv=request.getParameter("txtf_servicio");
	  encarser_jv=request.getParameter("txtf_encarser");	 
     	    	
		
	  t1_jv=request.getParameter("txtf_t1");
	  t2_jv=request.getParameter("txtf_t2");
	  t3_jv=request.getParameter("txtf_t3");
	  tfecha_jv=t1_jv+t2_jv+t3_jv;
		//out.print("hi"+med1_jv);
	  //_jv=request.getParameter("txtf_");		
	  	   tfecha_jv=t1_jv+t2_jv+t3_jv;
	 rset1= stmt.executeQuery("select * from clave_med where descrip='"+descripmed_jv+"' ");
	  
	  while(rset1.next())
				     {
					 clave2_jv=rset1.getString("clave");
					 cont2++;
					 }
					 if (cont2>0)
					 {
					 
					 rset3= stmt1.executeQuery("select * from h_"+clave_jv+" where clave='"+clave2_jv+"'");
		while(rset3.next())
	  {
	  //cv_finan_jv=rset3.getString("cv_finan");
	  financiamiento[pos]=rset3.getString("descrip_finan");     
                     pos++;
	  cont3++;
	 
	  }
	  //Rutina para obtener la fuente de financiamento
	  for(int k=0;k<6;k++)
	      {
		     for(int z=0;z<pos;z++)
			   {
			     if(financiamiento[z].equals(finan[k]))
				   {
				     encontrado=financiamiento[z];
					 ban=1;
					 break;
				   }
				   if(ban==1)
				      break;
			   }
			   if(ban==1)
			      break;
		  }
	  //
					 
			if (cont3>0)
					 {
					 
					 
		rset= stmt.executeQuery("select * from inventario where clave='"+clave2_jv+"' ");
	  
	  while(rset.next())
	  {
	   //cant_jv=rset.getString("cant");
	   //cant2_jv=Integer.parseInt(cant_jv);
	   //part_jv=rset.getString("origen");
	   origen[posf]=rset.getString("origen");     
                     posf++;
	  }  
		  
				  //Rutina para obtener la fuente de origen
	  for(int l=0;l<3;l++)
	      {
		     for(int m=0;m<posf;m++)
			   {
			     if(origen[m].equals(org[l]))
				   {
				     part_jv=origen[m];
					 ban2=1;
					 break;
				   }
				   if(ban2==1)
				      break;
			   }
			   if(ban2==1)
			      break;
		  }
		  
	  //
	  rset_org= stmt.executeQuery("select * from inventario where clave='"+clave2_jv+"' and origen='"+part_jv+"' ");
	  
	  while(rset_org.next())
	  {
	   cant_jv=rset_org.getString("cant");
	   cant2_jv=Integer.parseInt(cant_jv);
	   /*part_jv=rset.getString("origen");
	   origen[posf]=rset.getString("origen");     
                     posf++;*/
	  }  
				  
				  
				  
		if(cant2_jv>0)
		{		 
	
	   rset2= stmt.executeQuery("select * from clave_med where descrip='"+descripmed_jv+"' ");
	  
	  while(rset2.next())
	  {
	                 clave1_jv=rset2.getString("clave");
 					 descrip1_jv=rset2.getString("descrip");
					 present1_jv=rset2.getString("present");
					 id_med_jv=rset2.getString("id_med");
					// part_jv=rset2.getString("part");
					 }
					 %>
					 <script>
					 document.form.txtf_sol1.focus();
					 </script>
					 <%
					 }else{
					 
					rset2= stmt.executeQuery("select * from clave_med where codigo='"+med1_jv+"' ");
	  
					  while(rset2.next())
					  {
	                 clave1_jv=rset2.getString("clave");
 					 descrip1_jv=rset2.getString("descrip");
					 present1_jv=rset2.getString("present");
					 id_med_jv=rset2.getString("id_med");
					 cant_jv="0";
					 part_jv="2";
					// part_jv=rset2.getString("part");
					 }
					 /*
					 %>
					 <script>
					 alert("Clave Sin Existencia")
					 </script>
					 <%
 					 med1_jv="";
					 clave1_jv="";
					 descrip1_jv="";
					 cant_jv="";
					 part_jv="";
					 //financiamiento=pos[];*/
					 
					 }
					 }else{
					 
					 %>
					 <script>
					 alert("Clave No Distribuir")
					 </script>
					 <%
					 med1_jv="";
					 clave1_jv="";
					 descrip1_jv="";
					 part_jv="";
					 }
					 
					 }else
					 {
					 %>
					 <script>
					 alert("Clave Fuera de Cat�logo")
					 </script>
					 <%
					 med1_jv="";
					 clave1_jv="";
					 descrip1_jv="";
					 part_jv="";
					 }	 
					 

}

if(but.equals("Por Descripci�n"))
{
desdmed_jv=request.getParameter("txtf_descmed");
med1_jv=request.getParameter("txtf_med1");
	  cause_jv=request.getParameter("txtf_cause");
	  uni_jv=request.getParameter("txtf_uni");	
	  cedu_jv=request.getParameter("txtf_cedu");	
	  nomed_jv=request.getParameter("txtf_nomed");
	  foliore_jv=request.getParameter("txtf_foliore");
	   ela2_jv=request.getParameter("txtf_ela");
	  servicio_jv=request.getParameter("txtf_servicio");
	  encarser_jv=request.getParameter("txtf_encarser");	 
     	    	
		
	  t1_jv=request.getParameter("txtf_t1");
	  t2_jv=request.getParameter("txtf_t2");
	  t3_jv=request.getParameter("txtf_t3");
	  tfecha_jv=t1_jv+t2_jv+t3_jv;

rset1= stmt.executeQuery("select * from clave_med where descrip like'%"+desdmed_jv+"%' ");
	  
	  while(rset1.next())
				     {
					 cad1[tam2]=rset1.getString("descrip");
					 tam2++;
					 }


}

if(but.equals("Clave"))
     {
	 	
	  med1_jv=request.getParameter("txtf_med1");
	  cause_jv=request.getParameter("txtf_cause");
	  uni_jv=request.getParameter("txtf_uni");	
	  cedu_jv=request.getParameter("txtf_cedu");	
	  nomed_jv=request.getParameter("txtf_nomed");
	  foliore_jv=request.getParameter("txtf_foliore");
	   ela2_jv=request.getParameter("txtf_ela");
	  servicio_jv=request.getParameter("txtf_servicio");
	  encarser_jv=request.getParameter("txtf_encarser");	 
     	    	
		
	  t1_jv=request.getParameter("txtf_t1");
	  t2_jv=request.getParameter("txtf_t2");
	  t3_jv=request.getParameter("txtf_t3");
	  tfecha_jv=t1_jv+t2_jv+t3_jv;
		//out.print("hi"+med1_jv);
	  //_jv=request.getParameter("txtf_");		
	  	   tfecha_jv=t1_jv+t2_jv+t3_jv;
                   
               

                   
                   rset1= stmt.executeQuery("select clave from pasti_ampu where clave='"+med1_jv+"' and cant>'1' ");
		  
		 
			   if(rset1.next()){
		 %>	  
			    <script>
					
		 			 alert('Clave por ampuleo el medicamento sera dispensado por pieza' );
					 document.form.getElementById('ampuID').style.visibility="visible";
		  		</script>
		 <%	  
			  }
			
                   
                   
	 rset1= stmt.executeQuery("select * from clave_med where codigo='"+med1_jv+"' ");
	  
	  while(rset1.next())
				     {
					 clave2_jv=rset1.getString("clave");
					 cont2++;
					 }
					 if (cont2>0)
					 {
					 
					 rset3= stmt1.executeQuery("select * from h_"+clave_jv+" where clave='"+clave2_jv+"'");
		while(rset3.next())
	  {
	  //cv_finan_jv=rset3.getString("cv_finan");
	  financiamiento[pos]=rset3.getString("descrip_finan");     
                     pos++;
	  cont3++;
	 
	  }
	  //Rutina para obtener la fuente de financiamento
	  for(int k=0;k<6;k++)
	      {
		     for(int z=0;z<pos;z++)
			   {
			     if(financiamiento[z].equals(finan[k]))
				   {
				     encontrado=financiamiento[z];
					 ban=1;
					 break;
				   }
				   if(ban==1)
				      break;
			   }
			   if(ban==1)
			      break;
		  }
	  //
					 
			if (cont3>0)
					 {
					 
			 
					rset_total= stmt_total.executeQuery("select clave,sum(cant),origen from inventario where clave='"+clave2_jv+"' group by clave");
	  
	  while(rset_total.next())
	  {
	  sumatotal=rset_total.getString("sum(cant)");     
	  }			
			
					 
		rset= stmt.executeQuery("select * from inventario where clave='"+clave2_jv+"' ");
	  
	  while(rset.next())
	  {
	   //cant_jv=rset.getString("cant");
	   //cant2_jv=Integer.parseInt(cant_jv);
	   //part_jv=rset.getString("origen");
	   origen[posf]=rset.getString("origen");     
                     posf++;
	  }  
		  
				  //Rutina para obtener la fuente de origen
	  for(int l=0;l<3;l++)
	      {
		     for(int m=0;m<posf;m++)
			   {
			     if(origen[m].equals(org[l]))
				   {
				     part_jv=origen[m];
					 ban2=1;
					 break;
				   }
				   if(ban2==1)
				      break;
			   }
			   if(ban2==1)
			      break;
		  }
		  
	  //
	  rset_org= stmt.executeQuery("select * from inventario where clave='"+clave2_jv+"' and origen='"+part_jv+"' ");
	  
	  while(rset_org.next())
	  {
	   cant_jv=rset_org.getString("cant");
	   cant2_jv=Integer.parseInt(cant_jv);
	   /*part_jv=rset.getString("origen");
	   origen[posf]=rset.getString("origen");     
                     posf++;*/
	  }  
				  
				  
				  
		if(cant2_jv>0)
		{		 
	
	   rset2= stmt.executeQuery("select * from clave_med where codigo='"+med1_jv+"' ");
	  
	  while(rset2.next())
	  {
	                 clave1_jv=rset2.getString("clave");
 					 descrip1_jv=rset2.getString("descrip");
					 present1_jv=rset2.getString("present");
					 id_med_jv=rset2.getString("id_med");
					// part_jv=rset2.getString("part");
					 }
					 %>
					 <script>
					 document.form.txtf_sol1.focus();
					 </script>
					 <%
					 }else{
					 %>
					 <script>
					 alert("Clave Sin Existencia")
					 </script>
					 <%
 					 med1_jv="";
					 clave1_jv="";
					 descrip1_jv="";
					 cant_jv="";
					 part_jv="";
					 //financiamiento=pos[];
					 }
					 }else{
					 
					 %>
					 <script>
					 alert("Clave No Distribuir")
					 </script>
					 <%
					 med1_jv="";
					 clave1_jv="";
					 descrip1_jv="";
					 part_jv="";
					 }
					 
					 }else
					 {
					 %>
					 <script>
					 alert("Clave Fuera de Cat�logo")
					 </script>
					 <%
					 med1_jv="";
					 clave1_jv="";
					 descrip1_jv="";
					 part_jv="";
					 }	 
					 
					 
		
}	



if(but.equals("Capturar"))
     {
	  foliore_jv=request.getParameter("txtf_foliore");
	  date_jv=request.getParameter("txtf_date");
	  reloj_jv=request.getParameter("reloj");
	  no_jur=request.getParameter("txtf_njuris");
	  nom_unidad=request.getParameter("txtf_unidadmed");
	  ela_jv=request.getParameter("txtf_ela");
	  clave1_jv=request.getParameter("txtf_clave1");
	  descrip1_jv=request.getParameter("txtf_descrip1");
	  sol1_jv=request.getParameter("txtf_sol1");
	  sur1_jv=request.getParameter("txtf_sol1");
	  radiosur_jv=request.getParameter("radiosur");
	  id_med_jv=request.getParameter("txtf_idmed");
	  cant_jv=request.getParameter("txtf_exist");
	  financiamiento1=request.getParameter("txtf_ff");
	  part_jv=request.getParameter("txtf_part");
	  t1_jv=request.getParameter("txtf_t1");
	  t2_jv=request.getParameter("txtf_t2");
	  t3_jv=request.getParameter("txtf_t3");
	  servicio_jv=request.getParameter("txtf_servicio");
	  fechanew=request.getParameter("txtf_date1");
	  encarser_jv=request.getParameter("txtf_encarser");	 

		tfecha_jv=t1_jv+"/"+t2_jv+"/"+t3_jv;
	  /*
	  rset2= stmt_01.executeQuery("select * from pasti_ampu where clave='"+clave1_jv+"'");
		while(rset2.next())
	  {
	  cant_pasti=rset2.getString("cant");
	  cant_pasti_ampu=Integer.parseInt(cant_pasti);
	  cont5++;
	  }
	   
	   
	   rset1= stmt_0001.executeQuery("select * from receta_pasti_ampu where clave='"+clave1_jv+"' and partida='"+part_jv+"'");
		while(rset1.next())
	  {
	    cont6++;
	   }*/
	  
	    
	  rset3= stmt_00001.executeQuery("select * from h_"+clave_jv+" where descrip_finan='"+financiamiento1+"'");
		while(rset3.next())
	  {
	  cv_finan_jv=rset3.getString("cv_finan");
	  }
	  
	  if (id_med_jv.equals("MEDICAMENTO"))
	  {
	  cv_med2=2503001;
	  cv_med3=5025301;
	  }else
	  {
	  cv_med2=2504001;
	  cv_med3=5025401;
	  }
	  
	  layout="1"+"-"+cv_med3+"-"+12+cv_finan_jv+"-"+cv_dgo_jv+"-"+cv_uni_jv+"-"+cv_mpio_jv;
	   
	  
	   
	    rset_001 = stmt_001.executeQuery("SELECT STR_TO_DATE('"+tfecha_jv+"', '%d/%m/%Y')"); 
                    while(rset_001.next()){
                    tfecha_jv= rset_001.getString("STR_TO_DATE('"+tfecha_jv+"', '%d/%m/%Y')");
					}
	   
	   sol2 = Integer.parseInt(sol1_jv); 	   
	  sur2 = Integer.parseInt(sur1_jv);
	  cant2_jv = Integer.parseInt(cant_jv);
	  if (!(sur2>cant2_jv))
	  {
	  mtotal=cant2_jv-sur2;
	  
	  resto_jv=sol2-sur2;
	  if(sur2==0)
	  {
		status="PENDIENTE POR SURTIR";
		}
		else{
	  
	    if (resto_jv==0)
	   {
	   status="SURTIDO COMPLETO";
	   }else{
	   status="SURTIDO PARCIAL";
	   }
	  }
	 
	  
	 
	 /*
	  if(cont5>0)
	  {
	  
			  if (cont6==0)
			  {
			  
			  cant_surpas_amp=0+sur2;
			 
			  }else
			  {
			   rset1= stmt_0001.executeQuery("select sum(cant_sur) from receta_pasti_ampu where clave='"+clave1_jv+"' and partida='"+part_jv+"'");
				while(rset1.next())
			  {
				cant_surpas=rset1.getString("sum(cant_sur)");
				cant_surpas_amp=Integer.parseInt(cant_surpas)+sur2;
			   }
			  }
			  
	if(cant_surpas_amp>cant_pasti_ampu)		  
	{
	ttcant_surpas_amp2=cant_surpas_amp/cant_pasti_ampu;
	total=ttcant_surpas_amp2*cant_pasti_ampu;
	total2=cant_surpas_amp-total;
	ttcant_surpas_amp=cant_surpas_amp-cant_pasti_ampu;
	//out.print(""+ttcant_surpas_amp2);
	
	stmt.execute("insert into receta values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+ttcant_surpas_amp2+"','"+ttcant_surpas_amp2+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+part_jv+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");		  
			  
	stmt.execute("insert into receta_colectiva values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+sol1_jv+"','"+sur1_jv+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+part_jv+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");	
		
			  stmt_elimDS.execute(" DELETE FROM receta_pasti_ampu WHERE clave='"+clave1_jv+"' and partida='"+part_jv+"'"); 	
			  
			  stmt.execute("insert into receta_pasti_ampu values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+total2+"','"+total2+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+part_jv+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");
			  
			  
			  }else
			  {
	  //out.print(""+cant_surpas_amp+"<--1-->"+cant_pasti_ampu);
   if(cant_surpas_amp==cant_pasti_ampu)
	   {
	   stmt.execute("insert into receta values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','1','1','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+part_jv+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");
	   
	   stmt.execute("insert into receta_colectiva values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+sol1_jv+"','"+sur1_jv+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+part_jv+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");
	   
	   stmt_elimDS.execute(" DELETE FROM receta_pasti_ampu WHERE clave='"+clave1_jv+"' and partida='"+part_jv+"'"); 	
	   
	   }else
	   {
	   stmt.execute("insert into receta_pasti_ampu values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+sol1_jv+"','"+sur1_jv+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+part_jv+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");
	   
	   stmt.execute("insert into receta_colectiva values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+sol1_jv+"','"+sur1_jv+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+part_jv+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");
	   
	   }
	  }
	  }
	  else{
	   stmt.execute("insert into receta values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+sol1_jv+"','"+sur1_jv+"','"+radiosur_jv+"','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+part_jv+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','-','-','-','-','-','-','-','-','-','-','-',0)");
	   */
	   rset_001 = stmt_001.executeQuery("SELECT STR_TO_DATE('"+fechanew+"', '%d/%m/%Y')"); 
                    while(rset_001.next()){
                    fechanew= rset_001.getString("STR_TO_DATE('"+fechanew+"', '%d/%m/%Y')");
					}
	   
	   stmt.execute("insert into receta_colectiva values ('"+foliore_jv+"','"+fechanew+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+sol1_jv+"','"+sur1_jv+"','SI','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+part_jv+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','"+fechanew+"','A','"+encarser_jv+"','-','-','-','-','-','-','-','-',0)");
	  // }
	  
	   if (!(mtotal==0))
	   {
	   stmt1.execute("update inventario set cant='"+mtotal+"' where clave='"+clave1_jv+"' and origen='"+part_jv+"'");
	    /*rset_001 = stmt_001.executeQuery("SELECT STR_TO_DATE('"+fechanew+"', '%d/%m/%Y')"); 
                    while(rset_001.next()){
                    fechanew= rset_001.getString("STR_TO_DATE('"+fechanew+"', '%d/%m/%Y')");
					}*/
	   stmt1.execute("insert into modificacion values ('"+clave1_jv+"','"+descrip1_jv+"','-','-','"+cant_jv+"','"+part_jv+"','-"+sur1_jv+"','"+mtotal+"','"+fechanew+"','"+ela2_jv+"','SALIDA V�A RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");	   
	   }else{
	   stmt1.execute("delete from inventario where clave='"+clave1_jv+"' and origen='"+part_jv+"'");
	    /*rset_001 = stmt_001.executeQuery("SELECT STR_TO_DATE('"+fechanew+"', '%d/%m/%Y')"); 
                    while(rset_001.next()){
                    fechanew= rset_001.getString("STR_TO_DATE('"+fechanew+"', '%d/%m/%Y')");
					}*/
	   stmt1.execute("insert into modificacion values ('"+clave1_jv+"','"+descrip1_jv+"','-','-','"+cant_jv+"','"+part_jv+"','-"+sur1_jv+"','"+mtotal+"','"+fechanew+"','"+ela2_jv+"','SALIDA V�A RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");	
	   }
	   
	   clave1_jv="";
	   descrip1_jv="";
	   sol1_jv="";
	   sur1_jv=""; 
	   cant_jv=""; 
	   part_jv=""; 
	   
	   }else{
	   rset_org_o1= stmt_o1.executeQuery("select * from inventario where clave='"+clave1_jv+"' and origen='1' ");
	  
	  while(rset_org_o1.next())
	  {
	  partida_o1_jv=rset_org_o1.getString("origen");
	   cant_o1_jv=rset_org_o1.getString("cant");
	   cant2_o1_jv=Integer.parseInt(cant_o1_jv);
	  }  
	   
	  rset_org_o2= stmt_o2.executeQuery("select * from inventario where clave='"+clave1_jv+"' and origen='2' ");
	  
	  while(rset_org_o2.next())
	  {
	  partida_o2_jv=rset_org_o2.getString("origen");
	   cant_o2_jv=rset_org_o2.getString("cant");
	   cant2_o2_jv=Integer.parseInt(cant_o2_jv);

	  }  
	  
	  rset_org_o2= stmt_o2.executeQuery("select * from inventario where clave='"+clave1_jv+"' and origen='3' ");
	  String partida_o3_jv = "", cant_o3_jv="";
	  int cant2_o3_jv=0;
	  while(rset_org_o2.next())
	  {
	   partida_o3_jv=rset_org_o2.getString("origen");
	   cant_o3_jv=rset_org_o2.getString("cant");
	   cant2_o3_jv=Integer.parseInt(cant_o3_jv);

	  }  
	  
	  
	  mtotalot=cant2_o1_jv+cant2_o2_jv+cant2_o3_jv;
	  /*out.print("org1-->"+cant2_o1_jv);
	  out.print("org2-->"+cant2_o2_jv);
	  out.print("org3-->"+cant2_o3_jv);
	  out.print("total-->"+mtotalot);
	  */
	 
	  //mtotalot=cant2_o1_jv+cant2_o2_jv;
	  int tot_sol=0;
 		if (1==1)
	  {
	   if(sur2>mtotalot){
	  	sur2=mtotalot;
	  }
	  
	  //---------------------------------------------------------------------------
	  
	  int sur_cap=0;
	  mtotalotsur=sur2-cant2_o1_jv;
	  sur_cap = mtotalotsur;
	  rset_001 = stmt_001.executeQuery("SELECT STR_TO_DATE('"+fechanew+"', '%d/%m/%Y')"); 
                    while(rset_001.next()){
                    fechanew= rset_001.getString("STR_TO_DATE('"+fechanew+"', '%d/%m/%Y')");
					}
	  if (cant2_o1_jv>0){
	  
	   stmt.execute("insert into receta_colectiva values ('"+foliore_jv+"','"+fechanew+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+cant2_o1_jv+"','"+cant2_o1_jv+"','SI','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+partida_o1_jv+"','"+present1_jv+"','0','SURTIDO COMPLETO','RC','-','-','-','-','-','"+servicio_jv+"','"+fechanew+"','A','"+encarser_jv+"','-','-','-','-','-','-','-','-',0)");				
					sol2=sol2-cant2_o1_jv;
					stmt1.execute("insert into modificacion values ('"+clave1_jv+"','"+descrip1_jv+"','-','-','"+cant2_o1_jv+"','"+partida_o1_jv+"','-"+cant2_o1_jv+"','0','"+fechanew+"','"+ela_jv+"','SALIDA V�A RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");
					
					 stmt1.execute("delete from inventario where clave='"+clave1_jv+"' and origen='"+partida_o1_jv+"'");
					

	 
	 
	  resto_jv=sol2-sur2;
	    if (sur2==0)
		{
		status="PENDIENTE POR SURTIR";
		}
		else{
				if (resto_jv==0)
			   {
			  resto22_jv=mtotalotsur;
			   status="SURTIDO COMPLETO";
			   }else{
			   status="SURTIDO PARCIAL";
			   resto22_jv=resto_jv+mtotalotsur;
			   }
	   }
	   
	   }
	   if (mtotalotsur>0){
		if (cant2_o3_jv>0){
	   //--------------------------------Origen 3------------------------------------------------------------------------
		   int cant_03=cant2_o3_jv;
		   mtotalotsur=mtotalotsur-cant2_o3_jv;
		   if (mtotalotsur<0){
			 cant2_o3_jv=sur_cap;
		   }
		   sur_cap=mtotalotsur;
		  
 			stmt.execute("insert into receta_colectiva values ('"+foliore_jv+"','"+fechanew+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+cant2_o3_jv+"','"+cant2_o3_jv+"','SI','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+partida_o3_jv+"','"+present1_jv+"','0','SURTIDO COMPLETO','RC','-','-','-','-','-','"+servicio_jv+"','"+fechanew+"','A','"+encarser_jv+"','-','-','-','-','-','-','-','-',0)");	
			sol2=sol2-cant2_o3_jv;
		  if (mtotalotsur>=0){
			stmt.execute("delete from inventario where clave='"+clave1_jv+"' and origen='"+partida_o3_jv+"'");
		  } else {
		  stmt.execute("update inventario set cant='"+(-mtotalotsur)+"' where clave='"+clave1_jv+"' and origen='"+partida_o3_jv+"'");
		  } 
		  stmt.execute("insert into modificacion values ('"+clave1_jv+"','"+descrip1_jv+"','-','-','"+cant_03+"','"+partida_o3_jv+"','"+(-cant2_o3_jv)+"','"+(cant_03-cant2_o3_jv)+"','"+fechanew+"','"+ela_jv+"','SALIDA V�A RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");
		  }
	   }
	   if (mtotalotsur>0){
		if (cant2_o2_jv>0){
			   //--------------------------------Origen 2------------------------------------------------------------------------
			   mtotalotsur=mtotalotsur-cant2_o2_jv;
			   int cant_02=cant2_o2_jv;
				if (mtotalotsur<0){
				 cant2_o2_jv=cant_02+mtotalotsur;
			   }
			   //sur_cap=mtotalotsur;
			  
			  stmt.execute("insert into receta_colectiva values ('"+foliore_jv+"','"+fechanew+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+cant2_o2_jv+"','"+cant2_o2_jv+"','SI','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+partida_o2_jv+"','"+present1_jv+"','0','SURTIDO COMPLETO','RC','-','-','-','-','-','"+servicio_jv+"','"+fechanew+"','A','"+encarser_jv+"','-','-','-','-','-','-','-','-',0)");	
				
			  if (mtotalotsur>= 0){
				stmt.execute("delete from inventario where clave='"+clave1_jv+"' and origen='"+partida_o2_jv+"'");
			  } else {
			  stmt.execute("update inventario set cant='"+(-mtotalotsur)+"' where clave='"+clave1_jv+"' and origen='"+partida_o2_jv+"'");
			  }
			  stmt.execute("insert into modificacion values ('"+clave1_jv+"','"+descrip1_jv+"','-','-','"+cant_02+"','"+partida_o2_jv+"','"+(-(cant2_o2_jv))+"','"+((cant_02-cant2_o2_jv))+"','"+fechanew+"','"+ela_jv+"','SALIDA V�A RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");
			  }
		}	
		
		//if (mtotalotsur>0){
		//if (cant2_o2_jv>0){
			   //--------------------------------Pendiente por Surtir------------------------------------------------------------------------
			  sol2=sol2-sur_cap;
			  if (sol2>0){
				stmt.execute("insert into receta_colectiva values ('"+foliore_jv+"','"+fechanew+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+sol2+"','0','NO','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','2','"+present1_jv+"','0','SURTIDO COMPLETO','RC','-','-','-','-','-','"+servicio_jv+"','"+fechanew+"','A','"+encarser_jv+"','-','-','-','-','-','-','-','-',0)");
			  }
  clave1_jv="";
	   descrip1_jv="";
	   sol1_jv="";
	   sur1_jv=""; 
	   cant_jv=""; 
	   part_jv=""; 		
	   
	   //-----------------------------------------------------------------------------------------------------------
	  /*
	   mtotalotsur=sur2-cant2_o1_jv;
	   rset_001 = stmt_001.executeQuery("SELECT STR_TO_DATE('"+fechanew+"', '%d/%m/%Y')"); 
                    while(rset_001.next()){
                    fechanew= rset_001.getString("STR_TO_DATE('"+fechanew+"', '%d/%m/%Y')");
					}
					
					
	stmt.execute("insert into receta_colectiva values ('"+foliore_jv+"','"+fechanew+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+cant2_o1_jv+"','"+cant2_o1_jv+"','SI','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+partida_o1_jv+"','"+present1_jv+"','0','SURTIDO COMPLETO','RC','-','-','-','-','-','"+servicio_jv+"','"+fechanew+"','A','"+encarser_jv+"','-','-','-','-','-','-','-','-',0)");				
					
					stmt1og1.execute("insert into modificacion values ('"+clave1_jv+"','"+descrip1_jv+"','-','-','"+cant2_o1_jv+"','"+partida_o1_jv+"','-"+cant2_o1_jv+"','0','"+fechanew+"','"+ela_jv+"','SALIDA V�A RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");	
					
					 stmt1.execute("delete from inventario where clave='"+clave1_jv+"' and origen='"+partida_o1_jv+"'");
					 
					 				
		mtotalotsur2=cant2_o2_jv-mtotalotsur;			
		resto_jv=sol2-sur2;
		
		//out.print(""+mtotalotsur2);
	  if(sur2==0)
	  {
		status="PENDIENTE POR SURTIR";
	  }
		else{
	  
				if (resto_jv==0)
			   {
			   status="SURTIDO COMPLETO";
			   resto22_jv=mtotalotsur;
			   }else{
			   status="SURTIDO PARCIAL";
			   resto22_jv=resto_jv+mtotalotsur;
			   }
	     }			
					
					
	  
	  
	  stmt_og22.execute("insert into receta_colectiva values ('"+foliore_jv+"','"+tfecha_jv+"','"+reloj_jv+"','"+juris_jv+"','"+no_jur+"','"+nom_unidad+"','-','-','-','-','-','-','-','-','"+clave1_jv+"','"+descrip1_jv+"','"+resto22_jv+"','"+mtotalotsur+"','SI','"+ela_jv+"','"+clave_jv+"','"+id_med_jv+"','"+cv_dgo_jv+"','"+cv_uni_jv+"','"+cv_finan_jv+"','"+financiamiento1+"','"+layout+"','"+partida_o2_jv+"','"+present1_jv+"','"+resto_jv+"','"+status+"','RC','-','-','-','-','-','"+servicio_jv+"','"+fechanew+"','A','"+encarser_jv+"','-','-','-','-','-','-','-','-',0)");	
	 
	 
	 
	  if(mtotalotsur2==0)
	  {
	  stmt1.execute("delete from inventario where clave='"+clave1_jv+"' and origen='"+partida_o2_jv+"'");
	  }else{
	  stmt1.execute("update inventario set cant='"+mtotalotsur2+"' where clave='"+clave1_jv+"' and origen='"+partida_o2_jv+"'");
	  
	  }
	   stmt1og2.execute("insert into modificacion values ('"+clave1_jv+"','"+descrip1_jv+"','-','-','"+cant2_o2_jv+"','"+partida_o2_jv+"','-"+mtotalotsur+"','"+mtotalotsur2+"','"+fechanew+"','"+ela_jv+"','SALIDA V�A RECETA','',current_timestamp,'"+foliore_jv+"','-','-','-','-','-',0)");	
	   
	   
	   
	    clave1_jv="";
	   descrip1_jv="";
	   sol1_jv="";
	   sur1_jv=""; 
	   cant_jv=""; 
	   part_jv=""; 
	   */
	   
	   }else{
	   
	   
	   
	    %>
	   <script>
	   alert("CANTIDAD SURTIDA ES MAYOR QUE LA EXISTENCIA")
	   </script>
	   <%
	   
	   clave1_jv="";
	   descrip1_jv="";
	   sol1_jv="";
	   sur1_jv="";
	   cant_jv="";
	   part_jv="";
       }
	  }
}	
if(but.equals("Imprimir"))
     {
	  foliore2_jv=request.getParameter("txtf_foliore");;
	  no_jur=request.getParameter("txtf_njuris");
	  nom_unidad=request.getParameter("txtf_unidadmed");
	  nombre_jv="";
	  edad_jv="";
	  folio_jv="";
	  uni_jv="";
	  cedu_jv="";
	  nomed_jv="";
	  clave1_jv="";
	  descrip1_jv="";
	  sol1_jv="";
	  sur1_jv="";
	  radiopro_jv=request.getParameter("radio_pro");
	  radiosur_jv=request.getParameter("radiosur");
	  cause_jv="";
	  reloj_jv=request.getParameter("reloj");
	  date_jv=request.getParameter("txtf_date");
	  
	  stmt.execute("insert into folio_rec values(null,'morelia')");
                  stmt.execute("commit");
				  
				  ResultSet rset_01 = stmt_01.executeQuery("select no_rec from folio_rec");
                  while(rset_01.next())
				  {
                       customerIds = rset_01.getInt("no_rec");
                         }
				  
	  
	  %>
	  <script>
	  self.location='recibo_col_fecha.jsp?folio=<%=foliore2_jv%>&folio2=<%=customerIds%>&receta5=RC&encar=<%=ela2_jv%>&uni=<%=nom_unidad%>&juris=<%=no_jur%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&encarser=<%=encarser_jv%>';
	  
	  </script>
	  <%
	  //
	   	/*  foliore_jv=request.getParameter("txtf_foliore");
	  no_jur=request.getParameter("txtf_njuris");
	  nom_unidad=request.getParameter("txtf_unidadmed");
	  nombre_jv=request.getParameter("txtf_paciente");
	  edad_jv=request.getParameter("txtf_edad");
	  folio_jv=request.getParameter("txtf_foliosp");
	  uni_jv=request.getParameter("txtf_uni");	
	  cedu_jv=request.getParameter("txtf_cedu");	
	  nomed_jv=request.getParameter("txtf_nomed");
	  clave1_jv=request.getParameter("txtf_clave1");
	  descrip1_jv=request.getParameter("txtf_descrip1");
	  sol1_jv=request.getParameter("txtf_sol1");
	  sur1_jv=request.getParameter("txtf_sur1");
	  radiopro_jv=request.getParameter("radio_pro");
	  radiosur_jv=request.getParameter("radiosur");
	  cause_jv=request.getParameter("txtf_cause");
	  reloj_jv=request.getParameter("reloj");
	  date_jv=request.getParameter("txtf_date");
	   */
}	

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>.:Receta Colectiva Fecha Autom&aacute;tica:.</title>
<script language="javascript" src="list02.js"></script>
<script type="text/javascript">
function validar(e) { // 1
    tecla = (document.all) ? e.keyCode : e.which; // 2
    if (tecla==8) return true; // 3
  patron = /\d/; // Solo acepta n�meros



  //SOLO LETRAS-->patron =/[A-Za-z\s]/; // 4
  //SOLO LETRAS Y NUMEROS --> patron = /\d/; // Solo acepta n�meros
  //numeros y letras --> patron = /\w/; // Acepta n�meros y letras
//no aceptan numeros --> patron = /\D/; // No acepta n�meros
//aceptan las letras �� --> patron =/[A-Za-z��\s]/; // igual que el ejemplo, pero acepta tambi�n las letras � y �  
//determinado letras y numeros --> patron = /[ajt69]/;//Tambi�n se puede hacer un patr�n que acepte determinados caracteres, poniendolos entre corchetes. Veamos un ejemplo para validar que solo se acepte a, j, t, 6 y 9:
   
    te = String.fromCharCode(tecla); // 5
    return patron.test(te); // 6
} 
</script>
<script type="text/javascript">
    function getfocus()
    {
            document.getElementById('w3s').focus();
    }
 
    function losefocus()
    {
            document.getElementById('w3s').blur();
    }
	
	function foco_inicial(){
	if (document.form.txtf_t3.value!="")
	{
		if (document.form.txtf_descrip1.value==""){
			document.form.txtf_med1.focus();
		}
		else{
			document.form.txtf_sol1.focus();
		}
	}
	else{
		document.form.txtf_t1.focus();
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
}
.style7 {
	font-size: 16px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style11 {font-size: 12px}
.style12 {
	color: #CCCCCC;
	font-weight: bold;
}
.Estilo5 {color: #990000; font-weight: bold; }
.Estilo6 {
	color: #000000;
	font-size: 16;
	font-weight: bold;
}
.Estilo7 {color: #003399}
-->
</style>
</head>

<body onLoad="foco_inicial();mueveReloj();">
<form name="form" method="post" action="recedgo_col_fecha.jsp?uni=<%=nom_unidad%>&juris=<%=no_jur%>&nombre=<%=nombre_jv%>&edad=<%=edad_jv%>&folio=<%=folio_jv%>&clave1=<%=clave1_jv%>&descrip1=<%=descrip1_jv%>&present1=<%=present1_jv%>&indica1=<%=indica1_jv%>&sol1=<%=sol1_jv%>&sur1=<%=sur1_jv%>&cause=<%=cause_jv%>&encar=<%=ela2_jv%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&day5=<%=t1_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&servicio=<%=servicio_jv%>&part=<%=part_jv%>&encarser=<%=encarser_jv%>">
<table width="957" height="562" border="3" align="center" cellpadding="2">
  <tr>
    <td width="725" height="156"><table width="710" border="0" align="center" cellpadding="2">
      <tr>
        <td width="114"><img src="logo_salud.jpg" width="114" height="78" /></td>
        <td width="339"><div align="center"><span class="style7">SERVICIO DE SALUD DE DURANGO<br />
        RECETA COLECTIVA </span></div></td>
        <td width="225"><div align="right"><img src="logo_dgo.jpg" width="126" height="76" /></div></td>
      </tr>
    </table>
      <a href="index.jsp">Regresar a Menu</a>
      <table width="763" height="61" border="0" align="center" cellpadding="2">
        <tr>
          <td width="284" height="55"><label></label>
            <table width="270" height="0%" border="0" cellpadding="2">
              <tr>
                <td width="221" height="100%" class="style2">FECHA:<input name="txtf_date" type="text" class="style13" onKeyPress="return handleEnter(this, event)" value="<%=day1%>/<%=res%>/<%= year %>" size="1" readonly="true" style="visibility:hidden"/>
                  &nbsp;
				  <%
						java.util.Calendar fecha = java.util.Calendar.getInstance();
						String dia_f=String.valueOf(fecha.get(java.util.Calendar.DATE));
						//int mes_=Integer.parseInt((fecha.get(java.util.Calendar.MONTH)+1));
						
						String mes_f=String.valueOf(fecha.get(java.util.Calendar.MONTH)+1);
						int mes=Integer.parseInt(mes_f);
						if (mes>=1 && mes<=9){
							mes_f="0"+mes;
						}
						String anio_f=String.valueOf(fecha.get(java.util.Calendar.YEAR));
						
					%>
                  <input name="txtf_t1" type="text" onKeyPress="return handleEnter(this, event)" onKeyUp="putDays()" value="<%=dia_f%>" size="1" maxlength="2" readonly="true"/>
			        <strong>                    /</strong>
                    <input name="txtf_t2" type="text" size="1" maxlength="2" onKeyUp="putMonthss()" value="<%=mes_f%>" onKeyPress="return handleEnter(this, event)" readonly="true"/>
                    <strong>                    /</strong>
                    <input name="txtf_t3" type="text" size="2" maxlength="4" onKeyUp="putYearss2(this.form)" value="<%=anio_f%>" onKeyPress="return handleEnter(this, event)" readonly="true"/>
					<%
						//java.util.Calendar fecha = java.util.Calendar.getInstance();
						//String fecha_modi=(fecha.get(java.util.Calendar.DATE) + "/" + (fecha.get(java.util.Calendar.MONTH)+1)    + "/"  + fecha.get(java.util.Calendar.YEAR));
						
					%>
                    <!--input name="txtf_fecha" type="text" size="10" maxlength="4" onKeyUp="putYearss2(this.form)" value="<%//=fecha_modi%>" onKeyPress="return handleEnter(this, event)" readonly="true"/-->
              </tr>
            </table>
          <label>          </label></td>
          <td width="250"><table width="167" height="0%" border="0" cellpadding="2">
            <tr>
              <td width="225" height="100%" class="style2">HORA:
                <input name="reloj" type="text"  class="Estilo5" onKeyPress="return handleEnter(this, event)" size="15" readonly="true" ></td>
            </tr>
          </table>          
            <label></label></td>
          <td width="172" align="center" class="style2">Ingrese No. Folio
            <table width="152" height="0%" border="0" align="right" cellpadding="2">
            <tr>
              <td width="144" height="100%"><label>
			  <%/* int val_met=0;
		   String recibe_value="";
		   
		    if(flag==0)
			  {
		   	  val_met=regulaCont2(f_gnk=request.getParameter("txtf_fol2"),request.getParameter("txtf_foliore"));
		      //out.print("ingreso a flag");
			  }
		  else	  
			  val_met=Integer.parseInt(folgnk_vi_jv);*/
		%>
                <input type="text" name="txtf_foliore" size="20" class="Estilo5"  value="<%=foliore_jv%>" readonly="true"/>
              </label></td>
            </tr>
          </table></td>
        </tr>
    </table>    </td>
  </tr>
        <tr>
          <td height="71" colspan="3" class="style4"><table width="784" border="0" align="center" cellpadding="2">
            <tr>
              <td height="2" colspan="3" class="style4"><div id="item7" style="display:none" align="justify" ><span class="style2">
            <input name="txtf_date1" type="text" size="20" value="<%= day>10?day:day %>/<%= month>10?month:month %>/<%= year %>" onKeyPress="return handleEnter(this, event)" readonly="true"/>
          </span></div></td>
            </tr>
            <tr>
              <td width="533" class="style2">UNIDAD DE SALUD&nbsp;</td>
              <td width="170"><table width="170" border="0" align="left" cellpadding="2">
                <tr>
                  <td width="162" align="center"><div align="center" class="style2">JURISDICCION&nbsp;&nbsp;<input name="txtf_njuris"  class="Estilo5" readonly="true" type="text" size="1" value="<%=no_jur%>"/>
                  </div></td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td colspan="2"><textarea name="txtf_unidadmed" cols="40" class="Estilo5" colspan="3" readonly="readonly"><%=nom_unidad%></textarea>
                <span class="style2">ELABOR&Oacute; COLECTIVO: </span> <label>
                <textarea name="txtf_ela" cols="35"  class="Estilo5" readonly="readonly"><%=ela2_jv%></textarea>
              </label></td>
            </tr>
          </table>
		  
		  </td>
        </tr>
        <tr>
		<td height="241">
		<table width="939" border="0" align="center" cellpadding="2">
            
            <tr>
              <td colspan="3" class="style2">Tipos de Servicios:&nbsp;
                <select name="select_servi"  class="style2" onChange="Servi_col(this.form)" onKeyPress="return document.form.txtf_med1.focus();">
                              <option selected="selected">-----Seleccione Tipo de Servicio-----</option>
                                               <option value="ADMINISTRACION">ADMINISTRACION</option>
<option value="ANESTESIOLOGIA">ANESTESIOLOGIA</option>
<option value="ANTIALACRAN">ANTIALACRAN</option>
<option value="BANCO DE SANGRE">BANCO DE SANGRE</option>
<option value="BRAQUITERAPIA">BRAQUITERAPIA</option>
<option value="CENDIS">CENDIS</option>
<option value="CENTRAL DE MEZCLAS">CENTRAL DE MEZCLAS</option>
<option value="CEYE">CEYE</option>
<option value="CIRUGIA">CIRUGIA</option>
<option value="CITOLOGIA">CITOLOGIA</option>
<option value="CLINICA DE CATETER ADULTO">CLINICA DE CATETER ADULTO</option>
<option value="CLINICA DE CATETER PEDIATRICO">CLINICA DE CATETER PEDIATRICO</option>
<option value="CLINICA DE DISPLASIAS">CLINICA DE DISPLASIAS</option>
<option value="CLINICA DE MAMA">CLINICA DE MAMA</option>
<option value="COCINA">COCINA</option>
<option value="CONSULTA">CONSULTA</option>
<option value="CONSULTA EXTERNA">CONSULTA EXTERNA</option>
<option value="CONSULTORIO 1">CONSULTORIO 1</option>
<option value="CONSULTORIO 2">CONSULTORIO 2</option>
<option value="CONSULTORIO 3">CONSULTORIO 3</option>
<option value="CURACIONES">CURACIONES</option>
<option value="DENTAL">DENTAL</option>
<option value="DIETETICA">DIETETICA</option>
<option value="DIRECCION">DIRECCION</option>
<option value="DONACION">DONACION</option>
<option value="ELECTROENCEFALOGRAFIA">ELECTROENCEFALOGRAFIA</option>
<option value="EMODINAMIA">EMODINAMIA</option>
<option value="ENDOSCOPIA">ENDOSCOPIA</option>
<option value="ENFERMERIA">ENFERMERIA</option>
<option value="GINECOLOGIA">GINECOLOGIA</option>
<option value="HEMODIALISIS">HEMODIALISIS</option>
<option value="HEMODINAMIA">HEMODINAMIA</option>
<option value="HINALOTERAPIA">HINALOTERAPIA</option>
<option value="HOMBRES">HOMBRES</option>
<option value="HOSPITALIZACION">HOSPITALIZACION</option>
<option value="INGENIERIA BIOMEDICA">INGENIERIA BIOMEDICA</option>
<option value="INHALOTERAPIA">INHALOTERAPIA</option>
<option value="INMUNOHISTOQUIMICA">INMUNOHISTOQUIMICA</option>
<option value="JEFATURA DE ENFERMERIA">JEFATURA DE ENFERMERIA</option>
<option value="LABORATORIO">LABORATORIO</option>
<option value="LABORATORIO DE ANALISIS CLINICOS">LABORATORIO DE ANALISIS CLINICOS</option>
<option value="LABORATORIO DE MICROBIOLOGIA">LABORATORIO DE MICROBIOLOGIA</option>
<option value="LABORATORIO Y EXPULSION">LABORATORIO Y EXPULSION</option>
<option value="LAPAROSCOPIA">LAPAROSCOPIA</option>
<option value="LAVANDERIA">LAVANDERIA</option>
<option value="MASTOGRAFIA">MASTOGRAFIA</option>
<option value="MEDICINA INTERNA">MEDICINA INTERNA</option>
<option value="MEDICINA PREVENTIVA">MEDICINA PREVENTIVA</option>
<option value="MEZCLAS">MEZCLAS</option>
<option value="MODULO OPORTUNIDADES">MODULO OPORTUNIDADES</option>
<option value="MUJER">MUJER</option>
<option value="NEONATOS">NEONATOS</option>
<option value="OFTALMOLOGIA">OFTALMOLOGIA</option>
<option value="ORTOPEDIA">ORTOPEDIA</option>
<option value="PATOLOGIA">PATOLOGIA</option>
<option value="PEDIATRIA">PEDIATRIA</option>
<option value="PLANIFICACION FAMILIAR">PLANIFICACION FAMILIAR</option>
<option value="PROCEDIMIENTOS">PROCEDIMIENTOS</option>
<option value="QUIMIOTERAPIA">QUIMIOTERAPIA</option>
<option value="QUIRIFANO DE OFTALMO">QUIRIFANO DE OFTALMO</option>
<option value="QUIROFANO">QUIROFANO</option>
<option value="QUIROFANO DE OFTALMOLOGIA">QUIROFANO DE OFTALMOLOGIA</option>
<option value="QUIROFANO Y ANESTESIA">QUIROFANO Y ANESTESIA</option>
<option value="RADIOLOGIA">RADIOLOGIA</option>
<option value="RADIOTERAPIA">RADIOTERAPIA</option>
<option value="RAYOS X">RAYOS X</option>
<option value="RC">RC</option>
<option value="REHABILITACION">REHABILITACION</option>
<option value="RESONANCIA MAGNETICA">RESONANCIA MAGNETICA</option>
<option value="RX SOTANO">RX SOTANO</option>
<option value="SALUD REPRODUCTIVA">SALUD REPRODUCTIVA</option>
<option value="SEGURO POPULAR">SEGURO POPULAR</option>
<option value="SUBDIRECCION ADMINISTRATIVA">SUBDIRECCION ADMINISTRATIVA</option>
<option value="SUBDIRECCION MEDICA">SUBDIRECCION MEDICA</option>
<option value="SUPERVISION DE ENFERMERIA">SUPERVISION DE ENFERMERIA</option>
<option value="TERAPIA INTENSIVA">TERAPIA INTENSIVA</option>
<option value="TOCOCIRUGIA">TOCOCIRUGIA</option>
<option value="TOMOGRAFIA">TOMOGRAFIA</option>
<option value="TRANSFUSION SANGUINEA">TRANSFUSION SANGUINEA</option>
<option value="TRANSPLANTES">TRANSPLANTES</option>
<option value="UCI">UCI</option>
<option value="ULTRASONIDO">ULTRASONIDO</option>
<option value="UNIDAD CORONARIA">UNIDAD CORONARIA</option>
<option value="URGENCIAS">URGENCIAS</option>
<option value="URGENCIAS PEDIATRICAS">URGENCIAS PEDIATRICAS</option>
<option value="UTIA">UTIA</option>
<option value="UTIP">UTIP</option>
<option value="VACUNACION">VACUNACION</option>
<option value="YESOS Y CURACIONES">YESOS Y CURACIONES</option>
                </select>&nbsp;Servicio: <input type="text" name="txtf_servicio" class="style2" size="30" value="<%=servicio_jv%>" readonly="true" /></td>
              <td class="style11">&nbsp;</td>
              <td class="style11">&nbsp;</td>
              <td class="style11">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="3" class="style2">Encargado del Servicio: <input type="text" name="txtf_encarser" class="style2" size="60" value="<%=encarser_jv%>" /></td>
              <td class="style11">&nbsp;</td>
              <td class="style11">&nbsp;</td>
              <td class="style11">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="3" class="style2">Ingrese Clave:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="text" name="txtf_med1" size="20" value="<%=med1_jv%>" onChange="<%=but="Med1"%>"/>
              <input name="Submit" type="submit" class="but" value="Clave" onClick="getfocus()"/>&nbsp;<a href="index_carga_clave.jsp" target="_blank">Agregar Clave al Inventario</a></td>
              <td width="59" class="style11">&nbsp;</td>
              <td width="114" class="style11"><input type="text" name="txtf_resul" size="20" value="<%=formateador.format(ttcant_surpas_amp2)%>" style="visibility:hidden"/></td>
              <td width="170" class="style11">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2" class="style11">Ingrese descripci&oacute;n: 
                <input type="text" name="txtf_descmed" size="20" value="<%=desdmed_jv%>" onKeyPress="return handleEnter(this, event)" />                <input name="Submit" type="submit" class="but" value="Por Descripci�n" onClick="getfocus()"/></td>
              <td width="56" class="style11">&nbsp;</td>
              <td class="style11">&nbsp;</td>
              <td colspan="2" class="style11">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="6" class="style11">Seleccione Descripci&oacute;n:
                <select name="select_servi2" size="1"  class="style2"  onKeyPress="return document.form.txtf_med1.focus();">
                              <option selected="selected">-----Seleccione Descripci�n-----</option>
							  <%
		     
             for(x1=0;x1<tam2;x1++)
                {
                   
           %>
                      <option value="<%=cad1[x1]%>"><%=cad1[x1]%></option>
                      <%
                }
           %>
                </select>&nbsp;&nbsp;&nbsp;<input name="Submit" type="submit" class="but" value="Ver" onClick="getfocus()"/></td>
            </tr>
            <tr>
              <td width="91" class="style11"><label> <br />
              </label></td>
              <td width="362" class="style11"><label></label></td>
              <td colspan="4" class="style11"><label><span class="Estilo7">TOTAL EXISTENCIA:</span><span class="Estilo7"> <span class="Estilo6"><%=sumatotal%>&nbsp;</span></label>
                  <input type="text" name="txtf_idmed" size="1" value="<%=id_med_jv%>" style="visibility:hidden" />
                 
                  <input type="text" name="txtf_present" size="1" value="<%=present1_jv%>" style="visibility:hidden"/>
                  
                  <input type="text" name="txtf_finan" size="1"  style="visibility:hidden"/>
                  <span class="style2">FUENTE                  </span>
              <input type="text" class="style2" name="txtf_ff" value="<%=encontrado%>"  readonly="true"/>                </td>
            </tr>
            <tr>
              <td width="91" class="style11"><span class="style2">CLAVE </span></td>
              <td class="style11" align="center"><span class="style2">DESCRIPCI&Oacute;N</span></td>
              <td class="style11" align="center"><span class="style2">CANT. SOL</span></td>
              <td class="style11" align="center"><span class="style2">CANT. SUR </span></td>
              <td class="style11" align="center">&nbsp;</td>
              <td class="style2" >EXIST.&nbsp;<input type="text" name="txtf_exist" size="1"  class="style2" value="<%=cant_jv%>" onKeyPress="return handleEnter(this, event)" readonly="true" onChange="enViarc(this.form)"/>&nbsp;Origen
                <input name="txtf_part" type="text" class="style2" value="<%=part_jv%>" size="1" readonly="true" /></td>
            </tr>
            <tr>
              <td class="style11"><input type="text" name="txtf_clave1" size="10" value="<%=clave1_jv%>" class="style2"  readonly="true"/></td>
              <td class="style11"><textarea name="txtf_descrip1" cols="80" rows="2" class="style2" readonly="true"><%=descrip1_jv%></textarea></td>
              <td class="style11" align="center"><input type="text" name="txtf_sol1" size="5" value="<%=sol1_jv%>" class="style2" onKeyPress="return validar(event)" /></td>
              <td class="style11" align="center"><input type="text" class="style2"  name="txtf_sur1" size="5" value="<%//=sur1_jv%>0"  onchange="setSur(this.form)" onKeyPress="return validar(event)" readonly /></td>
              <td class="style11" align="center">&nbsp;</td>
              <td class="style11"><input name="Submit" type="submit" class="subHeader" value="Capturar" onClick="return verificaNcol(document.forms.form)" onChange="setSur(this.form)" /></td>
            </tr>
            <tr>
              <td class="style11">&nbsp;</td>
              <td colspan="5" class="style11">&nbsp;</td>
            </tr>
			
            <tr bordercolor="#000000">
              <td align="center" bordercolor="#333333" class="style11"><span class="style2">CLAVE</span></td>
              <td align="center" bordercolor="#333333" class="style11"><span class="style2">DESCRIPCI&Oacute;N</span></td>
              <td align="center" bordercolor="#333333" class="style11"><span class="style2">CANT. SOL</span></td>
              <td align="center" bordercolor="#333333" class="style11"><span class="style2">CANT. SUR </span></td>
              <td align="center" bordercolor="#333333" class="style11"><span class="style2">ORIGEN</span></td>
              <td class="style11">&nbsp;</td>
            </tr>
			 <%
  Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/r_d", "root", "eve9397");
  Statement stmt__001 = conn__001.createStatement();
  ResultSet rset__001=stmt__001.executeQuery("select clave,descrip,cant_sol,cant_sur,surtido,id,partida from receta_colectiva where folio_re='"+foliore_jv+"'");
 
   while(rset__001.next()) 
                  { 
  %>
            <tr>
              <td class="style11" align="center"><span class="style2"><%=rset__001.getString("clave")%></span></td>
              <td class="style11" align="center"><span class="style2"><%=rset__001.getString("descrip")%></span></td>
              <td class="style11" align="center"><span class="style2"><%=rset__001.getString("cant_sol")%></span></td>
              <td class="style11" align="center"><span class="style2"><%=rset__001.getString("cant_sur")%></span></td>
              <td class="style11" align="center"><span class="style2"><%=rset__001.getString("partida")%></span></td>
			  <% 
	  eliminar_jv=rset__001.getString("id");
	  //out.print("valor 1"+eliminar_jv);
	  %>
              <td class="style11"><input  type="button" id="btn_<%=eliminar_jv%>" name="btn_<%=eliminar_jv%>" class="subHeader" value="Eliminar" onclick='location.href="eliminar_col_fecha.jsp?id_prov=<%=eliminar_jv%>&foliore=<%=foliore_jv%>&encar=<%=ela2_jv%>&juris=<%=no_jur%>&uni=<%=nom_unidad%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&day5=<%=t1_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&servicio=<%=servicio_jv%>&encarser=<%=encarser_jv%>"'/>&nbsp;<input  type="button" id="btn_<%=eliminar_jv%>2" name="btn_<%=eliminar_jv%>2" class="subHeader" value="Modificar" onclick='location.href="modificar_new_col_fecha.jsp?id_prov=<%=eliminar_jv%>&foliore=<%=foliore_jv%>&encar=<%=ela2_jv%>&juris=<%=no_jur%>&uni=<%=nom_unidad%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&day5=<%=t1_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&servicio=<%=servicio_jv%>&encarser=<%=encarser_jv%>"'/></td>
            </tr>
			<%
			}
			%>
            <tr>
              <td class="style11">&nbsp;</td>
              <td class="style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <label></label></td>
              <td class="style11">&nbsp;</td>
              <td class="style11">&nbsp;</td>
              <td class="style11">&nbsp;</td>
              <td class="style11"><input name="Submit" type="submit" class="subHeader" value="Imprimir" /></td>
            </tr>
          </table>
		</td>
		</tr>
        
       
	   <tr>
         <td height="40" colspan="3" class="style4"><div align="right" class="style12">
           <div align="center"><img src="soriana-2.jpg" width="171" height="34" /></div>
         </div></td>
  </tr>
</table>
</form>
</td></tr></td></td></td></td></td>
<p>&nbsp;</p>
</body>
</html>
