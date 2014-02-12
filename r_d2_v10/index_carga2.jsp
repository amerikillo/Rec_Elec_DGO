<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
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
	   //Statement stmt_2 = null;
      ResultSet rset_1 = null;
	  Connection conn_2 =null;
      Statement stmt_2 = null;
      ResultSet rset_2 = null;
	 //----------
	 
	 lotes[0]="";
	 cad[0]="";
     String name="";
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
	 String clave="";

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
		String ruta_jv= "";
		String clave_jv= "";
		String desc_jv=  "";
	    String lote_jv= "";
		String cadu_jv= "";
		String exis_jv= "";
		String costo_jv= "";
		String encar3_jv="";
		String examin="";
int cont=1;
//Rutina para obtener las claves 
	  /*       Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/issemym");
        Statement stmt1 = conn1.createStatement(); */
       /* ResultSet rset1=stmt1.executeQuery("SELECT nombre FROM oper_enc_mor order by (nombre+0)");
          while (rset1.next()) 
                  { 
                    
                    cad1[tam2]=rset1.getString("nombre");     
                     tam2++;
                   }
	*/
      //    Connection conn_001 = DriverManager.getConnection("jdbc:mysql://localhost/issemym");
       //   Statement stmt_001 = conn_001.createStatement();
          /*ResultSet rset_001=stmt_001.executeQuery("SELECT * FROM datos_far2 order by (clave+0)");
            while (rset_001.next()) 
                    { 
                    clagto_jv=rset_001.getString("clave");  
  				    unigto_jv=rset_001.getString("unidad");	
  					enc_jv=rset_001.getString("encar1");   
  					juris2_jv=rset_001.getString("juris");
  					spss_jv=rset_001.getString("encar2");
                      
                     }*/
	 
	 
	 

try{
        altaOK=Integer.parseInt(request.getParameter("altaok"));   
       }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
	   
   try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}
	
	
	
	
	
	
	
	
	
	if(but.equals("Mostrar"))
{

 

  juris_jv= request.getParameter("Category");
  //unis_jv= request.getParameter("SubCat");
// out.print("Mostrar"+juris_jv+"Uni"+unis_jv);
 // out.print("Juris"+juris_jv+"Unidad"+unis_jv);
   //customerId2=0;   
   conn_1 = DriverManager.getConnection("jdbc:mysql://localhost/issemym");
   stmt_1 = conn_1.createStatement();
   rset_1 = stmt_1.executeQuery("select * from unidades_issemym where  nombre='"+juris_jv+"' ");
				  //select clave from unidades_issemym where juris='DOLORES HIDALGO' and unidad='DOLORES HIDALGO'
				  //ResultSet rset_2 = stmt_1.executeQuery("select * from cla_lotes where clave='"+juris_jv+"'"); 
         /* while(rset_2.next())
				     {
  
		  lote_jv=  rset_1.getString("lote");
                      } 		  
         */
		 
		  while(rset_1.next())
				     {
                  clave_jv=  rset_1.getString("clave");
				  desc_jv=  rset_1.getString("nombre");
				   
				  				  
				  

}
   conn_1.close();
   stmt_1.close();
   rset_1.close();
}				

 if(but.equals("Cargar"))
{
	  conn_2 = DriverManager.getConnection("jdbc:mysql://201.122.132.241/issemym");
	   stmt_2 = conn_2.createStatement();
	ruta="C:/";
	//ruta="C://archivos issemym//";
	ruta_jv= request.getParameter("exa");
	ruta2=ruta+ruta_jv;
	//ruta2=ruta+ruta_jv;
	//out.print("ruta::"+ruta2);
//out.print(""+examinar);
if(ruta_jv.equals("") )
		   {
		       %>
                   <script>
                      alert('CAMPO VACÍO, INGRESE UNA RUTA');
                   </script>
               <%
		    }else
			{
//stmt_2.execute("DELETE FROM SURTIR_ISSEMYM");
	//out.print(""+ruta2);			
stmt_2.execute("load data local infile '/"+ruta2+"' into table surtir_issemym FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';");

//stmt_2.execute("load data infile '"+ruta2+"' into table surtir_issemym_histo");

 %>
                   <script>
                      alert('DATOS GUARDADOS');
                   </script>
               <%
			}

}	  


if(but.equals("Generar Todo"))
     {
	 
	 	    	
		 %>
					  <script>
	 self.location='http://localhost:8080/issemym/entrega_issemym.jsp'
 </script>
					  <% 
	 
     
	
	
	
	 }    


 
 	if(but.equals("Generar Unidad"))
     {
	 
	 	    	
				  	   
	              clave_jv=  request.getParameter("txtf_cla");
		
				  desc_jv=  request.getParameter("txtf_acount");
				  
				  			 

	  %>
					  <script>
	 self.location='http://localhost:8080/issemym/entrega_issemym_unidad.jsp?cv_unidad=<%=clave_jv%>&nombre=<%=desc_jv%>'
 </script>
					  <% 
	 
     
	 }  
	 
	
%>



<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>:: SISTEMA REPORTE DE ENTREGA ISSEMYM ::</title>
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
-->
</style>
</head>
<body bgcolor="#C0DFFD" onload="fillCategory_uni()">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#FFFFFF" >
    <td colspan="3" rowspan="2"><div align="center" bgcolor="#FFFFFF" ><span class="style1"><strong><img src="GNKL_Small.JPG" alt="Header image"  border="0" /></strong></span></div></td>
    <td height="63" colspan="3" id="logo" valign="bottom" nowrap="nowrap"><div align="center" bgcolor="#FFFFFF" ><img src="issemym1.jpg" alt="hosp" width="343" height="91" /></div></td>
    <td width="4">&nbsp;</td>
  </tr>

  <tr bgcolor="02021E" >
    <td height="44" colspan="3" align="center" valign="top" background="fondo.jpg" bgcolor="#FFFFFF" id="tagline" ><div align="center" >Sistema  Reposici&oacute;n de Inventarios por Unidad ISSEMYM
    </div>
  </tr>

  <tr>
    <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<td height="25" colspan="7" bgcolor="#CCFF99" id="dateformat" >&nbsp;&nbsp;
    <script language="JavaScript" type="text/javascript">
      document.write(TODAY);	</script></td>
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
          <td class="pageName">Introduzca los datos de la Unidad</td>
		</tr>

		<tr>
          <td class="bodyText">		 </td>
        </tr>
      </table>
	  <br />
	  <form action="index_carga.jsp?cv_unidad=<%=clave_jv%>" method="post" name="form" >

     <!--onSubmit="javascript:return ValidateFormCant(this)"-->
    <table width="764" border="1">
      <tr>
        <td>Seleccione Unidad:
          <label></label></td>
        <td><select name="Category" class="bodyText"  >
          <option>---------------------------------------- UNIDADES ----------------------------------------</option>
        </select>
          <input type="submit" name="Submit" value="Mostrar" onkeypress="return handleEnter(this, event)"/></td>
      </tr>
      <tr>
        
       
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>Clave:</td>
        <td><input name="txtf_cla" type="text" class="style2" onkeypress="return handleEnter(this, event)" value="<%=clave_jv%>" size="10"/></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="122">Unidad: </td>
        <td width="626"><label>
          <input name="txtf_acount" type="text" class="style2" onkeypress="return handleEnter(this, event)" value="<%=desc_jv%>" size="90"/>
        </label></td>
      </tr>
      
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Generar Unidad" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="Submit" value="Generar Todo" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EXPORTAR TODO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="icono_excel.gif" border="0" usemap="#Map2"/></td>
      </tr>
      <tr>
        <td>Cargar Datos</td>
        <td><input type="file" name="exa" value="load"  onchange="examinar(this.form);"/>&nbsp;&nbsp;<input type="submit" name="Submit" value="Cargar" /></td>
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
<map name="Map" id="Map">
<area shape="poly" coords="241,165" href="#" />
<area shape="poly" coords="230,40,231,88,270,43" href="#" />
</map>
<map name="Map2" id="Map2"><area shape="rect" coords="4,3,31,29" href="gnr_issemym.jsp?boton=<%=but%>" />
</map>
</body>

</html>
