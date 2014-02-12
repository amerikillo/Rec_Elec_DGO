<%@page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
        import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date"  import="java.text.NumberFormat" import="java.util.Locale" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% Class.forName("org.gjt.mm.mysql.Driver");
     int tam=0,tam2=0,x1=0;
     String cad1[]=new String[1000];  //array for show clients 
     String arr[]= new String[5000];     //array for the 
         String lotes[]= new String[5000];
         String cad[]= new String[5000];
         //objetos necesarios para crear la conexión
          Connection conn_1 =null;
          //Connection conn_2 =null;
      Statement stmt_1 = null;
          Statement stmt_carga = null;
           //Statement stmt_2 = null;
      ResultSet rset_1 = null;
          Connection conn_2 =null;
      Statement stmt_2 = null;
          Statement stmt_3 = null;
      ResultSet rset_2 = null;
          Statement stmt_4 = null;
          Statement stmt_5 = null;
          Statement stmt_55 = null;
          Statement stmt_555 = null;
          ResultSet rset_clave = null;
          Statement stmt_clave = null;
          Statement stmt_6 = null;
          Statement stmt_6carga = null;
      ResultSet rset_4 = null;
          ResultSet rset_5 = null;
          ResultSet rset_55 = null;
          Statement stmt_suma = null;
      ResultSet rset_suma = null;
          Statement stmt_ruta = null;
      ResultSet rset_ruta = null;
          Statement stmt_ruta2 = null;
      ResultSet rset_ruta2 = null;
	  
	  
	  
	  ResultSet rset_4s = null;
	  ResultSet rset_55s = null;
	  Statement stmt_4s = null;
	  Statement stmt_555s = null;
	  Statement stmt_6s = null;
	  Statement stmt_6cargas = null;
	  
	  boolean continua = false;
	  
	  
         //----------
	 
         lotes[0]="";
         cad[0]="";
     String name="";
     String fecha_modi="";
     String service_jv="";
         int pos=0;
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
         String clave="",origen="";

     String juris_jv="";
         String unis_jv="";
     String cs_jv="";
         String lotes2_jv="";
	 
         String check=request.getParameter("txtf_5");
         int c=0;
	
         mail[0]="lasalle_tur@yahoo.com";
     String val="h";
         String user="h";
         //variables para mostrar en campos
            String ruta= "";
                String ruta2= "";
                String ruta22= "";
                String ruta_jv= "";
                String clave_jv= "";
                String desc_jv=  "";
            String lote_jv= "";
                String cadu_jv= "";
                String exis_jv= "";
                String costo_jv= "";
                String encar3_jv="";
                String examin="";
				String usuario="";
				usuario=request.getParameter("usuario");
				//out.print(usuario);
                String cant2="",clave2="",descrip2="",lote2="",caducidad2="",origen2="",suma2="",suma21="",suma222="",sumanew="",clave22="",encontrado="",cantp="",cvtt="";
int cont=1,cont6=0,cant22=0,mtotal=0,suma22=0,total2=0,total22=0,total222=0,mtotal2=0,totalnew=0,cont62=0,rutan=0,rutan1=0,ban=0,cantp2=0,totalp=0;

try{
        altaOK=Integer.parseInt(request.getParameter("altaok"));   
       }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
	   
   try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}
	
if(but.equals("Cargar"))
{
          conn_2 = DriverManager.getConnection("jdbc:mysql://localhost/r_d");
           stmt_2 = conn_2.createStatement();
           stmt_3 = conn_2.createStatement();
           stmt_carga = conn_2.createStatement();
           stmt_4 = conn_2.createStatement();
           stmt_5 = conn_2.createStatement();
           stmt_55 = conn_2.createStatement();
           stmt_555 = conn_2.createStatement();
           stmt_6 = conn_2.createStatement();
           stmt_6carga = conn_2.createStatement();
           stmt_ruta = conn_2.createStatement();
           stmt_ruta2 = conn_2.createStatement();
           stmt_suma = conn_2.createStatement();
           stmt_clave = conn_2.createStatement();
		   
		   stmt_4s = conn_2.createStatement();
	  stmt_555s = conn_2.createStatement();
	  stmt_6s = conn_2.createStatement();
	  stmt_6cargas = conn_2.createStatement();
	  
        ruta="C://";
        //ruta="C://archivos r_d//";
        ruta_jv= request.getParameter("exa");
        ruta22= request.getParameter("txtf_ced");
		
       
	    ruta2=ruta+ruta22;
		
        //ruta2=ruta+ruta_jv;
        //out.print("ruta::"+);
//out.print(""+examinar);
	 stmt_ruta.execute("delete from  inventario_carga2 ");
	stmt_ruta.execute("delete from  inventario_carga ");
	rset_clave=stmt_clave.executeQuery("select archivo  from receta_carga_archivos where archivo ='"+ruta22+"';");
							
						if (rset_clave.next()){
						%>
							<script>
   							 alert("El archivo ya existe no se puede cargar el archivo");
							</script>
						<%
							continua = false;
						}else{
							continua = true;
							
						}
	
if(ruta_jv.equals("") || !continua )
                   {
%>
<script>
    alert("Ingrese la ruta correcta del archivo");
</script>
<%
     }
        else
         {
		 					
									
	
 						
		 					 //ingmja22
							
							 stmt_ruta.execute("insert into receta_carga_archivos values ('"+ruta22+"','sysdate()')");
							 stmt_ruta.execute("update inventario set origen=LTRIM(origen)");
							 stmt_ruta.execute("update inventario set cant=LTRIM(cant);");
							 stmt_ruta.execute("update inventario set clave=LTRIM(clave);");
							
 //stmt_2.execute("DELETE FROM SURTIR_ISSEMYM");
         //out.print(""+ruta2);	
         java.util.Calendar fecha = java.util.Calendar.getInstance();
         String fecha_max=(fecha.get(java.util.Calendar.DATE) + "" + (fecha.get(java.util.Calendar.MONTH)+1)    + ""  + fecha.get(java.util.Calendar.YEAR)+"_"+fecha.get(java.util.Calendar.HOUR_OF_DAY)+fecha.get(java.util.Calendar.MINUTE)+fecha.get(java.util.Calendar.SECOND));
         fecha_modi=(fecha.get(java.util.Calendar.YEAR) + "-" + (fecha.get(java.util.Calendar.MONTH)+1)    + "-"  + fecha.get(java.util.Calendar.DATE));
         String respaldo_inventario="create table inventario_"+fecha_max+"(select * from inventario)";
         //out.println(respaldo_inventario);
         stmt_carga.execute(respaldo_inventario);	
			
			
			
 stmt_carga.execute("load data local infile '"+ruta2+"' into table inventario_carga FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';");
		
		
 /*rset_1=stmt_1.executeQuery("select origen from inventario_carga");
		
 while (rset_1.next()){
 */
 //origen=rset_1.getString("origen");
 //origen2=origen.replace(" ","");
 //stmt_ruta.execute("update inventario_carga set origen='1' where origen='    1' ");
 //stmt_ruta.execute("update inventario_carga set origen='2' where origen='    2' ");
		
		
 rset_clave=stmt_clave.executeQuery("select clave,origen from inventario_carga group by clave");
 while (rset_clave.next()){
		
 //Actualizar clave-----------------------------------------------------------------------------------
 //String sTexto="", clave_str2="";
 String clave_str=rset_clave.getString("clave");
 //out.print("*" + clave_str + "*");
 String clave_str2=clave_str.replace(" ","");
 //out.print("*" + clave_str + "*");
 //long clave_long=Long.parseLong(clave_str2);
 //String clave_str_1=String.valueOf(clave_long);
 //out.print("*" + clave_str + "*" + clave_str_1 + "*");
 stmt_ruta.execute("update inventario_carga set clave='"+clave_str2+"' where clave='"+clave_str+"';");
 //Actualizar clave-----------------------------------------------------------------------------------
		
		
		
 //Actualizar origen-----------------------------------------------------------------------------------
 //String sTexto="", clave_str2="";
 String origen_str=rset_clave.getString("origen");
 //out.print("*" + clave_str + "*");
 String origen_str2=origen_str.replace(" ","");
 //out.print("*" + clave_str + "*");
 long origen_long=Long.parseLong(origen_str2);
 String origen_str_1=String.valueOf(origen_long);
 //out.print("*" + origen_str + "*" + origen_str_1 + "*");
 stmt_ruta.execute("update inventario_carga set origen='"+origen_str_1+"' where origen='"+origen_str+"';");
 //Actualizar origen-----------------------------------------------------------------------------------
 }
		
		
 rset_2=stmt_3.executeQuery("select clave,origen,descrip,lote,caducidad,sum(cant),origen from inventario_carga group by (clave),origen;");
		
                 while(rset_2.next())
                 {
                 clave=rset_2.getString("clave");
                 //out.print("*" + clave + "*");
                 origen=rset_2.getString("origen");
                 arr[rutan1]=rset_2.getString("clave");
                                         rutan1++;
				
         rset_ruta=stmt_ruta.executeQuery("select clave,cant from pasti_ampu where clave='"+clave+"' group by clave;");
                                 while(rset_ruta.next())
                                         {/*
                         cad1[rutan]=rset_ruta.getString("clave");
                                         rutan++;*/
                                         clave22=rset_ruta.getString("clave");
                                         cont6++;
                                         cantp=rset_ruta.getString("cant");
                                         cantp2=Integer.parseInt(cantp);
                                         //out.print("----"+cont6+"<-->"+clave22);
                                         /*
                                         if(clave.equals(clave22))
                                         {
                                         out.print("----"+cont6+"<..>"+clave+"="+clave22);
                                         }else{
                                         */
                                         }
						
						
                                 if(clave.equals(clave22))
                 {
				
				
				
				
				
                 rset_4=stmt_4.executeQuery("select clave,descrip,lote,caducidad,sum(cant),origen from inventario_carga where clave='"+clave+"' and origen='"+origen+"' group by clave;");
				
                                                 while(rset_4.next())
                                                 {
                                                 clave2=rset_2.getString("clave");
                                                 descrip2=rset_2.getString("descrip");
                                                 lote2=rset_2.getString("lote");
                                                 caducidad2=rset_2.getString("caducidad");
                                                 origen2=rset_2.getString("origen");
                                                 suma2=rset_2.getString("sum(cant)");
                                                 total2=Integer.parseInt(suma2);
                                                 }
                                                 totalp=total2*cantp2;
								
                                         stmt_555.execute("delete from inventario_carga where clave='"+clave+"' and origen='"+origen+"';");
							
								
								
                                                 stmt_6.execute("insert into inventario_carga2 values ('"+clave2+"','"+descrip2+"','"+lote2+"','"+caducidad2+"','"+total2+"','"+origen2+"',1,'"+cantp2+"','"+totalp+"')");
								
                                         stmt_555.execute("delete from inventario_carga2 where clave='"+clave+"' and origen='"+origen+"';");
                                                 rset_55=stmt_555.executeQuery("select clave,descrip,lote,caducidad,sum(cant),origen from inventario where clave='"+clave+"' and origen='"+origen+"' group by (clave);");
                                                 while(rset_55.next())
                                                 {
                                                 sumanew=rset_55.getString("sum(cant)");
                                                 totalnew=Integer.parseInt(sumanew);
                                                 }
                                                 //out.print("--c--"+clave+"--t--"+totalnew);
                                                 mtotal2=totalnew+totalp;
								
								
                                         stmt_555.execute("delete from inventario where clave='"+clave+"' and origen='"+origen+"';");
							
                                                 stmt_6carga.execute("insert into inventario values ('"+clave2+"','"+descrip2+"','"+lote2+"','"+caducidad2+"','"+mtotal2+"','"+origen2+"')");
								
								stmt_6carga.execute("insert into modificacion values('"+clave2+"','"+descrip2+"','"+lote2+"','"+caducidad2+"',"+totalnew+",'"+origen2+"',"+mtotal2+",'"+mtotal2+"','"+fecha_modi+"','"+usuario+"','INCREMENTO CARGA INVENTARIO','',current_timestamp,'-','-','-','-','-','-',0)");
					
				
				
				
				
				
			
                 }else{
				
                 rset_4s=stmt_4s.executeQuery("select clave,descrip,lote,caducidad,sum(cant),origen from inventario_carga where clave='"+clave+"' and origen='"+origen+"' group by clave;");
				
                                                 while(rset_4s.next())
                                                 {
                                                 clave2=rset_2.getString("clave");
                                                 descrip2=rset_2.getString("descrip");
                                                 lote2=rset_2.getString("lote");
                                                 caducidad2=rset_2.getString("caducidad");
                                                 origen2=rset_2.getString("origen");
                                                 suma2=rset_2.getString("sum(cant)");
                                                 total2=Integer.parseInt(suma2);
                                                 }
								
                                                 stmt_555s.execute("delete from inventario_carga where clave='"+clave+"' and origen='"+origen+"';");
							
							
                         stmt_6s.execute("insert into inventario_carga2 values ('"+clave2+"','"+descrip2+"','"+lote2+"','"+caducidad2+"','"+total2+"','"+origen2+"',0,1,'"+total2+"')");
				
                 stmt_555s.execute("delete from inventario_carga where clave='"+clave+"' and origen='"+origen+"';");
							
				
                 rset_55s=stmt_555s.executeQuery("select clave,descrip,lote,caducidad,sum(cant),origen from inventario where clave='"+clave+"' and origen='"+origen+"' group by (clave);");
				 totalnew=0;
                                                 while(rset_55s.next())
                                                 {
                                                 sumanew=rset_55s.getString("sum(cant)");
												 cvtt=rset_55s.getString("clave");
                                                 totalnew=Integer.parseInt(sumanew);
                                                 }
												// out.print("-->"+clave+"--"+totalnew+"--cv--"+cvtt);
                                         stmt_555s.execute("delete from inventario where clave='"+clave+"' and origen='"+origen+"';");	
                                                 mtotal2=totalnew+total2;
                                                 stmt_6carga.execute("insert into inventario values ('"+clave2+"','"+descrip2+"','"+lote2+"','"+caducidad2+"','"+mtotal2+"','"+origen2+"')");
                                                 stmt_6cargas.execute("insert into modificacion values('"+clave2+"','"+descrip2+"','"+lote2+"','"+caducidad2+"',"+totalnew+",'"+origen2+"',"+total2+",'"+mtotal2+"','"+fecha_modi+"','"+usuario+"','INCREMENTO CARGA INVENTARIO','',current_timestamp,'-','-','-','-','-','-',0)");
				
				
				
			
                 }
						totalnew=0;
						
                                         }
				
				
				
				
			
				
				
				
								
								
							 stmt_ruta.execute("update inventario set origen=LTRIM(origen)");
							 stmt_ruta.execute("update inventario set cant=LTRIM(cant);");
							 stmt_ruta.execute("update inventario set clave=LTRIM(clave);");
							
							
%>
<script>
    alert('DATOS GUARDADOS');
</script>
<%
         }

}	  


	 
	
%>



<html xmlns="http://www.w3.org/1999/xhtml">
    <!-- DW6 -->
    <head>
        <!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
        <title>:: SISTEMA CARGA DE ABASTOS ::</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" href="mm_travel2.css" type="text/css" />
        <script language="JavaScript" type="text/javascript">
            //--------------- LOCALIZEABLE GLOBALS ---------------
            var d=new Date();
            var monthname=new Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septimbre","Octubre","Noviembre","Diciembre");
            //Ensure correct for language. English is "January 1, 2004"
            var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
            //---------------   END LOCALIZEABLE   ---------------

            function examinar(fic) {
                var fic2;
                fic = fic.split('\\');
                //alert(fic[fic.length-1]);
                fic2=fic[fic.length-1];
                //alert(fic2);
                form.txtf_ced.value=fic2;
            }

        </script>
        <script language="javascript" src="list02.js"></script>
        <style type="text/css">
            <!--
            .style1 {
                color: #FFFFFF;
                font-weight: bold;
            }
            .style2 {color: #FF0000}
            test {
                font-size: x-large;
            }
            #tagline div {
                font-size: 36px;
            }
            #tagline div {
                font-size: 24px;
            }
            #tagline div {
                color: #FFF;
            }
            #tagline div {
                font-size: 18px;
            }
            .Estilo2 {
                color: #000000;
                font-weight: bold;
                font-size: 36px;
            }
            -->
        </style>
    </head>
    <body bgcolor="#C0DFFD" onload="fillCategory_uni()">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr bgcolor="#FFFFFF" >
                <td colspan="3" rowspan="2">&nbsp;</td>
                <td height="63" colspan="3" id="logo" valign="bottom" nowrap="nowrap"><div align="center" bgcolor="#FFFFFF" >
                        <div align="left">
                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
                                <param name="movie" value="anima1p.swf" />
                                <param name="quality" value="high" />
                                <embed src="anima1p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
                            </object>
                            <span class="Estilo2">SISTEMA DE CARGA DE ABASTOS </span> &nbsp;&nbsp;
                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="114" height="78">
                                <param name="movie" value="anima4p.swf" />
                                <param name="quality" value="high" />
                                <embed src="anima4p.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="114" height="78"></embed>
                            </object>
                        </div>
                    </div></td>
                <td width="4">&nbsp;</td>
            </tr>

            <tr bgcolor="02021E" >
                <td height="44" colspan="3" align="center" valign="top" background="fondo.jpg" bgcolor="#FFFFFF" id="tagline" ><div align="center" ></div>
            </tr>

            <tr>
                <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
            </tr>

            <tr bgcolor="#CCCCCC">
                <td height="25" colspan="7" bgcolor="#CCCCCC" id="dateformat" >&nbsp;&nbsp;
                    <script language="JavaScript" type="text/javascript">
                        document.write(TODAY);	</script>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp">Regresar a Menú </a></td>
            </tr>
            <tr>
                <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
            </tr>

            <tr>
                <td width="168" valign="top" bgcolor="#FFFFFF">

                     
                    <div align="center"><br />
                        &nbsp;<br />
                        &nbsp;<br />
                        <br />
                        <strong><br />
                            <a href="http://www.gnklogistica.com.mx" target="_blank">www.gnklogistica.com.mx</a></strong><br /> 	
                    </div></td>
                <td width="21" bgcolor="#FFFFFF">&nbsp;</td>
                <td colspan="2" valign="top" bgcolor="#FFFFFF"><img src="mm_spacer.gif" alt="" width="305" height="1" border="0" /><br />
                    &nbsp;<br />
                    &nbsp;<br />
                    <table border="0" cellspacing="0" cellpadding="0" width="647">
                        <tr>
                            <td class="pageName">&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="bodyText">		 </td>
                        </tr>
                    </table>
                    <br />
                    <form action="index_carga.jsp?cv_unidad=<%=clave_jv%>&usuario=<%=usuario%>" method="post" name="form" >

                         <!--onSubmit="javascript:return ValidateFormCant(this)"-->
                        <table width="764" border="1">



                            <tr>
                                <td><a href="index.jsp">Regresar a Menú </a></td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CARGA DE INVENTARIOS <input name="txtf_ced" type="text" id="txtf_ced" onKeyPress="return handleEnter(this, event)" style="visibility:hidden"/></td>
                            </tr>
                            <tr>
                                <td>Seleccionar Archivo </td>
                                <td><input type="file" name="exa" value="load"  onchange="examinar(this.value);"/>&nbsp;&nbsp;<input type="submit" name="Submit" value="Cargar" /></td>
                            </tr>

                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <p><br />
                            <br />
                        </p>
                    </form>    </td>
                <td width="23" bgcolor="#FFFFFF">&nbsp;</td>
                <td width="105" valign="top" bgcolor="#FFFFFF"><br />
                    &nbsp;<br /></td>

            </tr>
            <tr>
                <td width="168" bgcolor="#FFFFFF">&nbsp;</td>
                <td width="21" bgcolor="#FFFFFF">&nbsp;</td>
                <td width="4" bgcolor="#FFFFFF">&nbsp;</td>
                <td width="760" bgcolor="#FFFFFF">&nbsp;</td>
                <td width="23" bgcolor="#FFFFFF">&nbsp;</td>
                <td width="105" bgcolor="#FFFFFF">&nbsp;</td>
                <td width="4" bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
        </table>

    </body>

</html>
