<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" import="java.text.DecimalFormat" import="java.util.Locale" import="java.lang.String"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<style>
		#tablaPrin {
	position: relative;
	top: 45px;
	left:45px;
	background-color: #FFFFFF;
}			
.style24 {font-size: 14px}
.style28 {color: #FFFFFF}
.style30 {color: #333333}
</style>

<% Class.forName("org.gjt.mm.mysql.Driver");
//Variables for proveedores
//int ban_cap=0;
//variables for find the siccal and description
String cad1_des[]=new String[10000];
String query_var="",var_des="",des_jv="";
String cadudia_jv="";
String cadumes_jv="";
String caduano_jv="";
String marca_jv="";
String present_jv="";
//variable for get the remision´s value
String f_gnk=request.getParameter("txtf_fol2");
//out.print(""+f_gnk); 
//-------------------------------------
        String codigomed_jv="",clavemed_jv="",lotemed_jv="",cadumed_jv="",cajasmed_jv="",piezasmed_jv="",restomed_jv="",cantmed_jv="",marcamed_jv="",foliomed_jv="",id_datos_invcod="";
String folgnk_jv="";//request.getParameter("txtf_1");
String folrem_jv="";
String eliminar_jv="";
String provee_jv="";
String recibe_jv="";
String entrega_jv="";
String capturar_jv="";
String ubic_jv="BODEGA ESTADO DE MEXICO";
String origen_jv="SAVI";
String obser_jv="";
//variable para el código de barras
String cb_jv="";

//variables para obtener el pzas y resto, exi_jv recibe el num de cajas, agregamos tmb para el calc de existencias
 int cajas_int=0,pzas_int=0,restos_jv=0,exist_jv=0;

String pzas_jv="0",resto_jv="0";

int flag=0;
 	  try {
       		flag = Integer.parseInt(request.getParameter("flag_id"));       			   
	  } catch (Exception e) { }


String fol2_vi_jv="";
 	  try {
       		fol2_vi_jv = request.getParameter("fol_vi");       			   
	  } catch (Exception e) { }

String folgnk_vi_jv="";
 	  try {
       		folgnk_vi_jv = request.getParameter("fol_gnk_vi");       			   
	  } catch (Exception e) { }

String provee_vi_jv="";
 	  try {
       		provee_vi_jv = request.getParameter("prove_vi");       			   
	  } catch (Exception e) { }
	  
	  String recibe_vi_jv="";
 	  try {
       		recibe_vi_jv = request.getParameter("recib_vi");       			   
	  } catch (Exception e) { }
	  
	  String entrega_vi_jv="";
 	  try {
       		entrega_vi_jv = request.getParameter("entreg_vi");       			   
	  } catch (Exception e) { }
	  
	  String capturar_vi_jv="";
 	  try {
       		capturar_vi_jv = request.getParameter("captu_vi");       			   
	  } catch (Exception e) { }
	  
	  String ubic_vi_jv="";
 	  try {
       		ubic_vi_jv = request.getParameter("ubic_vi");       			   
	  } catch (Exception e) { }
	  
	  String origen_vi_jv="";
 	  try {
       		origen_vi_jv = request.getParameter("orig_vi");       			   
	  } catch (Exception e) { }
	  
	  String obser_vi_jv="";
 	  try {
       		obser_vi_jv = request.getParameter("obser_vi");       			   
	  } catch (Exception e) { }
	  
	  String boolDocRem_vi_jv="";
 	  try {
       		boolDocRem_vi_jv = request.getParameter("boolDocRem_vi");       			   
	  } catch (Exception e) { }

//String costo_jv="";
String cost_jv="";
String boolDocRem_jv="";






 String enc_jv="";
 String clagto_jv="";
 String unigto_jv="";
 String juris3_jv="";
 String juris4_jv="";
 
 String edad_jv="";
 String meses_jv="";
 
 String salida1_jv="";
 String salida2_jv="";
 String salida3_jv="";
 int salida_1_jv=0;
 int salida_2_jv=0;
 int salida_3_jv=0;
 
 String encar2_jv="";
 String cuantos_jv="1";
 String exi_jv="0";
 //String cost_jv="";
 
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
 String exi1_jv="";
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
 
  
 
 //variable para el segundo Mostrar
 	String clave2_jv="";
	String desc2_jv= "";
	String lote2_jv= ""; 
	String lote22_jv= "";
	String cadu2_jv= "";
	String exis2_jv= "";
	String costo2_jv="";
	String exi2_jv="";
	
	String juris2_jv="";
	String date_jv="";
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
String fol2_jv="";
String med_jv=""; 
String pac_jv=""; 
String tu_jv="";
 
String spss2_jv="";
String fol22_jv="";
String med2_jv=""; 
String pac2_jv=""; 
String tu2_jv="";
//select cve_med,descri,lote,cadu,cr,cs from datos_all where folio_rec='324';
String cve__jv="Clave";
String descri__jv="descr";
String lote__jv="Lote";
String cadu__jv="Caducidad";
String cr__jv="0";
String cs__jv="";
String prov_jv=""; 
cuantos_jv=request.getParameter("txtf_cant");


     Connection conn_001 = DriverManager.getConnection("jdbc:mysql://localhost/issemym");
        Statement stmt_001 = conn_001.createStatement();
        ResultSet rset_001=stmt_001.executeQuery("SELECT * FROM datos_far order by (clave+0)");
          while (rset_001.next()) 
                  { 
                    clagto_jv=rset_001.getString("clave");  
				    unigto_jv=rset_001.getString("unidad");	
					enc_jv=rset_001.getString("encar1");   
					juris2_jv=rset_001.getString("juris");
                    
                   }
cve__jv=request.getParameter("txtf_fol2");
prov_jv=request.getParameter("txtf_prov");
//out.print(""+cve__jv);
/*
Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/issemym");
        Statement stmt__001 = conn__001.createStatement();
  ResultSet rset__001=stmt__001.executeQuery("select cve_med,descri,lote,cadu,cr,cs,exis from datos_all where folio_rec='"+cve__jv+"'");
 
*/ 
  //stmt__001.execute("commit");       






     int tam=0,tam2=0,x1=0,tama=0,tama1=0,tamPro=0;
     String cad1[]=new String[10000];  //array for show clients 
	 String prov1[]=new String[10000];
     String arr[]= new String[5000];     //array for the 
	 String noMed[]= new String[5000];
	 String noPac[]= new String[5000];
	 
	 
	 
	 String lotes[]= new String[5000];
	 String lotes2[]= new String[5000];
	 String lotes3[]= new String[5000];
	 String exis[]= new String[5000];
	 String exis2[]= new String[5000];
	 String exis3[]= new String[5000];
	 
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
		String desc_jv=  "";		
	    String lote_jv= "";
		String cadu_jv= "";
		String exis_jv= "";
		//String exis2_jv= "";
		String costo_jv= "";
int cont=1;
//Rutina para obtener las claves 
	    Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/issemym");
        Statement stmt1 = conn1.createStatement();
        ResultSet rset1=stmt1.executeQuery("SELECT distinct clave FROM datos_inv_cb_t order by (clave)");
          while (rset1.next()) 
                  { 
                    
                    cad1[tam2]=rset1.getString("clave");     
                     tam2++;
                   }

          rset1=stmt1.executeQuery("SELECT distinct F_nomprov FROM provee_all order by F_nomprov asc");
          while (rset1.next()) 
                  { 
                    
                    prov1[tamPro]=rset1.getString("F_nomprov");     
                     tamPro++;
                   }

          


	 

try{
        altaOK=Integer.parseInt(request.getParameter("altaok"));   
       }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
	   
   try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}
	tam2=0;
	//if( !(but.equals("Filtrar Nombres")) )
	  // {	
        rset1=stmt1.executeQuery("select distinct(descri) from ise_sic group by descri;");
          while (rset1.next()) 
                  { 
                    
                    cad1_des[tam2]=rset1.getString("descri");     
                     tam2++;
                   }
if(but.equals("Filtrar Nombres"))
      {
	      altaOK=0;
		  //variables datos del proveedor
		fol2_jv=request.getParameter("txtf_fol2");
		 //date_jv=request.getParameter("txtf_date");	
		 
		 folgnk_jv=request.getParameter("txtf_1");
		 date_jv=request.getParameter("txtf_date");
	     folrem_jv=request.getParameter("txtf_fol2");
	     provee_jv=request.getParameter("txtf_4");
		 recibe_jv=request.getParameter("txtf_5");
		 entrega_jv=request.getParameter("txtf_8");
		 capturar_jv=request.getParameter("txtf_10");
		 ubic_jv=request.getParameter("txtf_6");
		 origen_jv=request.getParameter("txtf_7");
		 obser_jv=request.getParameter("txa_1");
		 boolDocRem_jv=request.getParameter("txtf_coin");
		  //------
	      var_des=request.getParameter("txtf_descri");
          query_var=var_des+"%";
		  //out.print("si"+query_var);
		   rset1 = stmt1.executeQuery("SELECT descri FROM ise_sic WHERE descri LIKE '"+query_var+"' group by descri;");
		   tam2=0;
		   while (rset1.next()) 
                  { 
                    
                    cad1_des[tam2]=rset1.getString("descri");     
                     tam2++;
                   }//fin del while 
 

	      
			}//fin del if 

  if(but.equals("Mostrar SICCAL y DESCRIPCION"))
      {
	    altaOK=0;
		folgnk_jv=request.getParameter("txtf_1");
        des_jv= request.getParameter("slct_med");
		
		 date_jv=request.getParameter("txtf_date");
	     fol2_jv=request.getParameter("txtf_fol2");
	     provee_jv=request.getParameter("txtf_4");
		 recibe_jv=request.getParameter("txtf_5");
		 entrega_jv=request.getParameter("txtf_8");
		 capturar_jv=request.getParameter("txtf_10");
		 ubic_jv=request.getParameter("txtf_6");
		 origen_jv=request.getParameter("txtf_7");
		 obser_jv=request.getParameter("txa_1");
		 boolDocRem_jv=request.getParameter("txtf_coin");
	    rset1 = stmt1.executeQuery("SELECT siccal,descri FROM ise_sic WHERE descri='"+des_jv+"';");
		     while (rset1.next()) 
                  { 
                    clave_jv=rset1.getString("siccal");
					desc_jv=rset1.getString("descri");
                     
                   }//fin del while 
	
	//	clave_jv  descrip_jv
		
      }
if(but.equals("FILTRAR CÓDIGO"))
      {
	    altaOK=0;
		folgnk_jv=request.getParameter("txtf_1");
        des_jv= request.getParameter("txtf_codigo");
		
		 date_jv=request.getParameter("txtf_date");
	     fol2_jv=request.getParameter("txtf_fol2");
	     provee_jv=request.getParameter("txtf_4");
		 recibe_jv=request.getParameter("txtf_5");
		 entrega_jv=request.getParameter("txtf_8");
		 capturar_jv=request.getParameter("txtf_10");
		 ubic_jv=request.getParameter("txtf_6");
		 origen_jv=request.getParameter("txtf_7");
		 obser_jv=request.getParameter("txa_1");
		 boolDocRem_jv=request.getParameter("txtf_coin");
	    rset1 = stmt1.executeQuery("SELECT siccal,descri,cb_ean,marca,um FROM ise_sic WHERE cb_ean='"+des_jv+"';");
		     while (rset1.next()) 
                  { 
                    clave_jv=rset1.getString("siccal");
					desc_jv=rset1.getString("descri");
					cb_jv=rset1.getString("cb_ean");
					marca_jv=rset1.getString("marca");
					present_jv=rset1.getString("um");
                     
                   }//fin del while 
	
	//	clave_jv  descrip_jv
		
      }


	if(but.equals("Cantidad"))
      {
        cuantos_jv= request.getParameter("txtf_cant");
		loop=Integer.parseInt(cuantos_jv);
		//out.print(""+loop);
      }
	
	if(but.equals("slct"))
      {
	     //out.print("VICTORIA");
      }	 
	  
	  	if(but.equals("AGREGAR LOTE Y CODIGO DE BARRAS"))
			{
	altaOK=0;			
	 fol2_jv=request.getParameter("txtf_fol2");
	 provee_jv=request.getParameter("txtf_4");
	 recibe_jv=request.getParameter("txtf_5");
	 entrega_jv=request.getParameter("txtf_8");
	 capturar_jv=request.getParameter("txtf_10");
	 ubic_jv=request.getParameter("txtf_6");
	 origen_jv=request.getParameter("txtf_7");
	 obser_jv=request.getParameter("txa_1");
	 boolDocRem_jv=request.getParameter("txtf_coin");
	%>
		<script>			
		 	self.location='http://192.168.1.180:8080/issemym/index_rec.jsp?fol_gnk_vi=<%=folgnk_jv%>&fol_vi=<%=fol2_jv%>&prove_vi=<%=provee_jv%>&recib_vi=<%=recibe_jv%>&entreg_vi=<%=entrega_jv%>&captu_vi=<%=capturar_jv%>&ubic_vi=<%=ubic_jv%>&orig_vi=<%=origen_jv%>&obser_vi=<%=obser_jv%>&boolDocRem_vi=<%=boolDocRem_jv%>';			
		</script>
	<%	 	 
			}
	
if(but.equals("Existencias"))
{
 // out.print("raymond"+cont+lotes[0]);
   cve__jv=request.getParameter("txtf_fol2");
   juris_jv= request.getParameter("txtf_3");
   lote2_jv=  request.getParameter("txtf_lote"); 
   //customerId2=0;   
   Connection conn_1 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/issemym");
                  Statement stmt_1 = conn_1.createStatement();
                  
                  //cs_jv= request.getParameter("SubCat");
                  ResultSet rset_1 = stmt_1.executeQuery("select distinct * from claves_alm where clave='"+juris_jv+"' and lote='"+lote2_jv+"'");
				  //ResultSet rset_2 = stmt_1.executeQuery("select * from cla_lotes where clave='"+juris_jv+"'"); 
         /* while(rset_2.next())
				     {
  
		  lote_jv=  rset_1.getString("lote");
                      } 		  
         */
		 
		  while(rset_1.next())
				     {
                  clave_jv=  rset_1.getString("clave");
				  desc_jv=  rset_1.getString("descr");
				  lote2_jv=  rset_1.getString("lote");  
				  cadu_jv=  rset_1.getString("caducidad");
				  //exi_jv=  rset_1.getString("exisf");
				  
				  //if(exi_jv.equals("0"))
				     if(juris_jv.equals(clave_jv))
					   {
					   
                         if(!(exi_jv.equals("0")))
						  {					   
					         lotes[pos]=lote2_jv;
						     cad[pos]=cadu_jv;
						     exis[pos]=exi_jv;
							 pos++;
					         cont++;
						  }	 
						    
				        }
                 
	//if(exi_jv.equals("0"))
	  			    
   // lote2_jv=lotes[0];
	//cadu_jv=cad[0];
	//exi_jv=exis[0];
				  
				  
				  //costo_jv=  rset_1.getString("costo");
				  
				 //variables for get the medicine´s values 
				  
				  
				  
				  //for the top part
				  spss_jv= request.getParameter("txtf_spss");
				  fol2_jv= request.getParameter("txtf_fol2");
                  med_jv= request.getParameter("txtf_med");
                  pac_jv= request.getParameter("txtf_pac");
                  tu_jv= request.getParameter("txtf_tu");

				  clave2_jv=  request.getParameter("txtf_cla2");
				  desc2_jv=  request.getParameter("txtf_desc2");
				  lote22_jv=  request.getParameter("txtf_lote2");  
				  cadu2_jv=  request.getParameter("txtf_cad2");
                  exis2_jv=  request.getParameter("txtf_cr2");
				  costo2_jv= request.getParameter("txtf_cs2");
				  exi2_jv= request.getParameter("txtf_exi2");
				  
				  cie_jv=request.getParameter("txtf_cie");
                  cve11_jv=request.getParameter("txtf_cla");
				  
				  edad_jv=request.getParameter("txtf_edad");
				  meses_jv=request.getParameter("txtf_mes");
				  
				  date_jv=request.getParameter("txtf_date");
 // pos=2; 
}
}
if(but.equals("Mostrar Datos"))
{
 
altaOK=0;
     fol2_jv= request.getParameter("txtf_fol2");
	 folgnk_jv=request.getParameter("txtf_1");
	 folgnk_vi_jv=request.getParameter("txtf_1");
     provee_jv=request.getParameter("txtf_4");
	 recibe_jv=request.getParameter("txtf_5");
	 entrega_jv=request.getParameter("txtf_8");
	 capturar_jv=request.getParameter("txtf_10");
	 ubic_jv=request.getParameter("txtf_6");
	 origen_jv=request.getParameter("txtf_7");
	 obser_jv=request.getParameter("txa_1");	 
	 boolDocRem_jv=request.getParameter("txtf_coin");
	 cve__jv=request.getParameter("txtf_fol2");
     juris_jv= request.getParameter("txtf_3");
   //customerId2=0;
    int banesta=0;   
   Connection conn_1 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/issemym");
                  Statement stmt_1 = conn_1.createStatement();
                  
                  //cs_jv= request.getParameter("SubCat");
                  ResultSet rset_1 = stmt_1.executeQuery("select * from datos_inv_cb_t where clave='"+juris_jv+"'");
				  //ResultSet rset_2 = stmt_1.executeQuery("select * from cla_lotes where clave='"+juris_jv+"'"); 
         /* while(rset_2.next())
				     {
  
		  lote_jv=  rset_1.getString("lote");
                      } 		  
         */
		 
		  while(rset_1.next())
				     {
					 banesta=1;
                  clave_jv=  rset_1.getString("clave");
				  desc_jv=  rset_1.getString("descr");
				  lote2_jv=  rset_1.getString("lote");  
				  cadu_jv=  rset_1.getString("cadu");
				  cb_jv=  rset_1.getString("cb_ean");
				  marca_jv=rset1.getString("marca");
				  present_jv=rset1.getString("um");
				  //exi_jv=  rset_1.getString("exisf");
				  
				  //if(exi_jv.equals("0"))
				     if(juris_jv.equals(clave_jv))
					   {
					   
                         					   
					         lotes[pos]=lote2_jv;
						     cad[pos]=cadu_jv;
						     exis[pos]=exi_jv;
							 pos++;
					         cont++;
						  	 
						    
				        }
                 
	//if(exi_jv.equals("0"))
	  			    
    lote2_jv=lotes[0];
	cadu_jv=cad[0];
	exi_jv=exis[0];
				  
				  
				  //costo_jv=  rset_1.getString("costo");
				  
				 //variables for get the medicine´s values 
				  
				  
				  
				  //for the top part
				  spss_jv= request.getParameter("txtf_spss");
				  fol2_jv= request.getParameter("txtf_fol2");
				  folgnk_jv=request.getParameter("txtf_1");
                  med_jv= request.getParameter("txtf_med");
                  pac_jv= request.getParameter("txtf_pac");
                  tu_jv= request.getParameter("txtf_tu");
					//boolDocRem_jv=request.getParameter("rad1");
				  clave2_jv=  request.getParameter("txtf_cla2");
				  desc2_jv=  request.getParameter("txtf_desc2");
				  lote22_jv=  request.getParameter("txtf_lote2");  
				  cadu2_jv=  request.getParameter("txtf_cad2");
                  exis2_jv=  request.getParameter("txtf_cr2");
				  costo2_jv= request.getParameter("txtf_cs2");
				  exi2_jv= request.getParameter("txtf_exi2");
				  
				  cie_jv=request.getParameter("txtf_cie");
                  cve11_jv=request.getParameter("txtf_cla");
				  
				  date_jv=request.getParameter("txtf_date");
}
if(banesta==0){	
%>
		<script>					 	
  			alert("ESTA CLAVE NO SE ENCUENTRA DENTRO DEL CATALOGO, POR FAVOR INTENTALO NUEVAMENTE");
  		</script>
<%	
		}

//out.print("raymond"+cont+lotes[0]);
}	
			
if(but.equals("Mostrar 2"))
{
  //out.print("enter");
  juris3_jv = request.getParameter("txtf_32");
   //customerId2=0;   
   out.print("enter"+juris3_jv);
   Connection conn_1 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/issemym");
                  Statement stmt_1 = conn_1.createStatement();
                  
                  //cs_jv= request.getParameter("SubCat");
                  ResultSet rset_1 = stmt_1.executeQuery("select * from claves_alm where clave='"+juris3_jv+"'");
				  //ResultSet rset_2 = stmt_1.executeQuery("select * from cla_lotes where clave='"+juris_jv+"'"); 
         /* while(rset_2.next())
				     {
  
		  lote_jv=  rset_1.getString("lote");
                      } 		  
         */
		 
		  while(rset_1.next())
				     {
                  clave2_jv=  rset_1.getString("clave");
				  desc2_jv=  rset_1.getString("descr");
				  lote22_jv=  rset_1.getString("lote");  
				  cadu2_jv=  rset_1.getString("caducidad");
				  //exi2_jv=  rset_1.getString("exisf");
				     if(juris3_jv.equals(clave2_jv))
					   {
					     lotes2[pos2]=lote22_jv;
						 cad2[pos2]=cadu2_jv;
						 exis2[pos2]=exi2_jv;
						 pos2++;
					     cont2++;   
				        }
                 
				    

				  
				  exi2_jv=  rset_1.getString("exisf");
				  //costo2_jv=  rset_1.getString("costo");
				  
//variable that get the values from the textfields 
				  clave_jv=  request.getParameter("txtf_cla");
				  desc_jv=  request.getParameter("txtf_desc");
				  lote2_jv=  request.getParameter("txtf_lote");  
				  cadu_jv=  request.getParameter("txtf_cad");
                  exis_jv=  request.getParameter("txtf_cr");
				  costo_jv= request.getParameter("txtf_cs");
				  exi_jv= request.getParameter("txtf_exi");
				  
				  //for the top part
				  spss_jv= request.getParameter("txtf_spss");
				  fol2_jv= request.getParameter("txtf_fol2");
                  med_jv= request.getParameter("txtf_med");
                  pac_jv= request.getParameter("txtf_pac");
                  tu_jv= request.getParameter("txtf_tu");
            cie_jv=request.getParameter("txtf_cie");
			 clave_jv=request.getParameter("txtf_cla");
			 desc_jv=  request.getParameter("txtf_desc");
			 edad_jv=request.getParameter("txtf_edad");
			 
			   lote22_jv=lotes2[0];
	           cadu2_jv=cad2[0];
	           exi2_jv=exis2[0];
}
//out.print("raymond"+cont2+lotes2[0]);
}	

if(but.equals("Mostrar 3"))
{
  //out.print("enter");
  juris4_jv = request.getParameter("txtf_333");
   //customerId2=0;   
   //out.print("enter"+juris4_jv);
   Connection conn_1 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/issemym");
                  Statement stmt_1 = conn_1.createStatement();
                  
                  //cs_jv= request.getParameter("SubCat");
                  ResultSet rset_1 = stmt_1.executeQuery("select * from claves_alm where clave='"+juris4_jv+"'");
				  //ResultSet rset_2 = stmt_1.executeQuery("select * from cla_lotes where clave='"+juris_jv+"'"); 
         /* while(rset_2.next())
				     {
  
		  lote_jv=  rset_1.getString("lote");
                      } 		  
         */
		 
		  while(rset_1.next())
				     {
                  clave3_jv=  rset_1.getString("clave");
				  desc3_jv=  rset_1.getString("descr");
				  lote3_jv=  rset_1.getString("lote");  
				  cadu3_jv=  rset_1.getString("caducidad");
				  //exi3_jv=  rset_1.getString("exisf");
				     if(juris4_jv.equals(clave3_jv))
					   {
					     lotes3[pos3]=lote3_jv;
						 cad3[pos3]=cadu3_jv;
						 exis3[pos3]=exi3_jv;
						 pos3++;
					     cont3++;   
				        }
                 
				    

				  
				  exi3_jv=  rset_1.getString("exisf");
				  //costo2_jv=  rset_1.getString("costo");
//variables for ger the first row

                  clave_jv=  request.getParameter("txtf_cla");
				  desc_jv=  request.getParameter("txtf_desc");
				  lote2_jv=  request.getParameter("txtf_lote");  
				  cadu_jv=  request.getParameter("txtf_cad");
                  exis_jv=  request.getParameter("txtf_cr");
				  costo_jv= request.getParameter("txtf_cs");
				  exi_jv= request.getParameter("txtf_exi");

				  
//variable that get the values from the textfields 
				  clave2_jv=  request.getParameter("txtf_cla2");
				  desc2_jv=  request.getParameter("txtf_desc2");
				  lote22_jv=  request.getParameter("txtf_lote2");  
				  cadu2_jv=  request.getParameter("txtf_cad2");
                  exis2_jv=  request.getParameter("txtf_cr2");
				  costo2_jv= request.getParameter("txtf_cs2");
				  exi2_jv= request.getParameter("txtf_exi2");
				  
				  //for the top part
				  spss_jv= request.getParameter("txtf_spss");
				  fol2_jv= request.getParameter("txtf_fol2");
                  med_jv= request.getParameter("txtf_med");
                  pac_jv= request.getParameter("txtf_pac");
                  tu_jv= request.getParameter("txtf_tu");
    cie_jv=request.getParameter("txtf_cie");
	 clave_jv=request.getParameter("txtf_cla");
	 desc_jv=  request.getParameter("txtf_desc");
	 edad_jv=request.getParameter("txtf_edad");

               lote3_jv=lotes3[0];
	           cadu3_jv=cad3[0];
	           exi3_jv=exis3[0];

 

}
//out.print("raymond"+cont2+lotes2[0]);
}	
if(but.equals("Imprimir"))
     {
	  clave_jv=  request.getParameter("txtf_cla");
		//out.print("clave_jv"+clave_jv);
	if(!(clave_jv.equals("Clave"))){	
	 altaOK=1;}
	 fol2_jv= request.getParameter("txtf_fol2");
	 folgnk_jv=request.getParameter("txtf_1");
	 //out.print("folio gnk"+folgnk_jv);
	 date_jv=request.getParameter("txtf_date");
     folrem_jv=request.getParameter("txtf_fol2");
     provee_jv=request.getParameter("txtf_4");
	 recibe_jv=request.getParameter("txtf_5"); 
	 entrega_jv=request.getParameter("txtf_8");
	 capturar_jv=request.getParameter("txtf_10");
	 ubic_jv=request.getParameter("txtf_6");
	 origen_jv=request.getParameter("txtf_7");
	 obser_jv=request.getParameter("txa_1");
	  boolDocRem_jv=request.getParameter("txtf_coin");
	  Connection conn_1 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/issemym");
                  Statement stmt_1 = conn_1.createStatement();
				  //System.out.print("iii"+customerId);
                  //if(customerId2==1)
                      stmt_1.execute("insert into folio_prov values(null,'morelia')");
                  stmt_1.execute("commit"); 
	 
	 }

if(but.equals("CAPTURAR RECETA NUEVA"))
     {
	 cve__jv="";
	 }
	 
	 
 	if(but.equals("Guardar Proveedor"))
     {
	  cve__jv=request.getParameter("txtf_fol2");
	 //date_jv=request.getParameter("txtf_date");	 
	 folgnk_jv=request.getParameter("txtf_1");
	 date_jv=request.getParameter("txtf_date");
     folrem_jv=request.getParameter("txtf_fol2");
     provee_jv=request.getParameter("txtf_4");
	 recibe_jv=request.getParameter("txtf_5");
	 entrega_jv=request.getParameter("txtf_8");
	 capturar_jv=request.getParameter("txtf_10");
	 ubic_jv=request.getParameter("txtf_6");
	 origen_jv=request.getParameter("txtf_7");
	 obser_jv=request.getParameter("txa_1");
	 boolDocRem_jv=request.getParameter("txtf_coin");
	 clave_jv=  request.getParameter("txtf_cla");
	 desc_jv=  request.getParameter("txtf_desc");
	 lote2_jv=  request.getParameter("txtf_lote");  
	 cadu_jv=  request.getParameter("txtf_cad");
     exi_jv= request.getParameter("txtf_exi");
	 out.print("www.gnklogistica.com.mx"+"      "+"GNKL Software");
	 //rset__001=stmt__001.executeQuery("select cve_med,descri,lote,cadu,cr,cs,exis from datos_all where folio_rec='"+cve__jv+"'");
	 //stmt_001.execute("commit");
		clave_jv=request.getParameter("txtf_cla");
		desc_jv=  request.getParameter("txtf_desc");
		fol2_jv=request.getParameter("txtf_fol2");
		tu_jv=request.getParameter("txtf_4");//proveedor
		med_jv=request.getParameter("txtf_med");//recibido por...
      //out.print("txtf_prov"+prov_jv);
	  prov_jv=request.getParameter("txtf_prov");
	  
	  Connection conn = 
                  DriverManager.getConnection("jdbc:mysql://localhost/issemym");
                  Statement stmt_date = conn.createStatement();
		if(!(prov_jv.equals(""))) {                 
			stmt_date.execute("insert into bdd_prov values ('"+prov_jv+"')");
%>
<script>
			alert('"CAPTURA EXITOSA", Se ha agregado el nuevo proveedor lo encontrara en la lista');
			$('tablaCapturaMateria').style.display='none';
			window.location.reload();
</script>
<%
		}else{
%>
<script>
			alert("ERROR DE CAPTURA, Solicito registrar un proveedor y no esta realizando el proeso correctamente, INTÉNTALO DE NUEVO")
			txtf_prov.focus();		
</script>
<%
		}

}
if(but.equals("Test"))
     {
	   altaOK=0;
	   fol2_jv=request.getParameter("txtf_fol2");
	 provee_jv=request.getParameter("txtf_4");
	 recibe_jv=request.getParameter("txtf_5");
	 entrega_jv=request.getParameter("txtf_8");
	 capturar_jv=request.getParameter("txtf_10");
	 ubic_jv=request.getParameter("txtf_6");
	 origen_jv=request.getParameter("txtf_7");
	 obser_jv=request.getParameter("txa_1");
	 boolDocRem_jv=request.getParameter("txtf_coin");
	   
	 }
if(but.equals("R"))
     {
	    altaOK=0;
		  //variables datos del proveedor
		fol2_jv=request.getParameter("txtf_fol2");
		 //date_jv=request.getParameter("txtf_date");	
		 
		 folgnk_jv=request.getParameter("txtf_1");
		 date_jv=request.getParameter("txtf_date");
	     folrem_jv=request.getParameter("txtf_fol2");
	     provee_jv=request.getParameter("txtf_4");
		 recibe_jv=request.getParameter("txtf_5");
		 entrega_jv=request.getParameter("txtf_8");
		 capturar_jv=request.getParameter("txtf_10");
		 ubic_jv=request.getParameter("txtf_6");
		 origen_jv=request.getParameter("txtf_7");
		 obser_jv=request.getParameter("txa_1");
		 boolDocRem_jv=request.getParameter("txtf_coin");
	 }

 	if(but.equals("Capturar"))
     {
		 altaOK=0;
		 cve__jv=request.getParameter("txtf_fol2");
		 //date_jv=request.getParameter("txtf_date");	 
		 folgnk_jv=request.getParameter("txtf_1");
		 date_jv=request.getParameter("txtf_date");
	     folrem_jv=request.getParameter("txtf_fol2");
	     provee_jv=request.getParameter("txtf_4");
		 recibe_jv=request.getParameter("txtf_5");
		 entrega_jv=request.getParameter("txtf_8");
		 capturar_jv=request.getParameter("txtf_10");
		 ubic_jv=request.getParameter("txtf_6");
		 origen_jv=request.getParameter("txtf_7");
		 obser_jv=request.getParameter("txa_1");
		 boolDocRem_jv=request.getParameter("txtf_coin");
		 clave_jv=  request.getParameter("txtf_cla");
		 desc_jv=  request.getParameter("txtf_desc");
		 lote2_jv=  request.getParameter("txtf_lote"); 
		 cadudia_jv=request.getParameter("txtf_t1");
		 marca_jv=request.getParameter("txtf_marca");
		  present_jv=request.getParameter("txtf_present");
			  //out.print(cadudia_jv.length());
			  if( (cadudia_jv.length())==1 )
			      cadudia_jv="0"+cadudia_jv;
			cadumes_jv=request.getParameter("txtf_t2");
			  if( (cadumes_jv.length())==1 )
			      cadumes_jv="0"+cadumes_jv;
			caduano_jv=request.getParameter("txtf_t3");
			      //if( (cadumes_jv.length())==1 )
			cadu_jv=cadudia_jv+"/"+cadumes_jv+"/"+caduano_jv;
		  
		 //cadu_jv=  request.getParameter("txtf_cad");
	     exi_jv= request.getParameter("txtf_exi");
	     cb_jv= request.getParameter("txtf_cb");
		 marca_jv= request.getParameter("txtf_marca");
		 present_jv= request.getParameter("txtf_present");

	     juris_jv= request.getParameter("txtf_3");
	     cve__jv=request.getParameter("txtf_fol2");
		 
		 //toma los valores de pzas,resto y exist, cajas es tomada por exi_jv
		 pzas_jv=  request.getParameter("txtf_pza");
		 resto_jv= request.getParameter("txtf_rto");
		 //exist_jv= request.getParameter("txtf_exist");
	     
	 cajas_int=Integer.parseInt(exi_jv);
	 pzas_int=Integer.parseInt(pzas_jv);
	 restos_jv=Integer.parseInt(resto_jv);
	 
	 exist_jv=(cajas_int*pzas_int)+restos_jv;
	 exi_jv="";
	 exi_jv=exi_jv+exist_jv;
		 
	 String[] var=exi_jv.split(",");
	 if(var.length > 1)
	 exi_jv=var[0]+var[1];
	 //out.print("exi_split"+var[0]+var[1]);
	 out.print("www.gnklogistica.com.mx"+"      "+"GNKL Software");
	 //rset__001=stmt__001.executeQuery("select cve_med,descri,lote,cadu,cr,cs,exis from datos_all where folio_rec='"+cve__jv+"'");
	 //stmt_001.execute("commit");
	 	 Connection conn = 
                  DriverManager.getConnection("jdbc:mysql://localhost/issemym");
                  Statement stmt_date = conn.createStatement();
				  ResultSet rset_date = stmt_date.executeQuery("SELECT STR_TO_DATE('"+date_jv+"', '%d/%m/%Y')"); 
                    while(rset_date.next())
                    date_jv= rset_date.getString("STR_TO_DATE('"+date_jv+"', '%d/%m/%Y')");
	              
				  //stmt.execute("insert into folio_rec values(null,'morelia')");
                  stmt_date.execute("commit"); 
 //String datee=request.getParameter("txtf_date");
 
 clave_jv=request.getParameter("txtf_cla");
 desc_jv=  request.getParameter("txtf_desc");
 fol2_jv=request.getParameter("txtf_fol2");
 tu_jv=request.getParameter("txtf_4");//proveedor
 med_jv=request.getParameter("txtf_med");//recibido por...
 
 //sumar registros repetidos y eliminar dejando solo el total...
 Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/issemym");
Statement stmt__001 = conn__001.createStatement();
  
  ResultSet rset__001=null;   
  
  rset__001=stmt__001.executeQuery("SELECT cve_med,descri,lote,cadu,marca,um,SUM(cant) FROM datos_prov_1_0807 WHERE cve_med='"+clave_jv+"' and lote='"+lote2_jv+"'and folio_gnk='"+folgnk_jv+"' GROUP BY cve_med");
  System.out.print("entro al else"+fol2_vi_jv);
  
  int bansumar=0;
  int sum_exi_jv=0;
  //out.print("clave"+folgnk_jv);
   while(rset__001.next()) 
                  { 
				  	bansumar=1;
					sum_exi_jv=Integer.parseInt(rset__001.getString("SUM(cant)"));
                  }
	if(bansumar==1 && !(exi_jv.equals("0")) && !(exi_jv.equals("")))	{ 
		Connection connEli = 
         DriverManager.getConnection("jdbc:mysql://localhost/issemym");
         Statement stmt_elim = connEli.createStatement();
		//ResultSet rset_elim =null;
    	//Statement stmt_elim = null ;
				
     		//Connection connEli = 
     		//DriverManager.getConnection("jdbc:mysql://localhost/issemym");			         
     		//stmt_elim = connEli.createStatement();						
  			stmt_elim.execute("DELETE FROM datos_prov_1_0807 WHERE cve_med='"+clave_jv+"' and lote='"+lote2_jv+"'and folio_gnk='"+folgnk_jv+"'");
  			System.out.print("Entra");			
				//while(rset_elim.next()){			
					//rset_elim.deleteRow();
				//}
		//conn.close	();
	sum_exi_jv=Integer.parseInt(exi_jv)+sum_exi_jv;	
	exi_jv=(""+sum_exi_jv);
	%>
	<Script>alert("Hace la suma" + exi_jv) </script>
	<%	  
	}		                    
if(!(clave_jv.equals("Clave")) ) {                 
stmt_date.execute("insert into datos_prov_1_0807 values ('"+cb_jv+"','"+folgnk_jv+"','"+date_jv+"','"+folrem_jv+"','"+provee_jv+"','"+recibe_jv+"','"+clave_jv+"','"+lote2_jv+"','"+cadu_jv+"','"+cajas_int+"','"+entrega_jv+"','"+ubic_jv+"','"+origen_jv+"','"+obser_jv+"','"+desc_jv+"','"+boolDocRem_jv+"','"+cajas_int+"','"+pzas_jv+"','"+resto_jv+"','"+exist_jv+"','4','5',0,'"+marca_jv+"','"+present_jv+"')");

if(ubic_jv.equals("BODEGA MORELOS"))
{
stmt_date.execute("insert into datos_inv_cod_mor values ('','"+clave_jv+"','"+lote2_jv+"','"+desc_jv+"','"+cadu_jv+"','NUEVO','hecho','reg','"+exist_jv+"','ALMACEN MORELOS','JOSUE NAJERA','"+date_jv+"','BODEGA MORELOS',0,'"+cajas_int+"','"+pzas_jv+"','"+resto_jv+"')");
}
else
{
stmt_date.execute("insert into datos_inv_cod values ('"+cb_jv+"','"+clave_jv+"','"+lote2_jv+"','"+desc_jv+"','"+cadu_jv+"','NUEVO','"+exist_jv+"','ALMACEN EDO MEX','JOSUE NAJERA','"+date_jv+"','BODEGA EDO MEX',0,'"+cajas_int+"','"+pzas_jv+"','"+resto_jv+"','"+marca_jv+"','"+present_jv+"','-','-','"+folgnk_jv+"')");
//tabla para leon
stmt_date.execute("insert into datos_inv_cod_leo values ('','"+clave_jv+"','"+lote2_jv+"','"+desc_jv+"','"+cadu_jv+"','NUEVO','"+exist_jv+"','ALMACEN EDO MEX','JOSUE NAJERA','"+date_jv+"','BODEGA LEON',0,'"+cajas_int+"','"+pzas_jv+"','"+resto_jv+"')");
//---
         clave_jv=  "";
		 desc_jv=  "";
		 lote2_jv=  "";
		 cadu_jv="";
		 //exi_jv="";
		 //restos_jv=0;
		 exist_jv=0;
		 //cajas_int=0;
         //cb_jv=""; 
         //juris_jv= "";
	     //cve__jv="";
		 pzas_jv=  "";
		 resto_jv= "";
		// exist_jv= "";
		 
}

//siempre realizar las pruebas y checar que esté bien!!!!!!!!!!!!!!
%>
<script>
alert('"CAPTURA EXITOSA", Para imprimir el documento dar click en el boton IMPRIMIR, de lo contrario puedes seguir CAPTURANDO');
</script>
<%
exi_jv="0";
}else{
%>
<script>
alert("ERROR DE CAPTURA, No se puede aceptar la cantidad Ingresada, INTÉNTALO DE NUEVO")
txtf_pass.focus();
</script>
<%
        

}

if(clave_jv.equals("Clave")){
%>
<script>
alert("Debes de seleccionar una CLAVE VÁLIDA")
</script>
<%
}
Connection conn_1 = 
    DriverManager.getConnection("jdbc:mysql://localhost/issemym");
    Statement stmt_1 = conn_1.createStatement();
    ResultSet rset_1 = stmt_1.executeQuery("select * from claves_alm where clave='"+juris_jv+"'");

	while(rset_1.next())
	{			
		clave_jv=  rset_1.getString("clave");	
		if(juris_jv.equals(clave_jv))
  		{      					   
	        lotes[pos]=rset_1.getString("lote");
		    cad[pos]=rset_1.getString("caducidad");
		    exis[pos]=exi_jv;
			pos++;
	        cont++;	  	 	  
   		}
		lote2_jv=lotes[0];
		cadu_jv=cad[0];
		exi_jv=exis[0];
}

}    
	 
	 if(but.equals("Eliminar"))
{
	 cve__jv=request.getParameter("txtf_fol2");
	 //date_jv=request.getParameter("txtf_date");	 
	 folgnk_jv=request.getParameter("txtf_1");
	 date_jv=request.getParameter("txtf_date");
     folrem_jv=request.getParameter("txtf_fol2");
     provee_jv=request.getParameter("txtf_4");
	 recibe_jv=request.getParameter("txtf_5");
	 entrega_jv=request.getParameter("txtf_8");
	 capturar_jv=request.getParameter("txtf_10");
	 ubic_jv=request.getParameter("txtf_6");
	 origen_jv=request.getParameter("txtf_7");
	 obser_jv=request.getParameter("txa_1");
	 boolDocRem_jv=request.getParameter("txtf_coin");
	 clave_jv=  request.getParameter("txtf_cla");
	 desc_jv=  request.getParameter("txtf_desc");
	 lote2_jv=  request.getParameter("txtf_lote");  
	 cadu_jv=  request.getParameter("txtf_cad");
     exi_jv= request.getParameter("txtf_exi");
	 
	   //out.print("ban"+ban)%>
	   <script> alert(" ete es el valor de ban"+ban);</script>
	  <%
}


%>

<%! public int customerIds=0;
 //String recibe2 = fol2_vi_jv;
//System.out.print("folio regresado"+fol2_vi_jv);
  public int regulaCont2(String recibe,String recibe_fol)
      {
	     String fol2_vi_jv="";
 	 
	
	  //String recibe2 = new String(recibe);

         // System.out.print("INGRESA AL TRY ALWAYS");            
             try { 
                           
                  Connection conn_01 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/issemym");
                  Statement stmt_01 = conn_01.createStatement();
				  //variable to take the remision´s number - if is empty, increase the count else the count is going to be the same
				  //f_gnk=request.getParameter("txtf_fol2");
				  System.out.print("EEEEEl valor recibido es:"+recibe+"\n");                
                if (!(recibe!=null))
				{
				      stmt_01.execute("insert into folio_prov values(null,'morelia')");
                      stmt_01.execute("commit");
			          System.out.print("ingresa al IF del null"+"\n"+"the value for recibe is:"+recibe+"\n"); 
			    
				 
                  ResultSet rset_01 = stmt_01.executeQuery("select no_rec from folio_prov");
                  while(rset_01.next())
                       customerIds = rset_01.getInt("no_rec");
                conn_01.close();
                 System.out.print("halo"+customerIds);           
                 }
				 else
				 customerIds = Integer.parseInt(recibe_fol);
				 
				} catch (Exception e)
                     {  
                       System.out.print("halojaSSSSSSSSSS");  
                     }
             
  return (customerIds);
     }   
%>

<% java.util.Calendar currDate = new java.util.GregorianCalendar();
   // add 1 to month because Calendar's months start at 0, not 1
   int month = currDate.get(currDate.MONTH)+1;
   int day = currDate.get(currDate.DAY_OF_MONTH);
   int year = currDate.get(currDate.YEAR);
   
   String date=" "+year;
   date= date+"/"+month;
   date= date+"/"+day;  
  // out.println(altaOK);
 
%>

<%!
public int ban=0;
public void eliminarReg(String id_rem,int ban) {
  
  System.out.print("valor"+id_rem);
  //int aux=0;
 //aux=Integer.parseInt(request.getParameter("id_dat_aux"));
 if(ban==1){ 
 System.out.print("dato eliminado"+id_rem);
 String idDS="0";
 idDS=id_rem;
 
 //veces=1;
 
	
	ResultSet rset_elimDS =null;
    Statement stmt_elimDS = null ;
	try {
			
     		Connection conn = 
     		DriverManager.getConnection("jdbc:mysql://localhost/issemym");
			         
     		stmt_elimDS = conn.createStatement();
			System.out.print("id2"+idDS);   		  
     		rset_elimDS = stmt_elimDS.executeQuery(" DELETE FROM datos_prov_1_0807 WHERE id_rem_prov='"+id_rem+"'"); 				  		
			System.out.print("Entra");
			
		while(rset_elimDS.next()){			
			rset_elimDS.deleteRow();
		}
		//conn.close();

	}catch(Exception e){}				  
  
  }
}
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>:: CAPTURAR MEDICAMENTO Y GENERAR RECIBO ::</title>
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
.style1 {
	color: #FFFFFF;
	font-weight: bold;
}
.style5 {color: #B70632; font-weight: bold; }
.style7 {color: #333333; font-weight: bold; }
.style29 {color: #1f7400}
.style31 {line-height:20px; margin-top:0px; font: 11px Verdana, Arial, Helvetica, sans-serif;}
.style32 {line-height:16px; letter-spacing:0.2em; font: bold 10px Verdana, Arial, Helvetica, sans-serif;}
.style34 {
	color: #006600;
	font-weight: bold;
	font-size: 16px;
}
.style35 {color: #333333; font-weight: bold; font-size: 16px; }
.style38 {color: #B70632}
.style39 {color: #FFFFFF; font-weight: bold; font-size: 16px; }
.style40 {
	color: #000000;
	font-weight: bold;
}
.style41 {color: #000000}
.style42 {font-weight: bold}
-->
</style>
</head>
<body bgcolor="#ffffff" onload="scrollTo(6,450)">
<script src="scw.js" type="text/javascript"> </script>
<script src="prototype.js" type="text/javascript"> </script>
<%
    
	 if (altaOK==0)
       { 
	  
      
%>


<table width="102%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#024177">
  <tr bgcolor="#3366CC">
    <td colspan="3" bgcolor="#ffffff"><img src="gnk_toluca.jpg" width="103" height="86" /></td>
    <td height="63" colspan="3" align="center" valign="bottom" nowrap="nowrap" bordercolor="#F0F0F0" bgcolor="#ffffff" id="logo"><div align="center"><img src="issemym1.jpg" width="343" height="91" /></div></td>
    <td width="6" bgcolor="#ffffff">&nbsp;</td>
  </tr>

  <tr bgcolor="#3366CC">
    <td height="35" colspan="3" background="fondo.jpg" >&nbsp;</td>
    <td height="35" colspan="3" align="center" valign="bottom" background="fondo.jpg" id="tagline"><div align="justify" class="style1">
      <div align="center">
        <h2 class="style28">Sistema de Captura de Medicamento</h2>
      </div>
    </div></td>
	<td width="6" height="35" background="fondo.jpg">&nbsp;</td>
  </tr>

  <tr>
    <td colspan="8" bgcolor="#003366"></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<td height="25" colspan="8" bgcolor="#ffffff" id="dateformat">&nbsp;&nbsp;
  	  <script language="JavaScript" type="text/javascript">
      //document.write(TODAY);	</script> 
  	<a href="menu_mainAR.jsp">Regresar a Menú</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style34">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Formato de la Remisión del Proveedor</span></td>
  </tr>
 <tr>
    <td colspan="8" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    <td width="36" valign="top" bgcolor="#ffffff">
	
 	 <br />
  	&nbsp;<br />
  	&nbsp;<br />
  	&nbsp;<br /> 	</td>
    <td>&nbsp;</td>			
    <td colspan="2" valign="top">
    <div align="left">  
      <label></label>
    </div>
      <form action="captura_prov-now09Jul09_i.jsp?flag_id=<%=flag%>&fol_gnk_vi=<%=folgnk_vi_jv%>&id_prov=<%=eliminar_jv%>&fol_vi=<%=fol2_jv%>&prove_vi=<%=provee_jv%>&recib_vi=<%=recibe_jv%>&entreg_vi=<%=entrega_jv%>&captu_vi=<%=capturar_jv%>&ubic_vi=<%=ubic_jv%>&orig_vi=<%=origen_jv%>&obser_vi=<%=obser_jv%>&boolDocRem_vi=<%=boolDocRem_jv%>" method="post" name="form" onSubmit="javascript:return ValidateFar1(this)">
	   
	    <table width="844" border="0">
		<!--tr>
		<td>		
	  <input name="Submit" type="submit" class="subHeader" value="AGREGAR LOTE" onkeypress="return handleEnter(this, event)"/>	 
	</td>
		</tr-->
      <tr>
        <td width="156"><div align="left" class="style7">FOLIO GNK:</div></td>
        <td width="497"><label>
		<% int val_met=0;
		   String recibe_value="";
		   
		    if(flag==0)
			  {
		   	  val_met=regulaCont2(f_gnk=request.getParameter("txtf_fol2"),request.getParameter("txtf_1"));
		      //out.print("ingreso a flag");
			  }
		  else	  
			  val_met=Integer.parseInt(folgnk_vi_jv);
		%>
          <input name="txtf_1" type="text" size="5" value="<%=val_met%>" readonly="true"/>
          <span class="style7">        FECHA :</span>
        <input name="txtf_date" type="text" size="10" value="<%= day %>/<%= month %>/<%= year %>" onkeypress="return handleEnter(this, event)" readonly="true"/>
        </label></td>
        <td width="99"><label>
           
          <!--onSubmit="javascript:return ValidateFormCant(this)"-->
        </label></td>
      </tr>
      <tr>
        <td><div align="left" class="style7">FOLIO DE LA REMISION:</div></td>
        <td><input name="txtf_fol2" type="text" size="40" value="<%=fol2_jv!=""?fol2_jv:(fol2_vi_jv!=null?fol2_vi_jv:"")%>" onkeypress="return handleEnter(this, event)" onchange="toUppercaseF2();"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style7">PROVEEDOR:</td>
        <td colspan="2"><label></label>
          <label><br/>
		  <div align="center" id="tablaCapturaMateria" name="tablaCapturaMateria" style="display:none;"> 
		  <input id="txtf_prov" name="txtf_prov" type="text"/>
		  <input type="submit" name="Submit" value="Guardar Proveedor" />		  
		  </div>		  
		  <select name="slct_1" class="subHeader" onchange="putProv(this.form)" onkeypress="return handleEnter(this, event)">
            <option>--Escoja Proveedor--</option>
            <%
		     
             for(int x=0;x<tamPro;x++)
                {
                   
           %>
            <option value="<%=prov1[x]%>"><%=prov1[x]%></option>
            <%
                }
           %>
          </select>
		  <input name="txtf_4" type="text" class="subHeader" onchange="toUppercaseProve();" value="<%=provee_jv!=""?provee_jv:(provee_vi_jv!=null?provee_vi_jv:"")%>" size="62" readonly="true"/></td>
      </tr>
      <tr>
        <td class="style7">RECIBIDO POR: </td>
        <td><label>
          <input type="text" name="txtf_5" size="40" value="<%=session.getAttribute("username")%>" readonly="true"/>
        </label></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style7">ENTREGADO POR: </td>
        <td colspan="2"><input name="txtf_8" type="text" size="40" value="<%=entrega_jv!=""?entrega_jv:(entrega_vi_jv!=null?entrega_vi_jv:"")%>" onkeypress="return handleEnter(this, event)" onchange="toUppercaseENT()"/>          </td>
        </tr>
	  
	  <tr>
	  	<td class="style7">UBICACIÓN: </td>
        <td>
		  <input name="txtf_6" type="text" size="40" value="<%=ubic_jv!=""?ubic_jv:(ubic_vi_jv!=null?ubic_vi_jv:"")%>" readonly="true"/>
		   <select name="slct_3" class="subHeader" onchange="putUbicacion(this.form)">
			<option >--Ubicación--</option>
			<option value="BODEGA ESTADO DE MEXICO">BODEGA EDO. MEX.</option>
           </select>		</td>
        <td>&nbsp;</td>
	  </tr>
	  <tr>
	  	<td class="style7">ORIGEN: </td>
        <td colspan="2">
		  <input name="txtf_7" type="text" size="40" value="<%=origen_jv!=""?origen_jv:(origen_vi_jv!=null?origen_vi_jv:"")%>" readonly="true"/>
		   <select name="slct_4" class="subHeader" onchange="putOrigen(this.form)">
			<option >--Origen--</option>
			<option value="SAVI">SAVI</option>
		</select></td>
        </tr>
	  <tr>
	  	<td class="style7">OBSERVACIONES: </td>
        <td colspan="2" class=""><textarea name="txa_1" class="style31"><%=obser_jv!=""?obser_jv:(obser_vi_jv!=null?obser_vi_jv:"")%></textarea>
		  <span class="style7">COINCIDE EL DOCUMENTO CON LA REMISI&Oacute;N:
          <label>          </label>
		  </span>
		  <label>
          <input name="txtf_coin" type="text" size="5" value="<%=boolDocRem_jv!=""?boolDocRem_jv:(boolDocRem_vi_jv!=null?boolDocRem_vi_jv:"")%>" readonly="true"/>
		  </label>	
		  
		  <select name="slct_coin" class="subHeader" onchange="putCoincide(this.form)">
			<option >--Origen--</option>
		<option value="SI">SI</option>
            <option value="NO">NO</option>
		</select>	  	    </td>
        </tr>
    </table>
	
	
	
						
	    <div id="tablaPrin" align="left">
	    <table width="1017" border="1" bgcolor="#FFFFFF">
	      
	      
	        <tr>
	          <td colspan="13"> <span class="style40">C&Oacute;DIGO DE BARRA:</span>
	          <input name="txtf_codigo" type="text" size="30" onfocus="<%but="FILTRAR CÓDIGO";%>"/>	          <span class="style10">
	            <input type="submit" name="Submit" value="FILTRAR CÓDIGO" />
              </span></td>           
            </tr>
	        <td colspan="13">
	          <!--span class="style30">CLAVE:	            </span>
			  
	          <input name="txtf_3" type="text" size="10" value="<%//=clave_jv%>" onkeypress="<%//but="Mostrar Datos";%>" onclick="putCla(this.form)"/>
	          <select name="slct_cli" class="style2" onchange="setCliente2(this.form)" onkeypress="return handleEnter(this, event)">
	            <option>-- Clave --</option>
	            <%
		     
            // for(int x=0;x<tam2;x++)
              //  {
                   
           %>
	            <option value="<%//=cad1[x]%>"><%//=cad1[x]%></option>
	            <%
                //}
           %>
	            </select>
	          <input type="submit" name="Submit" value="Mostrar Datos" onclick="setMens1(this.form)"/></td-->
   	        INGRESE LOS DATOS CORRECTOS DEL MEDICAMENTO
			<table width="787" border="0">
                <tr>
                  <td width="115"><span class="style10">DESCRIPCI&Oacute;N:</span></td>
                  <td width="624"><input name="txtf_descri" type="text" size="40" onkeypress="return handleEnter(this, event)"/><span class="style10">
                    <input type="submit" name="Submit" value="Filtrar Nombres" />
                    </span></td>
                  <td width="15">&nbsp;</td>
                </tr>
                <tr>
                  <td colspan="2"><label>
                    <select name="slct_med" class="bodyText" style="width:800px" multiple="multiple" onkeypress="return handleEnter(this, event)" >
  <option value="-- SELECCIONE DESCRIPCION --" selected="selected">-- SELECCIONE DESCRIPCI&Oacute;N --</option>
  <%
		     
             for(int x=0;x<tam2;x++)
                {
                   
           %>
  <option value="<%=cad1_des[x]%>"><%=cad1_des[x]%></option>
  <%
                }
           %>
</select>

                    <input name="Submit" type="submit" class="style5" value="Mostrar SICCAL y DESCRIPCION" />
                  </label></td>
                  <td>&nbsp;</td>
                </tr>
            </table>		    </tr>
	      <tr>
	        <td colspan="3" bgcolor="#FFFFFF"  class="style28" ></td>
	        <td colspan="10" rowspan="13" bgcolor="#FFFFFF">
	          <div align="center" class="style1" style="display:none;">
	            <%
		   //out.print("mmm"+pos);     
		   if(pos>=0)
		   {
		%>
	            <select name="slct_lote" class="style31" onchange="setLot1(this.form);dimePropiedades(this.form);" onkeypress="return handleEnter(this, event)"><div align="center" class="style1" style="display:none;">
	              <option>-- Lote --</option>
	              
	              <%
		     
             for(x1=0;x1<pos;x1++)
                {
                   
           %>
	              <option value="<%=lotes[x1]%>"><%=lotes[x1]%></option>
	              <%
	  }
	%>
	              </select>
	            <%
	  }
	%>	
	            </div>
	          <div align="center" class="style7"></div>
	          <div align="center">
	          <div align="center" class="style1"></div>
	          <div align="center" class="style1" style="display:none;">
	            <%
		   if(pos>1)
		   {
		%>
	            <select name="slct_cad" class="style31" onchange="setCad(this.form)" onkeypress="return handleEnter(this, event)">
	              <option>-- Caducidad --</option>
	              <%
		     
             for(x1=0;x1<pos;x1++)
                {
                   
           %>
	              <option value="<%=cad[x1]%>"><%=cad[x1]%></option>
	              <%
                }
           %>
	              </select>
	            <%
		  }
		%>               
	            </div>
	          <div align="center" class="style1"></div>
	          <div align="center" class="style1">&nbsp;</div>
	          <div align="center" class="style1"></div>
	          <div align="center" class="style1"></div>              <div align="center">&nbsp;</div>
	          <div align="center" class="style30"></div>
	          <div align="center" class="style30"></div>
	          <div align="center" class="style30"></div>              <div align="center">
	            
	            &nbsp;
	            </div></td>
	        </tr>
	      <tr>
	        <td bgcolor="#FFFFFF"  class="style28" ><span class="style40">SICCAL:</span></td>
	        <td colspan="2" bgcolor="#FFFFFF" ><span class="style30">
	          <input name="txtf_cla" type="text" class="style5" onkeypress="return handleEnter(this, event)" value="<%=clave_jv%>" size="50"/>
	          </span></td>
	        </tr>
	      <tr>
	        <td bgcolor="#FFFFFF" class="style28" ><span class="style40">DESCRIPCIÓN: </span></td>
	        <td colspan="2" bgcolor="#FFFFFF" ><span class="style30">
	          <textarea name="txtf_desc" cols="50" class="style5" onkeypress="return handleEnter(this, event)"><%=desc_jv%></textarea>
	        </span></td>
	        </tr>
	      <tr>
	        <td bgcolor="#FFFFFF" class="style28" ><span class="style40">C&Oacute;DIGO DE BARRAS: </span></td>
	        <td colspan="2" bgcolor="#FFFFFF" ><input name="txtf_cb" type="text" onkeypress="return handleEnter(this, event)" value="<%=cb_jv%>" size="50" /></td>
	        </tr>
	      <tr>
	        <td bgcolor="#FFFFFF" class="style28" ><span class="style40">MARCA:</span></td>
	        <td colspan="2" bgcolor="#FFFFFF" ><input name="txtf_marca" type="text" onkeypress="return handleEnter(this, event)" value="<%=marca_jv%>" size="50" /></td>
	        </tr>
	      <tr>
	        <td bgcolor="#FFFFFF" class="style28" ><span class="style40">PRESENTACI&Oacute;N:</span></td>
	        <td colspan="2" bgcolor="#FFFFFF" ><input name="txtf_present" type="text" onkeypress="return handleEnter(this, event)" value="<%=present_jv%>" size="50" /></td>
	        </tr>
	      <tr>
	        <td bgcolor="#FFFFFF" class="style28" ><span class="style40">LOTE:</span></td>
	        <td colspan="2" bgcolor="#FFFFFF" ><div align="center" class="style30">
              <div align="left">
                <input name="txtf_lote" type="text" size="50" onkeypress="return handleEnter(this, event)" value="<%=lote2_jv%>"/>
                </div>
	        </div></td>
	        </tr>
	      <tr>
	        <td bgcolor="#FFFFFF" class="style28" ><span class="style40">CADUCIDAD:</span></td>
	        <td colspan="2" bgcolor="#FFFFFF" ><span class="style30">
	         <input name="txtf_t1" type="text" onKeyPress="return handleEnter(this, event)" onKeyUp="putDays()" value="<%//=lada_jv%>" size="1" maxlength="2"/>
			        <strong>                    /</strong>
                    <input name="txtf_t2" type="text" size="1" maxlength="2" onKeyUp="putMonthss()" value="<%//=t1_jv%>" onKeyPress="return handleEnter(this, event)"/>
                    <strong>                    /</strong>
                    <input name="txtf_t3" type="text" size="2" maxlength="4" onKeyUp="putYearss(this.form)" value="<%//=t2_jv%>" onKeyPress="return handleEnter(this, event)"/><br />DD &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AAAA
			   <!--input name="txtf_cad" type="text" size="10" onkeypress="return handleEnter(this, event)" value="<%=cadu_jv%>" onclick="scwShow(scwID('txtf_cad'),event);"/-->
	        </span></td>
	        </tr>
	      <tr>
	        <td bgcolor="#FFFFFF" class="style40" >CAJAS:</td>
	        <td colspan="2" bgcolor="#FFFFFF" ><span class="style30">
	          <input name="txtf_exi" type="text" size="10" value="<%=exi_jv%>" onkeypress="return handleEnter(this, event)"  />
	        </span></td>
	        </tr>
	      <tr>
	        <td bgcolor="#FFFFFF" class="style28" ><span class="style40">NO.PIEZAS POR CAJA:</span></td>
	        <td colspan="2" bgcolor="#FFFFFF" ><span class="style30">
	          <input name="txtf_pza" type="text" size="10" value="<%=pzas_jv%>" onkeypress="return handleEnter(this, event)" />
	        </span></td>
	        </tr>
	      <tr>
	        <td bgcolor="#FFFFFF" class="style28" ><span class="style40">RESTO:</span></td>
	        <td colspan="2" bgcolor="#FFFFFF" ><input name="txtf_rto" type="text"  onkeypress="return handleEnter(this, event)" value="<%=resto_jv%>" size="10"/></td>
	        </tr>
	      
	      <tr>
	        <td><label></label></td>
	        <td width="60"><div align="center" class="style30">
	          <input name="Submit" type="submit" class="style5" value="Capturar" onclick="positionCap()"/>
	        </div></td>
		      <td width="240"><div align="center" class="style30"></div></td>
    </tr>
	      <tr>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><label>&nbsp;</label></td>
            <td>&nbsp;</td>
            <td>
			<%
			  if(flag==1)
			  {
			%>
			<input name="Submit" type="submit" class="style5" value="R" />
			<%
			 }
			%>
			&nbsp;</td>
	      
		  </tr>
	      
	      
	      <tr>
	        <td background="aa.gif" class="style30"><div align="center" class="style28"><strong>C&Oacute;DIGO DE BARRAS: </strong></div></td>
	        <td background="aa.gif"><div align="center" class="style28"><strong>CLAVE</strong></div></td>
              <td background="aa.gif"><div align="center" class="style28"><strong>DESCRIPCIÓN</strong></div></td>
               <td background="aa.gif"><div align="center" class="style28"><strong>MARCA</strong></div></td>
               <td background="aa.gif"><div align="center" class="style28"><strong>UM</strong></div></td>
        <td background="aa.gif"><div align="center" class="style28"><strong>LOTE</strong></div></td>
            <td background="aa.gif"><div align="center" class="style28"><strong>CADUCIDAD</strong></div></td>
            <td background="aa.gif"><div align="center" class="style28"><strong>CAJAS</strong></div></td>
			<td background="aa.gif"><div align="center" class="style28"><strong>NO.PIEZAS&nbsp;</strong></div></td>
			<td background="aa.gif"><div align="center" class="style28"><strong>RESTO</strong></div></td>
			<td background="aa.gif"><span class="style28"><strong>EXISTENCIA</strong></span></td>
			<td background="aa.gif">&nbsp;</td>
			<td background="aa.gif"><div align="center"><strong>&nbsp;</strong></div></td>
          </tr>
	      <%
  Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/issemym");
  Statement stmt__001 = conn__001.createStatement();
  Statement stmt__002 = conn__001.createStatement();
  Statement stmt__003 = conn__001.createStatement();
  ResultSet rset__001=null;
  ResultSet rset__002=null;
  ResultSet rset__003=null;  
  //folgnk_jv=request.getParameter("txtf_1");
  if(fol2_vi_jv!=null){
  rset__001=stmt__001.executeQuery("select cb, cve_med,descri,lote,cadu,cant,lab,pais,reg_san,id_rem_prov, marca,um from datos_prov_1_0807 where folio_gnk='"+(folgnk_jv)+"' order by (cve_med+0)");
  System.out.print("entro al if"+fol2_vi_jv+folgnk_jv);}
  else{
  rset__001=stmt__001.executeQuery("select cb, cve_med,descri,lote,cadu,cant,lab,pais,reg_san,id_rem_prov,marca,um from datos_prov_1_0807 where folio_gnk='"+folgnk_jv+"' order by (cve_med+0)");
  System.out.print("entro al else"+fol2_vi_jv);
  }
  
  //out.print("clave"+folgnk_jv);
   while(rset__001.next()) 
                  { 
	eliminar_jv=rset__001.getString("id_rem_prov");
	
	rset__002=stmt__002.executeQuery("select cb, cve_med,descri,lote,cadu,cant,lab,pais,reg_san,id_rem_prov,marca,folio_gnk from datos_prov_1_0807 where id_rem_prov='"+eliminar_jv+"'");
	//out.print(""+eliminar_jv);
	while(rset__002.next()) 
                  {
				codigomed_jv=rset__002.getString("cb");
				clavemed_jv=rset__002.getString("cve_med");
				lotemed_jv=rset__002.getString("lote");
				cadumed_jv=rset__002.getString("cadu");
				cajasmed_jv=rset__002.getString("cant");
				piezasmed_jv=rset__002.getString("lab");
				restomed_jv=rset__002.getString("pais");
				cantmed_jv=rset__002.getString("reg_san");
				marcamed_jv=rset__002.getString("marca");
				foliomed_jv=rset__002.getString("folio_gnk");
				  }
				 
	rset__003=stmt__003.executeQuery("select id_cap_inv from datos_inv_cod where folio_gnk='"+foliomed_jv+"' and marca='"+marcamed_jv+"'  and cant='"+cantmed_jv+"' and resto='"+restomed_jv+"' and piezas='"+piezasmed_jv+"' and cajas='"+cajasmed_jv+"' and cadu='"+cadumed_jv+"' and lote='"+lotemed_jv+"'  and clave='"+clavemed_jv+"' and cod_bar='"+codigomed_jv+"' ");
				  while(rset__003.next()) 
                  {
		 id_datos_invcod=rset__003.getString("id_cap_inv");
				  }
				  //out.print("<--datos-->"+id_datos_invcod);
				 // exi_jv=rset__001.getString("cant");
				  //DecimalFormat df1 = new DecimalFormat("####.000"); 
				//df1.format(exi_jv);
	

  %>  
	      <tr>
	        <td><div align="center" class="style1 style38">&nbsp;<%=rset__001.getString("cb") %></div></td>
	        <td><div align="center" class="style1 style38"><%=rset__001.getString("cve_med") %></div></td>
		      <td><div align="center" class="style1 style38"><%=rset__001.getString("descri") %></div></td>
		      <td><div align="center" class="style1 style38"><%=rset__001.getString("marca") %></div></td>
		      <td><div align="center" class="style1 style38"><%=rset__001.getString("um") %></div></td>     
    	      <td><div align="center" class="style1 style38"><%=rset__001.getString("lote") %></div></td>
            <td><div align="center" class="style1 style38"><%=rset__001.getString("cadu") %></div></td>
           
    <td><div align="center" class="style1 style38">
      <p><%=rset__001.getString("cant")%>
          <% 
	  //eliminar_jv=rset__001.getString("id_rem_prov");
	  //out.print("valor 1"+eliminar_jv);
	  %>
          <input name="hdn_<%=eliminar_jv%>" type="hidden" class="style32" id="hdn_<%=eliminar_jv%>" value="0"/>
      </p>

    </div></td>
	
	    <td width="73"><div align="center" class="style1 style38">
	      <%=rset__001.getString("lab")%>
	    </div></td>
		  			<td class="style5"><div align="center" class="style38"><%=rset__001.getString("pais")%></div></td>
		  			<td class="style5"><div align="center" class="style38"><%=rset__001.getString("reg_san")%></div></td>
					<%
	
%>
		  			<td><input  type="button" id="btn_<%=eliminar_jv%>2" name="btn_<%=eliminar_jv%>2" class="subHeader" value="Eliminar" onclick='location.href="eliminar_prov.jsp?fol_gnk_vi=<%=folgnk_jv%>&id_datos=<%=id_datos_invcod%>&id_prov=<%=eliminar_jv%>&fol_vi=<%=fol2_jv!=""?fol2_jv:fol2_vi_jv%>&prove_vi=<%=provee_jv!=""?provee_jv:provee_vi_jv%>&recib_vi=<%=recibe_jv!=""?recibe_jv:recibe_vi_jv%>&entreg_vi=<%=entrega_jv!=""?entrega_jv:entrega_vi_jv%>&captu_vi=<%=capturar_jv%>&ubic_vi=<%=ubic_jv!=""?ubic_jv:ubic_vi_jv%>&orig_vi=<%=origen_jv!=""?origen_jv:origen_vi_jv%>&obser_vi=<%=obser_jv!=""?obser_jv:obser_vi_jv%>&boolDocRem_vi=<%=boolDocRem_jv!=""?boolDocRem_jv:boolDocRem_vi_jv%>"'/></td>
		  			<td><input  type="button" id="btn_<%=eliminar_jv%>" name="btn_<%=eliminar_jv%>" class="subHeader" value="Modificar" onclick='location.href="modifica_prov.jsp?fol_gnk_vi=<%=folgnk_jv%>&id_datos=<%=id_datos_invcod%>&id_prov=<%=eliminar_jv%>&fol_vi=<%=fol2_jv!=""?fol2_jv:fol2_vi_jv%>&prove_vi=<%=provee_jv!=""?provee_jv:provee_vi_jv%>&recib_vi=<%=recibe_jv!=""?recibe_jv:recibe_vi_jv%>&entreg_vi=<%=entrega_jv!=""?entrega_jv:entrega_vi_jv%>&captu_vi=<%=capturar_jv%>&ubic_vi=<%=ubic_jv!=""?ubic_jv:ubic_vi_jv%>&orig_vi=<%=origen_jv!=""?origen_jv:origen_vi_jv%>&obser_vi=<%=obser_jv!=""?obser_jv:obser_vi_jv%>&boolDocRem_vi=<%=boolDocRem_jv!=""?boolDocRem_jv:boolDocRem_vi_jv%>"'/></td>
          <%
  
    }
  %>
	        </tr>
	      
	      
	      <!--tr>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
            <td><input name="Submit" type="submit" class="subHeader" value="AGREGAR LOTE Y CODIGO DE BARRAS" /></td>
		    <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
		    <td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
          </tr--> 
	      
	      <tr>
	        <td height="43" bordercolor="">&nbsp;</td>
	        <td bordercolor="">&nbsp;</td>
	          <td>&nbsp;</td>
	          <td>&nbsp;</td>
	          <td>&nbsp;</td>
            <td>&nbsp;</td>
		    <td>&nbsp;</td>
            <td>&nbsp;</td>
			<td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><input type="submit" name="Submit" class="subHeader" value="Imprimir" />
              <input type="hidden" name="altaok" value="1"/>	</td>
            </tr>			
	      </table>
	    </div>
	  <div align="center"></div>
    <p>
<br/>
      <br />
    </p>	
    </form>    </td>
	  
	  
    <td width="4">&nbsp;</td>
        <td width="51" valign="top"><br />
		&nbsp;<br />
		<table border="0" cellspacing="0" cellpadding="0" width="51">
			<tr>
			<td colspan="3" class="subHeader" align="center">&nbsp;</td>
			</tr>

			<tr>
			<td width="40">&nbsp;</td>
			<td width="20" id="sidebar" class="smallText"><br />
			<p><br />
			<br />
			<a href="javascript:;"></a></p>

			<p><br />
			</p>
			 <br />
			&nbsp;<br />
			&nbsp;<br />			</td>
			<td width="130">&nbsp;</td>
			</tr>
	</table>	</td>
	    <td width="6">&nbsp;</td>
    <td width="6">&nbsp;</td>
  </tr>
  <tr>
    <td width="36">&nbsp;</td>
    <td width="14">&nbsp;</td>
    <td width="54">&nbsp;</td>
    <td width="947">&nbsp;</td>
    <td width="4">&nbsp;</td>
    <td width="51">&nbsp;</td>
	<td width="6">&nbsp;</td>
	<td width="6">&nbsp;</td>
  </tr>
</table>
<%
    }
      else
         if (altaOK == 1 )
            { 
			 folgnk_jv=request.getParameter("txtf_1");
	 date_jv=request.getParameter("txtf_date");
     folrem_jv=request.getParameter("txtf_fol2");
     provee_jv=request.getParameter("txtf_4");
	 recibe_jv=request.getParameter("txtf_5");
	 entrega_jv=request.getParameter("txtf_8");
	 capturar_jv=request.getParameter("txtf_10");
	 ubic_jv=request.getParameter("txtf_6");
	origen_jv=request.getParameter("txtf_7");
	obser_jv=request.getParameter("txa_1");
	boolDocRem_jv=request.getParameter("txtf_coin");
			//flag=4;
			//JOptionPane.showInputDialog("The value of flag is"+num1);
               //clvLinea=request.getParameter("clvLinea");Show the other part
 %>
 <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#3366CC">
    <td colspan="3" rowspan="2" bgcolor="#ffffff"><div align="center"></div>      </td>
    <td height="63" colspan="3" align="center" valign="bottom" nowrap="nowrap" bgcolor="#ffffff" id="logo"><div align="center" class="style29">
      <p><strong><img src="gnk_toluca.jpg" alt="Header image"  border="0" /></strong></p>
     
    </div></td>
    <td width="812" bgcolor="#ffffff"><div align="center"><img src="issemym1.jpg" width="343" height="91" /></div></td>
    <td width="144" bgcolor="#ffffff">&nbsp;</td>
  </tr>

  <tr bgcolor="#3366CC">
    <td height="22" colspan="3" align="center" valign="middle" background="fondo.jpg" id="tagline"><div align="justify" class="style29">
      <div align="center">
        <p class="style39" ><br />
        </p>
        </div>
    </div></td>
	<td width="812" background="fondo.jpg"><p align="center" class="quote" >ACUSE DE RECEPCI&Oacute;N DE PROVEEDORES </p>
    <p></p></td>
	<td width="144" background="fondo.jpg">&nbsp;</td>
  </tr>

  <tr>
    <td colspan="8" bgcolor="#003366"></td>
  </tr>

  <tr>
  	<td height="25" colspan="8" bgcolor="#ffffff" id="dateformat">&nbsp;&nbsp;<script language="JavaScript" type="text/javascript">
      //document.write(TODAY);	</script>  	
  	<a href="menu_mainAR.jsp" >Regresar a Menú</a></td>
  </tr>
 <tr>
    <td colspan="8" bgcolor="#003366"></td>
  </tr>
</table>
<td colspan="2" valign="top">
	  <form action="captura_prov.jsp" method="post" name="form" onSubmit="javascript:return ValidateFar(this)">
	   
	    <table width="813" border="0">
      <tr>
        <td width="156"><div align="left" class="style7 style24">FOLIO GNK:</div></td>
        <td width="497"><span class="style24 style30">
          <label>
            <strong><%=folgnk_jv%>        </strong><strong>FECHA :</strong>
            <strong><%= day %>/<%= month %>/<%= year %></strong></label>
        </span></td>
        <td width="99"><label>
           
          <!--onSubmit="javascript:return ValidateFormCant(this)"-->
        </label></td>
      </tr>
      <tr>
        <td><div align="left" class="style7 style24">FOLIO DE LA REMISION:</div></td>
        <td class="style5 style24 style30"><%=folrem_jv%> </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style7 style24">PROVEEDOR:</td>
        <td><span class="style24 style30">
          <label class="style5">
           <%=provee_jv%></label>
        <label></label>
        </span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style7 style24">RECIBIDO POR: </td>
        <td><span class="style5 style24 style30"><%=session.getAttribute("username")%>
            <label></label>
        </span>
          <span class="style24 style30">
          <label></label>
        </span></td>
        <td>&nbsp;</td>
      </tr>
	  
	  <tr>
        <td class="style7 style24">ENTREGADO POR: </td>
        <td><span class="style5 style24 style30"><%=entrega_jv%>
            <label></label>
        </span>
          <span class="style24 style30">
          <label></label>
        </span></td>
        <td>&nbsp;</td>
      </tr>
	  
	  	  
	  <tr>
        <td class="style7 style24">UBICACIÓN: </td>
        <td><span class="style5 style24 style30"><%=ubic_jv%>
            <label></label>
        </span>
          <span class="style24 style30">
          <label></label>
        </span></td>
        <td>&nbsp;</td>
      </tr>
	  
	  <tr>
        <td class="style7 style24">ORIGEN: </td>
        <td><span class="style5 style24 style30"><%=origen_jv%>
            <label></label>
        </span>
          <span class="style24 style30">
          <label></label>
        </span></td>
        <td>&nbsp;</td>
      </tr>
	  
	  <tr>
        <td class="style7 style24">OBSERVACIONES: </td>
        <td><span class="style5 style24 style30"><%=obser_jv%>
            <label></label>
        </span>
          <span class="style24 style30">
          <label></label>
        </span></td>
        <td>&nbsp;</td>
      </tr>
    </table>
        <table width="1182" border="1">
	
  <tr>
    <td colspan="9"><div align="center" class="style35">DATOS DEL MEDICAMENTO REGISTRADOS POR GNKL </div></td>
    </tr>
  <tr>
    <td colspan="9"><div align="right"><span class="style24"><span class="style30"></span></span>
      
    </div></td>
  </tr>
  
  
  <tr>
    <td width="78"><div align="center" class="style24 style30"><strong>CLAVE</strong></div></td>
    
    <td width="143"><div align="center"><span class="style30 style24"><strong>C&Oacute;DIGO DE BARRAS</strong></span> </div></td>
    <td width="143"><div align="center"><span class="style30 style24"><strong>MARCA</strong></span> </div></td>
    <td width="143"><div align="center" class="style24 style30"><strong>LOTE</strong></div></td>
    <td width="109"><div align="center" class="style24 style30"><strong>CADUCIDAD</strong></div></td>
    
    <td width="127"><div align="center" class="style24 style30"><strong>CAJAS</strong></div></td>
	<td width="127"><div align="center" class="style24 style30"><strong>NO.PIEZAS</strong></div></td>
	<td width="127"><div align="center" class="style24 style30"><strong>RESTO</strong></div></td>
	<td width="127"><div align="center" class="style24 style30"><strong>EXISTENCIA</strong></div></td>
  </tr>
  <%
  Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/issemym");
  Statement stmt__001 = conn__001.createStatement();
  //out.print("clave"+folgnk_jv);
  ResultSet rset__001=stmt__001.executeQuery("select cb, cve_med,lote,cadu,cant,lab,pais,reg_san,descri,marca from datos_prov_1_0807 where folio_gnk='"+folgnk_jv+"' order BY cve_med");
 
   while(rset__001.next()) 
                  { 
  %>  
  <tr>
    <td><div align="center" class="style35"><a href="http://192.168.1.180:8080/issemym/eti2_cb.jsp?cb=<%=rset__001.getString("cb")%>&id_cve=<%=rset__001.getString("cve_med")%>&id_lote=<%=rset__001.getString("lote") %>&id_cadu=<%=rset__001.getString("cadu") %>&id_nocajas=<%=rset__001.getString("cant") %>&id_descri=<%=rset__001.getString("descri") %>&id_name=<%=folgnk_jv%>&id_resto=<%=rset__001.getString("pais")%>&id_alta=1"><%=rset__001.getString("cve_med") %></a></div></td>
    <td><div align="center" class="style35"><%=rset__001.getString("cb") %></div></td>
    <td><div align="center" class="style35"><%=rset__001.getString("marca") %></div></td>
    <td><div align="center" class="style35"><%=rset__001.getString("lote") %></div></td>
    <td><div align="center" class="style35"><%=rset__001.getString("cadu") %></div></td>
    <td><div align="center" class="style35"><%=rset__001.getString("cant") %></div></td>
	<td><div align="center" class="style35"><%=rset__001.getString("lab") %></div></td>	
	<td><div align="center" class="style35"><%=rset__001.getString("pais") %></div></td>
	<td><div align="center" class="style35"><%=rset__001.getString("reg_san") %></div></td>
	
  <%
  
    }
  %>
  </tr>
  <tr>
        <td class="style35">&nbsp; </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
  </tr>              
  </table>
  <br/>
  <div class="style35">COINCIDE EL DOCUMENTO CON LA REMISION: <%=boolDocRem_jv%></div>
  <span class="style24 style30"><br />
  <strong>&quot;<strong>RECIBIDO POR CUENTA DE <%=origen_jv%> PARA CUSTOD&Iacute;A, CONTROL Y DISTRIBUCI&Oacute;N.<br/>
  LA MERCANC&Iacute;A ENLISTADA ES PROPIEDAD DE <%=origen_jv%>&quot;</strong></strong><br />
  </span><span class="style24"><br />
  </span>
  <table>
  <tr>
    <td colspan="2" class="style24"><div align="center">________________________________</div></td>
    <td colspan="2" class="style24">__________________________________</td>	
    </tr>
  
  <tr>
    <td colspan="2" class="style24"><div align="center" class="style5"><span class="style7">FIRMA DE RECIBIDO </span><br />
          <span class="style7">Y PERSONA QUE GENERÓ ESTE DOCUMENTO <br /><%=recibe_jv%></span> </div> </td>
    <td colspan="2" class="style24"><div align="center" class="style7">FIRMA DE QUIEN ENTREGA<br />
          <%=entrega_jv%></div></td>
    </tr>
	
  
  <tr>
    <td class="style24">&nbsp;</td>
    <td class="style24">&nbsp;</td>
    <td class="style24">&nbsp;</td>
    <td class="style24"><p>&nbsp;
      </p>
      <p>
        <input type="button" name="Submit3" class="subHeader" value="Imprimir" onclick="window.print();"/>
        <input type="hidden" name="altaok" value="1"/>	
        </p></td>
    </tr>
  <tr>
    <td class="style24">&nbsp;</td>
    <td class="style24">&nbsp;</td>
    <td class="style24">&nbsp;</td>
    <td class="style24">&nbsp;</td>
  </tr>
  <tr>
    <td class="style24">&nbsp;</td>
    <td class="style24">&nbsp;</td>
    <td class="style24">&nbsp;</td>
    <td class="style24">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4" class="style24"><div align="center"><a href="captura_prov-now09Jul09_i.jsp?flag_id=0" class="style38">REALIZAR OTRA CAPTURA ?</a></div></td>
    </tr>
  <tr>
    <td class="style24">&nbsp;</td>
    <td class="style24">&nbsp;</td>
    <td class="style24">&nbsp;</td>
    <td class="style24">&nbsp;</td>
  </tr>
  </table>
  <p>
    <%

    }
%>
</p>
  <p>&nbsp;  </p>
</body>
</html>
