function verificaPaciente(obj) 
{

 missinginfo = "";
	 if (obj.txtf_noaf.value=="")
    {
		missinginfo += "\n El folio no debe estar vacio";
    }
	
	if (obj.txtf_nom.value=="")
    {
		missinginfo += "\n El nombre no debe de ir vacio";
    }
	if (obj.txtf_ap.value=="")
    {
		missinginfo += "\n El apellido parteno no debe de ir vacio";
    }

	if (obj.txtf_am.value=="")
    {
		missinginfo += "\n El apellido materno no debe de ir vacio ";
    }
	
	
	if (obj.fecha_anov.value == "")
    {
		missinginfo += "\n El año de la fecha fin  de vigencia no debe de estar incompleta";
    }
	
	if (obj.fechadia_id.value=="")
    {
		missinginfo += "\n El dia de la fecha  de vigencia no debe de estar incompleta";
    }
	if (obj.fechames_id.value=="")
    {
		missinginfo += "\n El mes de la fecha  de vigencia no debe de estar incompleta";
    }
	if (obj.fechaano_id.value=="")
    {
		missinginfo += "\n El año de la fecha  de vigencia no debe de estar incompleta";
    }
	if (obj.fecha_diav.value=="")
    {
		missinginfo += "\n El dia de la fecha fin  de vigencia no debe de estar incompleta";
    }
	if (obj.fecha_mesv.value=="")
    {
		missinginfo += "\n El mes de la fecha fin  de vigencia no debe de estar incompleta";
    }
	if (obj.txtf_t1a.value=="")
    {
		missinginfo += "\n El dia de la fecha nacimiento  no debe de estar incompleta";
    }
	if (obj.txtf_t2a.value=="")
    {
		missinginfo += "\n El mes de la fecha nacimiento  no debe de estar incompleta";
    }
	if (obj.txtf_t3a.value=="")
    {
		missinginfo += "\n El año de la fecha nacimiento  no debe de estar incompleta";
    }
	
	
	if (missinginfo != "")
	{
		missinginfo = "\n TE HA FALTADO INTRODUCIR LOS SIGUIENTES DATOS:\n" + missinginfo + "\n\n ¡INGRESA LOS DATOS FALTANTES Y TRATA OTRA VEZ!\n";
		alert(missinginfo);
		return false;
	}else{
		return true;
	}
	
}


 function verificaMedico(obj) 
{
	
	 missinginfo = "";
	 if (obj.txtf_ced.value=="")
    {
		missinginfo += "\n La cédula no debe de ir vacia.";
    }
	 if (obj.txtf_nom.value=="")
    {
		missinginfo += "\n El nombre no debe de ir vacio.";
    }
	 if (obj.txtf_pat.value=="")
    {
		missinginfo += "\n El apellido paterno no debe de ir vacio.";
    }
	
	 if (obj.txtf_mat.value=="")
    {
		missinginfo += "\n El apellido materno no debe de ir vacio.";
    }
	
	
	
	if (missinginfo != "")
	{
		missinginfo = "\n TE HA FALTADO INTRODUCIR LOS SIGUIENTES DATOS:\n" + missinginfo + "\n\n ¡INGRESA LOS DATOS FALTANTES Y TRATA OTRA VEZ!\n";
		alert(missinginfo);
		return false;
	}else{
		return true;
	}
	
}