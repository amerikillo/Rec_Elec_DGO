<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%


String cb_jv="",nombre_jv="",edad_jv="",folio_jv="",cause_jv="",foliore_jv="",foliore2_jv="",radiopro_jv="",radiosur_jv="",date_jv="",reloj_jv="",ela2_jv="",juris_jv="",clave_jv="",eliminar_jv="",usu_jv="",equipo_jv="",integrantes_jv="",recibe_id_jv="";
//String eliminar_jv="";
//variables medicamento 1
String med1_jv="",descrip1_jv="",indica1_jv="",sol1_jv="",sur1_jv="",present1_jv="",clave1_jv="",servicio_jv="";

//variables medicamento 1
String med2_jv="",descrip2_jv="",indica2_jv="",sol2_jv="",sur2_jv="",present2_jv="",clave2_jv="";

//variables medicamento 1
String med3_jv="",descrip3_jv="",indica3_jv="",sol3_jv="",sur3_jv="",present3_jv="",clave3_jv="";
//varibles medico
String medico_jv="",uni_jv="",cedu_jv="",nomed_jv="";
String nom_unidad="",no_jur="",cv_dgo_jv="",cv_uni_jv="",cv_mpio_jv="",t1_jv="",t2_jv="",t3_jv="",tfecha_jv="",encarser_jv="";

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


	 
%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form action="eliminar_col_fecha.jsp?id_prov=<%=eliminar_jv%>" method="post" name="form" onSubmit="javascript:return ValidateFar1(this)">


<script>
var entrar =  confirm("¿DESEAS ELIMINARLA?");
if(entrar==true)
{
	
	self.location='eliminar_re_col_fecha.jsp?id_prov=<%=eliminar_jv%>&foliore=<%=foliore_jv%>&encar=<%=ela2_jv%>&juris=<%=no_jur%>&uni=<%=nom_unidad%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&clave1=&descrip1=&sur1=&sol1=&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&day5=<%=t1_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&servicio=<%=servicio_jv%>&encarser=<%=encarser_jv%>';
	
}
else
{
	alert("DATOS NO ELIMINADOS");
	
	self.location='recedgo_col_fecha.jsp?id_prov=<%=eliminar_jv%>&foliore=<%=foliore_jv%>&encar=<%=ela2_jv%>&juris=<%=no_jur%>&uni=<%=nom_unidad%>&juris1=<%=juris_jv%>&clave_uni=<%=clave_jv%>&clave1=&descrip1=&sur1=&sol1=&part=&cv_dgo=<%=cv_dgo_jv%>&cv_uni=<%=cv_uni_jv%>&cv_mpio=<%=cv_mpio_jv%>&day5=<%=t1_jv%>&mes5=<%=t2_jv%>&aa5=<%=t3_jv%>&servicio=<%=servicio_jv%>&encarser=<%=encarser_jv%>'
	
}

</script>


</form>
</body>

</html>
