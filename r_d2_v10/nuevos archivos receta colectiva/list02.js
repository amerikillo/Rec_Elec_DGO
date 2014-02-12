function setTimeInv()
{
	var name
	//rec="test"
	//name="txtf_"
	//name = name + rec
	name="txtf_encar2"
	//alert("Value:"+name);
		d = new Date();

//set time vars
var second = d.getSeconds();
var minute = d.getMinutes();
var hour = d.getHours();
var weekDay = d.getDay();
var day = d.getDate();
var year = d.getFullYear();
var month = d.getMonth();

//if minute less than 10 add leading zero
if(minute<10) {
	minute = "0" + minute;
}
function setObsName(form) 

{

   var obs= form.slct_1.value;

   form.txtf_1.value=obs;

 }

                                                   

function setOpeName(form) 

{
	alert("si entra");
   var nam= form.slct_name.value;

   form.txtf_desc.value=nam;

 }


if(hour<10) {
	hour = "0" + hour;
}

if(second<10) {
	second = "0" + second;
}

//make date string
var date = hour + ":" + minute+ ":" +second;

//Create Function: set field value
function setFieldValue(id,date) {
	document.getElementById(id).value = date;
	//alert("Estás iniciando el Inventario a las:"+date)
}


//window.onload = function() {
	
	setFieldValue(name, date);
}
function setTimeInvF()
{
	var name
	//rec="test"
	//name="txtf_"
	//name = name + rec
	name="txtf_hf"
	//alert("Value:"+name);
		d = new Date();

//set time vars
var second = d.getSeconds();
var minute = d.getMinutes();
var hour = d.getHours();
var weekDay = d.getDay();
var day = d.getDate();
var year = d.getFullYear();
var month = d.getMonth();

//if minute less than 10 add leading zero
if(minute<10) {
	minute = "0" + minute;
}

if(hour<10) {
	hour = "0" + hour;
}

if(second<10) {
	second = "0" + second;
}

//make date string
var date = hour + ":" + minute+ ":" +second;

//Create Function: set field value
function setFieldValue(id,date) {
	document.getElementById(id).value = date;
	//alert("Estás iniciando el Inventario a las:"+date)
}


//window.onload = function() {
	
	setFieldValue(name, date);
	document.form.txtf_2.focus();
}



function setT()
{
	
	//alert("Eves");
	d = new Date();

//set time vars
var second = d.getSeconds();
var minute = d.getMinutes();
var hour = d.getHours();
var weekDay = d.getDay();
var day = d.getDate();
var year = d.getFullYear();
var month = d.getMonth();

//if minute less than 10 add leading zero
if(minute<10) {
	minute = "0" + minute;
}

if(hour<10) {
	hour = "0" + hour;
}

if(second<10) {
	second = "0" + second;
}

//make date string
var date = hour + ":" + minute+ ":" +second;

//Create Function: set field value
function setFieldValue(id,date) {
	document.getElementById(id).value = date;
}


//window.onload = function() {
	
	setFieldValue("textfield", date);
	
}

function setT2()
{
	
	//alert("Eves");
	d = new Date();

//set time vars
var second = d.getSeconds();
var minute = d.getMinutes();
var hour = d.getHours();
var weekDay = d.getDay();
var day = d.getDate();
var year = d.getFullYear();
var month = d.getMonth();

//if minute less than 10 add leading zero
if(minute<10) {
	minute = "0" + minute;
}

if(hour<10) {
	hour = "0" + hour;
}

if(second<10) {
	second = "0" + second;
}

//make date string
var date = hour + ":" + minute+ ":" +second;

//Create Function: set field value
function setFieldValue(id,date) {
	document.getElementById(id).value = date;
}


//window.onload = function() {
	
	setFieldValue("txtf_h", date);
	
}
function setT3()
{
	
	//alert("Eves");
	d = new Date();

//set time vars
var second = d.getSeconds();
var minute = d.getMinutes();
var hour = d.getHours();
var weekDay = d.getDay();
var day = d.getDate();
var year = d.getFullYear();
var month = d.getMonth();

//if minute less than 10 add leading zero
if(minute<10) {
	minute = "0" + minute;
}

if(hour<10) {
	hour = "0" + hour;
}

if(second<10) {
	second = "0" + second;
}

//make date string
var date = hour + ":" + minute+ ":" +second;

//Create Function: set field value
function setFieldValue(id,date) {
	document.getElementById(id).value = date;
	alert("Hora de Incio del Documentador:"+date)
}


//window.onload = function() {
	
	setFieldValue("txtf_10", date);
	
}
/*-------------------------
Funtion for put the start hour in the fild in Almacen
-------------------------*/
function setTAlm(rec)
{
	var name
	//rec="test"
	name="txtf_"
	name = name + rec
	alert("Value:"+name);
		d = new Date();

//set time vars
var second = d.getSeconds();
var minute = d.getMinutes();
var hour = d.getHours();
var weekDay = d.getDay();
var day = d.getDate();
var year = d.getFullYear();
var month = d.getMonth();

//if minute less than 10 add leading zero
if(minute<10) {
	minute = "0" + minute;
}

if(hour<10) {
	hour = "0" + hour;
}

if(second<10) {
	second = "0" + second;
}

//make date string
var date = hour + ":" + minute+ ":" +second;

//Create Function: set field value
function setFieldValue(id,date) {
	document.getElementById(id).value = date;
	alert("Hora de Incio:"+date)
}


//window.onload = function() {
	
	setFieldValue(name, date);
}


function setTAlm2(rec)
{
	var name
	name="txtf_"
	name = name + rec
	alert("Value:"+name);
		d = new Date();

//set time vars
var second = d.getSeconds();
var minute = d.getMinutes();
var hour = d.getHours();
var weekDay = d.getDay();
var day = d.getDate();
var year = d.getFullYear();
var month = d.getMonth();

//if minute less than 10 add leading zero
if(minute<10) {
	minute = "0" + minute;
}

if(hour<10) {
	hour = "0" + hour;
}

if(second<10) {
	second = "0" + second;
}

//make date string
var date = hour + ":" + minute+ ":" +second;

//Create Function: set field value
function setFieldValue(id,date) {
	document.getElementById(id).value = date;
	alert("Hora Final de la Actividad:"+date)
}


//window.onload = function() {
	
	setFieldValue(name, date);
}



function setT4()
{
	
	//alert("Eves");
	d = new Date();

//set time vars
var second = d.getSeconds();
var minute = d.getMinutes();
var hour = d.getHours();
var weekDay = d.getDay();
var day = d.getDate();
var year = d.getFullYear();
var month = d.getMonth();

//if minute less than 10 add leading zero
if(minute<10) {
	minute = "0" + minute;
}

if(hour<10) {
	hour = "0" + hour;
}

if(second<10) {
	second = "0" + second;
}

//make date string
var date = hour + ":" + minute+ ":" +second;

//Create Function: set field value
function setFieldValue(id,date) {
	document.getElementById(id).value = date;
	alert("Hora Final del Documentador:"+date)
}


//window.onload = function() {
	
	setFieldValue("txtf_11", date);
	
}


function fillCategory(){ 
form1.txtf_bup.value=form1.txtf_plate2.value;
 // this function is used to fill the category list on load
addOption(document.form1.Category, "Acura", "Acura");
addOption(document.form1.Category, "Audi", "Audi");
addOption(document.form1.Category, "BMW", "BMW");
addOption(document.form1.Category, "Buick", "Buick");
addOption(document.form1.Category, "Chevrolet", "Chevrolet");
addOption(document.form1.Category, "Chrysler", "Chrysler");
addOption(document.form1.Category, "Dodge", "Dodge", "");
addOption(document.form1.Category, "Ford", "Ford", "");
addOption(document.form1.Category, "GMC", "GMC", "");
addOption(document.form1.Category, "GEO", "GEO", "");
addOption(document.form1.Category, "Honda", "Honda", "");
addOption(document.form1.Category, "Hummer", "Hummer", "");
addOption(document.form1.Category, "Hyundai", "Hyundai", "");
addOption(document.form1.Category, "Infinty", "Infinty", "");
addOption(document.form1.Category, "Jeep", "Jeep", "");
addOption(document.form1.Category, "Lexus", "Lexus", "");
addOption(document.form1.Category, "Mitsubishi", "Mitsubishi", "");
addOption(document.form1.Category, "Nissan", "Nissan", "");
addOption(document.form1.Category, "Oldsmobile", "Oldsmobile", "");
addOption(document.form1.Category, "Plymouth", "Plymouth", "");
addOption(document.form1.Category, "Pontiac", "Pontiac", "");
addOption(document.form1.Category, "Toyota", "Toyota", "");
addOption(document.form1.Category, "VW", "VW", "");
////// for show in list of County
addOption(document.form1.County, "Los Angeles", "Los Angeles");
addOption(document.form1.County, "Orange", "Orange");
addOption(document.form1.County, "Riverside", "Riverside");
addOption(document.form1.County, "San Bernardino", "San Bernardino");
addOption(document.form1.County, "Ventura", "Ventura");

}
//function that fill de list with all the position in GNKL
function fillCategory_GNK(){ 
//form1.txtf_bup.value=form1.txtf_plate2.value;
 // this function is used to fill the category list on load
// alert("GNK");
addOption(document.form1.slct_nombres, "DIRECCION GENERAL", "DIRECCION GENERAL");
addOption(document.form1.slct_nombres, "DIRECTOR DE OPERACIONES", "DIRECTOR DE OPERACIONES");
addOption(document.form1.slct_nombres, "DIRECCION ADMINISTRATIVA", "DIRECCION ADMINISTRATIVA");
addOption(document.form1.slct_nombres, "DIRECTOR COMERCIAL", "DIRECTOR COMERCIAL");
addOption(document.form1.slct_nombres, "COORDINADOR CEDIS", "COORDINADOR CEDIS");
//addOption(document.form1.slct_nombres, "JEFE DE SISTEMAS", "JEFE DE SISTEMAS"); 
//addOption(document.form1.slct_nombres, "ENCARGADO DE ALMACEN", "ENCARGADO DE ALMACEN"); 
//addOption(document.form1.slct_nombres, "QUIMICA RESPONSABLE", "QUIMICA RESPONSABLE");
//addOption(document.form1.slct_nombres, "JEFE DE TRAFICO", "JEFE DE TRAFICO");
//addOption(document.form1.slct_nombres, "RECEPCION", "RECEPCION");

}


//function for fill the textfield user
function SelectSubCat_Pos(){
// ON selection of category this function will work

//removeAllOptions(document.form.SubCat);
//addOption(document.form.SubCat, "", "No. de Cuenta", "");

if(document.form1.slct_nombres.value == 'DIRECCION GENERAL'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="HARUO KANO";

      }
if(document.form1.slct_nombres.value == 'DIRECTOR DE OPERACIONES'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="ENRIQUE KARASAGUA";

      }
if(document.form1.slct_nombres.value == 'COORDINADOR CEDIS'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="FERNANDO ARAIZA";

      }
if(document.form1.slct_nombres.value == 'DIRECTOR COMERCIAL'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="JAVIER CALERO";

      }
if(document.form1.slct_nombres.value == 'DIRECCION ADMINISTRATIVA'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="IRMA AVILA";

      }
if(document.form1.slct_nombres.value == 'ENCARGADO DE ALMACEN'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="GERARDO";

      }
if(document.form1.slct_nombres.value == 'QUIMICA RESPONSABLE'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="ALEJANDRA CARDONA";

      }
	  
if(document.form1.slct_nombres.value == 'JEFE DE TRAFICO'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="LUPITA GOMEZ";

      }
	  
	  if(document.form1.slct_nombres.value == 'TRANSPORTE'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="RAUL QUINONEZ";

      }
	  if(document.form1.slct_nombres.value == 'TRAMITES ADUANALES'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="JUAN LUIS A I";

      }
	  
	  
	  
if(document.form1.slct_nombres.value == 'ALMACEN'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="ABEL QUEZADA";

      }
if(document.form1.slct_nombres.value == 'RECEPCION'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="MARICELA CAPETILLO";

      }
	  
if(document.form1.slct_nombres.value == 'PRODUCCION'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="LIC. MARCELA HERNANDEZ C.";

      }
	  
if(document.form1.slct_nombres.value == 'RECURSOS HUMANOS'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="LIC. MARCELA HERNANDEZ C. 2";

      }
	  
	  document.form1.txtf_pass.focus();
}





//function for select the area in gg

function fillCategory_Area(){ 
//form1.txtf_bup.value=form1.txtf_plate2.value;
 // this function is used to fill the category list on load
addOption(document.form1.slct_nombres, "CAPTURISTA 1", "CAPTURISTA 1");
addOption(document.form1.slct_nombres, "CAPTURISTA 2", "CAPTURISTA 2");

}



function fillCategoryGTO2(){ 
//alert("hola");
addOption(document.form.Category, "Dolores Hidalgo", "Dolores Hidalgo");
addOption(document.form.Category, "Guanajuato", "Guanajuato");
addOption(document.form.Category, "Ocampo", "Ocampo");
addOption(document.form.Category, "San Diego de la Unión", "San Diego de la Unión");
addOption(document.form.Category, "San Felipe", "San Felipe");
addOption(document.form.Category, "San miguel allende", "San miguel allende");
addOption(document.form.Category, "Atarjea", "Atarjea");
addOption(document.form.Category, "Doctor Mora", "Doctor Mora");
addOption(document.form.Category, "San jose Iturbide", "San jose Iturbide");
addOption(document.form.Category, "San Luis de la Paz", "San Luis de la Paz");
addOption(document.form.Category, "Santa Catarina", "Santa Catarina");
addOption(document.form.Category, "Tierra Blanca", "Tierra Blanca");
addOption(document.form.Category, "Xichu", "Xichu");
addOption(document.form.Category, "León", "León");
addOption(document.form.Category, "Manuel Doblado", "Manuel Doblado");
addOption(document.form.Category, "Purisima del Rincón", "Purisima del Rincón");
addOption(document.form.Category, "Romita", "Romita");
addOption(document.form.Category, "San Francisco del Rinón", "San Francisco del Rinón");
addOption(document.form.Category, "Silao", "Silao");




 //document.form.Category.focus();	
}
function fillCategoryMOR(){
	//alert("Llene los campos requeridos de este CENSO-GNKL");
//form1.txtf_bup.value=form1.txtf_plate2.value;
 // this function is used to fill the category list on load
addOption(document.form.Category, "ATLATLAHUCAN", "ATLATLAHUCAN");
addOption(document.form.Category, "AXOCHIAPAN", "AXOCHIAPAN");
addOption(document.form.Category, "AYALA", "AYALA");
addOption(document.form.Category, "CUAUTLA", "CUAUTLA");
addOption(document.form.Category, "JANTETELCO", "JANTETELCO");
addOption(document.form.Category, "JONACATEPEC", "JONACATEPEC");
addOption(document.form.Category, "OCUITUCO", "OCUITUCO");
addOption(document.form.Category, "TEPALCINGO", "TEPALCINGO");
addOption(document.form.Category, "TETELA DEL VOLCAN", "TETELA DEL VOLCAN");
addOption(document.form.Category, "TLALNEPANTLA", "TLALNEPANTLA");
addOption(document.form.Category, "TLAYACAPAN", "TLAYACAPAN");
addOption(document.form.Category, "TOTOLAPAN", "TOTOLAPAN");
addOption(document.form.Category, "YAUTEPEC", "YAUTEPEC");
addOption(document.form.Category, "YECAPIXTLA", "YECAPIXTLA");
addOption(document.form.Category, "ZACUALPAN", "ZACUALPAN");
addOption(document.form.Category, "TEMOAC", "TEMOAC");
setTimeInv();
}
function fillCategoryTOL2(){
	alert("Llene los campos requeridos de este CENSO-GNKL");
//form1.txtf_bup.value=form1.txtf_plate2.value;
 // this function is used to fill the category list on load

//setTimeInv();
}
function fillCategory2(){ 
//form1.txtf_bup.value=form1.txtf_plate2.value;
 // this function is used to fill the category list on load
addOption(document.form.Category, "JURISDICCION SANITARIA I DURANGO","JURISDICCION SANITARIA I DURANGO"); 
addOption(document.form.Category, "JURISDICCION SANITARIA II GOMEZ PALACIO","JURISDICCION SANITARIA II GOMEZ PALACIO"); 
addOption(document.form.Category, "JURISDICCION SANITARIA III SANTIAGO PAPASQUIARO","JURISDICCION SANITARIA III SANTIAGO PAPASQUIARO"); 
addOption(document.form.Category, "JURISDICCION SANITARIA IV RODEO","JURISDICCION SANITARIA IV RODEO"); 
   

document.form.txtf_cve_sgw.focus();    
document.form.txtf_ref.focus();
setTimeInv();

 //document.form.txtf_ref.focus();	
}

function SelectSubCat01(){
// ON selection of category this function will work

removeAllOptions(document.form.SubCat);
//addOption(document.form.SubCat, "", "No. de Cuenta", "");     

if(document.form.Category.value == 'JURISDICCION SANITARIA I DURANGO'){
                //addOption(document.form.SubCat,"","--Escoja Pelotón--")

addOption(document.form.SubCat,"HOSPITAL GENERAL DE DURANGO","HOSPITAL GENERAL DE DURANGO")
addOption(document.form.SubCat,"CSU BENJAMIN MENDEZ","CSU BENJAMIN MENDEZ")
addOption(document.form.SubCat,"CSU DIVISION DEL NORTE","CSU DIVISION DEL NORTE")
addOption(document.form.SubCat,"CSU JOSE LOPEZ PORTILLO ","CSU JOSE LOPEZ PORTILLO ")
addOption(document.form.SubCat,"CSU JOSE ANGEL LEAL ","CSU JOSE ANGEL LEAL ")
addOption(document.form.SubCat,"CENTRO DE SALUD JARDINES DE CANCUN","CENTRO DE SALUD JARDINES DE CANCUN")
addOption(document.form.SubCat,"CSU COL. EJIDAL","CSU COL. EJIDAL")
addOption(document.form.SubCat,"CSS INDEPENDENCIA Y LIBERTAD","CSS INDEPENDENCIA Y LIBERTAD")
addOption(document.form.SubCat,"CSR LLANO GRANDE","CSR LLANO GRANDE")
addOption(document.form.SubCat,"CENTRO DE SALUD DE GUADALUPE VICTORIA","CENTRO DE SALUD DE GUADALUPE VICTORIA")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL LA GUAJOLOTA","HOSPITAL INTEGRAL LA GUAJOLOTA")
addOption(document.form.SubCat,"CENTRO DE SALUD DE NOMBRE DE DIOS","CENTRO DE SALUD DE NOMBRE DE DIOS")
addOption(document.form.SubCat,"CENTRO DE SALUD DE VICENTE GUERRERO ","CENTRO DE SALUD DE VICENTE GUERRERO ")
addOption(document.form.SubCat,"CSS COL. HIDALGO","CSS COL. HIDALGO")
addOption(document.form.SubCat,"HOSPITAL COMUNITARIO FRANCISCO I. MADERO","HOSPITAL COMUNITARIO FRANCISCO I. MADERO")
addOption(document.form.SubCat,"CENTRO ESTATAL DE CANCEROLOGÍA","CENTRO ESTATAL DE CANCEROLOGÍA")
addOption(document.form.SubCat,"CSU AZCAPOTZALCO","CSU AZCAPOTZALCO")
addOption(document.form.SubCat,"ALMACÉN GENERAL","ALMACÉN GENERAL")
addOption(document.form.SubCat,"CENTRO DE SALUD BOSQUES DEL VALLE","CENTRO DE SALUD BOSQUES DEL VALLE")
addOption(document.form.SubCat,"CENTRO DE SALUD LA VIRGEN","CENTRO DE SALUD LA VIRGEN")
addOption(document.form.SubCat,"CSR PRAXEDIS GUERRERO","CSR PRAXEDIS GUERRERO")
addOption(document.form.SubCat,"HOSPITAL DE SALUD MENTAL","HOSPITAL DE SALUD MENTAL")
addOption(document.form.SubCat,"CSR FELIPE CARRILLO PUERTO","CSR FELIPE CARRILLO PUERTO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DEL MEZQUITAL","HOSPITAL INTEGRAL DEL MEZQUITAL")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE HUAZAMOTA","HOSPITAL INTEGRAL DE HUAZAMOTA")
addOption(document.form.SubCat,"CS SANTA MARÍA DE OCOTAN","CS SANTA MARÍA DE OCOTAN")
addOption(document.form.SubCat,"CSR LA JOYA","CSR LA JOYA")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DEL SALTO","HOSPITAL INTEGRAL DEL SALTO")
addOption(document.form.SubCat,"CS LA CIUDAD","CS LA CIUDAD")
addOption(document.form.SubCat,"CS SAN MIGUEL DE CRUCES","CS SAN MIGUEL DE CRUCES")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE SUCHIL","HOSPITAL INTEGRAL DE SUCHIL")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL EL DURAZNO","HOSPITAL INTEGRAL EL DURAZNO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE TAMAZULA","HOSPITAL INTEGRAL DE TAMAZULA")
addOption(document.form.SubCat,"FARMACIA SEGURO POPULAR DURANGO","FARMACIA SEGURO POPULAR DURANGO")
addOption(document.form.SubCat,"CENTRO DE SALUD No 1","CENTRO DE SALUD No 1")
addOption(document.form.SubCat,"CENTRO DE SALUD No 2","CENTRO DE SALUD No 2")
addOption(document.form.SubCat,"CENTRO DE SALUD DE VILLA UNION","CENTRO DE SALUD DE VILLA UNION")
addOption(document.form.SubCat,"DIF ESTATAL","DIF ESTATAL")

}
if(document.form.Category.value == 'JURISDICCION SANITARIA II GOMEZ PALACIO'){

addOption(document.form.SubCat,"HOSPITAL GENERAL DE CUENCAME","HOSPITAL GENERAL DE CUENCAME")
addOption(document.form.SubCat,"CENTRO DE SALUD CUENCAME","CENTRO DE SALUD CUENCAME")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL SIMON BOLIVAR","HOSPITAL INTEGRAL SIMON BOLIVAR")
addOption(document.form.SubCat,"HOSPITAL GENERAL DE GOMEZ PALACIO","HOSPITAL GENERAL DE GOMEZ PALACIO")
addOption(document.form.SubCat,"HOSPITAL GENERAL DE LERDO","HOSPITAL GENERAL DE LERDO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL MAPIMI","HOSPITAL INTEGRAL MAPIMI")
addOption(document.form.SubCat,"CENTRO DE SALUD NAZAS","CENTRO DE SALUD NAZAS")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE PEÑON BLANCO","HOSPITAL INTEGRAL DE PEÑON BLANCO")
addOption(document.form.SubCat,"CENTRO DE SALUD TLAHUALILO","CENTRO DE SALUD TLAHUALILO")
addOption(document.form.SubCat,"ALMACÉN JURISDICCIÓN SANITARIA NO. 2","ALMACÉN JURISDICCIÓN SANITARIA NO. 2")
addOption(document.form.SubCat,"FARMACIA SEGURO POPULAR DE GOMEZ PALACIO","FARMACIA SEGURO POPULAR DE GOMEZ PALACIO")
addOption(document.form.SubCat,"CENTRO DE SALUD DE GÓMEZ PALACIO","CENTRO DE SALUD DE GÓMEZ PALACIO")
addOption(document.form.SubCat,"CENTRO DE SALUD LERDO","CENTRO DE SALUD LERDO")

}
if(document.form.Category.value == 'JURISDICCION SANITARIA III SANTIAGO PAPASQUIARO'){

addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE CANATLAN","HOSPITAL INTEGRAL DE CANATLAN")
addOption(document.form.SubCat,"CENTRO DE SALUD DE GUANACEVI","CENTRO DE SALUD DE GUANACEVI")
addOption(document.form.SubCat,"HOSPITAL GENERAL SANTIAGO PAPASQUIARO","HOSPITAL GENERAL SANTIAGO PAPASQUIARO")
addOption(document.form.SubCat,"CENTRO DE SALUD DE TEPEHUANES","CENTRO DE SALUD DE TEPEHUANES")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE NUEVO IDEAL","HOSPITAL INTEGRAL DE NUEVO IDEAL")
addOption(document.form.SubCat,"ALMACÉN JURISDICCIÓN SANITARIA NO. 3","ALMACÉN JURISDICCIÓN SANITARIA NO. 3")
addOption(document.form.SubCat,"CENTRO DE SALUD PAPASQUIARO","CENTRO DE SALUD PAPASQUIARO")

}

if(document.form.Category.value == 'JURISDICCION SANITARIA IV RODEO'){
addOption(document.form.SubCat,"CENTRO DE SALUD INDE","CENTRO DE SALUD INDE")
addOption(document.form.SubCat,"HOSPITAL GENERAL SANTA MARIA DEL ORO","HOSPITAL GENERAL SANTA MARIA DEL ORO")
addOption(document.form.SubCat,"SANTA MARIA DEL ORO","SANTA MARIA DEL ORO")
addOption(document.form.SubCat,"CENTRO DE SALUD RODEO","CENTRO DE SALUD RODEO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE SAN JUAN DEL RIO","HOSPITAL INTEGRAL DE SAN JUAN DEL RIO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE LAS NIEVES","HOSPITAL INTEGRAL DE LAS NIEVES")
addOption(document.form.SubCat,"ALMACÉN JURISDICCIÓN SANITARIA NO.4 RODEO","ALMACÉN JURISDICCIÓN SANITARIA NO.4 RODEO")


}



}

function fillCategory22(){ 
//form1.txtf_bup.value=form1.txtf_plate2.value;
 // this function is used to fill the category list on load
addOption(document.form.Category, "Atlacomulco", "Atlacomulco");
addOption(document.form.Category, "Ixtlahuaca", "Ixtlahuaca");
addOption(document.form.Category, "Jilotepec", "Jilotepec");
addOption(document.form.Category, "Tejupilco", "Tejupilco");
addOption(document.form.Category, "Tenancingo", "Tenancingo");
addOption(document.form.Category, "Tenango del Valle", "Tenango del Valle");
addOption(document.form.Category, "Toluca", "Toluca");
addOption(document.form.Category, "Valle de Bravo", "Valle de Bravo");
addOption(document.form.Category, "Xonacatlan", "Xonacatlan");
document.form.txtf_ref.focus();
setTimeInv();

 //document.form.txtf_ref.focus();	
}

function fillCategoryGTO(){
	//alert("Llene los campos requeridos de este CENSO-GNKL");
//form1.txtf_bup.value=form1.txtf_plate2.value;
 // this function is used to fill the category list on load
addOption(document.form.Category, "Dolores Hidalgo", "Dolores Hidalgo");
addOption(document.form.Category, "Guanajuato", "Guanajuato");
addOption(document.form.Category, "Ocampo", "Ocampo");
addOption(document.form.Category, "San Diego de la Unión", "San Diego de la Unión");
addOption(document.form.Category, "San Felipe", "San Felipe");
addOption(document.form.Category, "San miguel allende", "San miguel allende");
addOption(document.form.Category, "Atarjea", "Atarjea");
addOption(document.form.Category, "Doctor Mora", "Doctor Mora");
addOption(document.form.Category, "San jose Iturbide", "San jose Iturbide");
addOption(document.form.Category, "San Luis de la Paz", "San Luis de la Paz");
addOption(document.form.Category, "Santa Catarina", "Santa Catarina");
addOption(document.form.Category, "Tierra Blanca", "Tierra Blanca");
addOption(document.form.Category, "Xichu", "Xichu");
addOption(document.form.Category, "León", "León");
addOption(document.form.Category, "Manuel Doblado", "Manuel Doblado");
addOption(document.form.Category, "Purisima del Rincón", "Purisima del Rincón");
addOption(document.form.Category, "Romita", "Romita");
addOption(document.form.Category, "San Francisco del Rinón", "San Francisco del Rinón");
addOption(document.form.Category, "Silao", "Silao");




 //document.form.txtf_ref.focus();	
setTimeInv();
}

function hora_Inv(){ 
setTimeInv();
}
// función que llena el list de juris en totales.jsp
function fillCategory_J(){ 
//form1.txtf_bup.value=form1.txtf_plate2.value;
 // this function is used to fill the category list on load
addOption(document.form.Category, "J.S.1. ATLACOMULCO", "J.S.1. ATLACOMULCO");
addOption(document.form.Category, "J.S.2. IXTLAHUACA", "J.S.2. IXTLAHUACA");
addOption(document.form.Category, "J.S.3. JILOTEPEC", "J.S.3. JILOTEPEC");
addOption(document.form.Category, "J.S.4. TENANGO DEL VALLE", "J.S.4. TENANGO DEL VALLE");
addOption(document.form.Category, "J.S.5. TOLUCA", "J.S.5. TOLUCA");
addOption(document.form.Category, "J.S.6. XONACATLAN", "J.S.6. XONACATLAN");
addOption(document.form.Category, "J.S.7. TEJUPILCO", "J.S.7. TEJUPILCO");
addOption(document.form.Category, "J.S.8. TENANCINGO", "J.S.8. TENANCINGO");
addOption(document.form.Category, "J.S.9. VALLE DE BRAVO", "J.S.9. VALLE DE BRAVO");

//rutina que agrega el nombre del medicamento


//--------------@


 document.form.txtf_ref.focus();	
}




function fillCategory_Empleado(){ 
 // this function is used to fill the category list on load
addOption(document.form.Category, "Empleado 1", "Empleado 1");
addOption(document.form.Category, "Empleado 2", "Empleado 2");
}




function SelectSubCat_NameGTO(form){
// ON selection of category this function will work

//removeAllOptions(document.form.SubCat);
//addOption(document.form.SubCat, "", "No. de Cuenta", "");
//var n2= form1.slct_nombres.value;

	
    var nnn1= form.slct_nombres.value;
    form.txtf_user.value=nnn1;

   // alert("hello"+nnn1);  

}
function SelectSubCat_Name(){
// ON selection of category this function will work

//removeAllOptions(document.form.SubCat);
//addOption(document.form.SubCat, "", "No. de Cuenta", "");

if(document.form1.slct_nombres.value == 'CAPTURISTA 1'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="JUDITH ANGELES BAUTISTA";

      }
if(document.form1.slct_nombres.value == 'CAPTURISTA 2'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="FRANCISCO SOTO HERNANDEZ";

      }
	  
	  
	  document.form1.txtf_pass.focus();
}

function SelectSubCat_Name(){
// ON selection of category this function will work

//removeAllOptions(document.form.SubCat);
//addOption(document.form.SubCat, "", "No. de Cuenta", "");

if(document.form1.slct_nombres.value == 'CAPTURISTA 1'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="JUDITH ANGELES BAUTISTA";

      }
if(document.form1.slct_nombres.value == 'CAPTURISTA 2'){
    var n1= form1.slct_nombres.value;
    form1.txtf_user.value="FRANCISCO SOTO HERNANDEZ";

      }
	  
	  
	  document.form1.txtf_pass.focus();
}



function putF2()
{
	document.form.txtf_pass.focus();
}

function putF3()
{
	document.form1.txtf_pass.focus();
}

function fillCategoryMed(){ 
//form1.txtf_bup.value=form1.txtf_plate2.value;
 // this function is used to fill the category list on load
addOption(document.form.Category, "Dr. Jorge Hernández Wence", "Dr. Jorge Hernández Wence");
addOption(document.form.Category, "Dr. Roberto Alanís Ruíz", "Dr. Roberto Alanís Ruíz");
addOption(document.form.Category, "Dra. Silvia González Urrutia", "Dr. Silvia González Urrutia");
addOption(document.form.Category, "Dra. Betzy Sepúlveda Lechuga", "Dr. Betzy Sepúlveda Lechuga");

}



function SelectSubCatMed(){
// ON selection of category this function will work

removeAllOptions(document.form.SubCat);
addOption(document.form.SubCat, "", "Pacientes", "");     

if(document.form.Category.value == 'Dr. Jorge Hernández Wence'){
//var cad1="Acura";

addOption(document.form.SubCat,"Romualdo Godoy Hinojoza","Romualdo Godoy Hinojoza")
addOption(document.form.SubCat,"Betzy Homero Sur","Betzy Homero Sur")
addOption(document.form.SubCat,"Alma Lora Benitez","Alma Lora Benitez")
}
if(document.form.Category.value == 'Dr. Roberto Alanís Ruíz'){
//var cad1="Acura";

addOption(document.form.SubCat,"Silvia del Roble","Silvia del Roble")
}
if(document.form.Category.value == 'Dra. Silvia González Urrutia'){
//var cad1="Acura";

addOption(document.form.SubCat,"Carolia del Campo","Carolia del Campo")
}

if(document.form.Category.value == 'Dra. Betzy Sepúlveda Lechuga'){
//var cad1="Acura";

addOption(document.form.SubCat,"Esperanza Hernández","Esperanza Hernández")
}



}
function SelectSubCatMOR(){
// ON selection of category this function will work

removeAllOptions(document.form.SubCat);
addOption(document.form.SubCat, "", "Unidad", "");     

if(document.form.Category.value == 'ATLATLAHUCAN'){
//var cad1="Acura";

addOption(document.form.SubCat,"ATLATLAHUCAN","ATLATLAHUCAN")
}
if(document.form.Category.value == 'AXOCHIAPAN'){
//var cad1="Acura";
addOption(document.form.SubCat,"AXOCHIAPAN","AXOCHIAPAN")
addOption(document.form.SubCat,"ATLACAHUALOYA","ATLACAHUALOYA")
addOption(document.form.SubCat,"JOAQUIN CAMAÑO","JOAQUIN CAMAÑO")
addOption(document.form.SubCat,"MARCELINO RODRIGUEZ","MARCELINO RODRIGUEZ")
addOption(document.form.SubCat,"QUEBRANTADERO","QUEBRANTADERO")
addOption(document.form.SubCat,"TELIXTAC","TELIXTAC")
addOption(document.form.SubCat,"TLALAYO","TLALAYO")
}

if(document.form.Category.value == 'AYALA'){
addOption(document.form.SubCat,"CD.AYALA","CD.AYALA")
addOption(document.form.SubCat,"ABELARDO RODRIGUEZ","ABELARDO RODRIGUEZ")
addOption(document.form.SubCat,"SAN PEDRO APATLACO","SAN PEDRO APATLACO")
addOption(document.form.SubCat,"CHINAMECA","CHINAMECA")
addOption(document.form.SubCat,"XALOSTOC","XALOSTOC")
addOption(document.form.SubCat,"MOYOTEPEC","MOYOTEPEC")
addOption(document.form.SubCat,"SAN JUAN AHUEHUEYO","SAN JUAN AHUEHUEYO")
addOption(document.form.SubCat,"TECOMALCO","TECOMALCO")
addOption(document.form.SubCat," TENEXTEPANGO"," TENEXTEPANGO")
addOption(document.form.SubCat,"TLAYECAC","TLAYECAC")
addOption(document.form.SubCat,"EL VERGEL","EL VERGEL")
addOption(document.form.SubCat,"ANENECUILCO","ANENECUILCO")
}

if(document.form.Category.value == 'CUAUTLA'){
addOption(document.form.SubCat,"CUAUHTEMOC","CUAUHTEMOC")
addOption(document.form.SubCat,"EUSEBIO JAUREGUI","EUSEBIO JAUREGUI")
addOption(document.form.SubCat,"HERMENEGILDO GALEANA","HERMENEGILDO GALEANA")
addOption(document.form.SubCat,"CUAUTLIXCO","CUAUTLIXCO")
addOption(document.form.SubCat,"CUAUTLA","CUAUTLA")
addOption(document.form.SubCat,"EL HOSPITAL","EL HOSPITAL")
addOption(document.form.SubCat,"PUXTLA","PUXTLA")
addOption(document.form.SubCat,"PEÑA FLORES","PEÑA FLORES")
addOption(document.form.SubCat,"TETELCINGO","TETELCINGO")
}

if(document.form.Category.value == 'JANTETELCO'){
addOption(document.form.SubCat,"JANTETELCO","JANTETELCO")
addOption(document.form.SubCat,"AMAYUCA","AMAYUCA")
addOption(document.form.SubCat,"CHALCATZINGO","CHALCATZINGO")
addOption(document.form.SubCat,"TENANGO","TENANGO")
}

if(document.form.Category.value == 'JONACATEPEC'){
addOption(document.form.SubCat,"U. DE URGENCIAS  MEDICAS JONACATEPEC","U. DE URGENCIAS  MEDICAS JONACATEPEC")
addOption(document.form.SubCat,"JONACATEPEC","JONACATEPEC")
addOption(document.form.SubCat,"AMACUITLAPILCO","AMACUITLAPILCO")
addOption(document.form.SubCat,"TETELILLA","TETELILLA")
addOption(document.form.SubCat,"TLAYCA","TLAYCA")
}

if(document.form.Category.value == 'OCUITUCO'){
addOption(document.form.SubCat,"OCUITUCO","OCUITUCO")
addOption(document.form.SubCat,"HUECAHUASCO","HUECAHUASCO")
addOption(document.form.SubCat,"JUMILTEPEC","JUMILTEPEC")
addOption(document.form.SubCat,"OCOXALTEPEC","OCOXALTEPEC")
}

if(document.form.Category.value == 'TEPALCINGO'){
addOption(document.form.SubCat,"TEPALCINGO","TEPALCINGO")
addOption(document.form.SubCat,"ATOTONILCO","ATOTONILCO")
addOption(document.form.SubCat,"HUITCHILA","HUITCHILA")
addOption(document.form.SubCat,"IXTLILCO EL CHICO","IXTLILCO EL CHICO")
addOption(document.form.SubCat,"IXTLILCO EL GRANDE","IXTLILCO EL GRANDE")
addOption(document.form.SubCat,"LOS SAUCES","LOS SAUCES")
addOption(document.form.SubCat,"ZACAPALCO","ZACAPALCO")
}

if(document.form.Category.value == 'TETELA DEL VOLCAN'){
addOption(document.form.SubCat,"TETELA DEL VOLCAN","TETELA DEL VOLCAN")
addOption(document.form.SubCat,"HUEYAPAN","HUEYAPAN")
addOption(document.form.SubCat,"TLALMIMILULPAN","TLALMIMILULPAN")
}

if(document.form.Category.value == 'TLALNEPANTLA'){
addOption(document.form.SubCat,"TLALNEPANTLA","TLALNEPANTLA")
}

if(document.form.Category.value == 'TLAYACAPAN'){
addOption(document.form.SubCat,"TLAYACAPAN","TLAYACAPAN")
addOption(document.form.SubCat,"AMATLIPAC","AMATLIPAC")
addOption(document.form.SubCat,"CUAUHTEMPAN","CUAUHTEMPAN")
addOption(document.form.SubCat,"LOS LAURELES","LOS LAURELES")
addOption(document.form.SubCat,"NACATONGO","NACATONGO")
addOption(document.form.SubCat,"LAS VIVIANAS","LAS VIVIANAS")
}

if(document.form.Category.value == 'TOTOLAPAN'){
addOption(document.form.SubCat,"TOTOLOPAN","TOTOLOPAN")
addOption(document.form.SubCat,"NEPOPUALCO","NEPOPUALCO")
}

if(document.form.Category.value == 'YAUTEPEC'){
addOption(document.form.SubCat,"LAS TETILLAS","LAS TETILLAS")
addOption(document.form.SubCat,"YAUTEPEC","YAUTEPEC")
addOption(document.form.SubCat,"COCOYOC","COCOYOC")
addOption(document.form.SubCat,"IGNACIO BASTIDA","IGNACIO BASTIDA")
addOption(document.form.SubCat,"MIGUEL HIDALGO","MIGUEL HIDALGO")
addOption(document.form.SubCat,"OACALCO","OACALCO")
addOption(document.form.SubCat,"OAXTEPEC","OAXTEPEC")
addOption(document.form.SubCat,"LA JOYA","LA JOYA")
addOption(document.form.SubCat,"LOS ARCOS","LOS ARCOS")
}

if(document.form.Category.value == 'YECAPIXTLA'){
addOption(document.form.SubCat,"YECAPIXTLA","YECAPIXTLA")
addOption(document.form.SubCat,"ACHICHIPICO","ACHICHIPICO")
addOption(document.form.SubCat,"HUEXCA","HUEXCA")
addOption(document.form.SubCat,"JUAN MORALES","JUAN MORALES")
addOption(document.form.SubCat,"TECAJEC","TECAJEC")
addOption(document.form.SubCat,"XOCHITLAN","XOCHITLAN")
addOption(document.form.SubCat," LOPEZ MATEOS"," LOPEZ MATEOS")
}

if(document.form.Category.value == 'ZACUALPAN'){
addOption(document.form.SubCat,"ZACUALPAN","ZACUALPAN")
addOption(document.form.SubCat,"TLACOTEPEC","TLACOTEPEC")
}

if(document.form.Category.value == 'TEMOAC'){
addOption(document.form.SubCat,"TEMOAC","TEMOAC")
addOption(document.form.SubCat,"AMILCINGO ","AMILCINGO ")
addOption(document.form.SubCat,"HUAZULCO","HUAZULCO")
addOption(document.form.SubCat,"POPOTLAN","POPOTLAN")
}

}
function SelectSubCatGTO(){
// ON selection of category this function will work

removeAllOptions(document.form.SubCat);
addOption(document.form.SubCat, "", "Unidad", "");     

if(document.form.Category.value == 'Dolores Hidalgo'){
//var cad1="Acura";

addOption(document.form.SubCat,"ADJUNTAS DEL MONTE","ADJUNTAS DEL MONTE")
addOption(document.form.SubCat,"ADJUNTAS DEL RIO","ADJUNTAS DEL RIO")
addOption(document.form.SubCat,"DOLORES HIDALGO","DOLORES HIDALGO")
addOption(document.form.SubCat,"EL CAPULIN (DOLORES HGO.)","EL CAPULIN (DOLORES HGO.)")
addOption(document.form.SubCat,"JAMAICA","JAMAICA")
addOption(document.form.SubCat,"LA CALIFORNIA","LA CALIFORNIA")
addOption(document.form.SubCat,"LA CANTERA II","LA CANTERA II")
addOption(document.form.SubCat,"LA VENTA","LA VENTA")
addOption(document.form.SubCat,"PALMA PRIETA","PALMA PRIETA")
addOption(document.form.SubCat,"SAN MARCOS DE ABAJO","SAN MARCOS DE ABAJO")
addOption(document.form.SubCat,"SOLEDAD NUEVA","SOLEDAD NUEVA")
addOption(document.form.SubCat,"XOCONOXTLE EL GRANDE","XOCONOXTLE EL GRANDE")
addOption(document.form.SubCat,"ESI 14 EL MOLINO","ESI 14 EL MOLINO")
addOption(document.form.SubCat,"ESI 15 SAN ANTON DE LAS MINAS","ESI 15 SAN ANTON DE LAS MINAS")
addOption(document.form.SubCat,"ESI 23 MANZANOS","ESI 23 MANZANOS")
addOption(document.form.SubCat,"ESI 24 CERRO BLANCO","ESI 24 CERRO BLANCO")
addOption(document.form.SubCat,"ESI 40 SAN PEDRO PALO MOCHO","ESI 40 SAN PEDRO PALO MOCHO")
addOption(document.form.SubCat,"HOSPITAL DOLORES HIDALGO","HOSPITAL DOLORES HIDALGO")
addOption(document.form.SubCat,"CARAVANA DOLORES HIDALGO","CARAVANA DOLORES HIDALGO")

}


if(document.form.Category.value == 'Guanajuato'){
//var cad1="Acura";

addOption(document.form.SubCat,"ARPEROS","ARPEROS")
addOption(document.form.SubCat,"CALVILLO","CALVILLO")
addOption(document.form.SubCat,"CAMPUZANO","CAMPUZANO")
addOption(document.form.SubCat,"CAÑADA DE BUSTOS","CAÑADA DE BUSTOS")
addOption(document.form.SubCat,"EL ZANGARRO","EL ZANGARRO")
addOption(document.form.SubCat,"GUANAJUATO","GUANAJUATO")
addOption(document.form.SubCat,"HOSPITAL GENERAL GUANAJUATO","HOSPITAL GENERAL GUANAJUATO")
addOption(document.form.SubCat,"LA SAUCEDA (STA. FE GPE.)","LA SAUCEDA (STA. FE GPE.)")
addOption(document.form.SubCat,"LOS LORENZOS","LOS LORENZOS")
addOption(document.form.SubCat,"MARFIL","MARFIL")
addOption(document.form.SubCat,"MINERAL DE LA LUZ","MINERAL DE LA LUZ")
addOption(document.form.SubCat,"MINERAL DEL CUBO","MINERAL DEL CUBO")
addOption(document.form.SubCat,"PUENTECILLAS","PUENTECILLAS")
addOption(document.form.SubCat,"SAN JOSE DE LLANOS","SAN JOSE DE LLANOS")
addOption(document.form.SubCat,"SANTA ROSA DE LIMA (GTO)","SANTA ROSA DE LIMA (GTO)")
addOption(document.form.SubCat,"SANTA TERESA  (GTO.)","SANTA TERESA  (GTO.)")
addOption(document.form.SubCat,"YERBABUENA","YERBABUENA")
addOption(document.form.SubCat,"ESI 39 LA CONCEPCION","ESI 39 LA CONCEPCION")

}

if(document.form.Category.value == 'Ocampo'){
//var cad1="Acura";
addOption(document.form.SubCat,"GACHUPINES","GACHUPINES")
addOption(document.form.SubCat,"IBARRA","IBARRA")
addOption(document.form.SubCat,"LA ESCONDIDA (OCAMPO)","LA ESCONDIDA (OCAMPO)")
addOption(document.form.SubCat,"LA HACIENDITA","LA HACIENDITA")
addOption(document.form.SubCat,"OCAMPO","OCAMPO")
addOption(document.form.SubCat,"SANTA BARBARA","SANTA BARBARA")

}
if(document.form.Category.value == 'San Diego de la Unión'){
//var cad1="Acura";
addOption(document.form.SubCat,"CATALAN DE REFUGIO","CATALAN DE REFUGIO")
addOption(document.form.SubCat,"EXHACIENDA DE MONJAS","EXHACIENDA DE MONJAS")
addOption(document.form.SubCat,"LA PRESITA","LA PRESITA")
addOption(document.form.SubCat,"LA SAUCEDA (SAN DIEGO DE LA UNIÓN)","LA SAUCEDA (SAN DIEGO DE LA UNIÓN)")
addOption(document.form.SubCat,"POZO ADEMADO","POZO ADEMADO")
addOption(document.form.SubCat,"SAN DIEGO DE LA UNION","SAN DIEGO DE LA UNION")
addOption(document.form.SubCat,"SAN JUAN PAN DE ARRIBA","SAN JUAN PAN DE ARRIBA")
addOption(document.form.SubCat,"ESI 41 MULATOS","ESI 41 MULATOS")
addOption(document.form.SubCat,"EL ROSALITO","EL ROSALITO")

}
if(document.form.Category.value == 'San Felipe'){
//var cad1="Acura";
addOption(document.form.SubCat,"CAÑADA DE CHAVEZ","CAÑADA DE CHAVEZ")
addOption(document.form.SubCat,"EL CARRETÓN","EL CARRETÓN")
addOption(document.form.SubCat,"FABRICA DE MELCHOR","FABRICA DE MELCHOR")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL SAN FELIPE","HOSPITAL INTEGRAL SAN FELIPE")
addOption(document.form.SubCat,"JARAL DE BERRIO","JARAL DE BERRIO")
addOption(document.form.SubCat,"LA LABOR","LA LABOR")
addOption(document.form.SubCat,"LA LAGUNITA","LA LAGUNITA")
addOption(document.form.SubCat,"LA SAUCEDA DE LA LUZ","LA SAUCEDA DE LA LUZ")
addOption(document.form.SubCat,"LAGUNA DE GUADALUPE","LAGUNA DE GUADALUPE")
addOption(document.form.SubCat,"LOS BARCOS","LOS BARCOS")
addOption(document.form.SubCat,"LOS MARTINEZ","LOS MARTINEZ")
addOption(document.form.SubCat,"SALTO DEL AHOGADO","SALTO DEL AHOGADO")
addOption(document.form.SubCat,"SAN ANDRÉS DEL CUBO","SAN ANDRÉS DEL CUBO")
addOption(document.form.SubCat,"SAN BARTOLO DE BERRIO","SAN BARTOLO DE BERRIO")
addOption(document.form.SubCat,"SAN JUAN DE LLANOS","SAN JUAN DE LLANOS")
addOption(document.form.SubCat,"SAN PEDRO DE ALMOLOYAN","SAN PEDRO DE ALMOLOYAN")
addOption(document.form.SubCat,"SANTA ROSA","SANTA ROSA")
addOption(document.form.SubCat,"SANTO DOMINGO","SANTO DOMINGO")
addOption(document.form.SubCat,"ESI 16 MINAS VIEJAS","ESI 16 MINAS VIEJAS")
addOption(document.form.SubCat,"ESI 25 PEÑUELAS","ESI 25 PEÑUELAS")

}
if(document.form.Category.value == 'San miguel allende'){
//var cad1="Acura";
addOption(document.form.SubCat,"AGUSTÍN GONZALEZ","AGUSTÍN GONZALEZ")
addOption(document.form.SubCat,"ALCOCER","ALCOCER")
addOption(document.form.SubCat,"CORRAL DE PIEDRAS","CORRAL DE PIEDRAS")
addOption(document.form.SubCat,"CORRALEJO","CORRALEJO")
addOption(document.form.SubCat,"CRUZ DEL PALMAR","CRUZ DEL PALMAR")
addOption(document.form.SubCat,"FAJARDO DE BOCAS","FAJARDO DE BOCAS")
addOption(document.form.SubCat,"HOSPITAL GENERAL SAN MIGUEL DE ALLENDE","HOSPITAL GENERAL SAN MIGUEL DE ALLENDE")
addOption(document.form.SubCat,"JALPA","JALPA")
addOption(document.form.SubCat,"LA CIENEGUITA","LA CIENEGUITA")
addOption(document.form.SubCat,"LA PALMILLA","LA PALMILLA")
addOption(document.form.SubCat,"LA TALEGA","LA TALEGA")
addOption(document.form.SubCat,"GALVANES","GALVANES")
addOption(document.form.SubCat,"LOS RODRIGUEZ (SMA)","LOS RODRIGUEZ (SMA)")
addOption(document.form.SubCat,"PUERTO DE NIETO","PUERTO DE NIETO")
addOption(document.form.SubCat,"SAN JOSE DE LOS ALLENDES","SAN JOSE DE LOS ALLENDES")
addOption(document.form.SubCat,"SAN MIGUEL ALLENDE","SAN MIGUEL ALLENDE")
addOption(document.form.SubCat,"SAN MIGUELITO","SAN MIGUELITO")
addOption(document.form.SubCat,"SANTUARIO DE ATOTONILCO","SANTUARIO DE ATOTONILCO")
addOption(document.form.SubCat,"ESI 17 MANANTIALES","ESI 17 MANANTIALES")
addOption(document.form.SubCat,"ESI 26 LA CAMPANA","ESI 26 LA CAMPANA")
addOption(document.form.SubCat,"ESI 42 CLAVELLINAS","ESI 42 CLAVELLINAS")
addOption(document.form.SubCat,"CARAVANA ALLENDE","CARAVANA ALLENDE")

}
if(document.form.Category.value == 'Atarjea'){
//var cad1="Acura";
addOption(document.form.SubCat,"ALDAMA (XOCONOXTLE)","ALDAMA (XOCONOXTLE)")
addOption(document.form.SubCat,"ATARJEA","ATARJEA")
addOption(document.form.SubCat,"EL CARRICILLO","EL CARRICILLO")
addOption(document.form.SubCat,"MANGAS CUATAS","MANGAS CUATAS")
addOption(document.form.SubCat,"ESI 4 EL DURAZNO","ESI 4 EL DURAZNO")
addOption(document.form.SubCat,"ESI 12 LOS ALAMOS","ESI 12 LOS ALAMOS")

}
if(document.form.Category.value == 'Doctor Mora'){
addOption(document.form.SubCat,"DOCTOR MORA","DOCTOR MORA")
addOption(document.form.SubCat,"LA REDONDA","LA REDONDA")
addOption(document.form.SubCat,"LOMA DE BUENAVISTA","LOMA DE BUENAVISTA")
addOption(document.form.SubCat,"MORISQUILLAS","MORISQUILLAS")
}

if(document.form.Category.value == 'San jose Iturbide'){
addOption(document.form.SubCat,"CARBAJAL","CARBAJAL")
addOption(document.form.SubCat,"EL CAPULIN (SAN JOSE ITURBIDE)","EL CAPULIN (SAN JOSE ITURBIDE)")
addOption(document.form.SubCat,"EL GALOMO","EL GALOMO")
addOption(document.form.SubCat,"HOSPITAL GENERAL SAN JOSE ITURBIDE","HOSPITAL GENERAL SAN JOSE ITURBIDE")
addOption(document.form.SubCat,"LA ESCONDIDA (SAN JOSE ITURBIDE)","LA ESCONDIDA (SAN JOSE ITURBIDE)")
addOption(document.form.SubCat,"OJO DE AGUA DEL REFUGIO","OJO DE AGUA DEL REFUGIO")
addOption(document.form.SubCat,"PUERTO CARROZA","PUERTO CARROZA")
addOption(document.form.SubCat,"SAN DIEGO DE LAS TRASQUILAS","SAN DIEGO DE LAS TRASQUILAS")
addOption(document.form.SubCat,"SAN JOSE ITURBIDE","SAN JOSE ITURBIDE")
addOption(document.form.SubCat,"SAN SEBASTIAN DEL SALITRE","SAN SEBASTIAN DEL SALITRE")
addOption(document.form.SubCat,"ESI 43 LA FRAGUA","ESI 43 LA FRAGUA")
}
if(document.form.Category.value == 'San Luis de la Paz'){
addOption(document.form.SubCat,"EL REALITO (MINERAL EL REALITO)","EL REALITO (MINERAL EL REALITO)")
addOption(document.form.SubCat,"EL REFUGIO","EL REFUGIO")
addOption(document.form.SubCat,"JOFRE (SAN JOSE DE JOFRE)","JOFRE (SAN JOSE DE JOFRE)")
addOption(document.form.SubCat,"LA CIENEGA","LA CIENEGA")
addOption(document.form.SubCat,"LOURDES (ESTACION DE LOURDES)","LOURDES (ESTACION DE LOURDES)")
addOption(document.form.SubCat,"MINERAL DE SAN PEDRO (MINERAL DE POZOS)","MINERAL DE SAN PEDRO (MINERAL DE POZOS)")
addOption(document.form.SubCat,"MISION DE CHICHIMECAS","MISION DE CHICHIMECAS")
addOption(document.form.SubCat,"SAN ANTON DE LOS MARTINEZ","SAN ANTON DE LOS MARTINEZ")
addOption(document.form.SubCat,"SAN ISIDRO","SAN ISIDRO")
addOption(document.form.SubCat,"SAN JUAN DE LOS RANGELES","SAN JUAN DE LOS RANGELES")
addOption(document.form.SubCat,"SAN LUIS DE LA PAZ","SAN LUIS DE LA PAZ")
addOption(document.form.SubCat,"SANTA ANA Y LOBOS","SANTA ANA Y LOBOS")
addOption(document.form.SubCat,"VERGEL DE GUADALUPE","VERGEL DE GUADALUPE")
addOption(document.form.SubCat,"ESI 13 MACUALA","ESI 13 MACUALA")
addOption(document.form.SubCat,"ESI 18 ADJUNTAS DEL BOZO","ESI 18 ADJUNTAS DEL BOZO")
addOption(document.form.SubCat,"ESI 27 EL CHIVATO","ESI 27 EL CHIVATO")
addOption(document.form.SubCat,"ESI 28 EL PRINGON","ESI 28 EL PRINGON")
addOption(document.form.SubCat,"CARAVANA SAN LUIS DE LA PAZ","CARAVANA SAN LUIS DE LA PAZ")
addOption(document.form.SubCat,"HOSPITAL GENERAL DEL NORESTE SAN LUIS DE LA PAZ","HOSPITAL GENERAL DEL NORESTE SAN LUIS DE LA PAZ")
}
if(document.form.Category.value == 'Santa Catarina'){
addOption(document.form.SubCat,"LA RUSIA","LA RUSIA")
addOption(document.form.SubCat,"PAREDES","PAREDES")
addOption(document.form.SubCat,"SANTA CATARINA","SANTA CATARINA")
addOption(document.form.SubCat,"ESI 11 EL AGUACATE","ESI 11 EL AGUACATE")
}
if(document.form.Category.value == 'Tierra Blanca'){
addOption(document.form.SubCat,"CIENEGUILLA (TIERRA BLANCA)","CIENEGUILLA (TIERRA BLANCA)")
addOption(document.form.SubCat,"LA CUESTA DE PEÑONES","LA CUESTA DE PEÑONES")
addOption(document.form.SubCat,"LA ESTANCIA","LA ESTANCIA")
addOption(document.form.SubCat,"RINCON DEL CANO","RINCON DEL CANO")
addOption(document.form.SubCat,"TIERRA BLANCA","TIERRA BLANCA")
addOption(document.form.SubCat,"ESI 9 LAS ANIMAS","ESI 9 LAS ANIMAS")
addOption(document.form.SubCat,"ESI 10 EL HUIZACHE","ESI 10 EL HUIZACHE")
}
if(document.form.Category.value == 'Victoria'){
addOption(document.form.SubCat,"CIENEGUILLA (VICTORIA)","CIENEGUILLA (VICTORIA)")
addOption(document.form.SubCat,"DERRAMADEROS","DERRAMADEROS")
addOption(document.form.SubCat,"MILPILLAS DE SANTIAGO","MILPILLAS DE SANTIAGO")
addOption(document.form.SubCat,"PUERTO DE PALMAS","PUERTO DE PALMAS")
addOption(document.form.SubCat,"RANCHO VIEJO (ESPIRITU SANTO)","RANCHO VIEJO (ESPIRITU SANTO)")
addOption(document.form.SubCat,"VICTORIA","VICTORIA")
addOption(document.form.SubCat,"ESI 5 TEPEHUAJE","ESI 5 TEPEHUAJE")
addOption(document.form.SubCat,"ESI 6 EL REFUGIO","ESI 6 EL REFUGIO")
addOption(document.form.SubCat,"ESI 7 MALINTO (SAN JUAN MALINTO)","ESI 7 MALINTO (SAN JUAN MALINTO)")
addOption(document.form.SubCat,"ESI 8 JARALITO","ESI 8 JARALITO")
}
if(document.form.Category.value == 'Xichu'){
addOption(document.form.SubCat,"EL AGUACATE","EL AGUACATE")
addOption(document.form.SubCat,"EL GUAMUCHIL","EL GUAMUCHIL")
addOption(document.form.SubCat,"EL MILAGRO","EL MILAGRO")
addOption(document.form.SubCat,"LA SAVILA","LA SAVILA")
addOption(document.form.SubCat,"MISION DE SANTA ROSA","MISION DE SANTA ROSA")
addOption(document.form.SubCat,"PALOMAS","PALOMAS")
addOption(document.form.SubCat,"PASO DE GUILLERMO","PASO DE GUILLERMO")
addOption(document.form.SubCat,"SAN MIGUEL DE LAS CASITAS","SAN MIGUEL DE LAS CASITAS")
addOption(document.form.SubCat,"XICHU","XICHU")
addOption(document.form.SubCat,"ESI 1 EL RUCIO","ESI 1 EL RUCIO")
addOption(document.form.SubCat,"ESI 2 EL MILAGRO","ESI 2 EL MILAGRO")
addOption(document.form.SubCat,"ESI 3 LA PILA","ESI 3 LA PILA")
}
if(document.form.Category.value == 'León'){
addOption(document.form.SubCat,"ESI 34 LOS ALISOS","ESI 34 LOS ALISOS")
addOption(document.form.SubCat,"NUEVO VALLE DE MORENO","NUEVO VALLE DE MORENO")
addOption(document.form.SubCat,"HACIENDA  ARRIBA","HACIENDA  ARRIBA")
addOption(document.form.SubCat,"SANTA MARIA DE CEMENTOS","SANTA MARIA DE CEMENTOS")
addOption(document.form.SubCat,"NUEVO LINDERO","NUEVO LINDERO")
addOption(document.form.SubCat,"HOSPITAL GENERAL REGIONAL DE LEON (FARMACIA)","HOSPITAL GENERAL REGIONAL DE LEON (FARMACIA)")
addOption(document.form.SubCat,"SAN JOSE DEL CONSUELO","SAN JOSE DEL CONSUELO")
addOption(document.form.SubCat,"PLAN DE AYALA","PLAN DE AYALA")
addOption(document.form.SubCat,"HOSPITAL PSIQUIATRICO SAN PEDRO DEL MONTE","HOSPITAL PSIQUIATRICO SAN PEDRO DEL MONTE")
addOption(document.form.SubCat,"HOSPITAL DE ESPECIALIDAD MATERNO INFANTIL","HOSPITAL DE ESPECIALIDAD MATERNO INFANTIL")
addOption(document.form.SubCat,"LEON","LEON")
addOption(document.form.SubCat,"COL. LAS AMÉRICAS","COL. LAS AMÉRICAS")
addOption(document.form.SubCat,"BARRIO DE GUADALUPE","BARRIO DE GUADALUPE")
addOption(document.form.SubCat,"CERRITO DE JEREZ","CERRITO DE JEREZ")
addOption(document.form.SubCat,"CHAPALITA","CHAPALITA")
addOption(document.form.SubCat,"ESPAÑITA","ESPAÑITA")
addOption(document.form.SubCat,"LA FLORESTA","LA FLORESTA")
addOption(document.form.SubCat,"LOS LIMONES","LOS LIMONES")
addOption(document.form.SubCat,"LINDAVISTA","LINDAVISTA")
addOption(document.form.SubCat,"LOMAS DE LA TRINIDAD","LOMAS DE LA TRINIDAD")
addOption(document.form.SubCat,"LA LUZ","LA LUZ")
addOption(document.form.SubCat,"MARIA DOLORES","MARIA DOLORES")
addOption(document.form.SubCat,"LA ORIENTAL","LA ORIENTAL")
addOption(document.form.SubCat,"EL PAISAJE","EL PAISAJE")
addOption(document.form.SubCat,"PALOMARES","PALOMARES")
addOption(document.form.SubCat,"PILETAS","PILETAS")
addOption(document.form.SubCat,"LOS PINOS","LOS PINOS")
addOption(document.form.SubCat,"LA PISCINA","LA PISCINA")
addOption(document.form.SubCat,"SAN CARLOS DE ROMO","SAN CARLOS DE ROMO")
addOption(document.form.SubCat,"SAN FELIPE DE JESUS","SAN FELIPE DE JESUS")
addOption(document.form.SubCat,"SAN JOSE DE CEMENTOS","SAN JOSE DE CEMENTOS")
addOption(document.form.SubCat,"SAN JUAN BOSCO","SAN JUAN BOSCO")
addOption(document.form.SubCat,"SAN MARCOS","SAN MARCOS")
addOption(document.form.SubCat,"SAN NICOLAS","SAN NICOLAS")
addOption(document.form.SubCat,"SANTA RITA","SANTA RITA")
addOption(document.form.SubCat,"LAS TROJES","LAS TROJES")
addOption(document.form.SubCat,"SANTA ROSA DE LIMA (LEÓN)","SANTA ROSA DE LIMA (LEÓN)")
addOption(document.form.SubCat,"CASA BLANCA","CASA BLANCA")
addOption(document.form.SubCat,"LOS CASTILLOS","LOS CASTILLOS")
addOption(document.form.SubCat,"SAN PEDRO DE LOS HERNANDEZ","SAN PEDRO DE LOS HERNANDEZ")
addOption(document.form.SubCat,"RIVERA DE LA PRESA","RIVERA DE LA PRESA")
addOption(document.form.SubCat,"VALLE DE SAN BERNARDO","VALLE DE SAN BERNARDO")
addOption(document.form.SubCat,"JACINTO LOPEZ","JACINTO LOPEZ")
addOption(document.form.SubCat,"LOMAS DE GUADALUPE","LOMAS DE GUADALUPE")
addOption(document.form.SubCat,"VALLE DE SAN JOSE","VALLE DE SAN JOSE")
addOption(document.form.SubCat,"SAN FRANCISCO DE ASIS","SAN FRANCISCO DE ASIS")
addOption(document.form.SubCat,"LEON II","LEON II")
addOption(document.form.SubCat,"LA LIBERTAD","LA LIBERTAD")
addOption(document.form.SubCat,"8 DE MARZO","8 DE MARZO")
addOption(document.form.SubCat,"ARBOLEDAS DE LOS CASTILLOS","ARBOLEDAS DE LOS CASTILLOS")
addOption(document.form.SubCat,"ALFARO","ALFARO")
addOption(document.form.SubCat,"DUARTE","DUARTE")
addOption(document.form.SubCat,"LA SANDIA","LA SANDIA")
addOption(document.form.SubCat,"LOZA DE LOS PADRES","LOZA DE LOS PADRES")
addOption(document.form.SubCat,"LOS RAMIREZ","LOS RAMIREZ")
addOption(document.form.SubCat,"SAN JOSE DE LOS SAPOS","SAN JOSE DE LOS SAPOS")
addOption(document.form.SubCat,"SAN JUAN DE OTATES","SAN JUAN DE OTATES")
addOption(document.form.SubCat,"SAN JUDAS","SAN JUDAS")
addOption(document.form.SubCat,"SANTA ANA DEL CONDE","SANTA ANA DEL CONDE")
addOption(document.form.SubCat,"LOS SAUCES","LOS SAUCES")
addOption(document.form.SubCat,"CENTRO FAMILIAR LA SOLEDAD (LA JOYA)","CENTRO FAMILIAR LA SOLEDAD (LA JOYA)")
addOption(document.form.SubCat,"BALCONES DE LA JOYA","BALCONES DE LA JOYA")
addOption(document.form.SubCat,"LA ERMITA","LA ERMITA")
addOption(document.form.SubCat,"HOSPITAL GENERAL REGIONAL DE LEON (ALMACEN)","HOSPITAL GENERAL REGIONAL DE LEON (ALMACEN)")
}

if(document.form.Category.value == 'Manuel Doblado'){
addOption(document.form.SubCat,"CALZADA DE TEPOZAN","CALZADA DE TEPOZAN")
addOption(document.form.SubCat,"FRIAS","FRIAS")
addOption(document.form.SubCat,"HOSPITAL COMUNITARIO MANUEL DOBLADO","HOSPITAL COMUNITARIO MANUEL DOBLADO")
addOption(document.form.SubCat,"SAN JOSÉ DE OTATES","SAN JOSÉ DE OTATES")
addOption(document.form.SubCat,"SAN JUAN DE LA PUERTA","SAN JUAN DE LA PUERTA")
addOption(document.form.SubCat,"SAN PABLO (MANUEL DOBLADO)","SAN PABLO (MANUEL DOBLADO)")
addOption(document.form.SubCat,"ZAPOTE","ZAPOTE")
addOption(document.form.SubCat,"ESI 35 OJOS DE AGUA","ESI 35 OJOS DE AGUA")
}
if(document.form.Category.value == 'Purisima del Rincón'){
addOption(document.form.SubCat,"CAÑADA DE NEGROS","CAÑADA DE NEGROS")
addOption(document.form.SubCat,"EL CARMEN","EL CARMEN")
addOption(document.form.SubCat,"EL TORO","EL TORO")
addOption(document.form.SubCat,"HOSPITAL COMUNITARIO PURISIMA DEL RINCÓN","HOSPITAL COMUNITARIO PURISIMA DEL RINCÓN")
addOption(document.form.SubCat,"JALPA DE CANOVAS","JALPA DE CANOVAS")
addOption(document.form.SubCat,"POTRERILLOS","POTRERILLOS")
addOption(document.form.SubCat,"PRADERA","PRADERA")
}
if(document.form.Category.value == 'Romita'){
addOption(document.form.SubCat,"CERRO PRIETO (ROMITA)","CERRO PRIETO (ROMITA)")
addOption(document.form.SubCat,"CORRALES DE AYALA","CORRALES DE AYALA")
addOption(document.form.SubCat,"CRUZ DE AGUILAR","CRUZ DE AGUILAR")
addOption(document.form.SubCat,"EL JAGUEY","EL JAGUEY")
addOption(document.form.SubCat,"GAVIA DE RIONDA","GAVIA DE RIONDA")
addOption(document.form.SubCat,"HOSPITAL COMUNITARIO ROMITA","HOSPITAL COMUNITARIO ROMITA")
addOption(document.form.SubCat,"LA SARDINA","LA SARDINA")
addOption(document.form.SubCat,"MEZQUITE GORDO","MEZQUITE GORDO")
addOption(document.form.SubCat,"MONTE DE HOYOS","MONTE DE HOYOS")
addOption(document.form.SubCat,"SANTA ROSA DE RIVAS","SANTA ROSA DE RIVAS")
}
if(document.form.Category.value == 'San Francisco del Rinón'){
addOption(document.form.SubCat,"HOSPITAL COMUNITARIO SAN FRANCISCO DEL RINCÓN","HOSPITAL COMUNITARIO SAN FRANCISCO DEL RINCÓN")
addOption(document.form.SubCat,"JESÚS DEL MONTE","JESÚS DEL MONTE")
addOption(document.form.SubCat,"NUEVO JESÚS DEL MONTE","NUEVO JESÚS DEL MONTE")
addOption(document.form.SubCat,"PEÑUELAS","PEÑUELAS")
addOption(document.form.SubCat,"SAN CRISTOBAL","SAN CRISTOBAL")
addOption(document.form.SubCat,"SAN IGNACIO DE HIDALGO","SAN IGNACIO DE HIDALGO")
addOption(document.form.SubCat,"SAN ROQUE DE TORRES","SAN ROQUE DE TORRES")
addOption(document.form.SubCat,"SAUZ DE ARMENTA","SAUZ DE ARMENTA")
addOption(document.form.SubCat,"ESI 36 LA MURALLA","ESI 36 LA MURALLA")
addOption(document.form.SubCat,"ESI 37 VISTA HERMOSA","ESI 37 VISTA HERMOSA")
addOption(document.form.SubCat,"ESI 38 EL JARALILLO","ESI 38 EL JARALILLO")
}
if(document.form.Category.value == 'Silao'){
addOption(document.form.SubCat,"BAJIO DE BONILLAS","BAJIO DE BONILLAS")
addOption(document.form.SubCat,"CHICHIMEQUILLAS","CHICHIMEQUILLAS")
addOption(document.form.SubCat,"COL. NUEVO MÉXICO","COL. NUEVO MÉXICO")
addOption(document.form.SubCat,"COMANJILLA","COMANJILLA")
addOption(document.form.SubCat,"EL ESPEJO (SILAO)","EL ESPEJO (SILAO)")
addOption(document.form.SubCat,"EL PAXTLE","EL PAXTLE")
addOption(document.form.SubCat,"HOSPITAL COMUNITARIO SILAO","HOSPITAL COMUNITARIO SILAO")
addOption(document.form.SubCat,"LA ALDEA","LA ALDEA")
addOption(document.form.SubCat,"LOS RODRIGUEZ (SILAO)","LOS RODRIGUEZ (SILAO)")
addOption(document.form.SubCat,"MEDRANOS","MEDRANOS")
addOption(document.form.SubCat,"TREJO","TREJO")
addOption(document.form.SubCat,"HOSPITAL GENERAL DE SILAO","HOSPITAL GENERAL DE SILAO")
}

 if(document.form.Category.value == 'Bancomer'){
//var cad1="Acura";
addOption(document.form.SubCat,"0137032404-GRUPO SECEXA", "0137032404-GRUPO SECEXA");
//addOption(document.form.SubCat,"Cuenta Bancomer-00001 DLLS", "Cuenta Bancomer-0001 DLLS");
}
 if(document.form.Category.value == 'First Bank'){
//var cad1="Acura";
addOption(document.form.SubCat,"SECEXA INTERNACIONAL", "SECEXA INTERNACIONAL");
//addOption(document.form.SubCat,"Cuenta Bancomer-00001 DLLS", "Cuenta Bancomer-0001 DLLS");
}

    var juris= form.Category.value;
    form.txtf_1.value=juris;
}

function SelectSubCat_M(){
// ON selection of category this function will work

               removeAllOptions(document.form.SubCat2);
//addOption(document.form.SubCat, "", "No. de Cuenta", "");     

               if(document.form.SubCat.value == 'IXTLAHUACA')
			   
			   {
				 addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--") 
				 addOption(document.form.SubCat2,"CASA DE SALUD LA CONCEPCION DE LOS BAÑOS III  ** IXT - IXT *","CASA DE SALUD LA CONCEPCION DE LOS BAÑOS III  ** IXT - IXT *")
addOption(document.form.SubCat2,"SAN PEDRO DE LOS BAÑOS I ( IXTLAHUACA )","SAN PEDRO DE LOS BAÑOS I ( IXTLAHUACA )")
addOption(document.form.SubCat2,"C.S. CONCEPCION LOS BAÑOS (1) IXT - IXTLAHUACA","C.S. CONCEPCION LOS BAÑOS (1) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"C.S. CONCEPCION LOS BAÑOS (2) IXT - IXTLAHUACA","C.S. CONCEPCION LOS BAÑOS (2) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"C.S. CONCEPCION LOS BAÑOS (3) IXT-IXTLAHUACA","C.S. CONCEPCION LOS BAÑOS (3) IXT-IXTLAHUACA")
addOption(document.form.SubCat2,"C.S. CONCEPCION LOS BAÑOS (4) IXT - IXTLAHUACA","C.S. CONCEPCION LOS BAÑOS (4) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"EMILIANO ZAPATA ( 1 ) (IXTLAHUACA)","EMILIANO ZAPATA ( 1 ) (IXTLAHUACA)")
addOption(document.form.SubCat2,"EMILIANO ZAPATA ( 2 ) (IXTLAHUACA)","EMILIANO ZAPATA ( 2 ) (IXTLAHUACA)")
addOption(document.form.SubCat2,"EMILIANO ZAPATA ( 3 ) (IXTLAHUACA)","EMILIANO ZAPATA ( 3 ) (IXTLAHUACA)")
addOption(document.form.SubCat2,"EMILIANO ZAPATA ( 4 )(IXTLAHUACA)","EMILIANO ZAPATA ( 4 )(IXTLAHUACA)")
addOption(document.form.SubCat2,"C.S. GUADALUPE CACHI (1) IXT - IXTLAHUACA","C.S. GUADALUPE CACHI (1) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"C.S. GUADALUPE CACHI (2) IXT - IXTLAHUACA","C.S. GUADALUPE CACHI (2) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"GUADALUPE DEL RIO (IXTLAHUACA)","GUADALUPE DEL RIO (IXTLAHUACA)")
addOption(document.form.SubCat2,"C.S. JALPA DE LOS BAÑOS ++ IXT - IXTLAHUACA ++","C.S. JALPA DE LOS BAÑOS ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"C.S. LA GUADALUPANA","C.S. LA GUADALUPANA")
addOption(document.form.SubCat2,"SAN ANDRES DEL PEDREGAL (1) IXT- IXTLAHUACA","SAN ANDRES DEL PEDREGAL (1) IXT- IXTLAHUACA")
addOption(document.form.SubCat2,"SAN ANDRES DEL PEDREGAL (2) IXT - IXTLAHUACA","SAN ANDRES DEL PEDREGAL (2) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"SAN ANDRES DEL PEDREGAL (3) IXT - IXTLAHUACA","SAN ANDRES DEL PEDREGAL (3) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"SAN BARTOLO DEL LLANO (1) (IXTLAHUACA)","SAN BARTOLO DEL LLANO (1) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SAN BARTOLO DEL LLANO (2) (IXTLAHUACA)","SAN BARTOLO DEL LLANO (2) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SAN BARTOLO DEL LLANO (3) (IXTLAHUACA)","SAN BARTOLO DEL LLANO (3) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SAN CRISTOBAL DE LOS BAÑOS(1) (IXTLAHUACA)","SAN CRISTOBAL DE LOS BAÑOS(1) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SAN CRISTOBAL DE LOS BAÑOS(2) (IXTLAHUACA)","SAN CRISTOBAL DE LOS BAÑOS(2) (IXTLAHUACA)")
addOption(document.form.SubCat2,"C.S. SAN FRANCISCO DEL RIO ++ IXT - IXTLAHUACA ++","C.S. SAN FRANCISCO DEL RIO ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"SAN FRANCISCO IXTLAHUACA (1) (IXTLAHUACA)","SAN FRANCISCO IXTLAHUACA (1) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SAN FRANCISCO IXTLAHUACA (2) ","SAN FRANCISCO IXTLAHUACA (2) ")
addOption(document.form.SubCat2,"SAN IGNACIO DEL PEDREGAL (1)IXT-IXTLAHUACA","SAN IGNACIO DEL PEDREGAL (1)IXT-IXTLAHUACA")
addOption(document.form.SubCat2,"C.S. SAN ILDEFONSO PROFA. ELDA GOMEZ LUGO","C.S. SAN ILDEFONSO PROFA. ELDA GOMEZ LUGO")
addOption(document.form.SubCat2,"C.S. SAN JERONIMO IXTAPANTONGO ++ IXT - IXTLAHUACA ++","C.S. SAN JERONIMO IXTAPANTONGO ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"C.S. SAN JOAQUIN LA CABECERA","C.S. SAN JOAQUIN LA CABECERA")
addOption(document.form.SubCat2,"C.S. SAN LORENZO TOXICO (1) ++ IXT - IXTLAHUACA ++","C.S. SAN LORENZO TOXICO (1) ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"C.S. SAN LORENZO TOXICO (2) ++ IXT- IXTLAHUACA ++","C.S. SAN LORENZO TOXICO (2) ++ IXT- IXTLAHUACA ++")
addOption(document.form.SubCat2,"C.S. SAN LORENZO TOXICO (3) ++ IXT - IXTLAHUACA ++","C.S. SAN LORENZO TOXICO (3) ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"C.S. SAN PABLO DE LOS REMEDIOS ++ IXT - IXTLAHUACA ++","C.S. SAN PABLO DE LOS REMEDIOS ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"SAN PEDRO BARRIO (1) (IXTLAHUACA)","SAN PEDRO BARRIO (1) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SAN PEDRO BARRIO (2) (IXTLAHUACA)","SAN PEDRO BARRIO (2) (IXTLAHUACA)")
addOption(document.form.SubCat2,"C.S. SAN PEDRO DE LOS BAÑOS II (1)  IXT - IXTLAHUACA","C.S. SAN PEDRO DE LOS BAÑOS II (1)  IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"C.S. SAN PEDRO DE LOS BAÑOS II (2)  IXT - IXTLAHUACA","C.S. SAN PEDRO DE LOS BAÑOS II (2)  IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"SANTA ANA IXTLAHUACA (1) (IXTLAHUACA)","SANTA ANA IXTLAHUACA (1) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SANTA ANA IXTLAHUACA (2) (IXTLAHUACA)","SANTA ANA IXTLAHUACA (2) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SANTA ANA IXTLAHUACA (3) (IXTLAHUACA)","SANTA ANA IXTLAHUACA (3) (IXTLAHUACA)")
addOption(document.form.SubCat2,"C.S. SANTA ANA LA LADERA","C.S. SANTA ANA LA LADERA")
addOption(document.form.SubCat2,"SANTA MARIA DEL LLANO (1) (IXTLAHUACA)","SANTA MARIA DEL LLANO (1) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SANTA MARIA DEL LLANO (2) (IXTLAHUACA)","SANTA MARIA DEL LLANO (2) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SANTO DOMINGO DE GUZMAN (1) ( IXTLAHUACA )","SANTO DOMINGO DE GUZMAN (1) ( IXTLAHUACA )")
addOption(document.form.SubCat2,"SANTO DOMINGO DE GUZMAN (2) ( IXTLAHUACA )","SANTO DOMINGO DE GUZMAN (2) ( IXTLAHUACA )")
addOption(document.form.SubCat2,"SANTO DOMINGO DE GUZMAN (3) (IXTLAHUACA)","SANTO DOMINGO DE GUZMAN (3) (IXTLAHUACA)")
addOption(document.form.SubCat2,"C.S. PATHE DE MULA LOS CEDROS","C.S. PATHE DE MULA LOS CEDROS")
addOption(document.form.SubCat2,"CASA DE SALUD CONCEPCION ENYEGE ** IXT - IXTLAHUACA **","CASA DE SALUD CONCEPCION ENYEGE ** IXT - IXTLAHUACA **")
addOption(document.form.SubCat2,"BRIGADA JURISDICCION IXTLAHUACA ","BRIGADA JURISDICCION IXTLAHUACA ")
addOption(document.form.SubCat2,"CASA DE SALUD JALPA DE DOLORES (IXTLAHUACA)","CASA DE SALUD JALPA DE DOLORES (IXTLAHUACA)")
addOption(document.form.SubCat2,"CASA DE SALUD SAN ANTONIO BONIXI **IXT-IXTLAHUACA**","CASA DE SALUD SAN ANTONIO BONIXI **IXT-IXTLAHUACA**")
addOption(document.form.SubCat2,"CASA DE SALUD SAN ISIDRO BOXIPE ++ IXT - IXTLAHUACA ++","CASA DE SALUD SAN ISIDRO BOXIPE ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"CASA DE SALUD SAN MIGUEL ENYEJE ** IXT-IXTLAHUACA**","CASA DE SALUD SAN MIGUEL ENYEJE ** IXT-IXTLAHUACA**")
addOption(document.form.SubCat2,"SAN PEDRO DE LOS BAÑOS III CASA BLANCA  (IXTLAHUACA)","SAN PEDRO DE LOS BAÑOS III CASA BLANCA  (IXTLAHUACA)")

			   }
			   
	  if(document.form.SubCat.value == 'JIQUIPILCO')
			   {
				addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")    
				addOption(document.form.SubCat2,"JIQUIPILCO  ( IXTLAHUACA )","JIQUIPILCO  ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"C.S. BUENOS AIRES","C.S. BUENOS AIRES")
				addOption(document.form.SubCat2,"C.S. EJIDO LLANO GRANDE ** IXT - JIQUIPILCO **","C.S. EJIDO LLANO GRANDE ** IXT - JIQUIPILCO **")
				addOption(document.form.SubCat2,"C.S. EJIDO LOMA DE MALACOTA ** IXT - JIQUIPILCO **","C.S. EJIDO LOMA DE MALACOTA ** IXT - JIQUIPILCO **")
				addOption(document.form.SubCat2,"C.S. LOMA HIDALGO **IXT - JIQUIPILCO**","C.S. LOMA HIDALGO **IXT - JIQUIPILCO**")
				addOption(document.form.SubCat2,"MANZANA QUINTA (1) IXT - JIQUIPILCO","MANZANA QUINTA (1) IXT - JIQUIPILCO")
				addOption(document.form.SubCat2,"MANZANA QUINTA (2) IXT - JIQUIPILCO","MANZANA QUINTA (2) IXT - JIQUIPILCO")
				addOption(document.form.SubCat2,"MANZANA SEXTA ** IXT - JIQUIPILCO **","MANZANA SEXTA ** IXT - JIQUIPILCO **")
				addOption(document.form.SubCat2,"C.S. MOXTEJE","C.S. MOXTEJE")
				addOption(document.form.SubCat2,"C.S. SAN ANTONIO NIXINI ++ IXT - JIQUIPILCO ++","C.S. SAN ANTONIO NIXINI ++ IXT - JIQUIPILCO ++")
				addOption(document.form.SubCat2,"SAN BARTOLO OXTOTITLAN (1) (IXTLAHUACA ) ","SAN BARTOLO OXTOTITLAN (1) (IXTLAHUACA ) ")
				addOption(document.form.SubCat2,"PORTEZUELOS IXT -  IXTLAHUACA","PORTEZUELOS IXT -  IXTLAHUACA")
				addOption(document.form.SubCat2,"C.S. SAN FELIPE SANTIAGO (1) IXT - JIQUIPILCO","C.S. SAN FELIPE SANTIAGO (1) IXT - JIQUIPILCO")
				addOption(document.form.SubCat2,"C.S. SAN FELIPE SANTIAGO (2) IXT - JIQUIPILCO","C.S. SAN FELIPE SANTIAGO (2) IXT - JIQUIPILCO")
				addOption(document.form.SubCat2,"SAN JOSE DEL SITIO (1) ( IXTLAHUACA )","SAN JOSE DEL SITIO (1) ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"SAN JOSE DEL SITIO (2) ( IXTLAHUACA ) ","SAN JOSE DEL SITIO (2) ( IXTLAHUACA ) ")
				addOption(document.form.SubCat2,"C.S. SAN MIGUEL YUXTEPEC","C.S. SAN MIGUEL YUXTEPEC")
				addOption(document.form.SubCat2,"C.S. SANTA CRUZ TEPEXPAN (1) ","C.S. SANTA CRUZ TEPEXPAN (1) ")
				addOption(document.form.SubCat2,"C.S. SANTA CRUZ TEPEXPAN (2)","C.S. SANTA CRUZ TEPEXPAN (2)")
				addOption(document.form.SubCat2,"C.S. SANTA CRUZ TEPEXPAN (3)","C.S. SANTA CRUZ TEPEXPAN (3)")
				addOption(document.form.SubCat2,"SANTA MARIA NATIVITAS(1) ( IXTLAHUACA )","SANTA MARIA NATIVITAS(1) ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"SANTA MARIA NATIVITAS(2)  (  IXTLAHUACA )","SANTA MARIA NATIVITAS(2)  (  IXTLAHUACA )")
				addOption(document.form.SubCat2,"CASA DE SALUD TIERRA BLANCA ** IXT- JIQUIPILCO **","CASA DE SALUD TIERRA BLANCA ** IXT- JIQUIPILCO **")
					 
			   }
			   if(document.form.SubCat.value == 'JOCOTITLAN')
			   {
				addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")    
				addOption(document.form.SubCat2,"C.S. PROVIDENCIA ++ IXT - JOCOTITLAN ++","C.S. PROVIDENCIA ++ IXT - JOCOTITLAN ++")
				addOption(document.form.SubCat2,"HUEMETLA (1) IXT-JOCOTITLAN","HUEMETLA (1) IXT-JOCOTITLAN")
				addOption(document.form.SubCat2,"C.S. JOCOTITLAN (1) IXT - JOCOTITLAN","C.S. JOCOTITLAN (1) IXT - JOCOTITLAN")
				addOption(document.form.SubCat2,"C.S. JOCOTITLAN (2) IXT - JOCOTITLAN","C.S. JOCOTITLAN (2) IXT - JOCOTITLAN")
				addOption(document.form.SubCat2,"C.S. LOS REYES (1) ++ IXT - JOCOTITLAN ++","C.S. LOS REYES (1) ++ IXT - JOCOTITLAN ++")
				addOption(document.form.SubCat2,"C.S. MAVORO ++ IXT - JOCOTITLAN ++","C.S. MAVORO ++ IXT - JOCOTITLAN ++")
				addOption(document.form.SubCat2,"C.S. SAN FRANCISCO CHEJE ++ IXT - JOCOTITLAN ++","C.S. SAN FRANCISCO CHEJE ++ IXT - JOCOTITLAN ++")
				addOption(document.form.SubCat2,"SAN JUAN COAJOMULCO (IXTLAHUACA)","SAN JUAN COAJOMULCO (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SAN MIGUEL TENOCHTITLAN (1) (IXTLAHUACA)","SAN MIGUEL TENOCHTITLAN (1) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SAN MIGUEL TENOCHTITLAN (2) (IXTLAHUACA)","SAN MIGUEL TENOCHTITLAN (2) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SANTA MARIA CITENDEJE (1) ( IXTLAHUACA )","SANTA MARIA CITENDEJE (1) ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"SANTA MARIA CITENDEJE (2) ( IXTLAHUACA )","SANTA MARIA CITENDEJE (2) ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"C.S. SANTA MARIA ENDARE ++ IXT - JOCOTITLAN ++","C.S. SANTA MARIA ENDARE ++ IXT - JOCOTITLAN ++")
				addOption(document.form.SubCat2,"C.S. SANTIAGO CASANDEJE (1) IXT - JOCOTITLAN","C.S. SANTIAGO CASANDEJE (1) IXT - JOCOTITLAN")
				addOption(document.form.SubCat2,"C.S. TIACAQUE ++ IXT - JOCOTITLAN ++","C.S. TIACAQUE ++ IXT - JOCOTITLAN ++")
				addOption(document.form.SubCat2,"SANTIAGO YECHE (1) ( IXTLAHUACA )","SANTIAGO YECHE (1) ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"SANTIAGO YECHE NO EXISTE","SANTIAGO YECHE NO EXISTE")

			   }
			   
			  if(document.form.SubCat.value == 'SAN BARTOLO MORELOS')
			   {
				addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   
				addOption(document.form.SubCat2,"SAN BARTOLO MORELOS ( IXTLAHUACA )","SAN BARTOLO MORELOS ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"BARRIO CUARTO LA LOMA    ( IXTLAHUACA )","BARRIO CUARTO LA LOMA    ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"BARRIO CUARTO LA LOMA (NO EXISTE)","BARRIO CUARTO LA LOMA (NO EXISTE)")
				addOption(document.form.SubCat2,"COL. FRANCISCO I. MADERO ( IXTLAHUACA )","COL. FRANCISCO I. MADERO ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"SAN GREGORIO MACAPEXCO ( IXTLAHUACA )","SAN GREGORIO MACAPEXCO ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"C.S. SAN JOSE LA EPIFANIA","C.S. SAN JOSE LA EPIFANIA")
				addOption(document.form.SubCat2,"C.S. SAN LORENZO MALACOTA (1)","C.S. SAN LORENZO MALACOTA (1)")
				addOption(document.form.SubCat2,"C.S. SAN LORENZO MALACOTA (2)","C.S. SAN LORENZO MALACOTA (2)")
				addOption(document.form.SubCat2,"C.S. SAN LORENZO MALACOTA - ODONTOLOGICO","C.S. SAN LORENZO MALACOTA - ODONTOLOGICO")
				addOption(document.form.SubCat2,"C.S. SAN MARCOS TLAZALPAN (1) IXT-SAN BARTOLO MORELOS","C.S. SAN MARCOS TLAZALPAN (1) IXT-SAN BARTOLO MORELOS")
				addOption(document.form.SubCat2,"C.S. SAN MARCOS TLAZALPAN (2) IXT-SAN BARTOLO MORELOS","C.S. SAN MARCOS TLAZALPAN (2) IXT-SAN BARTOLO MORELOS")
				addOption(document.form.SubCat2,"TLALPUJAHUILLA ( IXTLAHUACA )","TLALPUJAHUILLA ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"C.S. SAN SEBASTIAN BUENOS AIRES","C.S. SAN SEBASTIAN BUENOS AIRES")
				addOption(document.form.SubCat2,"C.S. SANTA CLARA DE JUAREZ","C.S. SANTA CLARA DE JUAREZ")
				addOption(document.form.SubCat2,"CASA DE SALUD EJIDO SN ANTONIO ** IXT-SAN BARTOLO MORELOS**","CASA DE SALUD EJIDO SN ANTONIO ** IXT-SAN BARTOLO MORELOS**")
				addOption(document.form.SubCat2,"CASA DE SALUD XINTE DE LAGOS (IXTLAHUACA)","CASA DE SALUD XINTE DE LAGOS (IXTLAHUACA)")
   
			   }
			   
			   if(document.form.SubCat.value == 'SAN FELIPE DEL PROGRESO')
			   {
				addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--") 
				addOption(document.form.SubCat2,"CASA DE SALUD CHARCOS AZULES","CASA DE SALUD CHARCOS AZULES")
				addOption(document.form.SubCat2,"C.S. CALVARIO DEL CARMEN (1) IXT- SAN FELIPE DEL PROGRESO","C.S. CALVARIO DEL CARMEN (1) IXT- SAN FELIPE DEL PROGRESO")
				addOption(document.form.SubCat2,"C.S. CALVARIO DEL CARMEN (2) IXT - SAN FELIPE DEL PROGRESO","C.S. CALVARIO DEL CARMEN (2) IXT - SAN FELIPE DEL PROGRESO")
				addOption(document.form.SubCat2,"C.S. CARMEN OCOTEPEC (1) IXT-SAN FELIPE DEL PROGRESO","C.S. CARMEN OCOTEPEC (1) IXT-SAN FELIPE DEL PROGRESO")
				addOption(document.form.SubCat2,"C.S. CARMEN OCOTEPEC (2) IXT-SAN FELIPE DEL PROGRESO","C.S. CARMEN OCOTEPEC (2) IXT-SAN FELIPE DEL PROGRESO")
				addOption(document.form.SubCat2,"C.S. CARMEN OCOTEPEC (3) IXT-SAN FELIPE DEL PROGRESO","C.S. CARMEN OCOTEPEC (3) IXT-SAN FELIPE DEL PROGRESO")
				addOption(document.form.SubCat2,"CHICHILPA (1) (IXTLAHUACA)","CHICHILPA (1) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"CHICHILPA (2) (IXTLAHUACA)","CHICHILPA (2) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"CHOTEJE (IXTLAHUACA)","CHOTEJE (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SAN PEDRO EL ALTO (1) (IXTLAHUACA)","SAN PEDRO EL ALTO (1) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SAN PEDRO EL ALTO (2) (IXTLAHUACA)","SAN PEDRO EL ALTO (2) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SAN PEDRO EL ALTO (3) (IXTLAHUACA)","SAN PEDRO EL ALTO (3) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"DOLORES HIDALGO ( IXTLAHUACA )","DOLORES HIDALGO ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"EL TUNAL ( 1 )(IXTLAHUACA)","EL TUNAL ( 1 )(IXTLAHUACA)")
				addOption(document.form.SubCat2,"EL TUNAL ( 2 )(IXTLAHUACA)","EL TUNAL ( 2 )(IXTLAHUACA)")
				addOption(document.form.SubCat2,"C.S. EL TUNAL NENAXI ++ IXT-SAN FELIPE DEL PROGRESO ++","C.S. EL TUNAL NENAXI ++ IXT-SAN FELIPE DEL PROGRESO ++")
				addOption(document.form.SubCat2,"EMILIO PORTES GIL  (1) (IXTLAHUACA)","EMILIO PORTES GIL  (1) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"EMILIO PORTES GIL(2) (IXTLAHUACA)","EMILIO PORTES GIL(2) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"EMILIO PORTES GIL(3) (IXTLAHUACA)","EMILIO PORTES GIL(3) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"FRESNO NICHI (IXTLAHUACA)","FRESNO NICHI (IXTLAHUACA)")
				addOption(document.form.SubCat2,"C.S. LA VIRGEN ++ IXTL - SAN FELIPE DEL PROGRESO ++","C.S. LA VIRGEN ++ IXTL - SAN FELIPE DEL PROGRESO ++")
				addOption(document.form.SubCat2,"C.S. LA VIRGEN - ODONTOLOGICO ++ IXT- SAN FELIPE DEL PROGRES","C.S. LA VIRGEN - ODONTOLOGICO ++ IXT- SAN FELIPE DEL PROGRES")
				addOption(document.form.SubCat2,"UNIDAD MOVIL LAS PALOMAS NO EXISTE","UNIDAD MOVIL LAS PALOMAS NO EXISTE")
				addOption(document.form.SubCat2," PALMILLAS ** IXT - SAN FELIPE DEL PROGRESO **"," PALMILLAS ** IXT - SAN FELIPE DEL PROGRESO **")
				addOption(document.form.SubCat2,"C.S. PURISIMA CONCEPCION MAYORAZGO (1) IXT-SAN FELIPE DEL P.","C.S. PURISIMA CONCEPCION MAYORAZGO (1) IXT-SAN FELIPE DEL P.")
				addOption(document.form.SubCat2,"C.S. PURISIMA CONCEPCION MAYORAZGO (2) IXT-SAN FELIPE DEL P.","C.S. PURISIMA CONCEPCION MAYORAZGO (2) IXT-SAN FELIPE DEL P.")
				addOption(document.form.SubCat2,"RINCON DE LOS PIRULES (IXTLAHUACA)","RINCON DE LOS PIRULES (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SAN AGUSTIN MEXTEPEC (1)  IXTLAHUACA","SAN AGUSTIN MEXTEPEC (1)  IXTLAHUACA")
				addOption(document.form.SubCat2,"SAN AGUSTIN MEXTEPEC (2)   IXTLAHUACA","SAN AGUSTIN MEXTEPEC (2)   IXTLAHUACA")
				addOption(document.form.SubCat2,"SAN ANTONIO MEXTEPEC (1) SAN FELIPE DEL PROGRESO-IXT","SAN ANTONIO MEXTEPEC (1) SAN FELIPE DEL PROGRESO-IXT")
				addOption(document.form.SubCat2,"SAN ANTONIO MEXTEPEC (2) SAN FELIPE DEL PROGRESO-IXT","SAN ANTONIO MEXTEPEC (2) SAN FELIPE DEL PROGRESO-IXT")
				addOption(document.form.SubCat2,"RIO HOYOS BUENAVISTA(1) (IXTLAHUACA)","RIO HOYOS BUENAVISTA(1) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"RIO HOYOS BUENAVISTA(2) (IXTLAHUACA)","RIO HOYOS BUENAVISTA(2) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"C.S. SAN ANTONIO DE LAS HUERTAS","C.S. SAN ANTONIO DE LAS HUERTAS")
				addOption(document.form.SubCat2,"C.S. SAN ANTONIO LA CIENEGA *IXT - SAN FELIPE DEL PROGRESO*","C.S. SAN ANTONIO LA CIENEGA *IXT - SAN FELIPE DEL PROGRESO*")
				addOption(document.form.SubCat2,"SAN JERONIMO BONCHETE (IXTLAHUACA)","SAN JERONIMO BONCHETE (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SAN JUAN COTE EJIDO ** IXT - SAN FELIPE DEL PROGRESO **","SAN JUAN COTE EJIDO ** IXT - SAN FELIPE DEL PROGRESO **")
				addOption(document.form.SubCat2,"SAN JERONIMO MAVATI (IXTLAHUACA)","SAN JERONIMO MAVATI (IXTLAHUACA)")
				addOption(document.form.SubCat2,"C.S. SAN JUAN JALPA (1) IXT-SAN FELIPE DEL PROGRESO","C.S. SAN JUAN JALPA (1) IXT-SAN FELIPE DEL PROGRESO")
				addOption(document.form.SubCat2,"C.S. SAN JUAN JALPA (2) IXT-SAN FELIPE DEL PROGRESO","C.S. SAN JUAN JALPA (2) IXT-SAN FELIPE DEL PROGRESO")
				addOption(document.form.SubCat2,"SAN MIGUEL LA LABOR (1) (IXTLAHUACA)","SAN MIGUEL LA LABOR (1) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SAN MIGUEL LA LABOR (2) (IXTLAHUACA)","SAN MIGUEL LA LABOR (2) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"C.S. SAN NICOLAS GUADALUPE (1) ++ IXT - SAN FELIPE DEL PROG+","C.S. SAN NICOLAS GUADALUPE (1) ++ IXT - SAN FELIPE DEL PROG+")
				addOption(document.form.SubCat2,"C.S. SAN NICOLAS GUADALUPE (2) ++ IXT- SAN FELIPE DEL PROG.","C.S. SAN NICOLAS GUADALUPE (2) ++ IXT- SAN FELIPE DEL PROG.")
				addOption(document.form.SubCat2,"C.S. SAN NICOLAS GUADALUPE (3) ++ IXTL - SAN FELIPE DEL PROG","C.S. SAN NICOLAS GUADALUPE (3) ++ IXTL - SAN FELIPE DEL PROG")
				addOption(document.form.SubCat2,"SAN PABLO TLALCHICHILPA (1) (IXTLAHUACA)","SAN PABLO TLALCHICHILPA (1) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SAN PABLO TLALCHICHILPA (2) (IXTLAHUACA)","SAN PABLO TLALCHICHILPA (2) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"C.S. SANTA ANA NICHI EJIDO ++ IXT - SAN FELIPE DEL PROGRESO ","C.S. SANTA ANA NICHI EJIDO ++ IXT - SAN FELIPE DEL PROGRESO ")
				addOption(document.form.SubCat2,"LA MESA ( 1 ) (IXTLAHUACA)","LA MESA ( 1 ) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"LA MESA ( 2 ) (IXTLAHUACA)","LA MESA ( 2 ) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"LA MESA ( 3 ) (IXTLAHUACA)","LA MESA ( 3 ) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"C.S. SAN JOQUIN LA MILLAS (1) ++ IXT - SAN JOSE DEL RINCON +","C.S. SAN JOQUIN LA MILLAS (1) ++ IXT - SAN JOSE DEL RINCON +")
				addOption(document.form.SubCat2,"C.S. SAN JOQUIN LA MILLAS (2) ++ IXT - SAN JOSE DEL RINCON +","C.S. SAN JOQUIN LA MILLAS (2) ++ IXT - SAN JOSE DEL RINCON +")
				addOption(document.form.SubCat2,"GUADALUPE COTE","GUADALUPE COTE")
				addOption(document.form.SubCat2,"CASA DE SALUD EJ. DE SAN PEDRO EL ALTO 1 (IXTLAHUACA)","CASA DE SALUD EJ. DE SAN PEDRO EL ALTO 1 (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SANTA ANA NICHI CENTRO ** IXT - SAN FELIPE DEL PROGRESO **","SANTA ANA NICHI CENTRO ** IXT - SAN FELIPE DEL PROGRESO **")
				addOption(document.form.SubCat2,"SAN JERONIMO MAVATI PAC (IXTLAHUACA)","SAN JERONIMO MAVATI PAC (IXTLAHUACA)")
				addOption(document.form.SubCat2,"CASA DE SALUD EJ. LA VIRJEN (IXTLAHUACA)","CASA DE SALUD EJ. LA VIRJEN (IXTLAHUACA)")
				addOption(document.form.SubCat2,"CASA DE SALUD EJ. LA VIRGEN  (IXTLAHUACA)","CASA DE SALUD EJ. LA VIRGEN  (IXTLAHUACA)")
				addOption(document.form.SubCat2,"DIOS PADRE  ** IXT - SAN FELIPE DEL PROGRESO**","DIOS PADRE  ** IXT - SAN FELIPE DEL PROGRESO**")
				addOption(document.form.SubCat2,"AGUA ZARCA NICHI (IXTLAHUACA)","AGUA ZARCA NICHI (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SAN JUAN COTE CENTRO","SAN JUAN COTE CENTRO")
				addOption(document.form.SubCat2,"CASA DE SALUD TEPETITLAN **IXT-SAN FELIPE DEL PROGRESO**","CASA DE SALUD TEPETITLAN **IXT-SAN FELIPE DEL PROGRESO**")
				addOption(document.form.SubCat2,"LAS PALOMAS ","LAS PALOMAS ")
  
			   }
			   
			    if(document.form.SubCat.value == 'SAN JOSE DEL RINCON')
			   {
				addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--") 
				addOption(document.form.SubCat2,"CASA DE SALUD EL LIJADERO","CASA DE SALUD EL LIJADERO")
				addOption(document.form.SubCat2,"CASA DE SALUD TRAMPA GRANDE ( IXTLAHUACA )","CASA DE SALUD TRAMPA GRANDE ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"CASA DE SALUD TEJOCOTE DEL CENTRO ( IXTLAHUACA )","CASA DE SALUD TEJOCOTE DEL CENTRO ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"SAN JOAQUIN DEL MONTE ( SAN JOSE DEL RINCON )","SAN JOAQUIN DEL MONTE ( SAN JOSE DEL RINCON )")
				addOption(document.form.SubCat2,"CASA DE SALUD MINITA DEL CEDRO ( IXTLAHUACA )","CASA DE SALUD MINITA DEL CEDRO ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"CASA DE SALUD SAN MIGUEL DEL CENTRO II (IXTLAHUACA)","CASA DE SALUD SAN MIGUEL DEL CENTRO II (IXTLAHUACA)")
				addOption(document.form.SubCat2,"AGUA ZARCA PUEBLO NUEVO PAC (1)  ( IXTLAHUACA )","AGUA ZARCA PUEBLO NUEVO PAC (1)  ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"AGUA ZARCA PUEBLO NUEVO PAC (2)  ( IXTLAHUACA )","AGUA ZARCA PUEBLO NUEVO PAC (2)  ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"CONCEPCION DE LA VENTA  **IXT-SN. JOSE DEL RINCON**","CONCEPCION DE LA VENTA  **IXT-SN. JOSE DEL RINCON**")
				addOption(document.form.SubCat2,"CONCEPCIÓN DEL MONTE (1) (IXTLAHUACA)","CONCEPCIÓN DEL MONTE (1) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"EJIDO DE LA SOLEDAD (IXTLAHUACA)","EJIDO DE LA SOLEDAD (IXTLAHUACA)")
				addOption(document.form.SubCat2," EL PINTAL (IXTLAHUACA)"," EL PINTAL (IXTLAHUACA)")
				addOption(document.form.SubCat2,"GUADALUPE BUENAVISTA (1) (IXTLAHUACA)","GUADALUPE BUENAVISTA (1) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"GUADALUPE BUENAVISTA (2) (IXTLAHUACA)","GUADALUPE BUENAVISTA (2) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"C.S. GUARDA DE LA LAGUNITA **IXT - SAN JOSE DEL RINCON **","C.S. GUARDA DE LA LAGUNITA **IXT - SAN JOSE DEL RINCON **")
				addOption(document.form.SubCat2,"C.S. GUARDA DE SAN ANTONIO BUENAVISTA (1) IXT-SAN JOSE DEL R","C.S. GUARDA DE SAN ANTONIO BUENAVISTA (1) IXT-SAN JOSE DEL R")
				addOption(document.form.SubCat2,"C.S. GUARDA DE SAN ANTONIO BUENAVISTA (2) IXT-SAN JOSE DEL R","C.S. GUARDA DE SAN ANTONIO BUENAVISTA (2) IXT-SAN JOSE DEL R")
				addOption(document.form.SubCat2,"C.S. GUARDA DE GUADALUPE","C.S. GUARDA DE GUADALUPE")
				addOption(document.form.SubCat2,"C.S. LAS ROSAS ** IXT - SAN JOSE DEL RINCON **","C.S. LAS ROSAS ** IXT - SAN JOSE DEL RINCON **")
				addOption(document.form.SubCat2,"C.S. LOS LOBOS PAC","C.S. LOS LOBOS PAC")
				addOption(document.form.SubCat2,"C.S. PALO AMARILLO ++ IXT - SAN JOSE DEL RINCON ++","C.S. PALO AMARILLO ++ IXT - SAN JOSE DEL RINCON ++")
				addOption(document.form.SubCat2,"PROVIDENCIA ( 1 ) (IXTLAHUACA)","PROVIDENCIA ( 1 ) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"PROVIDENCIA ( 2 ) (IXTLAHUACA)","PROVIDENCIA ( 2 ) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"RAMEJE (1) IXT-SAN JOSE DEL RINCON","RAMEJE (1) IXT-SAN JOSE DEL RINCON")
				addOption(document.form.SubCat2,"RAMEJE (2) IXT-SAN JOSE DEL RINCON","RAMEJE (2) IXT-SAN JOSE DEL RINCON")
				addOption(document.form.SubCat2,"C.S. ROSA DE PALO AMARILLO ++ IXT - SAN JOSE DEL RINCON ++","C.S. ROSA DE PALO AMARILLO ++ IXT - SAN JOSE DEL RINCON ++")
				addOption(document.form.SubCat2,"PURISIMA JALTEPEC(1) ( IXTLAHUACA )","PURISIMA JALTEPEC(1) ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"PURISIMA JALTEPEC(2) ( IXTLAHUACA )","PURISIMA JALTEPEC(2) ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"SAN ANTONIO PUEBLO NUEVO ( 1 )  ( IXTLAHUACA )","SAN ANTONIO PUEBLO NUEVO ( 1 )  ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"SAN ANTONIO PUEBLO NUEVO ( 2) ( IXTLAHUACA )","SAN ANTONIO PUEBLO NUEVO ( 2) ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"C.S. SAN FELIPE DE JESUS (1)","C.S. SAN FELIPE DE JESUS (1)")
				addOption(document.form.SubCat2,"C.S. SAN FELIPE DE JESUS (2)","C.S. SAN FELIPE DE JESUS (2)")
				addOption(document.form.SubCat2,"SAN JUAN PALO SECO ** IXT - SAN JOSE DEL RINCON **","SAN JUAN PALO SECO ** IXT - SAN JOSE DEL RINCON **")
				addOption(document.form.SubCat2,"SAN MIGUEL AGUA BENDITA  ( IXTLAHUACA )","SAN MIGUEL AGUA BENDITA  ( IXTLAHUACA )")
				addOption(document.form.SubCat2,"SAN MIGUEL DEL CENTRO ( 1 ) (IXTLAHUACA)","SAN MIGUEL DEL CENTRO ( 1 ) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SAN MIGUEL DEL CENTRO ( 2 ) (IXTLAHUACA)","SAN MIGUEL DEL CENTRO ( 2 ) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"C.S. SAN ONOFRE CENTRO","C.S. SAN ONOFRE CENTRO")
				addOption(document.form.SubCat2,"SANTA CRUZ DEL TEJOCOTE (1 ) (IXTLAHUACA)","SANTA CRUZ DEL TEJOCOTE (1 ) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"CASA DE SALUD SAN FRANCISCO SOLO *IXT - SAN JOSE DEL RINCON*","CASA DE SALUD SAN FRANCISCO SOLO *IXT - SAN JOSE DEL RINCON*")
				addOption(document.form.SubCat2,"CASA DE SALUD YONDECE DEL CEDRO **IXT-SN. JOSE DEL RINCON**","CASA DE SALUD YONDECE DEL CEDRO **IXT-SN. JOSE DEL RINCON**")
				addOption(document.form.SubCat2,"SANTA ANA PUEBLO NUEVO (SAN DIEGO)","SANTA ANA PUEBLO NUEVO (SAN DIEGO)")
				addOption(document.form.SubCat2,"C.S. SAN DIEGO PUEBLO NUEVO","C.S. SAN DIEGO PUEBLO NUEVO")
				addOption(document.form.SubCat2,"FABRICA CONCEPCION (IXTLAHUACA)","FABRICA CONCEPCION (IXTLAHUACA)")
				addOption(document.form.SubCat2,"CEDRO DE LA MANZANA (1) (IXTLAHUACA)","CEDRO DE LA MANZANA (1) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"CEDRO DE LA MANZANA (2) (IXTLAHUACA)","CEDRO DE LA MANZANA (2) (IXTLAHUACA)")
				addOption(document.form.SubCat2,"SAN JOSE DEL RINCON (IXTLAHUACA)","SAN JOSE DEL RINCON (IXTLAHUACA)")
  
			   }
			   
			   if(document.form.SubCat.value == 'ACAMBAY')
			   
			   {
				addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")    
			    addOption(document.form.SubCat2,"AGOSTADERO (ATLACOMULCO)","AGOSTADERO (ATLACOMULCO)")
				addOption(document.form.SubCat2,"C.S. DATEJE (1) ATL-ACAMBAY","C.S. DATEJE (1) ATL-ACAMBAY")
				addOption(document.form.SubCat2,"C.S. DATEJE (2) ATL-ACAMBAY","C.S. DATEJE (2) ATL-ACAMBAY")
				addOption(document.form.SubCat2,"C.S. DONGU ++ ATL - ACAMBAY ++","C.S. DONGU ++ ATL - ACAMBAY ++")
				addOption(document.form.SubCat2,"C.S. DOXTEJE CENTRO ++ ATL - ACAMBAY ++","C.S. DOXTEJE CENTRO ++ ATL - ACAMBAY ++")
				addOption(document.form.SubCat2,"LA ESTANCIA II (ATLACOMULCO)","LA ESTANCIA II (ATLACOMULCO)")
				addOption(document.form.SubCat2,"C.S. ESTANCIA SECTOR I ++ ATL - ACAMBAY ++","C.S. ESTANCIA SECTOR I ++ ATL - ACAMBAY ++")
				addOption(document.form.SubCat2,"C.S. JUANDO (1) ATL - ACAMBAY","C.S. JUANDO (1) ATL - ACAMBAY")
				addOption(document.form.SubCat2,"C.S. JUANDO (2) ATL - ACAMBAY","C.S. JUANDO (2) ATL - ACAMBAY")
				addOption(document.form.SubCat2,"LAS MANGAS (ATLACOMULCO)","LAS MANGAS (ATLACOMULCO)")
				addOption(document.form.SubCat2,"C.S. LA LOMA ** ATL - ACAMBAY **","C.S. LA LOMA ** ATL - ACAMBAY **")
				addOption(document.form.SubCat2,"LA LOMA - ODONTOLOGICO **ATL - ACAMBAY**","LA LOMA - ODONTOLOGICO **ATL - ACAMBAY**")
				addOption(document.form.SubCat2,"C.S. MADO SECTOR I ** ATL - ACAMBAY **","C.S. MADO SECTOR I ** ATL - ACAMBAY **")
				addOption(document.form.SubCat2,"MUYTEJE (ATL-ACAMBAY)","MUYTEJE (ATL-ACAMBAY)")
				addOption(document.form.SubCat2,"C.S. LOS PILARES ** ATL - ACAMBAY **","C.S. LOS PILARES ** ATL - ACAMBAY **")
				addOption(document.form.SubCat2,"PUEBLO NUEVO ACAMBAY (ATLACOMULCO)","PUEBLO NUEVO ACAMBAY (ATLACOMULCO)")
				addOption(document.form.SubCat2,"SAN FRANCISCO SHAXNI (ATLACOMULCO)","SAN FRANCISCO SHAXNI (ATLACOMULCO)")
				addOption(document.form.SubCat2,"SAN PEDRO DE LOS METATES (ATLACOMULCO)","SAN PEDRO DE LOS METATES (ATLACOMULCO)")
				addOption(document.form.SubCat2,"LA SOLEDAD (ATLACOMULCO)","LA SOLEDAD (ATLACOMULCO)")
				addOption(document.form.SubCat2,"C.S. TIXMADEJE CHIQUITO ++ ATL - ACAMBAY ++","C.S. TIXMADEJE CHIQUITO ++ ATL - ACAMBAY ++")
				addOption(document.form.SubCat2," CASA DE SALUD SANTA MARIA TIXMADEJE (ATLACOMULCO)"," CASA DE SALUD SANTA MARIA TIXMADEJE (ATLACOMULCO)")
				addOption(document.form.SubCat2,"SAN JUANICO I (ATL-ACAMBAY)","SAN JUANICO I (ATL-ACAMBAY)")

			   }

			   if(document.form.SubCat.value == 'ATLACOMULCO')
							   
				{
					    addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   
						addOption(document.form.SubCat2,"C.S. EJIDO MANTO DEL RIO ** ATL - ATLACOMULCO **","C.S. EJIDO MANTO DEL RIO ** ATL - ATLACOMULCO **")
						addOption(document.form.SubCat2,"CASA DE SALUD CHOSTO DE L OS JARROS","CASA DE SALUD CHOSTO DE L OS JARROS")
						addOption(document.form.SubCat2,"CASA DE SALUD CUENDO ** ATL - ATLACOMULCO **","CASA DE SALUD CUENDO ** ATL - ATLACOMULCO **")
						addOption(document.form.SubCat2,"SAN ANTONIO ENCHISE (1) (ATLACOMULCO)","SAN ANTONIO ENCHISE (1) (ATLACOMULCO)")
						addOption(document.form.SubCat2,"SAN ANTONIO ENCHISE (2) (ATLACOMULCO)","SAN ANTONIO ENCHISE (2) (ATLACOMULCO)")
						addOption(document.form.SubCat2,"SAN BARTOLO LANZADOS (1) (ATLACOMULCO)","SAN BARTOLO LANZADOS (1) (ATLACOMULCO)")
						addOption(document.form.SubCat2,"SAN BARTOLO LANZADOS (2) (ATLACOMULCO)","SAN BARTOLO LANZADOS (2) (ATLACOMULCO)")
						addOption(document.form.SubCat2,"C.S. SAN FELIPE PUEBLO NUEVO ++ ATL- ATLACOMULCO ++","C.S. SAN FELIPE PUEBLO NUEVO ++ ATL- ATLACOMULCO ++")
						addOption(document.form.SubCat2,"C.S. SAN FRANCISCO CHALCHIHUPAN (1)","C.S. SAN FRANCISCO CHALCHIHUPAN (1)")
						addOption(document.form.SubCat2,"C.S. SAN FRANCISCO CHALCHIHUPAN (2)","C.S. SAN FRANCISCO CHALCHIHUPAN (2)")
						addOption(document.form.SubCat2,"SAN JERONIMO DE LOS JARROS (ATLACOMULCO)","SAN JERONIMO DE LOS JARROS (ATLACOMULCO)")
						addOption(document.form.SubCat2,"SAN JOSE EL TUNAL ( 1 ) (ATLACOMULCO)","SAN JOSE EL TUNAL ( 1 ) (ATLACOMULCO)")
						addOption(document.form.SubCat2,"SAN JOSE EL TUNAL ( 2 ) (ATLACOMULCO)","SAN JOSE EL TUNAL ( 2 ) (ATLACOMULCO)")
						addOption(document.form.SubCat2,"MODULO ODONTOLOGICO CASAF ATLACOMULCO ","MODULO ODONTOLOGICO CASAF ATLACOMULCO ")
						addOption(document.form.SubCat2,"C.S. SAN JUAN DE LOS JARROS (1)","C.S. SAN JUAN DE LOS JARROS (1)")
						addOption(document.form.SubCat2,"C.S. SAN JUAN DE LOS JARROS (2)","C.S. SAN JUAN DE LOS JARROS (2)")
						addOption(document.form.SubCat2,"SAN PEDRO DEL ROSAL (1) (ATLACOMULCO)","SAN PEDRO DEL ROSAL (1) (ATLACOMULCO)")
						addOption(document.form.SubCat2,"SAN PEDRO DEL ROSAL (2) (ATLACOMULCO)","SAN PEDRO DEL ROSAL (2) (ATLACOMULCO)")
						addOption(document.form.SubCat2,"SANTIAGO  ACUTZILAPAN  ( 1 ) (ATLACOMULCO)","SANTIAGO  ACUTZILAPAN  ( 1 ) (ATLACOMULCO)")
						addOption(document.form.SubCat2,"SANTIAGO ACUTZILAPAN  ( 2 ) (ATLACOMULCO)","SANTIAGO ACUTZILAPAN  ( 2 ) (ATLACOMULCO)")
						addOption(document.form.SubCat2,"CASA DE SALUD SAN LUIS BORO ++ ATL-ATLACOMULCO ++","CASA DE SALUD SAN LUIS BORO ++ ATL-ATLACOMULCO ++")
						addOption(document.form.SubCat2,"CASA DE SALUD BOMBATEVI EJIDO ** ATL-ATLACOMULCO**","CASA DE SALUD BOMBATEVI EJIDO ** ATL-ATLACOMULCO**")
						addOption(document.form.SubCat2,"CASA DE SALUD EL SALTO (ATL - ATLACOMULCO)","CASA DE SALUD EL SALTO (ATL - ATLACOMULCO)")
			   
				}				   
								   
				 if(document.form.SubCat.value == 'EL ORO')
			   
			   	{
			    addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   		
				addOption(document.form.SubCat2,"SANTIAGO OXTEMPAN EJIDO (ATLACOMULCO)","SANTIAGO OXTEMPAN EJIDO (ATLACOMULCO)")
				addOption(document.form.SubCat2,"C.S. LA JORDANA ++ ATL - EL ORO ++","C.S. LA JORDANA ++ ATL - EL ORO ++")
				addOption(document.form.SubCat2,"SAN NICOLAS TULTENANGO (ATLACOMULCO)","SAN NICOLAS TULTENANGO (ATLACOMULCO)")
				addOption(document.form.SubCat2,"EL GIGANTE (ATLACOMULCO)","EL GIGANTE (ATLACOMULCO)")
				addOption(document.form.SubCat2,"SANTA ROSA DE LIMA (1) (ATLACOMULCO)","SANTA ROSA DE LIMA (1) (ATLACOMULCO)")
				addOption(document.form.SubCat2,"SANTA ROSA DE LIMA (2) (ATLACOMULCO)","SANTA ROSA DE LIMA (2) (ATLACOMULCO)")
				addOption(document.form.SubCat2,"PUEBLO NUEVO DE LOS ANGELES (1) (ATLACOMULCO)","PUEBLO NUEVO DE LOS ANGELES (1) (ATLACOMULCO)")
				addOption(document.form.SubCat2,"PUEBLO NUEVO DE LOS ANGELES (2) (ATLACOMULCO)","PUEBLO NUEVO DE LOS ANGELES (2) (ATLACOMULCO)")
				addOption(document.form.SubCat2,"LA CONCEPCIÓN II (ATLACOMULCO)","LA CONCEPCIÓN II (ATLACOMULCO)")
				addOption(document.form.SubCat2,"TAPAXCO (1) (ATLACOMULCO)","TAPAXCO (1) (ATLACOMULCO)")
				addOption(document.form.SubCat2,"TAPAXCO (2)(ATLACOMULCO)","TAPAXCO (2)(ATLACOMULCO)")
				addOption(document.form.SubCat2,"TAPAXCO (3)(ATLACOMULCO)","TAPAXCO (3)(ATLACOMULCO)")
				addOption(document.form.SubCat2,"CERRO LLORON (ATLACOMULCO)","CERRO LLORON (ATLACOMULCO)")
				addOption(document.form.SubCat2,"SANTIAGO OXTEMPAN PUEBLO ( ATLACOMULCO )","SANTIAGO OXTEMPAN PUEBLO ( ATLACOMULCO )")
				addOption(document.form.SubCat2,"EL TEJOCOTE (1) (ATLACOMULCO)","EL TEJOCOTE (1) (ATLACOMULCO)")
				addOption(document.form.SubCat2,"EL TEJOCOTE (2) (ATLACOMULCO)","EL TEJOCOTE (2) (ATLACOMULCO)")

				}

               if(document.form.SubCat.value == 'TEMASCALCINGO')
			   
			   {
				addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
				addOption(document.form.SubCat2,"SANTA ANA YENSHU LA MESA (ATLACOMULCO)","SANTA ANA YENSHU LA MESA (ATLACOMULCO)")
				addOption(document.form.SubCat2,"C.S. SAN PEDRO EL ALTO","C.S. SAN PEDRO EL ALTO")
				addOption(document.form.SubCat2,"C.S. SANTA MARIA CANCHESDA","C.S. SANTA MARIA CANCHESDA")
				addOption(document.form.SubCat2,"C.S. AHUACATITLAN (1) TEMASCALCINGO","C.S. AHUACATITLAN (1) TEMASCALCINGO")
				addOption(document.form.SubCat2,"C.S. AHUACATITLAN (2) TEMASCALCINGO","C.S. AHUACATITLAN (2) TEMASCALCINGO")
				addOption(document.form.SubCat2,"C.S. SAN JUANICO EL ALTO","C.S. SAN JUANICO EL ALTO")
				addOption(document.form.SubCat2,"SAN PEDRO POTLA (ATLACOMULCO)","SAN PEDRO POTLA (ATLACOMULCO)")
				addOption(document.form.SubCat2,"SAN FRANCISCO SOLIS (ATLACOMULCO)","SAN FRANCISCO SOLIS (ATLACOMULCO)")
				addOption(document.form.SubCat2,"CASA DE SALUD IXTAPA ** ATL - TEMASCALCINGO ** ","CASA DE SALUD IXTAPA ** ATL - TEMASCALCINGO ** ")
				addOption(document.form.SubCat2,"SAN JOSE SOLIS PROGRESA (ATLACOMULCO)","SAN JOSE SOLIS PROGRESA (ATLACOMULCO)")
				addOption(document.form.SubCat2,"LA MAGDALENA (ATLACOMULCO)","LA MAGDALENA (ATLACOMULCO)")
				addOption(document.form.SubCat2,"SANTIAGO COACHOCHITLAN (1) (ATLACOMULCO)","SANTIAGO COACHOCHITLAN (1) (ATLACOMULCO)")
				addOption(document.form.SubCat2,"SANTIAGO COACHOCHITLAN (2) (ATLACOMULCO)","SANTIAGO COACHOCHITLAN (2) (ATLACOMULCO)")
				addOption(document.form.SubCat2,"SANTIAGO COACHOCHITLAN (3) (ATLACOMULCO)","SANTIAGO COACHOCHITLAN (3) (ATLACOMULCO)")
				addOption(document.form.SubCat2,"JUANACATLAN (ATLACOMULCO)","JUANACATLAN (ATLACOMULCO)")
				addOption(document.form.SubCat2,"CASA DE SALUD SAN MATEO EL VIEJO (ATLACOMULCO)","CASA DE SALUD SAN MATEO EL VIEJO (ATLACOMULCO)")
				addOption(document.form.SubCat2,"C.S. SAN FRANCISCO TEPEOLULCO (1)","C.S. SAN FRANCISCO TEPEOLULCO (1)")
				addOption(document.form.SubCat2,"C.S. SAN FRANCISCO TEPEOLULCO (2)","C.S. SAN FRANCISCO TEPEOLULCO (2)")
				addOption(document.form.SubCat2,"CASA DE SALUD SAN ANTONIO SOLIS (TEMASCALCINGO)","CASA DE SALUD SAN ANTONIO SOLIS (TEMASCALCINGO)")
				addOption(document.form.SubCat2,"CASA DE SALUD SANTA ANA YENSHU CENTRO (ATLACOMULCO)","CASA DE SALUD SANTA ANA YENSHU CENTRO (ATLACOMULCO)")

			   }//FIN METODO ATLACO
			   
			   if(document.form.SubCat.value == 'IXTLAHUACA')
			   
			   {
				 addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")     
				 addOption(document.form.SubCat2,"CASA DE SALUD LA CONCEPCION DE LOS BAÑOS III  ** IXT - IXT *","CASA DE SALUD LA CONCEPCION DE LOS BAÑOS III  ** IXT - IXT *")
addOption(document.form.SubCat2,"SAN PEDRO DE LOS BAÑOS I ( IXTLAHUACA )","SAN PEDRO DE LOS BAÑOS I ( IXTLAHUACA )")
addOption(document.form.SubCat2,"C.S. CONCEPCION LOS BAÑOS (1) IXT - IXTLAHUACA","C.S. CONCEPCION LOS BAÑOS (1) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"C.S. CONCEPCION LOS BAÑOS (2) IXT - IXTLAHUACA","C.S. CONCEPCION LOS BAÑOS (2) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"C.S. CONCEPCION LOS BAÑOS (3) IXT-IXTLAHUACA","C.S. CONCEPCION LOS BAÑOS (3) IXT-IXTLAHUACA")
addOption(document.form.SubCat2,"C.S. CONCEPCION LOS BAÑOS (4) IXT - IXTLAHUACA","C.S. CONCEPCION LOS BAÑOS (4) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"EMILIANO ZAPATA ( 1 ) (IXTLAHUACA)","EMILIANO ZAPATA ( 1 ) (IXTLAHUACA)")
addOption(document.form.SubCat2,"EMILIANO ZAPATA ( 2 ) (IXTLAHUACA)","EMILIANO ZAPATA ( 2 ) (IXTLAHUACA)")
addOption(document.form.SubCat2,"EMILIANO ZAPATA ( 3 ) (IXTLAHUACA)","EMILIANO ZAPATA ( 3 ) (IXTLAHUACA)")
addOption(document.form.SubCat2,"EMILIANO ZAPATA ( 4 )(IXTLAHUACA)","EMILIANO ZAPATA ( 4 )(IXTLAHUACA)")
addOption(document.form.SubCat2,"C.S. GUADALUPE CACHI (1) IXT - IXTLAHUACA","C.S. GUADALUPE CACHI (1) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"C.S. GUADALUPE CACHI (2) IXT - IXTLAHUACA","C.S. GUADALUPE CACHI (2) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"GUADALUPE DEL RIO (IXTLAHUACA)","GUADALUPE DEL RIO (IXTLAHUACA)")
addOption(document.form.SubCat2,"C.S. JALPA DE LOS BAÑOS ++ IXT - IXTLAHUACA ++","C.S. JALPA DE LOS BAÑOS ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"C.S. LA GUADALUPANA","C.S. LA GUADALUPANA")
addOption(document.form.SubCat2,"SAN ANDRES DEL PEDREGAL (1) IXT- IXTLAHUACA","SAN ANDRES DEL PEDREGAL (1) IXT- IXTLAHUACA")
addOption(document.form.SubCat2,"SAN ANDRES DEL PEDREGAL (2) IXT - IXTLAHUACA","SAN ANDRES DEL PEDREGAL (2) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"SAN ANDRES DEL PEDREGAL (3) IXT - IXTLAHUACA","SAN ANDRES DEL PEDREGAL (3) IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"SAN BARTOLO DEL LLANO (1) (IXTLAHUACA)","SAN BARTOLO DEL LLANO (1) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SAN BARTOLO DEL LLANO (2) (IXTLAHUACA)","SAN BARTOLO DEL LLANO (2) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SAN BARTOLO DEL LLANO (3) (IXTLAHUACA)","SAN BARTOLO DEL LLANO (3) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SAN CRISTOBAL DE LOS BAÑOS(1) (IXTLAHUACA)","SAN CRISTOBAL DE LOS BAÑOS(1) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SAN CRISTOBAL DE LOS BAÑOS(2) (IXTLAHUACA)","SAN CRISTOBAL DE LOS BAÑOS(2) (IXTLAHUACA)")
addOption(document.form.SubCat2,"C.S. SAN FRANCISCO DEL RIO ++ IXT - IXTLAHUACA ++","C.S. SAN FRANCISCO DEL RIO ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"SAN FRANCISCO IXTLAHUACA (1) (IXTLAHUACA)","SAN FRANCISCO IXTLAHUACA (1) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SAN FRANCISCO IXTLAHUACA (2) ","SAN FRANCISCO IXTLAHUACA (2) ")
addOption(document.form.SubCat2,"SAN IGNACIO DEL PEDREGAL (1)IXT-IXTLAHUACA","SAN IGNACIO DEL PEDREGAL (1)IXT-IXTLAHUACA")
addOption(document.form.SubCat2,"C.S. SAN ILDEFONSO PROFA. ELDA GOMEZ LUGO","C.S. SAN ILDEFONSO PROFA. ELDA GOMEZ LUGO")
addOption(document.form.SubCat2,"C.S. SAN JERONIMO IXTAPANTONGO ++ IXT - IXTLAHUACA ++","C.S. SAN JERONIMO IXTAPANTONGO ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"C.S. SAN JOAQUIN LA CABECERA","C.S. SAN JOAQUIN LA CABECERA")
addOption(document.form.SubCat2,"C.S. SAN LORENZO TOXICO (1) ++ IXT - IXTLAHUACA ++","C.S. SAN LORENZO TOXICO (1) ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"C.S. SAN LORENZO TOXICO (2) ++ IXT- IXTLAHUACA ++","C.S. SAN LORENZO TOXICO (2) ++ IXT- IXTLAHUACA ++")
addOption(document.form.SubCat2,"C.S. SAN LORENZO TOXICO (3) ++ IXT - IXTLAHUACA ++","C.S. SAN LORENZO TOXICO (3) ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"C.S. SAN PABLO DE LOS REMEDIOS ++ IXT - IXTLAHUACA ++","C.S. SAN PABLO DE LOS REMEDIOS ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"SAN PEDRO BARRIO (1) (IXTLAHUACA)","SAN PEDRO BARRIO (1) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SAN PEDRO BARRIO (2) (IXTLAHUACA)","SAN PEDRO BARRIO (2) (IXTLAHUACA)")
addOption(document.form.SubCat2,"C.S. SAN PEDRO DE LOS BAÑOS II (1)  IXT - IXTLAHUACA","C.S. SAN PEDRO DE LOS BAÑOS II (1)  IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"C.S. SAN PEDRO DE LOS BAÑOS II (2)  IXT - IXTLAHUACA","C.S. SAN PEDRO DE LOS BAÑOS II (2)  IXT - IXTLAHUACA")
addOption(document.form.SubCat2,"SANTA ANA IXTLAHUACA (1) (IXTLAHUACA)","SANTA ANA IXTLAHUACA (1) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SANTA ANA IXTLAHUACA (2) (IXTLAHUACA)","SANTA ANA IXTLAHUACA (2) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SANTA ANA IXTLAHUACA (3) (IXTLAHUACA)","SANTA ANA IXTLAHUACA (3) (IXTLAHUACA)")
addOption(document.form.SubCat2,"C.S. SANTA ANA LA LADERA","C.S. SANTA ANA LA LADERA")
addOption(document.form.SubCat2,"SANTA MARIA DEL LLANO (1) (IXTLAHUACA)","SANTA MARIA DEL LLANO (1) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SANTA MARIA DEL LLANO (2) (IXTLAHUACA)","SANTA MARIA DEL LLANO (2) (IXTLAHUACA)")
addOption(document.form.SubCat2,"SANTO DOMINGO DE GUZMAN (1) ( IXTLAHUACA )","SANTO DOMINGO DE GUZMAN (1) ( IXTLAHUACA )")
addOption(document.form.SubCat2,"SANTO DOMINGO DE GUZMAN (2) ( IXTLAHUACA )","SANTO DOMINGO DE GUZMAN (2) ( IXTLAHUACA )")
addOption(document.form.SubCat2,"SANTO DOMINGO DE GUZMAN (3) (IXTLAHUACA)","SANTO DOMINGO DE GUZMAN (3) (IXTLAHUACA)")
addOption(document.form.SubCat2,"C.S. PATHE DE MULA LOS CEDROS","C.S. PATHE DE MULA LOS CEDROS")
addOption(document.form.SubCat2,"CASA DE SALUD CONCEPCION ENYEGE ** IXT - IXTLAHUACA **","CASA DE SALUD CONCEPCION ENYEGE ** IXT - IXTLAHUACA **")
addOption(document.form.SubCat2,"BRIGADA JURISDICCION IXTLAHUACA ","BRIGADA JURISDICCION IXTLAHUACA ")
addOption(document.form.SubCat2,"CASA DE SALUD JALPA DE DOLORES (IXTLAHUACA)","CASA DE SALUD JALPA DE DOLORES (IXTLAHUACA)")
addOption(document.form.SubCat2,"CASA DE SALUD SAN ANTONIO BONIXI **IXT-IXTLAHUACA**","CASA DE SALUD SAN ANTONIO BONIXI **IXT-IXTLAHUACA**")
addOption(document.form.SubCat2,"CASA DE SALUD SAN ISIDRO BOXIPE ++ IXT - IXTLAHUACA ++","CASA DE SALUD SAN ISIDRO BOXIPE ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat2,"CASA DE SALUD SAN MIGUEL ENYEJE ** IXT-IXTLAHUACA**","CASA DE SALUD SAN MIGUEL ENYEJE ** IXT-IXTLAHUACA**")
addOption(document.form.SubCat2,"SAN PEDRO DE LOS BAÑOS III CASA BLANCA  (IXTLAHUACA)","SAN PEDRO DE LOS BAÑOS III CASA BLANCA  (IXTLAHUACA)")

			   }//fin del if ixt
			   
			 if(document.form.SubCat.value == 'ACULCO')
			   
			   {
				addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   
				addOption(document.form.SubCat2,"C.S. ARROYO ZARCO ++ JIL - ACULCO ++","C.S. ARROYO ZARCO ++ JIL - ACULCO ++")
				addOption(document.form.SubCat2,"EJIDO DE SAN JERONIMO  (JILOTEPEC)","EJIDO DE SAN JERONIMO  (JILOTEPEC)")
				addOption(document.form.SubCat2,"EL AZAFRAN ( 1 ) (JILOTEPEC)","EL AZAFRAN ( 1 ) (JILOTEPEC)")
				addOption(document.form.SubCat2,"EL AZAFRAN NO EXISTE","EL AZAFRAN NO EXISTE")
				addOption(document.form.SubCat2,"C.S. FONDO ++ JIL - ACULCO ++","C.S. FONDO ++ JIL - ACULCO ++")
				addOption(document.form.SubCat2,"C.S. LA CONCEPCION ++ JIL - ACULCO ++","C.S. LA CONCEPCION ++ JIL - ACULCO ++")
				addOption(document.form.SubCat2,"U.M. SAN JOAQUIN COSCOMATEPEC (1) (JILOTEPEC)","U.M. SAN JOAQUIN COSCOMATEPEC (1) (JILOTEPEC)")
				addOption(document.form.SubCat2,"SAN LUCAS TOTOLMALAYA 1 (JILOTEPEC)","SAN LUCAS TOTOLMALAYA 1 (JILOTEPEC)")
				addOption(document.form.SubCat2,"SAN MARTIN EJIDO (JILOTEPEC)","SAN MARTIN EJIDO (JILOTEPEC)")
				addOption(document.form.SubCat2,"C.S. SAN PEDRO DENXHI (1) JIL-ACULCO","C.S. SAN PEDRO DENXHI (1) JIL-ACULCO")
				addOption(document.form.SubCat2,"C.S. SAN PEDRO DENXHI (2) JIL-ACULCO","C.S. SAN PEDRO DENXHI (2) JIL-ACULCO")
				addOption(document.form.SubCat2,"SANTA ANA MATLAVAT (JILOTEPEC)","SANTA ANA MATLAVAT (JILOTEPEC)")
				addOption(document.form.SubCat2,"C.S. SANTIAGO OXTHOC TOXHIE ++ JIL - ACULCO ++","C.S. SANTIAGO OXTHOC TOXHIE ++ JIL - ACULCO ++")
				addOption(document.form.SubCat2,"CASA DE SALUD BAÑE 1 (JIL - JILOTEPEC)","CASA DE SALUD BAÑE 1 (JIL - JILOTEPEC)")
				addOption(document.form.SubCat2,"GUNYO PONIENTE (SAN JOSE GUNYO)  (JILOTEPEC)","GUNYO PONIENTE (SAN JOSE GUNYO)  (JILOTEPEC)")
				addOption(document.form.SubCat2,"CASA DE SALUD JURICA (1) (JILOTEPEC)","CASA DE SALUD JURICA (1) (JILOTEPEC)")
				addOption(document.form.SubCat2,"CASA DE SALUD JURICA ( 2 ) NO SURTIR","CASA DE SALUD JURICA ( 2 ) NO SURTIR")
				addOption(document.form.SubCat2,"EL MOGOTE (1) (JIL-ACULCO)","EL MOGOTE (1) (JIL-ACULCO)")
				addOption(document.form.SubCat2,"EL MOGOTE (2) (JIL-ACULCO)","EL MOGOTE (2) (JIL-ACULCO)")
				addOption(document.form.SubCat2,"CASA DE SALUD SAN LUCAS 3° CUARTEL (1) JIL-ACULCO","CASA DE SALUD SAN LUCAS 3° CUARTEL (1) JIL-ACULCO")
				addOption(document.form.SubCat2,"CASA DE SALUD SAN LUCAS 3° CUARTEL (2) JIL-JILOTEPEC","CASA DE SALUD SAN LUCAS 3° CUARTEL (2) JIL-JILOTEPEC")
				addOption(document.form.SubCat2,"CASA DE SALUD SAN LUCAS 3° CUARTEL-ODONTOLOGICO","CASA DE SALUD SAN LUCAS 3° CUARTEL-ODONTOLOGICO")
				addOption(document.form.SubCat2,"CASA DE SALUD EL JAZMIN ( EL ZETHE) (1) JIL-ACULCO","CASA DE SALUD EL JAZMIN ( EL ZETHE) (1) JIL-ACULCO")
				addOption(document.form.SubCat2,"CASA DE SALUD EL JAZMIN ( EL ZETHE) (2) JIL - ACULCO","CASA DE SALUD EL JAZMIN ( EL ZETHE) (2) JIL - ACULCO")
				addOption(document.form.SubCat2,"SANTA MARIA NATIVITAS ( 1 )  JILOTEPEC ACULCO ","SANTA MARIA NATIVITAS ( 1 )  JILOTEPEC ACULCO ")
				addOption(document.form.SubCat2,"SANTA MARIA NATIVITAS ( 2 ) JILOTEPEC ACULCO ","SANTA MARIA NATIVITAS ( 2 ) JILOTEPEC ACULCO ")
				addOption(document.form.SubCat2,"SAN JOAQUIN COSCOMATEPEC 1 (JILOTEPEC - ACULCO)","SAN JOAQUIN COSCOMATEPEC 1 (JILOTEPEC - ACULCO)")
				addOption(document.form.SubCat2,"SAN JOAQUIN COSCOMATEPEC 2 (JILOTEPEC - ACULCO)","SAN JOAQUIN COSCOMATEPEC 2 (JILOTEPEC - ACULCO)")

			   }
				   if(document.form.SubCat.value == 'CHAPA DE MOTA')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   
					addOption(document.form.SubCat2,"DONGU (1) JIL-CHAPA DE MOTA","DONGU (1) JIL-CHAPA DE MOTA")
					addOption(document.form.SubCat2,"DONGU (2) JIL-CHAPA DE MOTA","DONGU (2) JIL-CHAPA DE MOTA")
					addOption(document.form.SubCat2,"LA LADERA ( 1 ) (JILOTEPEC)","LA LADERA ( 1 ) (JILOTEPEC)")
					addOption(document.form.SubCat2,"LA PALMA **JIL-CHAPA DE MOTA**","LA PALMA **JIL-CHAPA DE MOTA**")
					addOption(document.form.SubCat2,"C.S. MACAVACA ** JIL - CHAPA DE MOTA **","C.S. MACAVACA ** JIL - CHAPA DE MOTA **")
					addOption(document.form.SubCat2,"SAN FELIPE COAMANGO (1) JIL-CHAPA DE MOTA","SAN FELIPE COAMANGO (1) JIL-CHAPA DE MOTA")
					addOption(document.form.SubCat2,"SAN FELIPE COAMANGO (2) JIL-CHAPA DE MOTA","SAN FELIPE COAMANGO (2) JIL-CHAPA DE MOTA")
					addOption(document.form.SubCat2,"SAN FRANCISCO DE LAS TABLAS (JILOTEPEC)","SAN FRANCISCO DE LAS TABLAS (JILOTEPEC)")
					addOption(document.form.SubCat2,"SAN GABRIEL **JIL-CHAPA DE MOTA**","SAN GABRIEL **JIL-CHAPA DE MOTA**")
					addOption(document.form.SubCat2,"SAN JUAN TUXTEPEC(1) (JILOTEPEC)","SAN JUAN TUXTEPEC(1) (JILOTEPEC)")
					addOption(document.form.SubCat2,"SAN JUAN TUXTEPEC(2) (JILOTEPEC)","SAN JUAN TUXTEPEC(2) (JILOTEPEC)")

				   }
				    if(document.form.SubCat.value == 'JILOTEPEC')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"LA LADERA ( 2 ) (JILOTEPEC)","LA LADERA ( 2 ) (JILOTEPEC)")
					addOption(document.form.SubCat2,"AGUA ESCONDIDA 1 (JILOTEPEC)","AGUA ESCONDIDA 1 (JILOTEPEC)")
					addOption(document.form.SubCat2,"AGUA ESCONDIDA 2 (JILOTEPEC)","AGUA ESCONDIDA 2 (JILOTEPEC)")
					addOption(document.form.SubCat2,"ALDAMA ( JILOTEPEC  )","ALDAMA ( JILOTEPEC  )")
					addOption(document.form.SubCat2,"C.S. CALPULALPAN (1) JIL-JILOTEPEC","C.S. CALPULALPAN (1) JIL-JILOTEPEC")
					addOption(document.form.SubCat2,"C.S. CALPULALPAN (2) JIL-JILOTEPEC","C.S. CALPULALPAN (2) JIL-JILOTEPEC")
					addOption(document.form.SubCat2,"C.S. CANALEJAS (1) ** JIL - JILOTEPEC **","C.S. CANALEJAS (1) ** JIL - JILOTEPEC **")
					addOption(document.form.SubCat2,"C.S. CANALEJAS (2) ** JIL - JILOTEPEC **","C.S. CANALEJAS (2) ** JIL - JILOTEPEC **")
					addOption(document.form.SubCat2,"C.S. DOXHICHO (1) JIL - JILOTEPEC","C.S. DOXHICHO (1) JIL - JILOTEPEC")
					addOption(document.form.SubCat2,"C.S. DOXHICHO (2) JIL - JILOTEPEC","C.S. DOXHICHO (2) JIL - JILOTEPEC")
					addOption(document.form.SubCat2,"C.S. EL HUIZACHE ++ JIL - JILOTEPEC ++","C.S. EL HUIZACHE ++ JIL - JILOTEPEC ++")
					addOption(document.form.SubCat2,"EL ROSAL (JILOTEPEC)","EL ROSAL (JILOTEPEC)")
					addOption(document.form.SubCat2,"LA COMUNIDAD (JILOTEPEC)","LA COMUNIDAD (JILOTEPEC)")
					addOption(document.form.SubCat2,"LAS HUERTAS(1) (JILOTEPEC)","LAS HUERTAS(1) (JILOTEPEC)")
					addOption(document.form.SubCat2,"LAS HUERTAS(2) (JILOTEPEC)","LAS HUERTAS(2) (JILOTEPEC)")
					addOption(document.form.SubCat2,"C.S. SAN JUAN ACAZUCHITLAN ++ JIL - JILOTEPEC ++","C.S. SAN JUAN ACAZUCHITLAN ++ JIL - JILOTEPEC ++")
					addOption(document.form.SubCat2,"SAN LORENZO NENAMICOYAN  ( JILOTEPEC )","SAN LORENZO NENAMICOYAN  ( JILOTEPEC )")
					addOption(document.form.SubCat2,"SAN LORENZO OCTEYUCO EJIDO (JILOTEPEC)","SAN LORENZO OCTEYUCO EJIDO (JILOTEPEC)")
					addOption(document.form.SubCat2,"EL MATAXHI **JIL-JILOTEPEC ( UNIDAD MOVIL )","EL MATAXHI **JIL-JILOTEPEC ( UNIDAD MOVIL )")
					addOption(document.form.SubCat2,"SAN MARTIN TUCHICULTLAPILCO  (JILOTEPEC)","SAN MARTIN TUCHICULTLAPILCO  (JILOTEPEC)")
					addOption(document.form.SubCat2,"C.S. SAN MIGUEL DE LA VICTORIA ++ JIL-JILOTEPEC ++","C.S. SAN MIGUEL DE LA VICTORIA ++ JIL-JILOTEPEC ++")
					addOption(document.form.SubCat2,"SANTIAGO OXTHOC (1) JIL-JILOTEPEC","SANTIAGO OXTHOC (1) JIL-JILOTEPEC")
					addOption(document.form.SubCat2,"SANTIAGO OXTHOC (2) JIL-JILOTEPEC","SANTIAGO OXTHOC (2) JIL-JILOTEPEC")
					addOption(document.form.SubCat2,"TIUPA ( JILOTEPEC )","TIUPA ( JILOTEPEC )")
					addOption(document.form.SubCat2,"XHIMOJAY (JILOTEPEC)","XHIMOJAY (JILOTEPEC)")
					addOption(document.form.SubCat2,"DEVISADERO FRESNO ( 2 ) (JILOTEPEC)","DEVISADERO FRESNO ( 2 ) (JILOTEPEC)")
					addOption(document.form.SubCat2,"CASA DE SALUD RINCON DE TEUPA  ( JILOTEPEC )","CASA DE SALUD RINCON DE TEUPA  ( JILOTEPEC )")
					addOption(document.form.SubCat2,"CASA DE SALUD MANZANAS  (JILOTEPEC)","CASA DE SALUD MANZANAS  (JILOTEPEC)")
					addOption(document.form.SubCat2,"JILOTEPEC UNIDAD MOVIL ( JILOTEPEC )","JILOTEPEC UNIDAD MOVIL ( JILOTEPEC )")
					addOption(document.form.SubCat2,"SAN LORENZO OCTEYUCO PUEBLO ( JILOTEPEC )","SAN LORENZO OCTEYUCO PUEBLO ( JILOTEPEC )")

					}
					if(document.form.SubCat.value == 'POLOTITLAN')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"CELAYITA  (JILOTEPEC)","CELAYITA  (JILOTEPEC)")
					addOption(document.form.SubCat2,"EL ALAMO  ( 1 ) (JILOTEPEC)","EL ALAMO  ( 1 ) (JILOTEPEC)")
					addOption(document.form.SubCat2,"EL ALAMO ( 2 )  NO EXISTE","EL ALAMO ( 2 )  NO EXISTE")
					addOption(document.form.SubCat2,"EL RUANO (JILOTEPEC)","EL RUANO (JILOTEPEC)")
					addOption(document.form.SubCat2,"ENCINILLAS ** JIL - POLOTITLAN **","ENCINILLAS ** JIL - POLOTITLAN **")
					addOption(document.form.SubCat2,"SAN ANTONIO ESCOBEDO (JILOTEPEC)","SAN ANTONIO ESCOBEDO (JILOTEPEC)")
					addOption(document.form.SubCat2,"SAN FRANCISCO ACAZUCHITLALTONGO ( 1 ) (JILOTEPEC)","SAN FRANCISCO ACAZUCHITLALTONGO ( 1 ) (JILOTEPEC)")
					addOption(document.form.SubCat2,"SAN FRANCISCO ACAZUCHITLALTONGO ( 2 ) (JILOTEPEC) NO EXISTE","SAN FRANCISCO ACAZUCHITLALTONGO ( 2 ) (JILOTEPEC) NO EXISTE")
					addOption(document.form.SubCat2,"SAN JOSE DEGUEDO ","SAN JOSE DEGUEDO ")

					}
					if(document.form.SubCat.value == 'SOYANIQUILPAN')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"DEVISADERO FRESNO ( 1 ) (JILOTEPEC)","DEVISADERO FRESNO ( 1 ) (JILOTEPEC)")
					addOption(document.form.SubCat2,"C.S. SAN AGUSTIN BUENAVISTA (1) ++ JIL - SOYANIQUILPAN ++","C.S. SAN AGUSTIN BUENAVISTA (1) ++ JIL - SOYANIQUILPAN ++")
					addOption(document.form.SubCat2,"C.S. SAN AGUSTIN BUENAVISTA (2) ++ JIL - SOYANIQUILPAN ++","C.S. SAN AGUSTIN BUENAVISTA (2) ++ JIL - SOYANIQUILPAN ++")
					addOption(document.form.SubCat2,"SAN JOSE DEGUEDO ( 1 ) (JILOTEPEC)","SAN JOSE DEGUEDO ( 1 ) (JILOTEPEC)")
					addOption(document.form.SubCat2,"SAN JUAN DAXTHI (JILOTEPEC)","SAN JUAN DAXTHI (JILOTEPEC)")
					
					}
					if(document.form.SubCat.value == 'TIMILPAN')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"HUAPANGO (JILOTEPEC)","HUAPANGO (JILOTEPEC)")
					addOption(document.form.SubCat2,"C.S. RINCON DE BUCIO (1) JIL - TIMILPAN","C.S. RINCON DE BUCIO (1) JIL - TIMILPAN")
					addOption(document.form.SubCat2,"C.S. RINCON DE BUCIO (2) JIL - TIMILPAN","C.S. RINCON DE BUCIO (2) JIL - TIMILPAN")
					addOption(document.form.SubCat2,"SAN ANTONIO YONDEJE **JIL-TIMILPAN**","SAN ANTONIO YONDEJE **JIL-TIMILPAN**")
					addOption(document.form.SubCat2,"SANTIAGUITO MAXDA **JIL-TIMILPAN**","SANTIAGUITO MAXDA **JIL-TIMILPAN**")
					addOption(document.form.SubCat2,"ZARAGOZA ( 1 )  (JILOTEPEC)","ZARAGOZA ( 1 )  (JILOTEPEC)")
					addOption(document.form.SubCat2,"ZARAGOZA ( 2 ) (JILOTEPEC)NO EXISTE","ZARAGOZA ( 2 ) (JILOTEPEC)NO EXISTE")
					
					}
					if(document.form.SubCat.value == 'VILLA DEL CARBON')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"LLANO DEL ZACAPEXCO(1) (JILOTEPEC)","LLANO DEL ZACAPEXCO(1) (JILOTEPEC)")
					addOption(document.form.SubCat2,"LLANO DEL ZACAPEXCO(2) (JILOTEPEC)","LLANO DEL ZACAPEXCO(2) (JILOTEPEC)")
					addOption(document.form.SubCat2,"LOMA ALTA(1) (JILOTEPEC)","LOMA ALTA(1) (JILOTEPEC)")
					addOption(document.form.SubCat2,"LOMA ALTA(2) (JILOTEPEC)","LOMA ALTA(2) (JILOTEPEC)")
					addOption(document.form.SubCat2,"C.S. LOS ARANA","C.S. LOS ARANA")
					addOption(document.form.SubCat2,"MONTE DE PEÑA ( JILOTEPEC )","MONTE DE PEÑA ( JILOTEPEC )")
					addOption(document.form.SubCat2,"C.S. PUEBLO NUEVO (1) JIL - VILLA DEL CARBON","C.S. PUEBLO NUEVO (1) JIL - VILLA DEL CARBON")
					addOption(document.form.SubCat2,"C.S. PUEBLO NUEVO (2) JIL - VILLA DEL CARBON","C.S. PUEBLO NUEVO (2) JIL - VILLA DEL CARBON")
					addOption(document.form.SubCat2,"SAN LUIS TAXHIMAY(1) (JILOTEPEC)","SAN LUIS TAXHIMAY(1) (JILOTEPEC)")
					addOption(document.form.SubCat2,"SAN LUIS TAXHIMAY(2) (JILOTEPEC)","SAN LUIS TAXHIMAY(2) (JILOTEPEC)")

					}//FIN FUNCION JILOTEPEC
					
					if(document.form.SubCat.value == 'CALIMAYA')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"LLANO DEL ZACAPEXCO(1) (JILOTEPEC)","LLANO DEL ZACAPEXCO(1) (JILOTEPEC)")
					addOption(document.form.SubCat2,"SANTA MARIA NATIVITAS ( 1 ) ( TENANGO DEL VALLE )","SANTA MARIA NATIVITAS ( 1 ) ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"SANTA MARIA NATIVITAS ( 2 ) ( TENANGO DEL VALLE )","SANTA MARIA NATIVITAS ( 2 ) ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"CALIMAYA NORTE ( TENANGO DEL VALLE )","CALIMAYA NORTE ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"SAN LORENZO CUAUHTENCO (TENANGO DEL VALLE)","SAN LORENZO CUAUHTENCO (TENANGO DEL VALLE)")
					addOption(document.form.SubCat2,"CALIMAYA SUR (1) ( TENANGO DEL VALLE )","CALIMAYA SUR (1) ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"CALIMAYA SUR (2) ( TENANGO DEL VALLE )","CALIMAYA SUR (2) ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"CALIMAYA SUR (3) ( TENANGO DEL VALLE )","CALIMAYA SUR (3) ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"ZARAGOZA DE GUADALUPE (1) ( TENANGO DEL VALLE )","ZARAGOZA DE GUADALUPE (1) ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"ZARAGOZA DE GUADALUPE (2) ( TENANGO DEL VALLE )","ZARAGOZA DE GUADALUPE (2) ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"C.S. LA CONCEPCION COATIPAC ++ T. DEL VALLE - CALIMAYA ++","C.S. LA CONCEPCION COATIPAC ++ T. DEL VALLE - CALIMAYA ++")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN DIEGO LA HYERTA","CASA DE SALUD SAN DIEGO LA HYERTA")

			   		}
					
					if(document.form.SubCat.value == 'CAPULHUAC')
			   
				   {
					   addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   
					   addOption(document.form.SubCat2,"SAN NICOLAS TLAZALA ( TENANGO DEL VALLE )","SAN NICOLAS TLAZALA ( TENANGO DEL VALLE )")
						addOption(document.form.SubCat2,"SAN MIGUEL ALMAYA ( TENANGO DEL VALLE )","SAN MIGUEL ALMAYA ( TENANGO DEL VALLE )")
						addOption(document.form.SubCat2,"SANTA MARIA CUAXUXCO ( TENANGO DEL VALLE )","SANTA MARIA CUAXUXCO ( TENANGO DEL VALLE )")

			   		}
					
					if(document.form.SubCat.value == 'JALATLACO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"C.S. SAN JUAN TOMASQUILLO (1) T. DEL VALLE - XALATLACO","C.S. SAN JUAN TOMASQUILLO (1) T. DEL VALLE - XALATLACO")
					addOption(document.form.SubCat2,"C.S. SAN JUAN TOMASQUILLO (2) T. DEL VALLE - XALATLACO","C.S. SAN JUAN TOMASQUILLO (2) T. DEL VALLE - XALATLACO")

			   		}
					
					if(document.form.SubCat.value == 'JOQUICINGO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"TECHUCHULCO (1) ( TENANGO DEL VALLE )","TECHUCHULCO (1) ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"TECHUCHULCO (2) (TENANGO DEL VALLE)","TECHUCHULCO (2) (TENANGO DEL VALLE)")
					addOption(document.form.SubCat2,"SAN MIGUEL OCAMPO ( TENANGO DEL VALLE )","SAN MIGUEL OCAMPO ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"EL GUARDA DE GUERRERO ( TENANGO DEL VALLE )","EL GUARDA DE GUERRERO ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"MAXTLECA DE GALEANA ( TENANGO DEL VALLE )","MAXTLECA DE GALEANA ( TENANGO DEL VALLE )")
					   
			   		}
					
					if(document.form.SubCat.value == 'MEXICALCINGO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"MEXICALZINGO (1) ( TENANGO DEL VALLE )","MEXICALZINGO (1) ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"MEXICALZINGO (2)  ( TENANGO DEL VALLE )","MEXICALZINGO (2)  ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"MEXICALZINGO (3)  ( TENANGO DEL VALLE )","MEXICALZINGO (3)  ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"MEXICALZINGO (4)  ( TENANGO DEL VALLE )","MEXICALZINGO (4)  ( TENANGO DEL VALLE )")
					   
			   		}
					
					if(document.form.SubCat.value == 'RAYON')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"SAN JUAN LA ISLA ( TENANGO DEL VALLE )","SAN JUAN LA ISLA ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"SANTA MARIA RAYON  ( TENANGO  13/07/09 CEAPS)","SANTA MARIA RAYON  ( TENANGO  13/07/09 CEAPS)")
					   
			   		}
					
					if(document.form.SubCat.value == 'SAN ANTONIO LA ISLA')
			   
				   {
					    addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   
						addOption(document.form.SubCat2,"SAN ANTONIO LA ISLA (1) ( TENANGO DEL VALLE )","SAN ANTONIO LA ISLA (1) ( TENANGO DEL VALLE )")
						addOption(document.form.SubCat2,"SAN ANTONIO LA ISLA (2) ( TENANGO DEL VALLE )","SAN ANTONIO LA ISLA (2) ( TENANGO DEL VALLE )")
						addOption(document.form.SubCat2,"SAN ANTONIO LA ISLA * * ODONTOLOGICO * * ","SAN ANTONIO LA ISLA * * ODONTOLOGICO * * ")
						addOption(document.form.SubCat2,"SAN  LUCAS TEPEMAJALCO ( TENANGO DEL VALLE )","SAN  LUCAS TEPEMAJALCO ( TENANGO DEL VALLE )")
					   
			   		}
					
					if(document.form.SubCat.value == 'SANTIAGO TIANGUISTENCO')
			   
				   {
					    addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   
						addOption(document.form.SubCat2,"GUADALUPE YANCUITLALPAN (1) ( TENANGO DEL VALLE )","GUADALUPE YANCUITLALPAN (1) ( TENANGO DEL VALLE )")
						addOption(document.form.SubCat2,"GUADALUPE YANCUITLALPAN (2) (TENANGO DEL VALLE)","GUADALUPE YANCUITLALPAN (2) (TENANGO DEL VALLE)")
						addOption(document.form.SubCat2,"GUADALUPE YANCUITLALPAN - ODONTOLOGICO (T. VALLE)","GUADALUPE YANCUITLALPAN - ODONTOLOGICO (T. VALLE)")
						addOption(document.form.SubCat2,"C.S. MAGDALENA DE LOS REYES ** T. DEL VALLE - TIANGUISTENCO ","C.S. MAGDALENA DE LOS REYES ** T. DEL VALLE - TIANGUISTENCO ")
						addOption(document.form.SubCat2,"C.S. MAGDALENA DE LOS REYES - ODONTOLOGICO","C.S. MAGDALENA DE LOS REYES - ODONTOLOGICO")
						addOption(document.form.SubCat2,"OCOTENCO ( TENANGO DEL VALLE )","OCOTENCO ( TENANGO DEL VALLE )")
						addOption(document.form.SubCat2,"SAN BARTOLO DEL PROGRESO (1) ( TENANGO DEL VALLE )","SAN BARTOLO DEL PROGRESO (1) ( TENANGO DEL VALLE )")
						addOption(document.form.SubCat2,"SAN BARTOLO DEL PROGRESO (2) ( TENANGO DEL VALLE )","SAN BARTOLO DEL PROGRESO (2) ( TENANGO DEL VALLE )")
						addOption(document.form.SubCat2,"SAN NICOLAS COATEPEC (1) (TENANGO DEL VALLE)","SAN NICOLAS COATEPEC (1) (TENANGO DEL VALLE)")
						addOption(document.form.SubCat2,"SAN NICOLAS COATEPEC (2) (TENANGO DEL VALLE)","SAN NICOLAS COATEPEC (2) (TENANGO DEL VALLE)")
						addOption(document.form.SubCat2,"SAN PEDRO TLALTIZAPAN (1) ( TENANGO DEL VALLE )","SAN PEDRO TLALTIZAPAN (1) ( TENANGO DEL VALLE )")
						addOption(document.form.SubCat2,"SAN PEDRO TLALTIZAPAN (2) ( TENANGO DEL VALLE )","SAN PEDRO TLALTIZAPAN (2) ( TENANGO DEL VALLE )")
						addOption(document.form.SubCat2,"TILAPA II ( TENANGO DEL VALLE )","TILAPA II ( TENANGO DEL VALLE )")
						addOption(document.form.SubCat2,"CASA DE SALUD TLACUITLAPA ++ T. DEL VALLE - SANTIAGO TIANG. ","CASA DE SALUD TLACUITLAPA ++ T. DEL VALLE - SANTIAGO TIANG. ")
						addOption(document.form.SubCat2,"CASA DE SALUD TLACOMULCO (TENANGO DEL VALLE)","CASA DE SALUD TLACOMULCO (TENANGO DEL VALLE)")
						addOption(document.form.SubCat2,"SANTIAGO TILAPA I  (1) ( TENANGO DEL VALLE )","SANTIAGO TILAPA I  (1) ( TENANGO DEL VALLE )")
						addOption(document.form.SubCat2,"SANTIAGO TILAPA I (2) (TENANGO DEL VALLE)","SANTIAGO TILAPA I (2) (TENANGO DEL VALLE)")
						addOption(document.form.SubCat2,"CASA DE SALUD CHIQUISPAC (TENANGO DEL VALLE)","CASA DE SALUD CHIQUISPAC (TENANGO DEL VALLE)")
						addOption(document.form.SubCat2,"CASA DE SALUD SAN LORENZO HUEHUETITLAN ( TENANGO DEL VALLE )","CASA DE SALUD SAN LORENZO HUEHUETITLAN ( TENANGO DEL VALLE )")
					   
			   		}
					
					if(document.form.SubCat.value == 'TENANGO DEL VALLE')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"C.S. ATLATLAHUCA (1) T. DEL VALLE - TENANGO DEL VALLE","C.S. ATLATLAHUCA (1) T. DEL VALLE - TENANGO DEL VALLE")
					addOption(document.form.SubCat2,"C.S. ATLATLAHUCA (2) T. DEL VALLE - TENANGO DEL VALLE","C.S. ATLATLAHUCA (2) T. DEL VALLE - TENANGO DEL VALLE")
					addOption(document.form.SubCat2,"SAN MIGUEL BALDERAS (1)  ( TENANGO DEL VALLE )","SAN MIGUEL BALDERAS (1)  ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"SAN MIGUEL BALDERAS (2)  ( TENANGO DEL VALLE )","SAN MIGUEL BALDERAS (2)  ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"SAN FRANCISCO PUTLA  ( TENANGO DEL VALLE )","SAN FRANCISCO PUTLA  ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"C.S. SANTA MARIA JAJALPA (1)","C.S. SANTA MARIA JAJALPA (1)")
					addOption(document.form.SubCat2,"C.S. SANTA MARIA JAJALPA (2)","C.S. SANTA MARIA JAJALPA (2)")
					addOption(document.form.SubCat2,"SANTIAGUITO COAXUXTENCO (1) ( TENANGO DEL VALLE )","SANTIAGUITO COAXUXTENCO (1) ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"SANTIAGUITO COAXUXTENCO (2) (TENANGO DEL VALLE)","SANTIAGUITO COAXUXTENCO (2) (TENANGO DEL VALLE)")
					addOption(document.form.SubCat2,"C.S. TEPEXOXUCA","C.S. TEPEXOXUCA")
					addOption(document.form.SubCat2,"SAN FRANCISCO TETETLA ( TENANGO DEL VALLE )","SAN FRANCISCO TETETLA ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"C.S. TLANISCO (1) T. DEL VALLE - TENANGO DEL VALLE","C.S. TLANISCO (1) T. DEL VALLE - TENANGO DEL VALLE")
					addOption(document.form.SubCat2,"C.S. TLANISCO (2) T. DEL VALLE - TENANGO DEL VALLE","C.S. TLANISCO (2) T. DEL VALLE - TENANGO DEL VALLE")
					addOption(document.form.SubCat2,"SAN PEDRO ZICTEPEC ( TENANGO DEL VALLE )","SAN PEDRO ZICTEPEC ( TENANGO DEL VALLE )")
					addOption(document.form.SubCat2,"CASA DE SALUD PUEBLO NUEVO","CASA DE SALUD PUEBLO NUEVO")
					addOption(document.form.SubCat2,"BRIGADA JURISDICCION TENANGO DEL VALLE ( TENANGO DEL VALLE )","BRIGADA JURISDICCION TENANGO DEL VALLE ( TENANGO DEL VALLE )")

			   		}//FIN FUNCION TENANGO DEL VALLE
					
					if(document.form.SubCat.value == 'ALMOLOYA DE JUAREZ')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"SAN ANTONIO BUENAVISTA ( TOLUCA) ALMOLOYA DE JUAREZ","SAN ANTONIO BUENAVISTA ( TOLUCA) ALMOLOYA DE JUAREZ")
					addOption(document.form.SubCat2,"CASA DE SALUD BENITO JUAREZ ++ TOL - ALMOLOYA DE JUAREZ ++","CASA DE SALUD BENITO JUAREZ ++ TOL - ALMOLOYA DE JUAREZ ++")
					addOption(document.form.SubCat2,"CASA DE SALUD CIENEGUILLAS DE MAÑONES ( TOLUCA)","CASA DE SALUD CIENEGUILLAS DE MAÑONES ( TOLUCA)")
					addOption(document.form.SubCat2,"CASA DE SALUD EJIDO  SAN PEDRO LA ESTANZUELA ( TOLUCA)","CASA DE SALUD EJIDO  SAN PEDRO LA ESTANZUELA ( TOLUCA)")
					addOption(document.form.SubCat2,"CASA DE SALUD LA CABECERA PRIMERA SECCION +TOL-ALMOLOYA DE J","CASA DE SALUD LA CABECERA PRIMERA SECCION +TOL-ALMOLOYA DE J")
					addOption(document.form.SubCat2,"CASA DE SALUD LA CABECERA TERCERA SECCION +TOL-ALMOLOYA DE J","CASA DE SALUD LA CABECERA TERCERA SECCION +TOL-ALMOLOYA DE J")
					addOption(document.form.SubCat2,"CASA DE SALUD PIEDRAS BLANCAS CENTRO ( TOLUCA)","CASA DE SALUD PIEDRAS BLANCAS CENTRO ( TOLUCA)")
					addOption(document.form.SubCat2,"CASA DE SALUD PIEDRAS BLANCAS SUR ( TOLUCA)","CASA DE SALUD PIEDRAS BLANCAS SUR ( TOLUCA)")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN ISIDRO EL RESERVADO  ( TOLUCA )","CASA DE SALUD SAN ISIDRO EL RESERVADO  ( TOLUCA )")
					addOption(document.form.SubCat2,"CIENEGUILLAS ( TOLUCA)","CIENEGUILLAS ( TOLUCA)")
					addOption(document.form.SubCat2,"C.S. DILATADA SUR ++ TOL- ALMOLOYA DE JUAREZ ++","C.S. DILATADA SUR ++ TOL- ALMOLOYA DE JUAREZ ++")
					addOption(document.form.SubCat2,"EL ESTANCO(1) ( TOLUCA)","EL ESTANCO(1) ( TOLUCA)")
					addOption(document.form.SubCat2,"EL ESTANCO(2) ( TOLUCA)","EL ESTANCO(2) ( TOLUCA)")
					addOption(document.form.SubCat2,"LA GAVIA PROGRESA ( TOLUCA)","LA GAVIA PROGRESA ( TOLUCA)")
					addOption(document.form.SubCat2,"C.S. EX HACIENDA MEXTEPEC ++ TOL - ALMOLOYA DE JUAREZ ++","C.S. EX HACIENDA MEXTEPEC ++ TOL - ALMOLOYA DE JUAREZ ++")
					addOption(document.form.SubCat2,"C.S. OCOYOTEPEC CENTRO","C.S. OCOYOTEPEC CENTRO")
					addOption(document.form.SubCat2,"C.S.R.  PALOS AMARILLOS PROGRESA **TOL - ALMOLOYA DE JUAREZ*","C.S.R.  PALOS AMARILLOS PROGRESA **TOL - ALMOLOYA DE JUAREZ*")
					addOption(document.form.SubCat2,"C.S. PAREDON EJIDO ++ TOL - ALMOLOYA DE JUAREZ ++","C.S. PAREDON EJIDO ++ TOL - ALMOLOYA DE JUAREZ ++")
					addOption(document.form.SubCat2,"C.S.R.  SALITRE DE MAÑONES  PROGRESA **TOL - ALM. DE JUAREZ*","C.S.R.  SALITRE DE MAÑONES  PROGRESA **TOL - ALM. DE JUAREZ*")
					addOption(document.form.SubCat2,"C.S. SAN AGUSTIN CITLALI ++ TOL - ALMOLOYA DE JUAREZ ++","C.S. SAN AGUSTIN CITLALI ++ TOL - ALMOLOYA DE JUAREZ ++")
					addOption(document.form.SubCat2,"SAN AGUSTIN POTEJE CENTRO (1) ( TOLUCA)","SAN AGUSTIN POTEJE CENTRO (1) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN AGUSTIN POTEJE CENTRO (2) (TOLUCA)","SAN AGUSTIN POTEJE CENTRO (2) (TOLUCA)")
					addOption(document.form.SubCat2,"SAN FRANCISCO TLALCILALCALPAN (1)  ( TOLUCA )","SAN FRANCISCO TLALCILALCALPAN (1)  ( TOLUCA )")
					addOption(document.form.SubCat2,"SAN FRANCISCO TLALCILALCALPAN (2)  ( TOLUCA ) ","SAN FRANCISCO TLALCILALCALPAN (2)  ( TOLUCA ) ")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN LORENZO CUAUHTENCO **TOL - ALM. DE JUAREZ*","CASA DE SALUD SAN LORENZO CUAUHTENCO **TOL - ALM. DE JUAREZ*")
					addOption(document.form.SubCat2,"SAN MIGUEL ALMOLOYAN (1) TOL-ALMOLOYA DE JUAREZ","SAN MIGUEL ALMOLOYAN (1) TOL-ALMOLOYA DE JUAREZ")
					addOption(document.form.SubCat2,"SAN MIGUEL ALMOLOYAN (2) TOL-ALMOLOYA DE JUAREZ","SAN MIGUEL ALMOLOYAN (2) TOL-ALMOLOYA DE JUAREZ")
					addOption(document.form.SubCat2,"SAN MIGUEL TLALCHICHILPAN (1) TOL-ALMOLOYA DE JUAREZ","SAN MIGUEL TLALCHICHILPAN (1) TOL-ALMOLOYA DE JUAREZ")
					addOption(document.form.SubCat2,"SAN MIGUEL TLALCHICHILPAN (2) TOL-ALMOLOYA DE JUAREZ","SAN MIGUEL TLALCHICHILPAN (2) TOL-ALMOLOYA DE JUAREZ")
					addOption(document.form.SubCat2,"SAN PEDRO LA HORTALIZA ( TOLUCA)","SAN PEDRO LA HORTALIZA ( TOLUCA)")
					addOption(document.form.SubCat2,"C.S. SANTA CATARINA TABERNILLAS (1)  TOL -ALMOLOYA DE JUAREZ","C.S. SANTA CATARINA TABERNILLAS (1)  TOL -ALMOLOYA DE JUAREZ")
					addOption(document.form.SubCat2,"C.S. SANTA CATARINA TABERNILLAS (2)  TOL -ALMOLOYA DE JUAREZ","C.S. SANTA CATARINA TABERNILLAS (2)  TOL -ALMOLOYA DE JUAREZ")
					addOption(document.form.SubCat2,"C.S. SANTIAGUITO TLALCILALCALLI (1)","C.S. SANTIAGUITO TLALCILALCALLI (1)")
					addOption(document.form.SubCat2,"C.S. SANTIAGUITO TLALCILALCALLI (2)","C.S. SANTIAGUITO TLALCILALCALLI (2)")
					addOption(document.form.SubCat2,"YEBUCIVI  (1)  ( TOLUCA)","YEBUCIVI  (1)  ( TOLUCA)")
					addOption(document.form.SubCat2,"CASA DE SALUD BESANA ANCHA ( TOLUCA)","CASA DE SALUD BESANA ANCHA ( TOLUCA)")
					addOption(document.form.SubCat2,"CASA DE SALUD CAÑADA DE GUADARRAMA ( TOLUCA)","CASA DE SALUD CAÑADA DE GUADARRAMA ( TOLUCA)")
					addOption(document.form.SubCat2,"UNIDAD MOVIL MINA MEXICO ( TOLUCA)","UNIDAD MOVIL MINA MEXICO ( TOLUCA)")
					addOption(document.form.SubCat2,"BRIGADA ARROYO ZARCO ( TOLUCA ) UNIDAD MOVIL","BRIGADA ARROYO ZARCO ( TOLUCA ) UNIDAD MOVIL")
					addOption(document.form.SubCat2,"CASA DE SALUD EL OCOTE ( TOLUCA )","CASA DE SALUD EL OCOTE ( TOLUCA )")
					addOption(document.form.SubCat2,"CASA DE SALUD ARROYO ZARCO CENTRO (TOLUCA)","CASA DE SALUD ARROYO ZARCO CENTRO (TOLUCA)")

					}
					
					if(document.form.SubCat.value == 'METEPEC')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"CASA DE SALUD COL ALVARO OBREGON ++TOL-METEPEC++","CASA DE SALUD COL ALVARO OBREGON ++TOL-METEPEC++")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN LORENZO COACALCO(TOLUCA)","CASA DE SALUD SAN LORENZO COACALCO(TOLUCA)")
					addOption(document.form.SubCat2,"MAGDALENA OCOTITLAN 1 ( TOLUCA )","MAGDALENA OCOTITLAN 1 ( TOLUCA )")
					addOption(document.form.SubCat2,"MAGDALENA OCOTITLAN 2 (TOLUCA)","MAGDALENA OCOTITLAN 2 (TOLUCA)")
					addOption(document.form.SubCat2,"SAN BARTOLOME TLALTELULCO (1) ( TOLUCA )","SAN BARTOLOME TLALTELULCO (1) ( TOLUCA )")
					addOption(document.form.SubCat2,"SAN BARTOLOME TLALTELULCO (2) ( TOLUCA )","SAN BARTOLOME TLALTELULCO (2) ( TOLUCA )")
					addOption(document.form.SubCat2,"SAN GASPAR TLAHUELILPAN (1) TOL-METEPEC","SAN GASPAR TLAHUELILPAN (1) TOL-METEPEC")
					addOption(document.form.SubCat2,"SAN GASPAR TLAHUELILPAN (2) TOL-METEPEC","SAN GASPAR TLAHUELILPAN (2) TOL-METEPEC")
					addOption(document.form.SubCat2,"SAN GASPAR TLAHUELILPAN-ODONTOLOGICO (3) TOL-METEPEC","SAN GASPAR TLAHUELILPAN-ODONTOLOGICO (3) TOL-METEPEC")
					addOption(document.form.SubCat2,"SAN MIGUEL TOTOCUITLAPILCO (1) (TOLUCA )","SAN MIGUEL TOTOCUITLAPILCO (1) (TOLUCA )")
					addOption(document.form.SubCat2,"SAN MIGUEL TOTOCUITLAPILCO (2) ( TOLUCA )","SAN MIGUEL TOTOCUITLAPILCO (2) ( TOLUCA )")
					addOption(document.form.SubCat2,"SAN JERONIMO CHICAHUALCO (1) ( TOLUCA)","SAN JERONIMO CHICAHUALCO (1) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN JERONIMO CHICAHUALCO (2) ( TOLUCA)","SAN JERONIMO CHICAHUALCO (2) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN JERONIMO CHICAHUALCO (3) ( TOLUCA)","SAN JERONIMO CHICAHUALCO (3) ( TOLUCA)")

					}
					if(document.form.SubCat.value == 'OTZOLOTEPEC')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"EJIDO DE LA  Y  ( 1 ) ( TOLUCA)","EJIDO DE LA  Y  ( 1 ) ( TOLUCA)")
					addOption(document.form.SubCat2,"EJIDO DE LA  Y  ( 2 ) ( TOLUCA)","EJIDO DE LA  Y  ( 2 ) ( TOLUCA)")

					}
					
					if(document.form.SubCat.value == 'TOLUCA')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"C.S. BARRIO DE JESUS FRAC 1 A (1)TOLUCA DELEGACION","C.S. BARRIO DE JESUS FRAC 1 A (1)TOLUCA DELEGACION")
					addOption(document.form.SubCat2,"C.S. BARRIO DE JESUS FRAC 1 (2) TOLUCA DELEGACION","C.S. BARRIO DE JESUS FRAC 1 (2) TOLUCA DELEGACION")
					addOption(document.form.SubCat2,"BARRIO DE JESUS FRACCION 1 CANCELADO","BARRIO DE JESUS FRACCION 1 CANCELADO")
					addOption(document.form.SubCat2,"BARRIO DE JESUS FRACCION 2 A ( 1 ) ( TOLUCA)","BARRIO DE JESUS FRACCION 2 A ( 1 ) ( TOLUCA)")
					addOption(document.form.SubCat2,"BARRIO DE JESUS FRACCION 2 A (2) ( TOLUCA)","BARRIO DE JESUS FRACCION 2 A (2) ( TOLUCA)")
					addOption(document.form.SubCat2,"BARRIO DE JESUS FRACCION 2 A (3) ( TOLUCA)","BARRIO DE JESUS FRACCION 2 A (3) ( TOLUCA)")
					addOption(document.form.SubCat2,"BARRIO MEXICO (2) (TOLUCA)","BARRIO MEXICO (2) (TOLUCA)")
					addOption(document.form.SubCat2,"CACALOMACAN ESTE ( 1 ) ( TOLUCA)","CACALOMACAN ESTE ( 1 ) ( TOLUCA)")
					addOption(document.form.SubCat2,"CACALOMACAN ESTE ( 2 ) ( TOLUCA)","CACALOMACAN ESTE ( 2 ) ( TOLUCA)")
					addOption(document.form.SubCat2,"C.S. CACALOMACAN OESTE ** TOL - TOLUCA **","C.S. CACALOMACAN OESTE ** TOL - TOLUCA **")
					addOption(document.form.SubCat2,"CALIXTLAHUACA ( TOLUCA)","CALIXTLAHUACA ( TOLUCA)")
					addOption(document.form.SubCat2,"CAPULTITLAN (1)(TOLUCA)","CAPULTITLAN (1)(TOLUCA)")
					addOption(document.form.SubCat2,"CAPULTITLAN (2) (TOLUCA)","CAPULTITLAN (2) (TOLUCA)")
					addOption(document.form.SubCat2,"CAPULTITLAN ** ODONTOLOGICO **","CAPULTITLAN ** ODONTOLOGICO **")
					addOption(document.form.SubCat2,"CASA DE SALUD COL LAZARO CARDENAS(1) (TOLUCA)","CASA DE SALUD COL LAZARO CARDENAS(1) (TOLUCA)")
					addOption(document.form.SubCat2,"DIF II RASTRO (1) ( TOLUCA)","DIF II RASTRO (1) ( TOLUCA)")
					addOption(document.form.SubCat2,"DIF II RASTRO (2) ( TOLUCA)","DIF II RASTRO (2) ( TOLUCA)")
					addOption(document.form.SubCat2,"DIF II  RASTRO (3) ( TOLUCA)","DIF II  RASTRO (3) ( TOLUCA)")
					addOption(document.form.SubCat2,"CASA DE SALUD COL. FRANCISCO I MADERO ++TOL-METEPEC++","CASA DE SALUD COL. FRANCISCO I MADERO ++TOL-METEPEC++")
					addOption(document.form.SubCat2,"CASA DE SALUD MAYORAZGO DE LEÓN 2 (TOLUCA)","CASA DE SALUD MAYORAZGO DE LEÓN 2 (TOLUCA)")
					addOption(document.form.SubCat2,"CASA DE SALUD POTEJE SUR (1)  ( TOLUCA)","CASA DE SALUD POTEJE SUR (1)  ( TOLUCA)")
					addOption(document.form.SubCat2,"CASA DE SALUD ROSAURA ZAPATA (1) (TOLUCA)","CASA DE SALUD ROSAURA ZAPATA (1) (TOLUCA)")
					addOption(document.form.SubCat2,"CASA DE SALUD ROSAURA ZAPATA (2) ( TOLUCA)","CASA DE SALUD ROSAURA ZAPATA (2) ( TOLUCA)")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN CAYETANO MORELOS","CASA DE SALUD SAN CAYETANO MORELOS")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN LUCAS TUNCO (TOLUCA)","CASA DE SALUD SAN LUCAS TUNCO (TOLUCA)")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN SEBASTIAN (TOLUCA)","CASA DE SALUD SAN SEBASTIAN (TOLUCA)")
					addOption(document.form.SubCat2,"SANTA CRUZ OTZACATIPAN ( TOLUCA)","SANTA CRUZ OTZACATIPAN ( TOLUCA)")
					addOption(document.form.SubCat2,"EL COPORO  (TOLUCA)","EL COPORO  (TOLUCA)")
					addOption(document.form.SubCat2,"C.S. CRESPA 1A SECC (1) TOL - TOLUCA","C.S. CRESPA 1A SECC (1) TOL - TOLUCA")
					addOption(document.form.SubCat2,"C.S. CRESPA 1A SECC (2) TOL - TOLUCA","C.S. CRESPA 1A SECC (2) TOL - TOLUCA")
					addOption(document.form.SubCat2,"EJIDO SAN MATEO OTZACATIPAN (1) (TOLUCA)","EJIDO SAN MATEO OTZACATIPAN (1) (TOLUCA)")
					addOption(document.form.SubCat2,"EJIDO SAN MATEO OTZACATIPAN  (2) (TOLUCA)","EJIDO SAN MATEO OTZACATIPAN  (2) (TOLUCA)")
					addOption(document.form.SubCat2,"C.S. MAYORAZGO DE LEON **TOL-ALMOLOYA DE JUAREZ**","C.S. MAYORAZGO DE LEON **TOL-ALMOLOYA DE JUAREZ**")
					addOption(document.form.SubCat2,"PUEBLO NUEVO (1) ( TOLUCA)","PUEBLO NUEVO (1) ( TOLUCA)")
					addOption(document.form.SubCat2,"PUEBLO NUEVO (2) ( TOLUCA)","PUEBLO NUEVO (2) ( TOLUCA)")
					addOption(document.form.SubCat2,"PUEBLO NUEVO (3) ( TOLUCA)","PUEBLO NUEVO (3) ( TOLUCA)")
					addOption(document.form.SubCat2,"PUEBLO NUEVO (4) (TOLUCA)","PUEBLO NUEVO (4) (TOLUCA)")
					addOption(document.form.SubCat2,"SAN ANDRES CUEXCONTITLAN (1) ( TOLUCA)","SAN ANDRES CUEXCONTITLAN (1) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN ANDRES CUEXCONTITLAN (2) ( TOLUCA)","SAN ANDRES CUEXCONTITLAN (2) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN ANDRES CUEXCONTITLAN (3) ( TOLUCA)","SAN ANDRES CUEXCONTITLAN (3) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN ANDRES CUEXCONTITLAN (4) ( TOLUCA)","SAN ANDRES CUEXCONTITLAN (4) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN ANDRES CUEXCONTITLAN (5) ( TOLUCA)","SAN ANDRES CUEXCONTITLAN (5) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN ANTONIO BUENAVISTA ( TOLUCA)","SAN ANTONIO BUENAVISTA ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN ANTONIO BUENAVISTA ODONTOLOGICO (TOL-TOLUCA)","SAN ANTONIO BUENAVISTA ODONTOLOGICO (TOL-TOLUCA)")
					addOption(document.form.SubCat2,"SAN BARTOLO EL VIEJO (TOLUCA)","SAN BARTOLO EL VIEJO (TOLUCA)")
					addOption(document.form.SubCat2,"SAN BUENAVENTURA (1) ( TOLUCA)","SAN BUENAVENTURA (1) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN BUENAVENTURA (2) ( TOLUCA)","SAN BUENAVENTURA (2) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN CRISTOBAL HUICHOCHITLAN (1) ( TOLUCA ) ","SAN CRISTOBAL HUICHOCHITLAN (1) ( TOLUCA ) ")
					addOption(document.form.SubCat2,"SAN CRISTOBAL HUICHOCHITLAN (2) ( TOLUCA )","SAN CRISTOBAL HUICHOCHITLAN (2) ( TOLUCA )")
					addOption(document.form.SubCat2,"SAN CRISTOBAL HUICHOCHITLAN ** ODONTOLOGICO **","SAN CRISTOBAL HUICHOCHITLAN ** ODONTOLOGICO **")
					addOption(document.form.SubCat2,"SAN CRISTOBAL TECOLIT (TOLUCA)","SAN CRISTOBAL TECOLIT (TOLUCA)")
					addOption(document.form.SubCat2,"SAN DIEGO DE LOS PADRES (1) TOL-TOLUCA","SAN DIEGO DE LOS PADRES (1) TOL-TOLUCA")
					addOption(document.form.SubCat2,"SAN DIEGO DE LOS PADRES (2) TOL-TOLUCA","SAN DIEGO DE LOS PADRES (2) TOL-TOLUCA")
					addOption(document.form.SubCat2,"SAN FELIPE TLALMIMILOLPAN  ( TOLUCA)","SAN FELIPE TLALMIMILOLPAN  ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN JUAN TILAPA(1) ( TOLUCA)","SAN JUAN TILAPA(1) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN JUAN TILAPA(2) ( TOLUCA)","SAN JUAN TILAPA(2) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN LORENZO TEPALTITLAN (1)  (TOLUCA)","SAN LORENZO TEPALTITLAN (1)  (TOLUCA)")
					addOption(document.form.SubCat2,"SAN LORENZO TEPALTITLAN (2)  (TOLUCA)","SAN LORENZO TEPALTITLAN (2)  (TOLUCA)")
					addOption(document.form.SubCat2,"SAN LORENZO TEPALTITLAN ++ODONTOLOGICO++","SAN LORENZO TEPALTITLAN ++ODONTOLOGICO++")
					addOption(document.form.SubCat2,"C.S. SAN MARTIN TOLTEPEC ++ TOL - TOLUCA ++","C.S. SAN MARTIN TOLTEPEC ++ TOL - TOLUCA ++")
					addOption(document.form.SubCat2,"SAN MATEO OXTOTITLAN ** TOL - TOLUCA **","SAN MATEO OXTOTITLAN ** TOL - TOLUCA **")
					addOption(document.form.SubCat2,"ALMACEN TOLUCA **TOL-TOLUCA**","ALMACEN TOLUCA **TOL-TOLUCA**")
					addOption(document.form.SubCat2,"SAN MIGUEL TOTOLTEPEC (1) TOL-TOLUCA","SAN MIGUEL TOTOLTEPEC (1) TOL-TOLUCA")
					addOption(document.form.SubCat2,"SAN MIGUEL TOTOLTEPEC (2) TOL-TOLUCA","SAN MIGUEL TOTOLTEPEC (2) TOL-TOLUCA")
					addOption(document.form.SubCat2,"SAN PEDRO DE LA CONCEPCION(1) ( TOLUCA)","SAN PEDRO DE LA CONCEPCION(1) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN PEDRO DE LA CONCEPCION(2) ( TOLUCA)","SAN PEDRO DE LA CONCEPCION(2) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN PEDRO TEJALPA (1) ( TOLUCA )","SAN PEDRO TEJALPA (1) ( TOLUCA )")
					addOption(document.form.SubCat2,"SAN PEDRO TEJALPA (2) ( TOLUCA )","SAN PEDRO TEJALPA (2) ( TOLUCA )")
					addOption(document.form.SubCat2,"SAN PEDRO TOTOLTEPEC (1) ( TOLUCA)","SAN PEDRO TOTOLTEPEC (1) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN PEDRO TOTOLTEPEC (2) ( TOLUCA)","SAN PEDRO TOTOLTEPEC (2) ( TOLUCA)")
					addOption(document.form.SubCat2,"SANTA ANA TLAPALTITLAN ( TOLUCA)","SANTA ANA TLAPALTITLAN ( TOLUCA)")
					addOption(document.form.SubCat2,"SANTA ANA TLAPALTITLAN ** ODONTOLOGICO **","SANTA ANA TLAPALTITLAN ** ODONTOLOGICO **")
					addOption(document.form.SubCat2,"SANTA CRUZ ATZCAPOZALTONGO (1) ( TOLUCA)","SANTA CRUZ ATZCAPOZALTONGO (1) ( TOLUCA)")
					addOption(document.form.SubCat2,"SANTA CRUZ ATZCAPOZALTONGO ( 2 )  ( TOLUCA)","SANTA CRUZ ATZCAPOZALTONGO ( 2 )  ( TOLUCA)")
					addOption(document.form.SubCat2,"C.S. SANTA MARIA DEL MONTE ++ TOL - ZINACANTEPEC ++","C.S. SANTA MARIA DEL MONTE ++ TOL - ZINACANTEPEC ++")
					addOption(document.form.SubCat2,"C.S. SANTA MARIA TOTOLTEPEC (1) TOL - TOLUCA","C.S. SANTA MARIA TOTOLTEPEC (1) TOL - TOLUCA")
					addOption(document.form.SubCat2,"C.S. SANTA MARIA TOTOLTEPEC (2) TOL - TOLUCA","C.S. SANTA MARIA TOTOLTEPEC (2) TOL - TOLUCA")
					addOption(document.form.SubCat2,"SANTIAGO TLACOTEPEC ( 1 ) ( TOLUCA)","SANTIAGO TLACOTEPEC ( 1 ) ( TOLUCA)")
					addOption(document.form.SubCat2,"SANTIAGO TLACOTEPEC ( 2 ) ( TOLUCA)","SANTIAGO TLACOTEPEC ( 2 ) ( TOLUCA)")
					addOption(document.form.SubCat2,"SANTIAGO TLAXOMULCO ( TOLUCA)","SANTIAGO TLAXOMULCO ( TOLUCA)")
					addOption(document.form.SubCat2,"TECAXIC ( TOLUCA)","TECAXIC ( TOLUCA)")
					addOption(document.form.SubCat2,"TLACHALOYA PUEBLO 1a. SECCION ( 1 ) ( TOLUCA)","TLACHALOYA PUEBLO 1a. SECCION ( 1 ) ( TOLUCA)")
					addOption(document.form.SubCat2,"TLACHALOYA PUEBLO 1a SECCION ( 2 ) ( TOLUCA)","TLACHALOYA PUEBLO 1a SECCION ( 2 ) ( TOLUCA)")
					addOption(document.form.SubCat2,"TLACHALOYA EJIDO 2a.SECCION ( 1 ) ( TOLUCA)","TLACHALOYA EJIDO 2a.SECCION ( 1 ) ( TOLUCA)")
					addOption(document.form.SubCat2,"TLACHALOYA EJIDO 2a.SECCION ( 2 )( TOLUCA)","TLACHALOYA EJIDO 2a.SECCION ( 2 )( TOLUCA)")
					addOption(document.form.SubCat2,"MODERNA DE LA CRUZ (1) ( TOLUCA)","MODERNA DE LA CRUZ (1) ( TOLUCA)")
					addOption(document.form.SubCat2,"MODERNA DE LA CRUZ (2) ( TOLUCA)","MODERNA DE LA CRUZ (2) ( TOLUCA)")
					addOption(document.form.SubCat2,"SAN PABLO AUTOPAN PRIMERA SECCION ( TOLUCA )","SAN PABLO AUTOPAN PRIMERA SECCION ( TOLUCA )")
					addOption(document.form.SubCat2,"BRIGADA JURISDICCION TOLUCA ( TOLUCA )","BRIGADA JURISDICCION TOLUCA ( TOLUCA )")

					}
					
					if(document.form.SubCat.value == 'ZINACANTEPEC')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"BARRIO MEXICO (1) (TOLUCA)","BARRIO MEXICO (1) (TOLUCA)")
					addOption(document.form.SubCat2,"BARRIO MEXICO (3) (TOLUCA)","BARRIO MEXICO (3) (TOLUCA)")
					addOption(document.form.SubCat2,"EMILIANO ZAPATA (TOLUCA)","EMILIANO ZAPATA (TOLUCA)")
					addOption(document.form.SubCat2,"LOMA ALTA (TOLUCA) ZINACANTEPEC","LOMA ALTA (TOLUCA) ZINACANTEPEC")
					addOption(document.form.SubCat2,"SAN ANTONIO ACAHUALCO (1)  ( TOLUCA )","SAN ANTONIO ACAHUALCO (1)  ( TOLUCA )")
					addOption(document.form.SubCat2,"SAN ANTONIO ACAHUALCO (2) ( TOLUCA )","SAN ANTONIO ACAHUALCO (2) ( TOLUCA )")
					addOption(document.form.SubCat2,"SAN ANTONIO ACAHUALCO (3) ( TOLUCA )","SAN ANTONIO ACAHUALCO (3) ( TOLUCA )")
					addOption(document.form.SubCat2,"SAN ANTONIO ACAHUALCO (4) (TOLUCA)","SAN ANTONIO ACAHUALCO (4) (TOLUCA)")
					addOption(document.form.SubCat2,"SAN ANTONIO ACAHUALCO **ODONTOLOGICO**","SAN ANTONIO ACAHUALCO **ODONTOLOGICO**")
					addOption(document.form.SubCat2,"C.S. SAN JUAN DE LAS HUERTAS (1)","C.S. SAN JUAN DE LAS HUERTAS (1)")
					addOption(document.form.SubCat2,"C.S. SAN JUAN DE LAS HUERTAS (2)","C.S. SAN JUAN DE LAS HUERTAS (2)")
					addOption(document.form.SubCat2,"C.S. SAN JUAN DE LAS HUERTAS - ODONTOLOGICO","C.S. SAN JUAN DE LAS HUERTAS - ODONTOLOGICO")
					addOption(document.form.SubCat2,"SAN LUIS MEXTEPEC (1) TOL - ZINACANTEPEC","SAN LUIS MEXTEPEC (1) TOL - ZINACANTEPEC")
					addOption(document.form.SubCat2,"SAN LUIS MEXTEPEC (2) TOL - ZINACANTEPEC","SAN LUIS MEXTEPEC (2) TOL - ZINACANTEPEC")
					addOption(document.form.SubCat2,"SAN LUIS MEXTEPEC - ODONTOLOGICO ** TOL - ZINACANTEPEC **","SAN LUIS MEXTEPEC - ODONTOLOGICO ** TOL - ZINACANTEPEC **")
					addOption(document.form.SubCat2,"C.S. SANTA CRUZ CUAUHTENCO","C.S. SANTA CRUZ CUAUHTENCO")
					addOption(document.form.SubCat2,"SANTA JUANA 1A.SECC. ( TOLUCA)","SANTA JUANA 1A.SECC. ( TOLUCA)")
					addOption(document.form.SubCat2,"LA PUERTA DEL MONTE **TOL-ZINACANTEPEC**","LA PUERTA DEL MONTE **TOL-ZINACANTEPEC**")
					addOption(document.form.SubCat2,"C.S. EL CURTIDOR ++ TOL - ZINACANTEPEC  ++","C.S. EL CURTIDOR ++ TOL - ZINACANTEPEC  ++")
					addOption(document.form.SubCat2,"SAN BARTOLO DEL LLANO **TOL-ZINACANTEPEC**","SAN BARTOLO DEL LLANO **TOL-ZINACANTEPEC**")
					
					}//FIN  FUNCION TOLUCA
					
					if(document.form.SubCat.value == 'HUIXQUILUCAN')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"C.S. DOS RIOS (1) XON - HUIXQUILUCAN","C.S. DOS RIOS (1) XON - HUIXQUILUCAN")
					addOption(document.form.SubCat2,"C.S. DOS RIOS (2) XON - HUIXQUILUCAN","C.S. DOS RIOS (2) XON - HUIXQUILUCAN")
					addOption(document.form.SubCat2,"PIEDRA GRANDE (XONACATLAN)","PIEDRA GRANDE (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN CRISTOBAL TEXCALUCAN (1) (XONACATLAN)","SAN CRISTOBAL TEXCALUCAN (1) (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN CRISTOBAL TEXCALUCAN (2) (XONACATLAN)","SAN CRISTOBAL TEXCALUCAN (2) (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN CRISTOBAL TEXCALUCAN (3) (XONACATLAN)","SAN CRISTOBAL TEXCALUCAN (3) (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN CRISTOBAL TEXCALUCAN (4) (XONACATLAN)","SAN CRISTOBAL TEXCALUCAN (4) (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN CRISTOBAL TEXCALUCAN * * ODONTOLOGICO * *","SAN CRISTOBAL TEXCALUCAN * * ODONTOLOGICO * *")
					addOption(document.form.SubCat2,"C.S. SAN JUAN YAUTEPEC (1) ++ XON - HUIXQUILUCAN ++","C.S. SAN JUAN YAUTEPEC (1) ++ XON - HUIXQUILUCAN ++")
					addOption(document.form.SubCat2,"C.S. SAN JUAN YAUTEPEC (2) ++ XON - HUIXQUILUCAN ++","C.S. SAN JUAN YAUTEPEC (2) ++ XON - HUIXQUILUCAN ++")
					addOption(document.form.SubCat2,"C.S. SAN JUAN YAUTEPEC (3) ++ XON - HUIXQUILUCAN ++","C.S. SAN JUAN YAUTEPEC (3) ++ XON - HUIXQUILUCAN ++")
					addOption(document.form.SubCat2,"SANTA CRUZ AYOTUxCO (1) (XONACATLAN)","SANTA CRUZ AYOTUxCO (1) (XONACATLAN)")
					addOption(document.form.SubCat2,"SANTA CRUZ AYOTUxCO (2) (XONACATLAN)","SANTA CRUZ AYOTUxCO (2) (XONACATLAN)")
					addOption(document.form.SubCat2,"C.S. SANTIAGO YANCUITLALPAN (1 XON - HUIXQUILUCAN )","C.S. SANTIAGO YANCUITLALPAN (1 XON - HUIXQUILUCAN )")
					addOption(document.form.SubCat2,"C.S. SANTIAGO YANCUITLALPAN (2 XON - HUIXQUILUCAN )","C.S. SANTIAGO YANCUITLALPAN (2 XON - HUIXQUILUCAN )")
					addOption(document.form.SubCat2,"CASA DE SALUD EL GUARDA (XONACATLAN)","CASA DE SALUD EL GUARDA (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD LAS CANTERAS ( XONACATLAN )","CASA DE SALUD LAS CANTERAS ( XONACATLAN )")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN RAMON (XONACATLAN)","CASA DE SALUD SAN RAMON (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD EL PEDREGAL **XON-HUIXQUILUCAN**","CASA DE SALUD EL PEDREGAL **XON-HUIXQUILUCAN**")
					addOption(document.form.SubCat2,"CASA DE SALUD EL HIELO (XONACATLAN)","CASA DE SALUD EL HIELO (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD EL PALACIO (XONACATLAN)","CASA DE SALUD EL PALACIO (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD HUIXQUILUCAN V (XONACATLAN)","CASA DE SALUD HUIXQUILUCAN V (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN BARTOLOME COATEPEC II ( XONACATLAN )","CASA DE SALUD SAN BARTOLOME COATEPEC II ( XONACATLAN )")
					addOption(document.form.SubCat2,"CASA DE SALUD MAGDALENA CHICHICASPA V (XONACATLAN)","CASA DE SALUD MAGDALENA CHICHICASPA V (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN BARTOLOME COATEPEC I (XONACATLAN)","CASA DE SALUD SAN BARTOLOME COATEPEC I (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD MAGDALENA CHICHICASPA IV (XONACATLAN)","CASA DE SALUD MAGDALENA CHICHICASPA IV (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD MAGDALENA CHICHICASPA I  ( XONACATLAN )","CASA DE SALUD MAGDALENA CHICHICASPA I  ( XONACATLAN )")
					addOption(document.form.SubCat2,"CASA DE SALUD ZACAMULPA 1 ( XONACATLAN )","CASA DE SALUD ZACAMULPA 1 ( XONACATLAN )")
					addOption(document.form.SubCat2,"CASA DE SALUD IGNACIO ALLENDE (XON - HUIXQUILUCAN)","CASA DE SALUD IGNACIO ALLENDE (XON - HUIXQUILUCAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD SANTIAGO YANCUITLALPAN I ( XONACATLAN )","CASA DE SALUD SANTIAGO YANCUITLALPAN I ( XONACATLAN )")
					addOption(document.form.SubCat2,"CASA DE SALUD CERRO DE SAN FRANCISCO AYOTUXCO","CASA DE SALUD CERRO DE SAN FRANCISCO AYOTUXCO")
					addOption(document.form.SubCat2,"CASA DE SALUD SANTA CRUZ AYOTUXCO II ** XON - HUIXQUILUCAN *","CASA DE SALUD SANTA CRUZ AYOTUXCO II ** XON - HUIXQUILUCAN *")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN FRANCISCO AYOTUXCO ( XONACATLAN )","CASA DE SALUD SAN FRANCISCO AYOTUXCO ( XONACATLAN )")
					addOption(document.form.SubCat2,"CASA DE SALUD ZACAMULPA 3 ( XONACATLAN )","CASA DE SALUD ZACAMULPA 3 ( XONACATLAN )")
					addOption(document.form.SubCat2,"CASA DE SALUD ZACAMULPA 2 ( XONACATLAN )","CASA DE SALUD ZACAMULPA 2 ( XONACATLAN )")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN JACINTO ** XON - HUIXQUILUCAN **","CASA DE SALUD SAN JACINTO ** XON - HUIXQUILUCAN **")
					addOption(document.form.SubCat2,"CASA DE SALUD EL CERRITO ** XON - HUIXQUILUCAN **","CASA DE SALUD EL CERRITO ** XON - HUIXQUILUCAN **")
					
					}
					
					if(document.form.SubCat.value == 'LERMA')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"COLONIA ALVARO OBREGON (XONACATLAN)","COLONIA ALVARO OBREGON (XONACATLAN)")
					addOption(document.form.SubCat2,"C.S. COL.REFORMA TLALMIMILOLPAN ** XON - LERMA **","C.S. COL.REFORMA TLALMIMILOLPAN ** XON - LERMA **")
					addOption(document.form.SubCat2,"ZACAMULPA HUITZIZILAPAN ( XONACATLAN )","ZACAMULPA HUITZIZILAPAN ( XONACATLAN )")
					addOption(document.form.SubCat2,"SAN LORENZO HUITZIZILAPAN (1) (XONACATLAN)","SAN LORENZO HUITZIZILAPAN (1) (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN LORENZO HUITZIZILAPAN (2) (XONACATLAN)","SAN LORENZO HUITZIZILAPAN (2) (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN MIGUEL AMEYALCO (XONACATLAN)","SAN MIGUEL AMEYALCO (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN NICOLAS PERALTA (XONACATLAN)","SAN NICOLAS PERALTA (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN PEDRO HUITZIZILAPAN (XONACATLAN)","SAN PEDRO HUITZIZILAPAN (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN PEDRO TULTEPEC 1 (XONACATLAN)","SAN PEDRO TULTEPEC 1 (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN PEDRO TULTEPEC 2 (XONACATLAN)","SAN PEDRO TULTEPEC 2 (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN PEDRO TULTEPEC 3 (XONACATLAN)","SAN PEDRO TULTEPEC 3 (XONACATLAN)")
					addOption(document.form.SubCat2,"SANTA MARIA ATARASQUILLO(XONACATLAN)","SANTA MARIA ATARASQUILLO(XONACATLAN)")
					addOption(document.form.SubCat2,"SANTIAGO ANALCO (XONACATLAN)","SANTIAGO ANALCO (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN FRANCISCO XOCHICUAUTLA (XONACATLAN)","SAN FRANCISCO XOCHICUAUTLA (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN MARTIN LAS RAJAS (XONACATLAN)","CASA DE SALUD SAN MARTIN LAS RAJAS (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD SALAZAR ( XONACATLAN )","CASA DE SALUD SALAZAR ( XONACATLAN )")
					
					}
					if(document.form.SubCat.value == 'OCOYOACAC')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"SAN JERONIMO ACAZULCO (XONACATLAN)","SAN JERONIMO ACAZULCO (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN PEDRO ATLAPULCO (XONACATLAN)","SAN PEDRO ATLAPULCO (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN PEDRO CHOLULA 1 (XONACATLAN)","SAN PEDRO CHOLULA 1 (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN PEDRO CHOLULA 2 (XONACATLAN)","SAN PEDRO CHOLULA 2 (XONACATLAN)")
					addOption(document.form.SubCat2,"SANTA MARIA LA ASUNCION TEPEXO (XONACATLAN)","SANTA MARIA LA ASUNCION TEPEXO (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN MIGUEL OCOYOACAC (XONACATLAN)","SAN MIGUEL OCOYOACAC (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD EL PEDREGAL","CASA DE SALUD EL PEDREGAL")
					
					}
					if(document.form.SubCat.value == 'OTZOLOAPAN')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"VILLA CUAHUTEMOC  ( 2 ) (XONACATLAN)","VILLA CUAHUTEMOC  ( 2 ) (XONACATLAN)")
					
					}
					if(document.form.SubCat.value == 'OTZOLOTEPEC')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"SANTA ANA JILOTZINGO (1) (XONACATLAN)","SANTA ANA JILOTZINGO (1) (XONACATLAN)")
					addOption(document.form.SubCat2,"SANTA ANA JILOTZINGO (2) (XONACATLAN)","SANTA ANA JILOTZINGO (2) (XONACATLAN)")
					addOption(document.form.SubCat2," SANTA ANA JILOTZINGO (3) (XONACATLAN)"," SANTA ANA JILOTZINGO (3) (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD SANTA ANA JILOTZINGO NO EXISTE","CASA DE SALUD SANTA ANA JILOTZINGO NO EXISTE")
					addOption(document.form.SubCat2,"COL. GUADALUPE VICTORIA (1) XON-OTZOLOTEPEC","COL. GUADALUPE VICTORIA (1) XON-OTZOLOTEPEC")
					addOption(document.form.SubCat2,"COL. GUADALUPE VICTORIA (2) NO EXISTE","COL. GUADALUPE VICTORIA (2) NO EXISTE")
					addOption(document.form.SubCat2,"COL. GUADALUPE VICTORIA (3) NO EXISTE","COL. GUADALUPE VICTORIA (3) NO EXISTE")
					addOption(document.form.SubCat2,"LA PILAR MARIA ( 1 ) (XONACATLAN)","LA PILAR MARIA ( 1 ) (XONACATLAN)")
					addOption(document.form.SubCat2,"LA PILAR MARIA ( 2 ) (XONACATLAN) NO EXISTE","LA PILAR MARIA ( 2 ) (XONACATLAN) NO EXISTE")
					addOption(document.form.SubCat2,"MAYORAZGO (SANTA ANA)  ( 1 ) (XONACATLAN)","MAYORAZGO (SANTA ANA)  ( 1 ) (XONACATLAN)")
					addOption(document.form.SubCat2,"MAYORAZGO (SANTA ANA)  ( 2 ) (XONACATLAN)","MAYORAZGO (SANTA ANA)  ( 2 ) (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN MATEO CAPULHUAC (1) (XONACATLAN)","SAN MATEO CAPULHUAC (1) (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN MATEO CAPULHUAC (2) (XONACATLAN)","SAN MATEO CAPULHUAC (2) (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN MATEO CAPULHUAC (3) (XONACATLAN)","SAN MATEO CAPULHUAC (3) (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN MATEO MOZOQUILPAN  (XONACATLAN)","SAN MATEO MOZOQUILPAN  (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN MATEO MOZOQUILPAN ( 2 ) (NO EXISTE)","SAN MATEO MOZOQUILPAN ( 2 ) (NO EXISTE)")
					addOption(document.form.SubCat2,"SAN MATEO MOZOQUILPAN ( 3 ) (NO EXISTE)","SAN MATEO MOZOQUILPAN ( 3 ) (NO EXISTE)")
					addOption(document.form.SubCat2,"SAN MATEO MOZOQUILPAN ( 4 ) (NO EXISTE)","SAN MATEO MOZOQUILPAN ( 4 ) (NO EXISTE)")
					addOption(document.form.SubCat2,"VILLA CUAHUTEMOC  ( 1 ) (XONACATLAN)","VILLA CUAHUTEMOC  ( 1 ) (XONACATLAN)")
					addOption(document.form.SubCat2,"VILLA SECA (XONACATLAN)","VILLA SECA (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD BARRIO DE  LA BARRANCA (XONACATLAN)","CASA DE SALUD BARRIO DE  LA BARRANCA (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN AGUSTIN MIMBRES ++XON-OTZOLOTEPEC++","CASA DE SALUD SAN AGUSTIN MIMBRES ++XON-OTZOLOTEPEC++")
					addOption(document.form.SubCat2,"CASA DE SALUD LA HUANICA ++ XON - OTZOLOTEPEC ++","CASA DE SALUD LA HUANICA ++ XON - OTZOLOTEPEC ++")
					addOption(document.form.SubCat2,"CASA DE SALUD CONCEPCION HIDALGO ( XONACATLAN )","CASA DE SALUD CONCEPCION HIDALGO ( XONACATLAN )")
					addOption(document.form.SubCat2,"CASA DE SALUD EJIDO DE MOZOQUILPAN (XONACATLAN)","CASA DE SALUD EJIDO DE MOZOQUILPAN (XONACATLAN)")
					addOption(document.form.SubCat2,"CASA DE SALUD LA Y ( XONACATLAN )","CASA DE SALUD LA Y ( XONACATLAN )")
					addOption(document.form.SubCat2,"CASA DE SALUD PUENTE SAN PEDRO ( XONACATLAN )","CASA DE SALUD PUENTE SAN PEDRO ( XONACATLAN )")
					addOption(document.form.SubCat2,"CASA DE SALUD EL ESPINO ** XON - OTZOLOTEPEC **","CASA DE SALUD EL ESPINO ** XON - OTZOLOTEPEC **")
					
					}
					if(document.form.SubCat.value == 'SAN MATEO ATENCO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"BARRIO DE GUADALUPE (1) XONACATLAN","BARRIO DE GUADALUPE (1) XONACATLAN")
					addOption(document.form.SubCat2,"BARRIO DE GUADALUPE (2) XONACATLAN","BARRIO DE GUADALUPE (2) XONACATLAN")
					addOption(document.form.SubCat2,"BARRIO DE GUADALUPE (3) XONACATLAN","BARRIO DE GUADALUPE (3) XONACATLAN")
					addOption(document.form.SubCat2,"C.S. EMILIANO ZAPATA ++ XON - SAN MATEO ATENCO ++","C.S. EMILIANO ZAPATA ++ XON - SAN MATEO ATENCO ++")
					addOption(document.form.SubCat2,"C.S. SANTA JUANITA BUENAVISTA **XON-SAN MATEO ATENCO**","C.S. SANTA JUANITA BUENAVISTA **XON-SAN MATEO ATENCO**")
					addOption(document.form.SubCat2,"SANTA MARIA LA ASUNCION (1) (XONACATLAN)","SANTA MARIA LA ASUNCION (1) (XONACATLAN)")
					addOption(document.form.SubCat2,"SANTA MARIA LA ASUNCION (2) (XONACATLAN)","SANTA MARIA LA ASUNCION (2) (XONACATLAN)")
					
					}
					if(document.form.SubCat.value == 'TEMOAYA')
			   
				   {
					    addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   
						addOption(document.form.SubCat2,"CASA DE SALUD SN. PEDRO ARRIBA 2da. SECCION ** XON-TEMOAYA**","CASA DE SALUD SN. PEDRO ARRIBA 2da. SECCION ** XON-TEMOAYA**")
						addOption(document.form.SubCat2,"C.S. ALLENDE ++ XON - TEMOAYA ++","C.S. ALLENDE ++ XON - TEMOAYA ++")
						addOption(document.form.SubCat2,"ENTHAVI ( 1 )  (XONACATLAN)","ENTHAVI ( 1 )  (XONACATLAN)")
						addOption(document.form.SubCat2,"ENTHAVI ( 2 )  (XONACATLAN)","ENTHAVI ( 2 )  (XONACATLAN)")
						addOption(document.form.SubCat2,"JIQUIPILCO EL VIEJO (1) XON - TEMOAYA","JIQUIPILCO EL VIEJO (1) XON - TEMOAYA")
						addOption(document.form.SubCat2,"JIQUIPILCO EL VIEJO (2) XON - TEMOAYA","JIQUIPILCO EL VIEJO (2) XON - TEMOAYA")
						addOption(document.form.SubCat2,"JIQUIPILCO EL VIEJO (3) XON - TEMOAYA","JIQUIPILCO EL VIEJO (3) XON - TEMOAYA")
						addOption(document.form.SubCat2,"EL LAUREL ( 1 ) (XONACATLAN)","EL LAUREL ( 1 ) (XONACATLAN)")
						addOption(document.form.SubCat2,"EL LAUREL ( 2 ) (XONACATLAN)","EL LAUREL ( 2 ) (XONACATLAN)")
						addOption(document.form.SubCat2,"C.S. POTHE (1) ++ XON - TEMOAYA ++","C.S. POTHE (1) ++ XON - TEMOAYA ++")
						addOption(document.form.SubCat2,"C.S. POTHE (2) ++ XON - TEMOAYA ++","C.S. POTHE (2) ++ XON - TEMOAYA ++")
						addOption(document.form.SubCat2,"C.S. RANCHERIA LAS LOMAS ** XON - TEMOAYA **","C.S. RANCHERIA LAS LOMAS ** XON - TEMOAYA **")
						addOption(document.form.SubCat2,"SAN DIEGO ALCALA (1) (XONACATLAN)","SAN DIEGO ALCALA (1) (XONACATLAN)")
						addOption(document.form.SubCat2,"SAN DIEGO ALCALA (2) (XONACATLAN)","SAN DIEGO ALCALA (2) (XONACATLAN)")
						addOption(document.form.SubCat2,"SAN JOSE PATHE (XONACATLAN)","SAN JOSE PATHE (XONACATLAN)")
						addOption(document.form.SubCat2,"SAN LORENZO OYAMEL (1) (XONACATLAN)","SAN LORENZO OYAMEL (1) (XONACATLAN)")
						addOption(document.form.SubCat2,"SAN LORENZO OYAMEL (2) (XONACATLAN)","SAN LORENZO OYAMEL (2) (XONACATLAN)")
						addOption(document.form.SubCat2,"SAN PEDRO ARRIBA 1era. SECCION (1) ( XONACATLAN )","SAN PEDRO ARRIBA 1era. SECCION (1) ( XONACATLAN )")
						addOption(document.form.SubCat2,"SAN PEDRO ARRIBA 1era. SECCION (2) ( XONACATLAN )","SAN PEDRO ARRIBA 1era. SECCION (2) ( XONACATLAN )")
						addOption(document.form.SubCat2,"SAN PEDRO ARRIBA 1era. SECCION (3) ( XONACATLAN )","SAN PEDRO ARRIBA 1era. SECCION (3) ( XONACATLAN )")
						addOption(document.form.SubCat2,"SAN PEDRO ARRIBA 1era. SECCION (4) ( XONACATLAN )","SAN PEDRO ARRIBA 1era. SECCION (4) ( XONACATLAN )")
						addOption(document.form.SubCat2,"C.S. SN PEDRO ABAJO 1RA SECCION ++ XON - TEMOAYA ++","C.S. SN PEDRO ABAJO 1RA SECCION ++ XON - TEMOAYA ++")
						addOption(document.form.SubCat2,"C.S. SN PEDRO ABAJO SEGUNDA SECCION (1) ++ XON - TEMOAYA ++","C.S. SN PEDRO ABAJO SEGUNDA SECCION (1) ++ XON - TEMOAYA ++")
						addOption(document.form.SubCat2,"C.S. SN PEDRO ABAJO SEGUNDA SECCION (2) ++ XON - TEMOAYA ++","C.S. SN PEDRO ABAJO SEGUNDA SECCION (2) ++ XON - TEMOAYA ++")
						addOption(document.form.SubCat2,"TABORDA (1) (XONACATLAN)","TABORDA (1) (XONACATLAN)")
						addOption(document.form.SubCat2,"TABORDA (2) (XONACATLAN)","TABORDA (2) (XONACATLAN)")
						addOption(document.form.SubCat2,"LAS TROJES (1) ( XONACATLAN )","LAS TROJES (1) ( XONACATLAN )")
						addOption(document.form.SubCat2,"LAS TROJES (2) ( XONACATLAN )","LAS TROJES (2) ( XONACATLAN )")
						addOption(document.form.SubCat2,"LAS TROJES (3) ( XONACATLAN )","LAS TROJES (3) ( XONACATLAN )")
						addOption(document.form.SubCat2,"CASA DE SALUD MAGDALENA TENEXPAN **XON-TEMOAYA**","CASA DE SALUD MAGDALENA TENEXPAN **XON-TEMOAYA**")
						addOption(document.form.SubCat2,"C.S. SAN JOSE COMALCO ** XON - TEMOAYA **","C.S. SAN JOSE COMALCO ** XON - TEMOAYA **")
						addOption(document.form.SubCat2,"CASA DE SALUD SOLALPAN 1A. SECC ( XONACATLAN )","CASA DE SALUD SOLALPAN 1A. SECC ( XONACATLAN )")
						addOption(document.form.SubCat2,"C.S. SAN JOSE LAS LOMAS ** XON - TEMOAYA **","C.S. SAN JOSE LAS LOMAS ** XON - TEMOAYA **")
						addOption(document.form.SubCat2,"C.S. SAN JOSE BUENAVISTA EL GRANDE","C.S. SAN JOSE BUENAVISTA EL GRANDE")
						addOption(document.form.SubCat2,"CASA DE SALUD ZANJA VIEJA (XONACATLAN - TEMOAYA)","CASA DE SALUD ZANJA VIEJA (XONACATLAN - TEMOAYA)")
					
					}
					if(document.form.SubCat.value == 'XONACATLAN')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"CENTRO DE SALUD XONACATLAN (1) (XONACATLAN)","CENTRO DE SALUD XONACATLAN (1) (XONACATLAN)")
					addOption(document.form.SubCat2,"CENTRO DE SALUD XONACATLAN (2) (XONACATLAN)","CENTRO DE SALUD XONACATLAN (2) (XONACATLAN)")
					addOption(document.form.SubCat2,"CENTRO DE SALUD XONACATLAN (3) **XONACATLAN**","CENTRO DE SALUD XONACATLAN (3) **XONACATLAN**")
					addOption(document.form.SubCat2,"CENTRO DE SALUD XONACATLAN **ODONTOLOGICO**","CENTRO DE SALUD XONACATLAN **ODONTOLOGICO**")
					addOption(document.form.SubCat2,"SAN MIGUEL MIMIAPAN ( 1 )  (XONACATLAN)","SAN MIGUEL MIMIAPAN ( 1 )  (XONACATLAN)")
					addOption(document.form.SubCat2,"SAN MIGUEL MIMIAPAN ( 2 )  (XONACATLAN)","SAN MIGUEL MIMIAPAN ( 2 )  (XONACATLAN)")
					addOption(document.form.SubCat2,"SANTA MARIA ZOLOTEPEC ( 1 ) ( XONACATLAN )","SANTA MARIA ZOLOTEPEC ( 1 ) ( XONACATLAN )")
					addOption(document.form.SubCat2,"SANTA MARIA ZOLOTEPEC ( 2 ) ( XONACATLAN )","SANTA MARIA ZOLOTEPEC ( 2 ) ( XONACATLAN )")
					addOption(document.form.SubCat2,"C.S. SANTIAGO TEJOCOTILLOS","C.S. SANTIAGO TEJOCOTILLOS")
					
					}//FIN FUNCION XONA
					
					if(document.form.SubCat.value == 'AMATEPEC')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"BARRANCA DE ESMERALDAS (TEJUPILCO)","BARRANCA DE ESMERALDAS (TEJUPILCO)")
					addOption(document.form.SubCat2,"AHUACATITLAN (TEJUPILCO)","AHUACATITLAN (TEJUPILCO)")
					addOption(document.form.SubCat2,"CERRO DEL CAMPO (TEJUPILCO)","CERRO DEL CAMPO (TEJUPILCO)")
					addOption(document.form.SubCat2,"CINCUENTA ARROBAS (TEJUPILCO)","CINCUENTA ARROBAS (TEJUPILCO)")
					addOption(document.form.SubCat2,"C.S. LA GOLETA  ++ TEJ - AMATEPEC ++","C.S. LA GOLETA  ++ TEJ - AMATEPEC ++")
					addOption(document.form.SubCat2,"LA PAROTA  ( TEJUPILCO )","LA PAROTA  ( TEJUPILCO )")
					addOption(document.form.SubCat2,"PALMAR CHICO (1) (TEJUPILCO)","PALMAR CHICO (1) (TEJUPILCO)")
					addOption(document.form.SubCat2,"PALMAR CHICO (2) (TEJUPILCO)","PALMAR CHICO (2) (TEJUPILCO)")
					addOption(document.form.SubCat2,"PALMAR CHICO (3) (TEJUPILCO)","PALMAR CHICO (3) (TEJUPILCO)")
					addOption(document.form.SubCat2,"SALITRE PALMARILLOS (TEJUPILCO)","SALITRE PALMARILLOS (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN MARTIN ( TEJUPILCO )","SAN MARTIN ( TEJUPILCO )")
					addOption(document.form.SubCat2,"SAN MIGUEL XINACAUSTO (TEJUPILCO)","SAN MIGUEL XINACAUSTO (TEJUPILCO)")
					addOption(document.form.SubCat2,"C.S. SAN SIMON ++ TEJ - AMATEPEC ++","C.S. SAN SIMON ++ TEJ - AMATEPEC ++")
					addOption(document.form.SubCat2,"SANTIAGO AMATEPEC (TEJUPILCO)","SANTIAGO AMATEPEC (TEJUPILCO)")
					addOption(document.form.SubCat2,"CERRO DE LAS ANIMAS  ( TEJUPILCO )","CERRO DE LAS ANIMAS  ( TEJUPILCO )")
					addOption(document.form.SubCat2,"MANGO MATUZ PAC (TEJUPILCO)","MANGO MATUZ PAC (TEJUPILCO)")
					addOption(document.form.SubCat2,"AMATEPEC (1) (TEJUPILCO)","AMATEPEC (1) (TEJUPILCO)")
					addOption(document.form.SubCat2,"AMATEPEC (2) (TEJUPILCO)","AMATEPEC (2) (TEJUPILCO)")
					addOption(document.form.SubCat2,"AMATEPEC 3 (TEJUPILCO)","AMATEPEC 3 (TEJUPILCO)")
					   
					}
					
					if(document.form.SubCat.value == 'LUVIANOS')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"CUADRILLA DE LOPEZ (TEJUPILCO)","CUADRILLA DE LOPEZ (TEJUPILCO)")
					addOption(document.form.SubCat2,"CAJA DE AGUA (1) ( TEJUPILCO )","CAJA DE AGUA (1) ( TEJUPILCO )")
					addOption(document.form.SubCat2,"CAJA DE AGUA (2) (TEJUPILCO)","CAJA DE AGUA (2) (TEJUPILCO)")
					addOption(document.form.SubCat2,"CAÑADAS DE NANCHITITLA  ( TEJUPILCO )","CAÑADAS DE NANCHITITLA  ( TEJUPILCO )")
					addOption(document.form.SubCat2,"CRUZ DE CLAVOS ( TEJUPILCO )","CRUZ DE CLAVOS ( TEJUPILCO )")
					addOption(document.form.SubCat2," EL RODEO ( TEJUPILCO )"," EL RODEO ( TEJUPILCO )")
					addOption(document.form.SubCat2,"VALLECITO DE CUAHUILOTES (TEJUPILCO)","VALLECITO DE CUAHUILOTES (TEJUPILCO)")
					addOption(document.form.SubCat2,"HERMILTEPEC (TEJUPILCO)","HERMILTEPEC (TEJUPILCO)")
					addOption(document.form.SubCat2,"PALO GORDO  (TEJUPILCO)","PALO GORDO  (TEJUPILCO)")
					addOption(document.form.SubCat2,"RANCHO VIEJO (TEJUPILCO)","RANCHO VIEJO (TEJUPILCO)")
					addOption(document.form.SubCat2,"EL REPARO    (TEJUPILCO)","EL REPARO    (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN JUAN ACATITLAN (TEJUPILCO)","SAN JUAN ACATITLAN (TEJUPILCO)")
					addOption(document.form.SubCat2,"SANTA CRUZ ( TEJUPILCO )","SANTA CRUZ ( TEJUPILCO )")
					addOption(document.form.SubCat2,"SAUZ PALO GORDO ( TEJUPILCO )","SAUZ PALO GORDO ( TEJUPILCO )")
					addOption(document.form.SubCat2,"TROJES (TEJUPILCO)","TROJES (TEJUPILCO)")
					addOption(document.form.SubCat2,"PIEDRA GRANDE (TEJUPILCO)","PIEDRA GRANDE (TEJUPILCO)")
					addOption(document.form.SubCat2,"CASA DE SALUD HORMIGUEROS ++ TEJ-LUVIANOS ++","CASA DE SALUD HORMIGUEROS ++ TEJ-LUVIANOS ++")
					   
					}
					
					if(document.form.SubCat.value == 'SAN SIMON DE GUERRERO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"ESTANCIA VIEJA (TEJUPILCO)","ESTANCIA VIEJA (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN DIEGO CUENTLA (TEJUPILCO)","SAN DIEGO CUENTLA (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN SIMON GUERRERO (1) (TEJUPILCO)","SAN SIMON GUERRERO (1) (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN SIMON GUERRERO (2) (TEJUPILCO)","SAN SIMON GUERRERO (2) (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN GABRIEL CUENTLA ( TEJUPILCO )","SAN GABRIEL CUENTLA ( TEJUPILCO )")
					   
					}
					
					if(document.form.SubCat.value == 'TEJUPILCO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"ACAMUCHITLAN   (TEJUPILCO)","ACAMUCHITLAN   (TEJUPILCO)")
					addOption(document.form.SubCat2,"ALMOLOYA DE LAS GRANADAS (TEJUPILCO)","ALMOLOYA DE LAS GRANADAS (TEJUPILCO)")
					addOption(document.form.SubCat2,"LAS ANONAS (TEJUPILCO)","LAS ANONAS (TEJUPILCO)")
					addOption(document.form.SubCat2,"BEJUCOS (1) (TEJUPILCO)","BEJUCOS (1) (TEJUPILCO)")
					addOption(document.form.SubCat2,"BEJUCOS (2) (TEJUPILCO)","BEJUCOS (2) (TEJUPILCO)")
					addOption(document.form.SubCat2,"EPAZOTES (TEJUPILCO)","EPAZOTES (TEJUPILCO)")
					addOption(document.form.SubCat2,"LA ESTANCIA ( TEJUPILCO )","LA ESTANCIA ( TEJUPILCO )")
					addOption(document.form.SubCat2,"C.S.LA  LABOR DE ZARAGOZA ++TEJ-TEJUPILCO++","C.S.LA  LABOR DE ZARAGOZA ++TEJ-TEJUPILCO++")
					addOption(document.form.SubCat2,"LOS MELCHORES (TEJUPILCO)","LOS MELCHORES (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN ANDRES OCOTEPEC (TEJUPILCO)","SAN ANDRES OCOTEPEC (TEJUPILCO)")
					addOption(document.form.SubCat2,"C.S. PANTOJA ++ TEJ - TEJUPILCO ++","C.S. PANTOJA ++ TEJ - TEJUPILCO ++")
					addOption(document.form.SubCat2,"SAN LUCAS DEL MAIZ (TEJUPILCO)","SAN LUCAS DEL MAIZ (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN MIGUEL IXTAPAN (TEJUPILCO)","SAN MIGUEL IXTAPAN (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAUZ DE SAN LUCAS (TEJUPILCO)","SAUZ DE SAN LUCAS (TEJUPILCO)")
					addOption(document.form.SubCat2,"BRIGADA A PIE MONTE DE DIOS (TEJUPILCO)","BRIGADA A PIE MONTE DE DIOS (TEJUPILCO)")
					addOption(document.form.SubCat2,"PUERTO DEL AIRE (TEJUPILCO) ","PUERTO DEL AIRE (TEJUPILCO) ")
					addOption(document.form.SubCat2,"TENERIA PUEBLO NUEVO (TEJUPILCO)","TENERIA PUEBLO NUEVO (TEJUPILCO)")
					addOption(document.form.SubCat2,"EL CIRIAN  (TEJUPILCO) ","EL CIRIAN  (TEJUPILCO) ")
					addOption(document.form.SubCat2,"LA CABECERA (TEJUPILCO)","LA CABECERA (TEJUPILCO)")
					   
					}
					
					if(document.form.SubCat.value == 'TEMASCALTEPEC')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"CIENEGUILLAS DE LABRA (TEJUPILCO)","CIENEGUILLAS DE LABRA (TEJUPILCO)")
					addOption(document.form.SubCat2,"LA COMUNIDAD 1 (TEJUPILCO)","LA COMUNIDAD 1 (TEJUPILCO)")
					addOption(document.form.SubCat2,"LA COMUNIDAD 2 (TEJUPILCO) ","LA COMUNIDAD 2 (TEJUPILCO) ")
					addOption(document.form.SubCat2,"REAL DE ARRIBA (TEJUPILCO)","REAL DE ARRIBA (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN ANDRES DE LOS GAMA (TEJUPILCO)","SAN ANDRES DE LOS GAMA (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN FRANCISCO OXTOTILPAN (TEJUPILCO)","SAN FRANCISCO OXTOTILPAN (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN LUCAS DEL PULQUE (TEJUPILCO)","SAN LUCAS DEL PULQUE (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN MATEO ALMOMOLOA (TEJUPILCO)","SAN MATEO ALMOMOLOA (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN MIGUEL OXTOTILPAN (TEJUPILCO)","SAN MIGUEL OXTOTILPAN (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN PEDRO TENAYAC (1) (TEJUPILCO)","SAN PEDRO TENAYAC (1) (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN PEDRO TENAYAC (2) (TEJUPILCO)","SAN PEDRO TENAYAC (2) (TEJUPILCO)")
					addOption(document.form.SubCat2,"TEQUESQUIPAN (TEJUPILCO)","TEQUESQUIPAN (TEJUPILCO)")
					   
					}
					
					if(document.form.SubCat.value == 'TLATLAYA')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"COATEPEC **TEJ-TLATLAYA**","COATEPEC **TEJ-TLATLAYA**")
					addOption(document.form.SubCat2,"JUNTAS DE AZUCHIL PAC ( TEJUPILCO )","JUNTAS DE AZUCHIL PAC ( TEJUPILCO )")
					addOption(document.form.SubCat2,"MAYALTEPEC (TEJUPILCO)","MAYALTEPEC (TEJUPILCO)")
					addOption(document.form.SubCat2,"MOCTEZUMA (TEJUPILCO)","MOCTEZUMA (TEJUPILCO)")
					addOption(document.form.SubCat2,"NUEVO COPALTEPEC (TEJUPILCO)","NUEVO COPALTEPEC (TEJUPILCO)")
					addOption(document.form.SubCat2,"PALMA TORCIDA (TEJUPILCO)","PALMA TORCIDA (TEJUPILCO)")
					addOption(document.form.SubCat2,"PALMAR GRANDE (TEJUPILCO)","PALMAR GRANDE (TEJUPILCO)")
					addOption(document.form.SubCat2,"RINCON GRANDE (TEJUPILCO)","RINCON GRANDE (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN ANTONIO DEL ROSARIO (1) (TEJUPILCO)","SAN ANTONIO DEL ROSARIO (1) (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN ANTONIO DEL ROSARIO (2) (TEJUPILCO)","SAN ANTONIO DEL ROSARIO (2) (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN FRANCISCO DE ASIS (TEJUPILCO)","SAN FRANCISCO DE ASIS (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN JUAN CORRAL (TEJUPILCO)","SAN JUAN CORRAL (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN JUAN TETITLA (TEJUPILCO)","SAN JUAN TETITLA (TEJUPILCO)")
					addOption(document.form.SubCat2,"SAN MATEO   (TEJUPILCO)","SAN MATEO   (TEJUPILCO)")
					addOption(document.form.SubCat2,"SANTA ANA ZICATECOYAN (TEJUPILCO)","SANTA ANA ZICATECOYAN (TEJUPILCO)")
					addOption(document.form.SubCat2,"SANTA MARIA (TEJUPILCO)","SANTA MARIA (TEJUPILCO)")
					addOption(document.form.SubCat2,"TLACOCUSPAN (TEJUPILCO)","TLACOCUSPAN (TEJUPILCO)")
					addOption(document.form.SubCat2,"TLATLAYA (TEJUPILCO)","TLATLAYA (TEJUPILCO)")
					addOption(document.form.SubCat2,"CASA DE SALUD TEJUPILQUITO (TEJUPILCO)","CASA DE SALUD TEJUPILQUITO (TEJUPILCO)")
					addOption(document.form.SubCat2,"CERRO DEL MORADO (TEJUPILCO)","CERRO DEL MORADO (TEJUPILCO)")
					addOption(document.form.SubCat2,"CARAVANA HUIXTITLA (TEJUPILCO/TLATLAYA)","CARAVANA HUIXTITLA (TEJUPILCO/TLATLAYA)")
					addOption(document.form.SubCat2,"ANCON DE PRESA (TEJUPILCO/TLATLAYA)","ANCON DE PRESA (TEJUPILCO/TLATLAYA)")
					addOption(document.form.SubCat2,"SAN PEDRO LIMON (TEJUPILCO)","SAN PEDRO LIMON (TEJUPILCO)")
					   
					}//FIN FUNCION TEJUPILCO
					
					if(document.form.SubCat.value == 'ALMOLOYA DE ALQUISIRAS')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   
					addOption(document.form.SubCat2,"AQUIAPAN (TENANCINGO)","AQUIAPAN (TENANCINGO)")
					addOption(document.form.SubCat2,"PLAN DE VIGAS(TENANCINGO)","PLAN DE VIGAS(TENANCINGO)")
					addOption(document.form.SubCat2,"SAN ANDRES TEPETITLAN(TENANCINGO)","SAN ANDRES TEPETITLAN(TENANCINGO)")
					addOption(document.form.SubCat2,"LA UNION RIVA PALACIO (TENANCINGO)","LA UNION RIVA PALACIO (TENANCINGO)")
					addOption(document.form.SubCat2,"SAN ANTONIO PACHUQUILLA(TENANCINGO)","SAN ANTONIO PACHUQUILLA(TENANCINGO)")
					   
					}
					
					if(document.form.SubCat.value == 'COATEPEC HARINAS')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"ACUITLAPILCO (1) TEN-COATEPEC HARINAS","ACUITLAPILCO (1) TEN-COATEPEC HARINAS")
					addOption(document.form.SubCat2,"ACUITLAPILCO (2) TEN-COATEPEC HARINAS","ACUITLAPILCO (2) TEN-COATEPEC HARINAS")
					addOption(document.form.SubCat2,"CASA DE SALUD AGUA AMARGA **TEN-COATEPEC HARINAS**","CASA DE SALUD AGUA AMARGA **TEN-COATEPEC HARINAS**")
					addOption(document.form.SubCat2,"AGUA BENDITA (TENANCINGO)","AGUA BENDITA (TENANCINGO)")
					addOption(document.form.SubCat2,"CHILTEPEC (TENANCINGO)","CHILTEPEC (TENANCINGO)")
					addOption(document.form.SubCat2,"COLONIA HIDALGO (SAN LUIS) (TENANCINGO)","COLONIA HIDALGO (SAN LUIS) (TENANCINGO)")
					addOption(document.form.SubCat2,"IXTLAHUACA DE VILLADA (TENANCINGO)","IXTLAHUACA DE VILLADA (TENANCINGO)")
					addOption(document.form.SubCat2,"LAS VUELTAS(TENANCINGO)","LAS VUELTAS(TENANCINGO)")
					addOption(document.form.SubCat2,"C.S. LLANO GRANDE","C.S. LLANO GRANDE")
					addOption(document.form.SubCat2,"C.S. LLANO GRANDE - ODONTOLOGIA","C.S. LLANO GRANDE - ODONTOLOGIA")
					addOption(document.form.SubCat2,"MEYUCA DE MORELOS (TENANCINGO)","MEYUCA DE MORELOS (TENANCINGO)")
					addOption(document.form.SubCat2,"PIEDRAS ANCHAS (1) (TENANCINGO)","PIEDRAS ANCHAS (1) (TENANCINGO)")
					addOption(document.form.SubCat2,"PIEDRAS ANCHAS (2) (TENANCINGO)","PIEDRAS ANCHAS (2) (TENANCINGO)")
					addOption(document.form.SubCat2,"PLAN DE SAN FRANCISCO (TENANCINGO)","PLAN DE SAN FRANCISCO (TENANCINGO)")
					addOption(document.form.SubCat2,"CASA DE SALUD POTRERO REDONDO (TENANCINGO)","CASA DE SALUD POTRERO REDONDO (TENANCINGO)")
					   
					}
					
					if(document.form.SubCat.value == 'IXTAPAN DE LA SAL')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"AHUACATITLAN (TENANCINGO)","AHUACATITLAN (TENANCINGO)")
					addOption(document.form.SubCat2,"LLANO DE LA UNION  (TEN - IXTAPAN DE LA SAL)","LLANO DE LA UNION  (TEN - IXTAPAN DE LA SAL)")
					addOption(document.form.SubCat2,"LLANO DE LA UNION ( 2 ) (TENANCINGO) NO EXISTE","LLANO DE LA UNION ( 2 ) (TENANCINGO) NO EXISTE")
					addOption(document.form.SubCat2,"SAN ALEJO (TENANCINGO)","SAN ALEJO (TENANCINGO)")
					addOption(document.form.SubCat2,"C.S. SAN MIGUEL LADERAS ** TEN - IXTAPAN DE LA SAL **","C.S. SAN MIGUEL LADERAS ** TEN - IXTAPAN DE LA SAL **")
					addOption(document.form.SubCat2,"CASA DE SALUD SN JOSÉ EL ARENAL","CASA DE SALUD SN JOSÉ EL ARENAL")
					addOption(document.form.SubCat2,"CASA DE SALUD TECOMATEPEC (TENANCINGO)","CASA DE SALUD TECOMATEPEC (TENANCINGO)")
					addOption(document.form.SubCat2,"CASA DE SALUD MALINALTENANGO(TENANCINGO)","CASA DE SALUD MALINALTENANGO(TENANCINGO)")
					addOption(document.form.SubCat2,"CASA DE SALUD YERBASBUENAS (TEN - IXTAPAN DE LA SAL)","CASA DE SALUD YERBASBUENAS (TEN - IXTAPAN DE LA SAL)")
					addOption(document.form.SubCat2,"CASA DE SALUD SANTA ANA XOCHUCA ( TENANCINGO )","CASA DE SALUD SANTA ANA XOCHUCA ( TENANCINGO )")
					   
					}
					
					if(document.form.SubCat.value == 'MALINALCO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"CASA DE SALUD LA PACHUQUILLA (TENANCINGO)","CASA DE SALUD LA PACHUQUILLA (TENANCINGO)")
					addOption(document.form.SubCat2,"CHALMA ( 1 )  ( TENANCINGO )","CHALMA ( 1 )  ( TENANCINGO )")
					addOption(document.form.SubCat2,"CHALMA ( 2 )  ( TENANCINGO )","CHALMA ( 2 )  ( TENANCINGO )")
					addOption(document.form.SubCat2,"EL PLATANAR (TENANCINGO)","EL PLATANAR (TENANCINGO)")
					addOption(document.form.SubCat2,"NOXTEPEC DE ZARAGOZA (TENANCINGO)","NOXTEPEC DE ZARAGOZA (TENANCINGO)")
					addOption(document.form.SubCat2,"SAN ANDRES NICOLAS BRAVO (TENANCINGO)","SAN ANDRES NICOLAS BRAVO (TENANCINGO)")
					addOption(document.form.SubCat2,"SAN SIMON EL ALTO (TENANCINGO)","SAN SIMON EL ALTO (TENANCINGO)")
					addOption(document.form.SubCat2,"CASA DE SALUD COL. ALDAMA (TENANCINGO) ","CASA DE SALUD COL. ALDAMA (TENANCINGO) ")
					addOption(document.form.SubCat2,"CASA DE SALUD JALMOLONGA ( TENANCINGO )","CASA DE SALUD JALMOLONGA ( TENANCINGO )")
					addOption(document.form.SubCat2,"CASA DE SALUD LA LADRILLERA (TENANCINGO)","CASA DE SALUD LA LADRILLERA (TENANCINGO)")
					   
					}
					
					if(document.form.SubCat.value == 'OCUILAN')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"AHUATENCO ( TENANCINGO )","AHUATENCO ( TENANCINGO )")
					addOption(document.form.SubCat2,"CHALMITA (SAN AMBROSIO ) (TENANCINGO)","CHALMITA (SAN AMBROSIO ) (TENANCINGO)")
					addOption(document.form.SubCat2,"OCUILAN DE ARTEAGA (1) (TENANCINGO)","OCUILAN DE ARTEAGA (1) (TENANCINGO)")
					addOption(document.form.SubCat2,"OCUILAN DE ARTEAGA (2) (TENANCINGO)","OCUILAN DE ARTEAGA (2) (TENANCINGO)")
					addOption(document.form.SubCat2,"SAN JUAN ATZINGO (TENANCINGO)","SAN JUAN ATZINGO (TENANCINGO)")
					addOption(document.form.SubCat2,"SANTA LUCIA (TENANCINGO)","SANTA LUCIA (TENANCINGO)")
					addOption(document.form.SubCat2,"SANTA MARTHA (TENANCINGO)","SANTA MARTHA (TENANCINGO)")
					addOption(document.form.SubCat2,"SANTA MONICA (TENANCINGO)","SANTA MONICA (TENANCINGO)")
					addOption(document.form.SubCat2,"TEZONTEPEC SANTA CRUZ (TENANCINGO)","TEZONTEPEC SANTA CRUZ (TENANCINGO)")
					addOption(document.form.SubCat2,"CASA DE SALUD LA LAGUNITA (TENANCINGO)","CASA DE SALUD LA LAGUNITA (TENANCINGO)")
					   
					}
					
					if(document.form.SubCat.value == 'SULTEPEC')
			   
				   {
		 			    addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   
						addOption(document.form.SubCat2,"C.S. LAGUNA SECA","C.S. LAGUNA SECA")
						addOption(document.form.SubCat2,"C.S. METLALTEPEC","C.S. METLALTEPEC")
						addOption(document.form.SubCat2,"POTZONTEPEC (TENANCINGO)","POTZONTEPEC (TENANCINGO)")
						addOption(document.form.SubCat2,"C.S. PUENTECILLAS ++ TEN - SULTEPEC ++","C.S. PUENTECILLAS ++ TEN - SULTEPEC ++")
						addOption(document.form.SubCat2,"CASA DE SALUD PUERTO FRIO (TENANCINGO)","CASA DE SALUD PUERTO FRIO (TENANCINGO)")
						addOption(document.form.SubCat2,"RINCON CRISTO (TENANCINGO)","RINCON CRISTO (TENANCINGO)")
						addOption(document.form.SubCat2,"SAN MIGUEL TOTOLMALOYA **TEN-SULTEPEC**","SAN MIGUEL TOTOLMALOYA **TEN-SULTEPEC**")
						addOption(document.form.SubCat2,"C.S. SAN PEDRO HUEYAHUALCO ++ TEN - SULTEPEC ++","C.S. SAN PEDRO HUEYAHUALCO ++ TEN - SULTEPEC ++")
						addOption(document.form.SubCat2,"SANTA CRUZ TEXCALAPA ( TENANCINGO )","SANTA CRUZ TEXCALAPA ( TENANCINGO )")
						addOption(document.form.SubCat2,"SANTO TOMAS DE LAS FLORES(TENANCINGO)","SANTO TOMAS DE LAS FLORES(TENANCINGO)")
						addOption(document.form.SubCat2,"SULTEPEQUITO ( TENANCINGO )","SULTEPEQUITO ( TENANCINGO )")
						addOption(document.form.SubCat2,"CASA DE SALUD SANTA ANITA **TEN-TEXCALTITLAN**","CASA DE SALUD SANTA ANITA **TEN-TEXCALTITLAN**")
						addOption(document.form.SubCat2,"C.S. MANANTIAL DE GUADALUPE (TENANCINGO)","C.S. MANANTIAL DE GUADALUPE (TENANCINGO)")
						addOption(document.form.SubCat2,"C.S. ATZUMPA","C.S. ATZUMPA")
						addOption(document.form.SubCat2,"CASA DE SALUD PUENTE MOCHO (TEN - SULTEPEC)","CASA DE SALUD PUENTE MOCHO (TEN - SULTEPEC)")
						addOption(document.form.SubCat2,"CASA DE SALUD LAS TROJES (TENANCINGO)","CASA DE SALUD LAS TROJES (TENANCINGO)")
					   
					}
					
					if(document.form.SubCat.value == 'TENANCINGO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"C.S. EL CARMEN","C.S. EL CARMEN")
					addOption(document.form.SubCat2,"C.S. SAN JUAN XOCHIACA ** TEN - TENANCINGO **","C.S. SAN JUAN XOCHIACA ** TEN - TENANCINGO **")
					addOption(document.form.SubCat2,"C.S. SANTA ANA IXTLAHUATZINGO ++ TEN - TENANCINGO ++","C.S. SANTA ANA IXTLAHUATZINGO ++ TEN - TENANCINGO ++")
					addOption(document.form.SubCat2,"C.S. TECOMATLAN","C.S. TECOMATLAN")
					addOption(document.form.SubCat2,"ZEPAYAUTLA (1) TEN-TENANCINGO","ZEPAYAUTLA (1) TEN-TENANCINGO")
					addOption(document.form.SubCat2,"ZEPAYAUTLA (2) NO EXISTE","ZEPAYAUTLA (2) NO EXISTE")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN ANTONIO AGUA BENDITA  (TENANCINGO)","CASA DE SALUD SAN ANTONIO AGUA BENDITA  (TENANCINGO)")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN MARTIN COAPAXTONGO  ++ TEN - TENANCINGO ++","CASA DE SALUD SAN MARTIN COAPAXTONGO  ++ TEN - TENANCINGO ++")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN NICOLAS","CASA DE SALUD SAN NICOLAS")
					addOption(document.form.SubCat2,"CASA DE SALUD TEPETZINGO ++ TEN - TENANCINGO ++","CASA DE SALUD TEPETZINGO ++ TEN - TENANCINGO ++")
					addOption(document.form.SubCat2,"SAN JOSE CHALMITA  ( TENANCINGO )","SAN JOSE CHALMITA  ( TENANCINGO )")
					   
					}
					
					if(document.form.SubCat.value == 'TEXCALTITLAN')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"CARBAJAL (TENANCINGO)","CARBAJAL (TENANCINGO)")
					addOption(document.form.SubCat2,"HUAYATENCO (TENANCINGO)","HUAYATENCO (TENANCINGO)")
					addOption(document.form.SubCat2,"PALMILLAS (TENANCINGO)","PALMILLAS (TENANCINGO)")
					addOption(document.form.SubCat2,"C.S. SAN AGUSTIN ** TEN - TEXCALTITLAN **","C.S. SAN AGUSTIN ** TEN - TEXCALTITLAN **")
					addOption(document.form.SubCat2,"CASA DE SALUD ARROYO SECO **TEN-TEXCALTITLAN**","CASA DE SALUD ARROYO SECO **TEN-TEXCALTITLAN**")
					addOption(document.form.SubCat2,"CASA DE SALUD ACATITLAN **TEN-TEXCALTITLAN**","CASA DE SALUD ACATITLAN **TEN-TEXCALTITLAN**")
					addOption(document.form.SubCat2,"CASA DE SALUD TEXCAPILLA  **TEN-TEXCALTITLAN**","CASA DE SALUD TEXCAPILLA  **TEN-TEXCALTITLAN**")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN ISIDRO XOCHITLA **TEN-TEXCALTITLAN**","CASA DE SALUD SAN ISIDRO XOCHITLA **TEN-TEXCALTITLAN**")
					addOption(document.form.SubCat2,"CASA DE SALUD VENTA MORALES ** TEN - TEXCALTITLAN **","CASA DE SALUD VENTA MORALES ** TEN - TEXCALTITLAN **")
					   
					}
					
					if(document.form.SubCat.value == 'TONATICO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"EL TERRERO (TENANCINGO)","EL TERRERO (TENANCINGO)")
					addOption(document.form.SubCat2,"CASA DE SALUD LOS AMATES ** TEN - TONATICO **","CASA DE SALUD LOS AMATES ** TEN - TONATICO **")
					addOption(document.form.SubCat2,"CASA DE SALUD LA PUERTA DE SANTIAGO ** TEN - TONATICO **","CASA DE SALUD LA PUERTA DE SANTIAGO ** TEN - TONATICO **")
					addOption(document.form.SubCat2,"CASA DE SALUD LA AUDIENCIA (TENANCINGO)","CASA DE SALUD LA AUDIENCIA (TENANCINGO)")
					   
					}
					
					if(document.form.SubCat.value == 'VILLA GUERRERO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"CASA DE SALUD SAN LUCAS **TEN-VILLA GUERRERO**","CASA DE SALUD SAN LUCAS **TEN-VILLA GUERRERO**")
					addOption(document.form.SubCat2,"CASA DE SALUD BUENA VISTA **TEN-VILLA GUERRERO**","CASA DE SALUD BUENA VISTA **TEN-VILLA GUERRERO**")
					addOption(document.form.SubCat2,"CASA DE SALUD JESUS CARRANZA **TEN-VILLA GUERRERO**","CASA DE SALUD JESUS CARRANZA **TEN-VILLA GUERRERO**")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN DIEGO","CASA DE SALUD SAN DIEGO")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN MIGUEL  ( TENANCINGO )","CASA DE SALUD SAN MIGUEL  ( TENANCINGO )")
					addOption(document.form.SubCat2,"C.S. EJIDO DE LA FINCA ++ TEN - VILLA GUERRERO ++","C.S. EJIDO DE LA FINCA ++ TEN - VILLA GUERRERO ++")
					addOption(document.form.SubCat2,"PORFIRIO DIAZ (TENANCINGO)","PORFIRIO DIAZ (TENANCINGO)")
					addOption(document.form.SubCat2,"PORFIRIO DIAZ ** ODONTOLOGICO **","PORFIRIO DIAZ ** ODONTOLOGICO **")
					addOption(document.form.SubCat2,"SAN BARTOLOME (1) (TENANCINGO)","SAN BARTOLOME (1) (TENANCINGO)")
					addOption(document.form.SubCat2,"SAN BARTOLOME (2) (TENANCINGO)","SAN BARTOLOME (2) (TENANCINGO)")
					addOption(document.form.SubCat2,"SAN GASPAR (VILLA GUERRERO) (TENANCINGO)","SAN GASPAR (VILLA GUERRERO) (TENANCINGO)")
					addOption(document.form.SubCat2,"SAN JOSE  (1) (TENANCINGO)","SAN JOSE  (1) (TENANCINGO)")
					addOption(document.form.SubCat2,"SAN JOSE ( 2 ) (TENANCINGO)","SAN JOSE ( 2 ) (TENANCINGO)")
					addOption(document.form.SubCat2,"SANTIAGO OXTOTITLAN (TENANCINGO)","SANTIAGO OXTOTITLAN (TENANCINGO)")
					addOption(document.form.SubCat2,"TOTOLMAJAC (TENANCINGO)","TOTOLMAJAC (TENANCINGO)")
					addOption(document.form.SubCat2,"ZACANGO (TENANCINGO)","ZACANGO (TENANCINGO)")
					addOption(document.form.SubCat2,"CASA DE SALUD LA FINCA ++ TEN - VILLA GUERRERO ++","CASA DE SALUD LA FINCA ++ TEN - VILLA GUERRERO ++")
					addOption(document.form.SubCat2,"CASA DE SALUD EL CARMEN ** TEN - VILLA GUERRERO **","CASA DE SALUD EL CARMEN ** TEN - VILLA GUERRERO **")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN MATEO COAPEXCO (TENANCINGO)","CASA DE SALUD SAN MATEO COAPEXCO (TENANCINGO)")
					addOption(document.form.SubCat2,"CASA DE SALUD SANTA MARIA ARANZAZU (TENANCINGO)","CASA DE SALUD SANTA MARIA ARANZAZU (TENANCINGO)")
					   
					}
					
					if(document.form.SubCat.value == 'ZACUALPAN')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"EL DURAZNO (TENANCINGO)","EL DURAZNO (TENANCINGO)")
					addOption(document.form.SubCat2,"HUITZOLTEPEC (TENANCINGO)","HUITZOLTEPEC (TENANCINGO)")
					addOption(document.form.SubCat2,"LA COFRADIA (TENANCINGO)","LA COFRADIA (TENANCINGO)")
					addOption(document.form.SubCat2,"C.S. MAMATLA ++ TEN - ZACUALPAN ++ ","C.S. MAMATLA ++ TEN - ZACUALPAN ++ ")
					addOption(document.form.SubCat2,"PIEDRA PARADA ( TENANCINGO )","PIEDRA PARADA ( TENANCINGO )")
					addOption(document.form.SubCat2,"TEOCALCINGO (TENANCINGO)","TEOCALCINGO (TENANCINGO)")
					addOption(document.form.SubCat2,"ZACUALPILLA ( TENANCINGO )","ZACUALPILLA ( TENANCINGO )")
					addOption(document.form.SubCat2,"COLOXTITLAN **TEN-ZACUALPAN**","COLOXTITLAN **TEN-ZACUALPAN**")
					addOption(document.form.SubCat2,"CASA DE SALUD AYOTUXCO (TENANCINGO)","CASA DE SALUD AYOTUXCO (TENANCINGO)")
					addOption(document.form.SubCat2,"CASA DE SALUD GAMA DE LA PAZ (TENANCINGO)","CASA DE SALUD GAMA DE LA PAZ (TENANCINGO)")
					addOption(document.form.SubCat2,"CASA DE SALUD RIO FLORIDO 1era. SECCION (TENANCINGO)","CASA DE SALUD RIO FLORIDO 1era. SECCION (TENANCINGO)")
					addOption(document.form.SubCat2,"C.S. MORA ++ TEN - ZACUALPAN ++","C.S. MORA ++ TEN - ZACUALPAN ++")
					   
					}
					
					if(document.form.SubCat.value == 'ZUMPAHUACAN')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   
					addOption(document.form.SubCat2,"GUADALUPE VICTORIA (1) TEN-ZUMPAHUACAN","GUADALUPE VICTORIA (1) TEN-ZUMPAHUACAN")
					addOption(document.form.SubCat2,"SAN ANTONIO GUADALUPE (TENANCINGO)","SAN ANTONIO GUADALUPE (TENANCINGO)")
					addOption(document.form.SubCat2,"SAN GASPAR ( TENANCINGO ) ZUMPAHUACAN","SAN GASPAR ( TENANCINGO ) ZUMPAHUACAN")
					addOption(document.form.SubCat2,"C.S. SAN ISIDRO CHIAPA ** TEN - ZUMPAHUACAN **","C.S. SAN ISIDRO CHIAPA ** TEN - ZUMPAHUACAN **")
					addOption(document.form.SubCat2,"C.S. SAN PABLO TEJALPA (1) TEN - ZUMPAHUACAN","C.S. SAN PABLO TEJALPA (1) TEN - ZUMPAHUACAN")
					addOption(document.form.SubCat2,"C.S. SAN PABLO TEJALPA (2) TEN - ZUMPAHUACAN","C.S. SAN PABLO TEJALPA (2) TEN - ZUMPAHUACAN")
					addOption(document.form.SubCat2,"C.S. SAN PABLO TEJALPA * ODONTOLOGICO - ZUMPAHUACAN *","C.S. SAN PABLO TEJALPA * ODONTOLOGICO - ZUMPAHUACAN *")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN PEDRO GUADALUPE ** TEN-ZUMPAHUACAN**","CASA DE SALUD SAN PEDRO GUADALUPE ** TEN-ZUMPAHUACAN**")
					addOption(document.form.SubCat2,"CASA DE SALUD AHUATZINGO  (TENANCINGO)","CASA DE SALUD AHUATZINGO  (TENANCINGO)")
					   
					}
					
					if(document.form.SubCat.value == 'AMANALCO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"AGUA BENDITA (VALLE DE BRAVO)","AGUA BENDITA (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"AMANALCO ( 1 )  (VALLE DE BRAVO)","AMANALCO ( 1 )  (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"AMANALCO ( 2 ) (VALLE DE BRAVO)","AMANALCO ( 2 ) (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"C.S. EL POTRERO","C.S. EL POTRERO")
					addOption(document.form.SubCat2,"RINCON DE GUADALUPE (VALLE DE BRAVO)","RINCON DE GUADALUPE (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"C.S. SAN BARTOLO","C.S. SAN BARTOLO")
					addOption(document.form.SubCat2,"SAN MATEO (VALLE DE BRAVO)","SAN MATEO (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"SAN JERONIMO **V. DE BRAVO-AMANALCO**","SAN JERONIMO **V. DE BRAVO-AMANALCO**")
					addOption(document.form.SubCat2,"EL CAPULIN (V. BRAVO / AMANALCO)","EL CAPULIN (V. BRAVO / AMANALCO)")
					addOption(document.form.SubCat2,"CASA DE SALUD LOS POLVILLOS ","CASA DE SALUD LOS POLVILLOS ")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN JUAN ( VALLE DE BRAVO )","CASA DE SALUD SAN JUAN ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"CASA DE SALUD CAPILLA VIEJA ** V. DE BRAVO - AMANALCO **","CASA DE SALUD CAPILLA VIEJA ** V. DE BRAVO - AMANALCO **")
					
				   }
				   
				   if(document.form.SubCat.value == 'DONATO GUERRA')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")     
					addOption(document.form.SubCat2,"C.S. EL CAPULIN ** V. DE BRAVO - DONATO GUERRA **","C.S. EL CAPULIN ** V. DE BRAVO - DONATO GUERRA **")
					addOption(document.form.SubCat2,"SAN AGUSTIN LAS PALMAS (1)  ( VALLE DE BRAVO )","SAN AGUSTIN LAS PALMAS (1)  ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"SAN AGUSTIN LAS PALMAS (2)  ( VALLE DE BRAVO )","SAN AGUSTIN LAS PALMAS (2)  ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"C.S. SAN ANTONIO DE LA LAGUNA ++V. DE BRAVO - DONATO GUERRA+","C.S. SAN ANTONIO DE LA LAGUNA ++V. DE BRAVO - DONATO GUERRA+")
					addOption(document.form.SubCat2,"SAN FRANCISCO MIHUALTEPEC EJIDO  (VALLE DE BRAVO)","SAN FRANCISCO MIHUALTEPEC EJIDO  (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"SAN FRANCISCO MIHUALTEPEC  POBLADO (1) (VALLE DE BRAVO)","SAN FRANCISCO MIHUALTEPEC  POBLADO (1) (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"SAN FRANCISCO MIHUALTEPEC POBLADO (2) (VALLE DE BRAVO)","SAN FRANCISCO MIHUALTEPEC POBLADO (2) (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"SAN JUAN XOCONUSCO (1)  ( VALLE DE BRAVO )","SAN JUAN XOCONUSCO (1)  ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"SAN JUAN XOCONUSCO (2) ( VALLE DE BRAVO )","SAN JUAN XOCONUSCO (2) ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"SAN MARTIN OBISPO ( 1 ) (VALLE DE BRAVO)","SAN MARTIN OBISPO ( 1 ) (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"SAN MARTIN OBISPO ( 2 ) (VALLE DE BRAVO)","SAN MARTIN OBISPO ( 2 ) (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"SAN MARTIN OBISPO ** ODONTOLOGICO - DONATO GUERRA **","SAN MARTIN OBISPO ** ODONTOLOGICO - DONATO GUERRA **")
					addOption(document.form.SubCat2,"SAN SIMON DE LA LAGUNA (1) V. DE BRAVO-DONATO GUERRA","SAN SIMON DE LA LAGUNA (1) V. DE BRAVO-DONATO GUERRA")
					addOption(document.form.SubCat2,"SAN SIMON DE LA LAGUNA (2) V. DE BRAVO-DONATO GUERRA","SAN SIMON DE LA LAGUNA (2) V. DE BRAVO-DONATO GUERRA")
					addOption(document.form.SubCat2,"SANTIAGO HUITLAPALTEPEC ** V. DE BRAVO - DONATO GUERRA **","SANTIAGO HUITLAPALTEPEC ** V. DE BRAVO - DONATO GUERRA **")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN  MIGUEL XOOLTEPEC (VALLE DE BRAVO)","CASA DE SALUD SAN  MIGUEL XOOLTEPEC (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"C.S. DONATO GUERRA (1) V. DE BRAVO - DONATO GUERRA","C.S. DONATO GUERRA (1) V. DE BRAVO - DONATO GUERRA")
					addOption(document.form.SubCat2,"C.S. DONATO GUERRA (2) V. DE BRAVO - DONATO GUERRA","C.S. DONATO GUERRA (2) V. DE BRAVO - DONATO GUERRA")
					addOption(document.form.SubCat2,"C.S. DONATO GUERRA-ODONTOLOGICO *V.DE BRAVO - DONATO GUERRA*","C.S. DONATO GUERRA-ODONTOLOGICO *V.DE BRAVO - DONATO GUERRA*")
					
				   }
				   
				   if(document.form.SubCat.value == 'IXTAPAN DEL ORO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"C.S. MIAHUATLAN DE HIDALGO ++ V. DE BRAVO-IXTAPAN DEL ORO++","C.S. MIAHUATLAN DE HIDALGO ++ V. DE BRAVO-IXTAPAN DEL ORO++")
					addOption(document.form.SubCat2,"C.S. TUTUAPAN ** V. DE BRAVO - IXTAPAN DEL ORO **","C.S. TUTUAPAN ** V. DE BRAVO - IXTAPAN DEL ORO **")
					addOption(document.form.SubCat2,"C.S. EL CHILAR ** V. DE BRAVO - IXTAPAN DEL ORO **","C.S. EL CHILAR ** V. DE BRAVO - IXTAPAN DEL ORO **")
					addOption(document.form.SubCat2,"CASA DE SALUD EJIDO DE MIAHUATLAN  DE HIDALGO (V. DE BRAVO)","CASA DE SALUD EJIDO DE MIAHUATLAN  DE HIDALGO (V. DE BRAVO)")
					
				   }
				   
				   if(document.form.SubCat.value == 'OTZOLOAPAN')
			   
				   {
					    
					addOption(document.form.SubCat2,"CRUZ BLANCA PROGRESA (VALLE DE BRAVO)","CRUZ BLANCA PROGRESA (VALLE DE BRAVO)")
					
				   }
				   
				   if(document.form.SubCat.value == 'SANTO TOMAS DE LOS PLATANOS')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")   
					addOption(document.form.SubCat2,"C.S. POTRERO DE ARRIBA ++ V. DE BRAVO-SANTO TOMAS DE LOS P.","C.S. POTRERO DE ARRIBA ++ V. DE BRAVO-SANTO TOMAS DE LOS P.")
					addOption(document.form.SubCat2,"EL PUERTO DE SANTO TOMAS (V. DE BRAVO - SANTO TOMAS)","EL PUERTO DE SANTO TOMAS (V. DE BRAVO - SANTO TOMAS)")
					addOption(document.form.SubCat2,"RINCON CHICO (VALLE DE BRAVO)","RINCON CHICO (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"SANTO TOMAS DE LOS PLATANOS (VALLE DE BRAVO)","SANTO TOMAS DE LOS PLATANOS (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"CASA DE SALUD IXTAPANTONGO ( VALLE DE BRAVO )","CASA DE SALUD IXTAPANTONGO ( VALLE DE BRAVO )")
					
				   }
				   
				   if(document.form.SubCat.value == 'VALLE DE BRAVO')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"CERRO GORDO (VALLE DE BRAVO)","CERRO GORDO (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"CUADRILLA DE DOLORES (1) V. DE BRAVO - V. DE BRAVO","CUADRILLA DE DOLORES (1) V. DE BRAVO - V. DE BRAVO")
					addOption(document.form.SubCat2,"CUADRILLA DE DOLORES (2) V. DE BRAVO - V. DE BRAVO","CUADRILLA DE DOLORES (2) V. DE BRAVO - V. DE BRAVO")
					addOption(document.form.SubCat2,"LOS SAUCOS (VALLE DE BRAVO)","LOS SAUCOS (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"C.S. SANTA MARIA PIPIOLTEPEC ++V. DE BRAVO-VALLE DE BRAVO++","C.S. SANTA MARIA PIPIOLTEPEC ++V. DE BRAVO-VALLE DE BRAVO++")
					addOption(document.form.SubCat2,"VALLE DE BRAVO (2) (VALLE DE BRAVO)","VALLE DE BRAVO (2) (VALLE DE BRAVO)")
					
				   }
				   
				   if(document.form.SubCat.value == 'VILLA DE ALLENDE')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"CUESTA DEL CARMEN ** V. DE BRAVO - VILLA DE ALLENDE **","CUESTA DEL CARMEN ** V. DE BRAVO - VILLA DE ALLENDE **")
					addOption(document.form.SubCat2,"EL JACAL (VALLE DE BRAVO)","EL JACAL (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"C.S. LOMA DE JUAREZ (1)","C.S. LOMA DE JUAREZ (1)")
					addOption(document.form.SubCat2,"C.S. LOMA DE JUAREZ (2)","C.S. LOMA DE JUAREZ (2)")
					addOption(document.form.SubCat2,"C.S. SABANA DEL ROSARIO ++ V. DE BRAVO - VILLA DE ALLENDE ++","C.S. SABANA DEL ROSARIO ++ V. DE BRAVO - VILLA DE ALLENDE ++")
					addOption(document.form.SubCat2,"C.S. SABANA TABORDA ++ V. DE BRAVO - VILLA DE ALLENDE ++","C.S. SABANA TABORDA ++ V. DE BRAVO - VILLA DE ALLENDE ++")
					addOption(document.form.SubCat2,"C.S. SAN FELIPE SANTIAGO (1) V. DE BRAVO - VILLA DE ALLENDE","C.S. SAN FELIPE SANTIAGO (1) V. DE BRAVO - VILLA DE ALLENDE")
					addOption(document.form.SubCat2,"C.S. SAN FELIPE SANTIAGO (2) V. DE BRAVO - VILLA DE ALLENDE","C.S. SAN FELIPE SANTIAGO (2) V. DE BRAVO - VILLA DE ALLENDE")
					addOption(document.form.SubCat2,"SAN JERONIMO TOTOLTEPEC ** V. DE BRAVO - VILLA DE ALLENDE **","SAN JERONIMO TOTOLTEPEC ** V. DE BRAVO - VILLA DE ALLENDE **")
					addOption(document.form.SubCat2,"C.S. SAN JUAN BUENAVISTA ** V. DE BRAVO - VILLA DE ALLENDE *","C.S. SAN JUAN BUENAVISTA ** V. DE BRAVO - VILLA DE ALLENDE *")
					addOption(document.form.SubCat2,"SAN PABLO MALACATEPEC (VALLE DE BRAVO)","SAN PABLO MALACATEPEC (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"SANTA TERESA  PAC ** V. DE BRAVO - VILLA DE ALLENDE **","SANTA TERESA  PAC ** V. DE BRAVO - VILLA DE ALLENDE **")
					addOption(document.form.SubCat2,"CASA DE SALUD LOS BERROS ** V. DE BRAVO - VILLA DE ALLENDE *","CASA DE SALUD LOS BERROS ** V. DE BRAVO - VILLA DE ALLENDE *")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN ILDEFONSO (VALLE DE BRAVO)","CASA DE SALUD SAN ILDEFONSO (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"CASA DE SALUD VARECHIQUICHUCA ++V. DE BRAVO - V. DE ALLENDE+","CASA DE SALUD VARECHIQUICHUCA ++V. DE BRAVO - V. DE ALLENDE+")
					
				   }
				   
				   if(document.form.SubCat.value == 'VILLA VICTORIA')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"HOSPITAL ** V. DE BRAVO - VILLA DE VICTORIA **","HOSPITAL ** V. DE BRAVO - VILLA DE VICTORIA **")
					addOption(document.form.SubCat2,"CASA DE SALUD EL ESPINAL (VALLE DE BRAVO)","CASA DE SALUD EL ESPINAL (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"CASA DE SALUD EJIDO DE LOS PADRES *V. DE BRAVO - VILLA VICT.","CASA DE SALUD EJIDO DE LOS PADRES *V. DE BRAVO - VILLA VICT.")
					addOption(document.form.SubCat2,"CASA DE SALUD PUERTA DEL PILAR ( VALLE DE BRAVO )","CASA DE SALUD PUERTA DEL PILAR ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"SAN AGUSTIN ALTAMIRANO 2da. SECCION (VALLE DE BRAVO)","SAN AGUSTIN ALTAMIRANO 2da. SECCION (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"C.S. CASAS COLORADAS ++ V. DE BRAVO - VILLA VICTORIA ++","C.S. CASAS COLORADAS ++ V. DE BRAVO - VILLA VICTORIA ++")
					addOption(document.form.SubCat2,"CASA DE SALUD SANTA ISABEL DEL MONTE","CASA DE SALUD SANTA ISABEL DEL MONTE")
					addOption(document.form.SubCat2,"C.S. DOLORES VAQUERIAS","C.S. DOLORES VAQUERIAS")
					addOption(document.form.SubCat2,"C.S. EL CAPULIN ++ V. DE BRAVO - VILLA VICTORIA ++","C.S. EL CAPULIN ++ V. DE BRAVO - VILLA VICTORIA ++")
					addOption(document.form.SubCat2,"CASA DE SALUD BARRIO DE LOS REMEDIOS *V. DE BRAVO-VILLA VICT","CASA DE SALUD BARRIO DE LOS REMEDIOS *V. DE BRAVO-VILLA VICT")
					addOption(document.form.SubCat2,"CASA DE SALUD LAGUNA SECA (VALLE DE BRAVO)","CASA DE SALUD LAGUNA SECA (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"LOS CEDROS (1) (VALLE DE BRAVO)","LOS CEDROS (1) (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"LOS CEDROS (2) (VALLE DE BRAVO)","LOS CEDROS (2) (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"C.S. PALIZADA ++ V. DE BRAVO - VILLA VICTORIA ++","C.S. PALIZADA ++ V. DE BRAVO - VILLA VICTORIA ++")
					addOption(document.form.SubCat2,"C.S. SAN AGUSTIN ALTAMIRANO","C.S. SAN AGUSTIN ALTAMIRANO")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN AGUSTIN BERROS ( VALLE DE BRAVO )","CASA DE SALUD SAN AGUSTIN BERROS ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"SAN AGUSTIN CANOHILLAS (VALLE DE BRAVO)","SAN AGUSTIN CANOHILLAS (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"SAN ANTONIO DEL RINCON (VALLE DE BRAVO)","SAN ANTONIO DEL RINCON (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"C.S. SAN DIEGO SUCHITEPEC ++ V. DE BRAVO - VILLA VICTORIA ++","C.S. SAN DIEGO SUCHITEPEC ++ V. DE BRAVO - VILLA VICTORIA ++")
					addOption(document.form.SubCat2,"SAN LUIS EL ALTO ( VALLE DE BRAVO )","SAN LUIS EL ALTO ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"SAN LUIS LA MANZANA (VALLE DE BRAVO)","SAN LUIS LA MANZANA (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"SAN MARCOS DE LA LOMA 1 (VALLE DE BRAVO)","SAN MARCOS DE LA LOMA 1 (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"SAN MARCOS DE LA LOMA 2 VALLE DE BRAVO","SAN MARCOS DE LA LOMA 2 VALLE DE BRAVO")
					addOption(document.form.SubCat2,"SAN MARCOS DE LA LOMA * * ODONTOLOGICO* * V. BRAVO","SAN MARCOS DE LA LOMA * * ODONTOLOGICO* * V. BRAVO")
					addOption(document.form.SubCat2,"SANTIAGO DEL MONTE (1)  ( VALLE DE BRAVO )","SANTIAGO DEL MONTE (1)  ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"SANTIAGO DEL MONTE (2)  ( VALLE DE BRAVO )","SANTIAGO DEL MONTE (2)  ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"SITIO EJIDO (VALLE DE BRAVO)","SITIO EJIDO (VALLE DE BRAVO)")
					addOption(document.form.SubCat2,"C.S. TURCIO (1)","C.S. TURCIO (1)")
					addOption(document.form.SubCat2,"C.S. TURCIO (2)","C.S. TURCIO (2)")
					addOption(document.form.SubCat2,"EL CERRILLO (1) V. DE BRAVO-VILLA VICTORIA","EL CERRILLO (1) V. DE BRAVO-VILLA VICTORIA")
					addOption(document.form.SubCat2,"CASA DE SALUD SANTIAGO DEL MONTE PUEBLO","CASA DE SALUD SANTIAGO DEL MONTE PUEBLO")
					addOption(document.form.SubCat2,"CASA DE SALUD BARRIO DE LOS RAMEJE ( VALLE DE BRAVO )","CASA DE SALUD BARRIO DE LOS RAMEJE ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"CASA DE SALUD BARRIO DE SAN MIGUEL ** V. DE BRAVO - V. VICT.","CASA DE SALUD BARRIO DE SAN MIGUEL ** V. DE BRAVO - V. VICT.")
					addOption(document.form.SubCat2,"CASA DE SALUD BARRIO DE VIVEROS (VALLE D BRAVO)","CASA DE SALUD BARRIO DE VIVEROS (VALLE D BRAVO)")
					addOption(document.form.SubCat2,"C.S.R. SAN AGUSTIN BERROS SECC G PAC","C.S.R. SAN AGUSTIN BERROS SECC G PAC")
					addOption(document.form.SubCat2,"CASA DE SALUD TURCIO 2DA SECCION","CASA DE SALUD TURCIO 2DA SECCION")
					addOption(document.form.SubCat2,"CASA DE SALUD VENTA DE OCOTILLOS","CASA DE SALUD VENTA DE OCOTILLOS")
					addOption(document.form.SubCat2,"CASA DE SALUD LA CAMPANILLA","CASA DE SALUD LA CAMPANILLA")
					addOption(document.form.SubCat2,"CASA DE SALUD MINA VIEJA ** V. DE BRAVO - VILLA VICTORIA **","CASA DE SALUD MINA VIEJA ** V. DE BRAVO - VILLA VICTORIA **")
					addOption(document.form.SubCat2,"CASA DE SALUD BARRIO DE LOS CEDROS ++V. DE BRAVO-VILLA VIC.+","CASA DE SALUD BARRIO DE LOS CEDROS ++V. DE BRAVO-VILLA VIC.+")
					addOption(document.form.SubCat2,"CASA DE SALUD SAN DIEGO DEL CERRITO ++V. DE BRAVO - VILLA V","CASA DE SALUD SAN DIEGO DEL CERRITO ++V. DE BRAVO - VILLA V")
					
				   }
				   
				   if(document.form.SubCat.value == 'ZACAZONAPAN')
			   
				   {
					addOption(document.form.SubCat2,"--ESCOJA CENTRO DE SALUD--","--ESCOJA CENTRO DE SALUD--")      
					addOption(document.form.SubCat2,"OTZOLOAPAN (1) ( VALLE DE BRAVO )","OTZOLOAPAN (1) ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"OTZOLOAPAN (2) ( VALLE DE BRAVO )","OTZOLOAPAN (2) ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"OTZOLOAPAN (4)","OTZOLOAPAN (4)")
					addOption(document.form.SubCat2,"ZACAZONAPAN 1 ( VALLE DE BRAVO )","ZACAZONAPAN 1 ( VALLE DE BRAVO )")
					addOption(document.form.SubCat2,"ZACAZONAPAN 2 (VALLE DE BRAVO)","ZACAZONAPAN 2 (VALLE DE BRAVO)")
					
				   }

}// fin de la función


function SelectSubCat_J(){
// ON selection of category this function will work

               //removeAllOptions(document.form.SubCat);
//addOption(document.form.SubCat, "", "No. de Cuenta", "");     

               if(document.form.Category.value == 'J.S.1. ATLACOMULCO')
			   
			   {
//var cad1="Acura";
                  
				  addOption(document.form.SubCat,"ACAMBAY","ACAMBAY")
                  addOption(document.form.SubCat,"ATLACOMULCO","ATLACOMULCO")
                  addOption(document.form.SubCat,"EL ORO","EL ORO")
                  addOption(document.form.SubCat,"TEMASCALCINGO","TEMASCALCINGO")
               }
			   
			    if(document.form.Category.value == 'J.S.2. IXTLAHUACA')
			   
			   {
				 addOption(document.form.SubCat,"--ESCOJA MUNICIPIO--","--ESCOJA MUNICIPIO--")  
			     addOption(document.form.SubCat,"IXTLAHUACA","IXTLAHUACA")
                 addOption(document.form.SubCat,"JIQUIPILCO","JIQUIPILCO")
                 addOption(document.form.SubCat,"JOCOTITLAN","JOCOTITLAN")
                 addOption(document.form.SubCat,"SAN BARTOLO MORELOS","SAN BARTOLO MORELOS")
                 addOption(document.form.SubCat,"SAN FELIPE DEL PROGRESO","SAN FELIPE DEL PROGRESO")
                 addOption(document.form.SubCat,"SAN JOSE DEL RINCON","SAN JOSE DEL RINCON")
  
			   }
			   
			    if(document.form.Category.value == 'J.S.3. JILOTEPEC')
			   
			   {
				 addOption(document.form.SubCat,"--ESCOJA MUNICIPIO--","--ESCOJA MUNICIPIO--") 
				 addOption(document.form.SubCat,"ACULCO","ACULCO")
                 addOption(document.form.SubCat,"CHAPA DE MOTA","CHAPA DE MOTA")
                 addOption(document.form.SubCat,"JILOTEPEC","JILOTEPEC")
                 addOption(document.form.SubCat,"POLOTITLAN","POLOTITLAN")
                 addOption(document.form.SubCat,"SOYANIQUILPAN","SOYANIQUILPAN")
                 addOption(document.form.SubCat,"TIMILPAN","TIMILPAN")
                 addOption(document.form.SubCat,"VILLA DEL CARBON","VILLA DEL CARBON")
  
			   }
			    if(document.form.Category.value == 'J.S.4. TENANGO DEL VALLE')
			   
			   {
				  addOption(document.form.SubCat,"--ESCOJA MUNICIPIO--","--ESCOJA MUNICIPIO--") 
				  addOption(document.form.SubCat,"CALIMAYA","CALIMAYA")
                  addOption(document.form.SubCat,"CAPULHUAC","CAPULHUAC")
				  addOption(document.form.SubCat,"JALATLACO","JALATLACO")
				  addOption(document.form.SubCat,"JOQUICINGO","JOQUICINGO")
				  addOption(document.form.SubCat,"MEXICALCINGO","MEXICALCINGO")
			      addOption(document.form.SubCat,"RAYON","RAYON")
			      addOption(document.form.SubCat,"SAN ANTONIO LA ISLA","SAN ANTONIO LA ISLA")
				  addOption(document.form.SubCat,"TENANGO DEL VALLE","TENANGO DEL VALLE")
                  addOption(document.form.SubCat,"SANTIAGO TIANGUISTENCO","SANTIAGO TIANGUISTENCO")

			   }
			    if(document.form.Category.value == 'J.S.5. TOLUCA')
			   
			   {
					addOption(document.form.SubCat,"--ESCOJA MUNICIPIO--","--ESCOJA MUNICIPIO--") 
					addOption(document.form.SubCat,"ALMOLOYA DE JUAREZ","ALMOLOYA DE JUAREZ")
					addOption(document.form.SubCat,"METEPEC","METEPEC")
					addOption(document.form.SubCat,"OTZOLOTEPEC","OTZOLOTEPEC")
					addOption(document.form.SubCat,"TOLUCA","TOLUCA")
					addOption(document.form.SubCat,"ZINACANTEPEC","ZINACANTEPEC")
		       }
			    if(document.form.Category.value == 'J.S.6. XONACATLAN')
			   
			   {
				    addOption(document.form.SubCat,"--ESCOJA MUNICIPIO--","--ESCOJA MUNICIPIO--") 
					addOption(document.form.SubCat,"HUIXQUILUCAN","HUIXQUILUCAN")
					addOption(document.form.SubCat,"LERMA","LERMA")
					addOption(document.form.SubCat,"OCOYOACAC","OCOYOACAC")
					addOption(document.form.SubCat,"OTZOLOAPAN","OTZOLOAPAN")
					addOption(document.form.SubCat,"OTZOLOTEPEC","OTZOLOTEPEC")
					addOption(document.form.SubCat,"SAN MATEO ATENCO","SAN MATEO ATENCO")
					addOption(document.form.SubCat,"TEMOAYA","TEMOAYA")
					addOption(document.form.SubCat,"XONACATLAN","XONACATLAN")
  
				   
			   }
			   
			    if(document.form.Category.value == 'J.S.7. TEJUPILCO')
			   
			   {
				    addOption(document.form.SubCat,"--ESCOJA MUNICIPIO--","--ESCOJA MUNICIPIO--") 
					addOption(document.form.SubCat,"AMATEPEC","AMATEPEC")
					addOption(document.form.SubCat,"SAN SIMON DE GUERRERO","SAN SIMON DE GUERRERO")
					addOption(document.form.SubCat,"TEJUPILCO","TEJUPILCO")
					addOption(document.form.SubCat,"TEMASCALTEPEC","TEMASCALTEPEC")
					addOption(document.form.SubCat,"TLATLAYA","TLATLAYA")
					addOption(document.form.SubCat,"LUVIANOS","LUVIANOS")

			   }
			    if(document.form.Category.value == 'J.S.8. TENANCINGO')
			   
			   {
				    addOption(document.form.SubCat,"--ESCOJA MUNICIPIO--","--ESCOJA MUNICIPIO--") 
					addOption(document.form.SubCat,"ALMOLOYA DE ALQUISIRAS","ALMOLOYA DE ALQUISIRAS")
					addOption(document.form.SubCat,"COATEPEC HARINAS","COATEPEC HARINAS")
					addOption(document.form.SubCat,"IXTAPAN DE LA SAL","IXTAPAN DE LA SAL")
					addOption(document.form.SubCat,"MALINALCO","MALINALCO")
					addOption(document.form.SubCat,"OCUILAN","OCUILAN")
					addOption(document.form.SubCat,"SULTEPEC","SULTEPEC")
					addOption(document.form.SubCat,"TENANCINGO","TENANCINGO")
					addOption(document.form.SubCat,"TEXCALTITLAN","TEXCALTITLAN")
					addOption(document.form.SubCat,"TONATICO","TONATICO")
					addOption(document.form.SubCat,"VILLA GUERRERO","VILLA GUERRERO")
					addOption(document.form.SubCat,"ZACUALPAN","ZACUALPAN")
					addOption(document.form.SubCat,"ZUMPAHUACAN","ZUMPAHUACAN")
 
			   }
			   
			    if(document.form.Category.value == 'J.S.9. VALLE DE BRAVO')
			   
			   {
				    addOption(document.form.SubCat,"--ESCOJA MUNICIPIO--","--ESCOJA MUNICIPIO--") 
					addOption(document.form.SubCat,"AMANALCO","AMANALCO")
					addOption(document.form.SubCat,"DONATO GUERRA","DONATO GUERRA")
					addOption(document.form.SubCat,"IXTAPAN DEL ORO","IXTAPAN DEL ORO")
					addOption(document.form.SubCat,"OTZOLOAPAN","OTZOLOAPAN")
					addOption(document.form.SubCat,"SANTO TOMAS DE LOS PLATANOS","SANTO TOMAS DE LOS PLATANOS")
					addOption(document.form.SubCat,"VALLE DE BRAVO","VALLE DE BRAVO")
					addOption(document.form.SubCat,"VILLA DE ALLENDE","VILLA DE ALLENDE")
					addOption(document.form.SubCat,"VILLA VICTORIA","VILLA VICTORIA")
					addOption(document.form.SubCat,"ZACAZONAPAN","ZACAZONAPAN")

			   }
			   
}


function SelectSubCat011(){
// ON selection of category this function will work

removeAllOptions(document.form.SubCat);
//addOption(document.form.SubCat, "", "No. de Cuenta", "");     

if(document.form.Category.value == 'Atlacomulco'){
//var cad1="Acura";

addOption(document.form.SubCat,"AGOSTADERO (ATLACOMULCO)","AGOSTADERO (ATLACOMULCO)")
addOption(document.form.SubCat,"C.S. DATEJE (1) ATL-ACAMBAY","C.S. DATEJE (1) ATL-ACAMBAY")
addOption(document.form.SubCat,"C.S. DATEJE (2) ATL-ACAMBAY","C.S. DATEJE (2) ATL-ACAMBAY")
addOption(document.form.SubCat,"C.S. DONGU ++ ATL - ACAMBAY ++","C.S. DONGU ++ ATL - ACAMBAY ++")
addOption(document.form.SubCat,"C.S. DOXTEJE CENTRO ++ ATL - ACAMBAY ++","C.S. DOXTEJE CENTRO ++ ATL - ACAMBAY ++")
addOption(document.form.SubCat,"LA ESTANCIA II (ATLACOMULCO)","LA ESTANCIA II (ATLACOMULCO)")
addOption(document.form.SubCat,"C.S. ESTANCIA SECTOR I ++ ATL - ACAMBAY ++","C.S. ESTANCIA SECTOR I ++ ATL - ACAMBAY ++")
addOption(document.form.SubCat,"C.S. JUANDO (1) ATL - ACAMBAY","C.S. JUANDO (1) ATL - ACAMBAY")
addOption(document.form.SubCat,"C.S. JUANDO (2) ATL - ACAMBAY","C.S. JUANDO (2) ATL - ACAMBAY")
addOption(document.form.SubCat,"LAS MANGAS (ATLACOMULCO)","LAS MANGAS (ATLACOMULCO)")
addOption(document.form.SubCat,"C.S. LA LOMA ** ATL - ACAMBAY **","C.S. LA LOMA ** ATL - ACAMBAY **")
addOption(document.form.SubCat,"C.S. MADO SECTOR I ** ATL - ACAMBAY **","C.S. MADO SECTOR I ** ATL - ACAMBAY **")
addOption(document.form.SubCat,"MUYTEJE (ATLACOMULCO)","MUYTEJE (ATLACOMULCO)")
addOption(document.form.SubCat,"C.S. LOS PILARES ** ATL - ACAMBAY **","C.S. LOS PILARES ** ATL - ACAMBAY **")
addOption(document.form.SubCat,"PUEBLO NUEVO ACAMBAY (ATLACOMULCO)","PUEBLO NUEVO ACAMBAY (ATLACOMULCO)")
addOption(document.form.SubCat,"SAN FRANCISCO SHAXNI (ATLACOMULCO)","SAN FRANCISCO SHAXNI (ATLACOMULCO)")
addOption(document.form.SubCat,"SAN PEDRO DE LOS METATES (ATLACOMULCO)","SAN PEDRO DE LOS METATES (ATLACOMULCO)")
addOption(document.form.SubCat,"LA SOLEDAD (ATLACOMULCO)","LA SOLEDAD (ATLACOMULCO)")
addOption(document.form.SubCat,"C.S. TIXMADEJE CHIQUITO ++ ATL - ACAMBAY ++","C.S. TIXMADEJE CHIQUITO ++ ATL - ACAMBAY ++")
addOption(document.form.SubCat," CASA DE SALUD SANTA MARIA TIXMADEJE (ATLACOMULCO)"," CASA DE SALUD SANTA MARIA TIXMADEJE (ATLACOMULCO)")
addOption(document.form.SubCat,"SAN JUANICO I CERRO GORDO (ATLACOMULCO)","SAN JUANICO I CERRO GORDO (ATLACOMULCO)")
addOption(document.form.SubCat,"C.S. EJIDO MANTO DEL RIO ** ATL - ATLACOMULCO **","C.S. EJIDO MANTO DEL RIO ** ATL - ATLACOMULCO **")
addOption(document.form.SubCat,"CASA DE SALUD CHOSTO DE L OS JARROS","CASA DE SALUD CHOSTO DE L OS JARROS")
addOption(document.form.SubCat,"CASA DE SALUD CUENDO ** ATL - ATLACOMULCO **","CASA DE SALUD CUENDO ** ATL - ATLACOMULCO **")
addOption(document.form.SubCat,"SAN ANTONIO ENCHISE (1) (ATLACOMULCO)","SAN ANTONIO ENCHISE (1) (ATLACOMULCO)")
addOption(document.form.SubCat,"SAN ANTONIO ENCHISE (2) (ATLACOMULCO)","SAN ANTONIO ENCHISE (2) (ATLACOMULCO)")
addOption(document.form.SubCat,"SAN BARTOLO LANZADOS (1) (ATLACOMULCO)","SAN BARTOLO LANZADOS (1) (ATLACOMULCO)")
addOption(document.form.SubCat,"SAN BARTOLO LANZADOS (2) (ATLACOMULCO)","SAN BARTOLO LANZADOS (2) (ATLACOMULCO)")
addOption(document.form.SubCat,"C.S. SAN FELIPE PUEBLO NUEVO ++ ATL- ATLACOMULCO ++","C.S. SAN FELIPE PUEBLO NUEVO ++ ATL- ATLACOMULCO ++")
addOption(document.form.SubCat,"C.S. SAN FRANCISCO CHALCHIHUPAN (1)","C.S. SAN FRANCISCO CHALCHIHUPAN (1)")
addOption(document.form.SubCat,"SAN JERONIMO DE LOS JARROS (ATLACOMULCO)","SAN JERONIMO DE LOS JARROS (ATLACOMULCO)")
addOption(document.form.SubCat,"SAN JOSE EL TUNAL ( 1 ) (ATLACOMULCO)","SAN JOSE EL TUNAL ( 1 ) (ATLACOMULCO)")
addOption(document.form.SubCat,"SAN JOSE EL TUNAL ( 2 ) (ATLACOMULCO)","SAN JOSE EL TUNAL ( 2 ) (ATLACOMULCO)")
addOption(document.form.SubCat,"MODULO ODONTOLOGICO CASAF ATLACOMULCO ","MODULO ODONTOLOGICO CASAF ATLACOMULCO ")
addOption(document.form.SubCat,"C.S. SAN JUAN DE LOS JARROS (1)","C.S. SAN JUAN DE LOS JARROS (1)")
addOption(document.form.SubCat,"C.S. SAN JUAN DE LOS JARROS (2)","C.S. SAN JUAN DE LOS JARROS (2)")
addOption(document.form.SubCat,"SAN PEDRO DEL ROSAL (1) (ATLACOMULCO)","SAN PEDRO DEL ROSAL (1) (ATLACOMULCO)")
addOption(document.form.SubCat,"SAN PEDRO DEL ROSAL (2) (ATLACOMULCO)","SAN PEDRO DEL ROSAL (2) (ATLACOMULCO)")
addOption(document.form.SubCat,"SANTIAGO  ACUTZILAPAN  ( 1 ) (ATLACOMULCO)","SANTIAGO  ACUTZILAPAN  ( 1 ) (ATLACOMULCO)")
addOption(document.form.SubCat,"SANTIAGO ACUTZILAPAN  ( 2 ) (ATLACOMULCO)","SANTIAGO ACUTZILAPAN  ( 2 ) (ATLACOMULCO)")
addOption(document.form.SubCat,"CASA DE SALUD SAN LUIS BORO ++ ATL-ATLACOMULCO ++","CASA DE SALUD SAN LUIS BORO ++ ATL-ATLACOMULCO ++")
addOption(document.form.SubCat,"CASA DE SALUD BOMBATEVI EJIDO ** ATL-ATLACOMULCO**","CASA DE SALUD BOMBATEVI EJIDO ** ATL-ATLACOMULCO**")
addOption(document.form.SubCat,"SANTIAGO OXTEMPAN EJIDO (ATLACOMULCO)","SANTIAGO OXTEMPAN EJIDO (ATLACOMULCO)")
addOption(document.form.SubCat,"C.S. LA JORDANA ++ ATL - EL ORO ++","C.S. LA JORDANA ++ ATL - EL ORO ++")
addOption(document.form.SubCat,"SAN NICOLAS TULTENANGO (ATLACOMULCO)","SAN NICOLAS TULTENANGO (ATLACOMULCO)")
addOption(document.form.SubCat,"EL GIGANTE (ATLACOMULCO)","EL GIGANTE (ATLACOMULCO)")
addOption(document.form.SubCat,"SANTA ROSA DE LIMA (1) (ATLACOMULCO)","SANTA ROSA DE LIMA (1) (ATLACOMULCO)")
addOption(document.form.SubCat,"SANTA ROSA DE LIMA (2) (ATLACOMULCO)","SANTA ROSA DE LIMA (2) (ATLACOMULCO)")
addOption(document.form.SubCat,"PUEBLO NUEVO DE LOS ANGELES (1) (ATLACOMULCO)","PUEBLO NUEVO DE LOS ANGELES (1) (ATLACOMULCO)")
addOption(document.form.SubCat,"PUEBLO NUEVO DE LOS ANGELES (2) (ATLACOMULCO)","PUEBLO NUEVO DE LOS ANGELES (2) (ATLACOMULCO)")
addOption(document.form.SubCat,"LA CONCEPCIÓN II (ATLACOMULCO)","LA CONCEPCIÓN II (ATLACOMULCO)")
addOption(document.form.SubCat,"TAPAXCO (1) (ATLACOMULCO)","TAPAXCO (1) (ATLACOMULCO)")
addOption(document.form.SubCat,"TAPAXCO (2)(ATLACOMULCO)","TAPAXCO (2)(ATLACOMULCO)")
addOption(document.form.SubCat,"TAPAXCO (3)(ATLACOMULCO)","TAPAXCO (3)(ATLACOMULCO)")
addOption(document.form.SubCat,"CERRO LLORON (ATLACOMULCO)","CERRO LLORON (ATLACOMULCO)")
addOption(document.form.SubCat,"SANTIAGO OXTEMPAN PUEBLO ( ATLACOMULCO )","SANTIAGO OXTEMPAN PUEBLO ( ATLACOMULCO )")
addOption(document.form.SubCat,"EL TEJOCOTE (1) (ATLACOMULCO)","EL TEJOCOTE (1) (ATLACOMULCO)")
addOption(document.form.SubCat,"EL TEJOCOTE (2) (ATLACOMULCO)","EL TEJOCOTE (2) (ATLACOMULCO)")
addOption(document.form.SubCat,"SANTA ANA YENSHU LA MESA (ATLACOMULCO)","SANTA ANA YENSHU LA MESA (ATLACOMULCO)")
addOption(document.form.SubCat,"C.S. SAN PEDRO EL ALTO","C.S. SAN PEDRO EL ALTO")
addOption(document.form.SubCat,"C.S. SANTA MARIA CANCHESDA","C.S. SANTA MARIA CANCHESDA")
addOption(document.form.SubCat,"C.S. AHUACATITLAN (1) TEMASCALCINGO","C.S. AHUACATITLAN (1) TEMASCALCINGO")
addOption(document.form.SubCat,"C.S. AHUACATITLAN (2) TEMASCALCINGO","C.S. AHUACATITLAN (2) TEMASCALCINGO")
addOption(document.form.SubCat,"C.S. SAN JUANICO EL ALTO","C.S. SAN JUANICO EL ALTO")
addOption(document.form.SubCat,"SAN PEDRO POTLA (ATLACOMULCO)","SAN PEDRO POTLA (ATLACOMULCO)")
addOption(document.form.SubCat,"SAN FRANCISCO SOLIS (ATLACOMULCO)","SAN FRANCISCO SOLIS (ATLACOMULCO)")
addOption(document.form.SubCat,"CASA DE SALUD IXTAPA ** ATL - TEMASCALCINGO ** ","CASA DE SALUD IXTAPA ** ATL - TEMASCALCINGO ** ")
addOption(document.form.SubCat,"SAN JOSE SOLIS PROGRESA (ATLACOMULCO)","SAN JOSE SOLIS PROGRESA (ATLACOMULCO)")
addOption(document.form.SubCat,"SANTIAGO COACHOCHITLAN (1) (ATLACOMULCO)","SANTIAGO COACHOCHITLAN (1) (ATLACOMULCO)")
addOption(document.form.SubCat,"SANTIAGO COACHOCHITLAN (2) (ATLACOMULCO)","SANTIAGO COACHOCHITLAN (2) (ATLACOMULCO)")
addOption(document.form.SubCat,"SANTIAGO COACHOCHITLAN (3) (ATLACOMULCO)","SANTIAGO COACHOCHITLAN (3) (ATLACOMULCO)")
addOption(document.form.SubCat,"JUANACATLAN (ATLACOMULCO)","JUANACATLAN (ATLACOMULCO)")
addOption(document.form.SubCat,"CASA DE SALUD SAN MATEO EL VIEJO (ATLACOMULCO)","CASA DE SALUD SAN MATEO EL VIEJO (ATLACOMULCO)")
addOption(document.form.SubCat,"C.S. SAN FRANCISCO TEPEOLULCO (1)","C.S. SAN FRANCISCO TEPEOLULCO (1)")
addOption(document.form.SubCat,"C.S. SAN FRANCISCO TEPEOLULCO (2)","C.S. SAN FRANCISCO TEPEOLULCO (2)")
addOption(document.form.SubCat,"CASA DE SALUD SAN ANTONIO SOLIS (TEMASCALCINGO)","CASA DE SALUD SAN ANTONIO SOLIS (TEMASCALCINGO)")
addOption(document.form.SubCat,"LA MAGDALENA (ATLACOMULCO)","LA MAGDALENA (ATLACOMULCO)")
}


if(document.form.Category.value == 'Ixtlahuaca'){
//var cad1="Acura";

addOption(document.form.SubCat,"SAN JOSE DEL RINCON (IXTLAHUACA)","SAN JOSE DEL RINCON (IXTLAHUACA)")
addOption(document.form.SubCat,"CASA DE SALUD EMILIANO ZAPATA III ** IXT - IXT **","CASA DE SALUD EMILIANO ZAPATA III ** IXT - IXT **")
addOption(document.form.SubCat,"CASA DE SALUD SAN FRANCISCO DE GUZMAN ++IXT - IXTLAHUACA ++","CASA DE SALUD SAN FRANCISCO DE GUZMAN ++IXT - IXTLAHUACA ++")
addOption(document.form.SubCat,"CASA DE SALUD SAN MATEO IXTLAHUACA (1) ** IXT - IXTLAHUACA**","CASA DE SALUD SAN MATEO IXTLAHUACA (1) ** IXT - IXTLAHUACA**")
addOption(document.form.SubCat,"CASA DE SALUD LA CONCEPCION DE LOS BAÑOS III  ** IXT - IXT *","CASA DE SALUD LA CONCEPCION DE LOS BAÑOS III  ** IXT - IXT *")
addOption(document.form.SubCat,"SAN PEDRO DE LOS BAÑOS I ( IXTLAHUACA )","SAN PEDRO DE LOS BAÑOS I ( IXTLAHUACA )")
addOption(document.form.SubCat,"C.S. CONCEPCION LOS BAÑOS (1) IXT - IXTLAHUACA","C.S. CONCEPCION LOS BAÑOS (1) IXT - IXTLAHUACA")
addOption(document.form.SubCat,"C.S. CONCEPCION LOS BAÑOS (2) IXT - IXTLAHUACA","C.S. CONCEPCION LOS BAÑOS (2) IXT - IXTLAHUACA")
addOption(document.form.SubCat,"C.S. CONCEPCION LOS BAÑOS (3) IXT-IXTLAHUACA","C.S. CONCEPCION LOS BAÑOS (3) IXT-IXTLAHUACA")
addOption(document.form.SubCat,"C.S. CONCEPCION LOS BAÑOS (4) IXT - IXTLAHUACA","C.S. CONCEPCION LOS BAÑOS (4) IXT - IXTLAHUACA")
addOption(document.form.SubCat,"EMILIANO ZAPATA ( 1 ) (IXTLAHUACA)","EMILIANO ZAPATA ( 1 ) (IXTLAHUACA)")
addOption(document.form.SubCat,"EMILIANO ZAPATA ( 2 ) (IXTLAHUACA)","EMILIANO ZAPATA ( 2 ) (IXTLAHUACA)")
addOption(document.form.SubCat,"EMILIANO ZAPATA ( 3 ) (IXTLAHUACA)","EMILIANO ZAPATA ( 3 ) (IXTLAHUACA)")
addOption(document.form.SubCat,"EMILIANO ZAPATA ( 4 )(IXTLAHUACA)","EMILIANO ZAPATA ( 4 )(IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. GUADALUPE CACHI (1) IXT - IXTLAHUACA","C.S. GUADALUPE CACHI (1) IXT - IXTLAHUACA")
addOption(document.form.SubCat,"C.S. GUADALUPE CACHI (2) IXT - IXTLAHUACA","C.S. GUADALUPE CACHI (2) IXT - IXTLAHUACA")
addOption(document.form.SubCat,"GUADALUPE DEL RIO (IXTLAHUACA)","GUADALUPE DEL RIO (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. JALPA DE LOS BAÑOS ++ IXT - IXTLAHUACA ++","C.S. JALPA DE LOS BAÑOS ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat,"C.S. LA GUADALUPANA","C.S. LA GUADALUPANA")
addOption(document.form.SubCat,"SAN ANDRES DEL PEDREGAL (1) IXT- IXTLAHUACA","SAN ANDRES DEL PEDREGAL (1) IXT- IXTLAHUACA")
addOption(document.form.SubCat,"SAN ANDRES DEL PEDREGAL (2) IXT - IXTLAHUACA","SAN ANDRES DEL PEDREGAL (2) IXT - IXTLAHUACA")
addOption(document.form.SubCat,"SAN ANDRES DEL PEDREGAL (3) IXT - IXTLAHUACA","SAN ANDRES DEL PEDREGAL (3) IXT - IXTLAHUACA")
addOption(document.form.SubCat,"SAN BARTOLO DEL LLANO (1) (IXTLAHUACA)","SAN BARTOLO DEL LLANO (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN BARTOLO DEL LLANO (2) (IXTLAHUACA)","SAN BARTOLO DEL LLANO (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN BARTOLO DEL LLANO (3) (IXTLAHUACA)","SAN BARTOLO DEL LLANO (3) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN CRISTOBAL DE LOS BAÑOS(1) (IXTLAHUACA)","SAN CRISTOBAL DE LOS BAÑOS(1) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN CRISTOBAL DE LOS BAÑOS(2) (IXTLAHUACA)","SAN CRISTOBAL DE LOS BAÑOS(2) (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. SAN FRANCISCO DEL RIO ++ IXT - IXTLAHUACA ++","C.S. SAN FRANCISCO DEL RIO ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat,"SAN FRANCISCO IXTLAHUACA (1) (IXTLAHUACA)","SAN FRANCISCO IXTLAHUACA (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN FRANCISCO IXTLAHUACA (2) **ODONTOLOGICO**","SAN FRANCISCO IXTLAHUACA (2) **ODONTOLOGICO**")
addOption(document.form.SubCat,"SAN IGNACIO DEL PEDREGAL (1)IXT-IXTLAHUACA","SAN IGNACIO DEL PEDREGAL (1)IXT-IXTLAHUACA")
addOption(document.form.SubCat,"SAN IGNACIO DEL PEDREGAL ODONTOLOGICO (2) IXT-IXTLAHUACA","SAN IGNACIO DEL PEDREGAL ODONTOLOGICO (2) IXT-IXTLAHUACA")
addOption(document.form.SubCat,"C.S. SAN ILDEFONSO PROFA. ELDA GOMEZ LUGO","C.S. SAN ILDEFONSO PROFA. ELDA GOMEZ LUGO")
addOption(document.form.SubCat,"C.S. SAN JERONIMO IXTAPANTONGO ++ IXT - IXTLAHUACA ++","C.S. SAN JERONIMO IXTAPANTONGO ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat,"C.S. SAN JOAQUIN LA CABECERA","C.S. SAN JOAQUIN LA CABECERA")
addOption(document.form.SubCat,"C.S. SAN LORENZO TOXICO (1) ++ IXT - IXTLAHUACA ++","C.S. SAN LORENZO TOXICO (1) ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat,"C.S. SAN LORENZO TOXICO (2) ++ IXT- IXTLAHUACA ++","C.S. SAN LORENZO TOXICO (2) ++ IXT- IXTLAHUACA ++")
addOption(document.form.SubCat,"C.S. SAN LORENZO TOXICO (3) ++ IXT - IXTLAHUACA ++","C.S. SAN LORENZO TOXICO (3) ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat,"C.S. SAN PABLO DE LOS REMEDIOS ++ IXT - IXTLAHUACA ++","C.S. SAN PABLO DE LOS REMEDIOS ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat,"SAN PEDRO BARRIO (1) (IXTLAHUACA)","SAN PEDRO BARRIO (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN PEDRO BARRIO (2) (IXTLAHUACA)","SAN PEDRO BARRIO (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. SAN PEDRO DE LOS BAÑOS II (1)  IXT - IXTLAHUACA","C.S. SAN PEDRO DE LOS BAÑOS II (1)  IXT - IXTLAHUACA")
addOption(document.form.SubCat,"C.S. SAN PEDRO DE LOS BAÑOS II (2)  IXT - IXTLAHUACA","C.S. SAN PEDRO DE LOS BAÑOS II (2)  IXT - IXTLAHUACA")
addOption(document.form.SubCat,"C.S. SAN PEDRO DE LOS BAÑOS II - ODONTOLOGICO *IXT-IXT*","C.S. SAN PEDRO DE LOS BAÑOS II - ODONTOLOGICO *IXT-IXT*")
addOption(document.form.SubCat,"SANTA ANA IXTLAHUACA (1) (IXTLAHUACA)","SANTA ANA IXTLAHUACA (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"SANTA ANA IXTLAHUACA (2) (IXTLAHUACA)","SANTA ANA IXTLAHUACA (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"SANTA ANA IXTLAHUACA (3) (IXTLAHUACA)","SANTA ANA IXTLAHUACA (3) (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. SANTA ANA LA LADERA","C.S. SANTA ANA LA LADERA")
addOption(document.form.SubCat,"SANTA MARIA DEL LLANO (1) (IXTLAHUACA)","SANTA MARIA DEL LLANO (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"SANTA MARIA DEL LLANO (2) (IXTLAHUACA)","SANTA MARIA DEL LLANO (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"SANTO DOMINGO DE GUZMAN (1) ( IXTLAHUACA )","SANTO DOMINGO DE GUZMAN (1) ( IXTLAHUACA )")
addOption(document.form.SubCat,"SANTO DOMINGO DE GUZMAN (2) ( IXTLAHUACA )","SANTO DOMINGO DE GUZMAN (2) ( IXTLAHUACA )")
addOption(document.form.SubCat,"SANTO DOMINGO DE GUZMAN (3) (IXTLAHUACA)","SANTO DOMINGO DE GUZMAN (3) (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. PATHE DE MULA LOS CEDROS","C.S. PATHE DE MULA LOS CEDROS")
addOption(document.form.SubCat,"CASA DE SALUD CONCEPCION ENYEGE ** IXT - IXTLAHUACA **","CASA DE SALUD CONCEPCION ENYEGE ** IXT - IXTLAHUACA **")
addOption(document.form.SubCat,"BRIGADA JURISDICCION IXTLAHUACA ","BRIGADA JURISDICCION IXTLAHUACA ")
addOption(document.form.SubCat,"CASA DE SALUD JALPA DE DOLORES (IXTLAHUACA)","CASA DE SALUD JALPA DE DOLORES (IXTLAHUACA)")
addOption(document.form.SubCat,"CASA DE SALUD SAN ANTONIO BONIXI **IXT-IXTLAHUACA**","CASA DE SALUD SAN ANTONIO BONIXI **IXT-IXTLAHUACA**")
addOption(document.form.SubCat,"CASA DE SALUD SAN ISIDRO BOXIPE ++ IXT - IXTLAHUACA ++","CASA DE SALUD SAN ISIDRO BOXIPE ++ IXT - IXTLAHUACA ++")
addOption(document.form.SubCat,"CASA DE SALUD SAN MIGUEL ENYEJE ** IXT-IXTLAHUACA**","CASA DE SALUD SAN MIGUEL ENYEJE ** IXT-IXTLAHUACA**")
addOption(document.form.SubCat,"SAN PEDRO DE LOS BAÑOS III CASA BLANCA  (IXTLAHUACA)","SAN PEDRO DE LOS BAÑOS III CASA BLANCA  (IXTLAHUACA)")
addOption(document.form.SubCat,"JIQUIPILCO  ( IXTLAHUACA )","JIQUIPILCO  ( IXTLAHUACA )")
addOption(document.form.SubCat,"C.S. BUENOS AIRES","C.S. BUENOS AIRES")
addOption(document.form.SubCat,"C.S. EJIDO LLANO GRANDE ** IXT - JIQUIPILCO **","C.S. EJIDO LLANO GRANDE ** IXT - JIQUIPILCO **")
addOption(document.form.SubCat,"C.S. EJIDO LOMA DE MALACOTA ** IXT - JIQUIPILCO **","C.S. EJIDO LOMA DE MALACOTA ** IXT - JIQUIPILCO **")
addOption(document.form.SubCat,"C.S. LOMA HIDALGO **IXT - JIQUIPILCO**","C.S. LOMA HIDALGO **IXT - JIQUIPILCO**")
addOption(document.form.SubCat,"MANZANA QUINTA (1) IXT - JIQUIPILCO","MANZANA QUINTA (1) IXT - JIQUIPILCO")
addOption(document.form.SubCat,"MANZANA QUINTA (2) IXT - JIQUIPILCO","MANZANA QUINTA (2) IXT - JIQUIPILCO")
addOption(document.form.SubCat,"MANZANA SEXTA ** IXT - JIQUIPILCO **","MANZANA SEXTA ** IXT - JIQUIPILCO **")
addOption(document.form.SubCat,"C.S. MOXTEJE","C.S. MOXTEJE")
addOption(document.form.SubCat,"C.S. SAN ANTONIO NIXINI ++ IXT - JIQUIPILCO ++","C.S. SAN ANTONIO NIXINI ++ IXT - JIQUIPILCO ++")
addOption(document.form.SubCat,"SAN BARTOLO OXTOTITLAN (1) (IXTLAHUACA ) ","SAN BARTOLO OXTOTITLAN (1) (IXTLAHUACA ) ")
addOption(document.form.SubCat,"SAN BARTOLO OXTOTITLAN (2) (IXTLAHUACA)","SAN BARTOLO OXTOTITLAN (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"PORTEZUELOS(IXTLAHUACA)","PORTEZUELOS(IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. SAN FELIPE SANTIAGO (1) IXT - JIQUIPILCO","C.S. SAN FELIPE SANTIAGO (1) IXT - JIQUIPILCO")
addOption(document.form.SubCat,"C.S. SAN FELIPE SANTIAGO (2) IXT - JIQUIPILCO","C.S. SAN FELIPE SANTIAGO (2) IXT - JIQUIPILCO")
addOption(document.form.SubCat,"SAN JOSE DEL SITIO (1) ( IXTLAHUACA )","SAN JOSE DEL SITIO (1) ( IXTLAHUACA )")
addOption(document.form.SubCat,"SAN JOSE DEL SITIO (2) ( IXTLAHUACA ) ","SAN JOSE DEL SITIO (2) ( IXTLAHUACA ) ")
addOption(document.form.SubCat,"C.S. SAN MIGUEL YUXTEPEC","C.S. SAN MIGUEL YUXTEPEC")
addOption(document.form.SubCat,"C.S. SANTA CRUZ TEPEXPAN (1) ","C.S. SANTA CRUZ TEPEXPAN (1) ")
addOption(document.form.SubCat,"C.S. SANTA CRUZ TEPEXPAN (2)","C.S. SANTA CRUZ TEPEXPAN (2)")
addOption(document.form.SubCat,"C.S. SANTA CRUZ TEPEXPAN (3)","C.S. SANTA CRUZ TEPEXPAN (3)")
addOption(document.form.SubCat,"SANTA MARIA NATIVITAS(1) ( IXTLAHUACA )","SANTA MARIA NATIVITAS(1) ( IXTLAHUACA )")
addOption(document.form.SubCat,"SANTA MARIA NATIVITAS(2)  (  IXTLAHUACA )","SANTA MARIA NATIVITAS(2)  (  IXTLAHUACA )")
addOption(document.form.SubCat,"CASA DE SALUD TIERRA BLANCA ** IXT- JIQUIPILCO **","CASA DE SALUD TIERRA BLANCA ** IXT- JIQUIPILCO **")
addOption(document.form.SubCat,"C.S. PROVIDENCIA ++ IXT - JOCOTITLAN ++","C.S. PROVIDENCIA ++ IXT - JOCOTITLAN ++")
addOption(document.form.SubCat,"HUEMETLA  (IXTLAHUACA)","HUEMETLA  (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. JOCOTITLAN (1) IXT - JOCOTITLAN","C.S. JOCOTITLAN (1) IXT - JOCOTITLAN")
addOption(document.form.SubCat,"C.S. JOCOTITLAN (2) IXT - JOCOTITLAN","C.S. JOCOTITLAN (2) IXT - JOCOTITLAN")
addOption(document.form.SubCat,"C.S. LOS REYES (1) ++ IXT - JOCOTITLAN ++","C.S. LOS REYES (1) ++ IXT - JOCOTITLAN ++")
addOption(document.form.SubCat,"C.S. LOS REYES (2) ++ IXT - JOCOTITLAN ++","C.S. LOS REYES (2) ++ IXT - JOCOTITLAN ++")
addOption(document.form.SubCat,"C.S. MAVORO ++ IXT - JOCOTITLAN ++","C.S. MAVORO ++ IXT - JOCOTITLAN ++")
addOption(document.form.SubCat,"C.S. SAN FRANCISCO CHEJE ++ IXT - JOCOTITLAN ++","C.S. SAN FRANCISCO CHEJE ++ IXT - JOCOTITLAN ++")
addOption(document.form.SubCat,"SAN JUAN COAJOMULCO (IXTLAHUACA)","SAN JUAN COAJOMULCO (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN MIGUEL TENOCHTITLAN (1) (IXTLAHUACA)","SAN MIGUEL TENOCHTITLAN (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN MIGUEL TENOCHTITLAN (2) (IXTLAHUACA)","SAN MIGUEL TENOCHTITLAN (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"SANTA MARIA CITENDEJE (1) ( IXTLAHUACA )","SANTA MARIA CITENDEJE (1) ( IXTLAHUACA )")
addOption(document.form.SubCat,"SANTA MARIA CITENDEJE (2) ( IXTLAHUACA )","SANTA MARIA CITENDEJE (2) ( IXTLAHUACA )")
addOption(document.form.SubCat,"C.S. SANTA MARIA ENDARE ++ IXT - JOCOTITLAN ++","C.S. SANTA MARIA ENDARE ++ IXT - JOCOTITLAN ++")
addOption(document.form.SubCat,"C.S. SANTIAGO CASANDEJE (1) IXT - JOCOTITLAN","C.S. SANTIAGO CASANDEJE (1) IXT - JOCOTITLAN")
addOption(document.form.SubCat,"C.S. SANTIAGO CASANDEJE (2) IXT - JOCOTITLAN","C.S. SANTIAGO CASANDEJE (2) IXT - JOCOTITLAN")
addOption(document.form.SubCat,"C.S. TIACAQUE ++ IXT - JOCOTITLAN ++","C.S. TIACAQUE ++ IXT - JOCOTITLAN ++")
addOption(document.form.SubCat,"SANTIAGO YECHE (1) ( IXTLAHUACA )","SANTIAGO YECHE (1) ( IXTLAHUACA )")
addOption(document.form.SubCat,"SANTIAGO YECHE (2) ( IXTLAHUACA )","SANTIAGO YECHE (2) ( IXTLAHUACA )")
addOption(document.form.SubCat,"SAN BARTOLO MORELOS ( IXTLAHUACA )","SAN BARTOLO MORELOS ( IXTLAHUACA )")
addOption(document.form.SubCat,"BARRIO CUARTO LA LOMA (1) ( IXTLAHUACA )","BARRIO CUARTO LA LOMA (1) ( IXTLAHUACA )")
addOption(document.form.SubCat,"BARRIO CUARTO LA LOMA (2) ( IXTLAHUACA )","BARRIO CUARTO LA LOMA (2) ( IXTLAHUACA )")
addOption(document.form.SubCat,"COL. FRANCISCO I. MADERO ( IXTLAHUACA )","COL. FRANCISCO I. MADERO ( IXTLAHUACA )")
addOption(document.form.SubCat,"SAN GREGORIO MACAPEXCO ( IXTLAHUACA )","SAN GREGORIO MACAPEXCO ( IXTLAHUACA )")
addOption(document.form.SubCat,"C.S. SAN JOSE LA EPIFANIA","C.S. SAN JOSE LA EPIFANIA")
addOption(document.form.SubCat,"C.S. SAN LORENZO MALACOTA (1)","C.S. SAN LORENZO MALACOTA (1)")
addOption(document.form.SubCat,"C.S. SAN LORENZO MALACOTA (2)","C.S. SAN LORENZO MALACOTA (2)")
addOption(document.form.SubCat,"C.S. SAN LORENZO MALACOTA - ODONTOLOGICO","C.S. SAN LORENZO MALACOTA - ODONTOLOGICO")
addOption(document.form.SubCat,"C.S. SAN MARCOS TLAZALPAN (1) IXT-SAN BARTOLO MORELOS","C.S. SAN MARCOS TLAZALPAN (1) IXT-SAN BARTOLO MORELOS")
addOption(document.form.SubCat,"C.S. SAN MARCOS TLAZALPAN (2) IXT-SAN BARTOLO MORELOS","C.S. SAN MARCOS TLAZALPAN (2) IXT-SAN BARTOLO MORELOS")
addOption(document.form.SubCat,"TLALPUJAHUILLA ( IXTLAHUACA )","TLALPUJAHUILLA ( IXTLAHUACA )")
addOption(document.form.SubCat,"C.S. SAN SEBASTIAN BUENOS AIRES","C.S. SAN SEBASTIAN BUENOS AIRES")
addOption(document.form.SubCat,"C.S. SANTA CLARA DE JUAREZ","C.S. SANTA CLARA DE JUAREZ")
addOption(document.form.SubCat,"CASA DE SALUD EJIDO SN ANTONIO ** IXT-SAN BARTOLO MORELOS**","CASA DE SALUD EJIDO SN ANTONIO ** IXT-SAN BARTOLO MORELOS**")
addOption(document.form.SubCat,"CASA DE SALUD XINTE DE LAGOS (IXTLAHUACA)","CASA DE SALUD XINTE DE LAGOS (IXTLAHUACA)")
addOption(document.form.SubCat,"CASA DE SALUD BOREGE","CASA DE SALUD BOREGE")
addOption(document.form.SubCat,"CASA DE SALUD CHARCOS AZULES","CASA DE SALUD CHARCOS AZULES")
addOption(document.form.SubCat,"C.S. CALVARIO DEL CARMEN (1) IXT- SAN FELIPE DEL PROGRESO","C.S. CALVARIO DEL CARMEN (1) IXT- SAN FELIPE DEL PROGRESO")
addOption(document.form.SubCat,"C.S. CALVARIO DEL CARMEN (2) IXT - SAN FELIPE DEL PROGRESO","C.S. CALVARIO DEL CARMEN (2) IXT - SAN FELIPE DEL PROGRESO")
addOption(document.form.SubCat,"C.S. CARMEN OCOTEPEC (1) IXT-SAN FELIPE DEL PROGRESO","C.S. CARMEN OCOTEPEC (1) IXT-SAN FELIPE DEL PROGRESO")
addOption(document.form.SubCat,"C.S. CARMEN OCOTEPEC (2) IXT-SAN FELIPE DEL PROGRESO","C.S. CARMEN OCOTEPEC (2) IXT-SAN FELIPE DEL PROGRESO")
addOption(document.form.SubCat,"C.S. CARMEN OCOTEPEC (3) IXT-SAN FELIPE DEL PROGRESO","C.S. CARMEN OCOTEPEC (3) IXT-SAN FELIPE DEL PROGRESO")
addOption(document.form.SubCat,"CHICHILPA (1) (IXTLAHUACA)","CHICHILPA (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"CHICHILPA (2) (IXTLAHUACA)","CHICHILPA (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"CHOTEJE (IXTLAHUACA)","CHOTEJE (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN PEDRO EL ALTO (1) (IXTLAHUACA)","SAN PEDRO EL ALTO (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN PEDRO EL ALTO (2) (IXTLAHUACA)","SAN PEDRO EL ALTO (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN PEDRO EL ALTO (3) (IXTLAHUACA)","SAN PEDRO EL ALTO (3) (IXTLAHUACA)")
addOption(document.form.SubCat,"DOLORES HIDALGO ( IXTLAHUACA )","DOLORES HIDALGO ( IXTLAHUACA )")
addOption(document.form.SubCat,"EL TUNAL ( 1 )(IXTLAHUACA)","EL TUNAL ( 1 )(IXTLAHUACA)")
addOption(document.form.SubCat,"EL TUNAL ( 2 )(IXTLAHUACA)","EL TUNAL ( 2 )(IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. EL TUNAL NENAXI ++ IXT-SAN FELIPE DEL PROGRESO ++","C.S. EL TUNAL NENAXI ++ IXT-SAN FELIPE DEL PROGRESO ++")
addOption(document.form.SubCat,"EMILIO PORTES GIL  (1) (IXTLAHUACA)","EMILIO PORTES GIL  (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"EMILIO PORTES GIL(2) (IXTLAHUACA)","EMILIO PORTES GIL(2) (IXTLAHUACA)")
addOption(document.form.SubCat,"EMILIO PORTES GIL(3) (IXTLAHUACA)","EMILIO PORTES GIL(3) (IXTLAHUACA)")
addOption(document.form.SubCat,"FRESNO NICHI (IXTLAHUACA)","FRESNO NICHI (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. LA VIRGEN (CENTRO) ++ IXTL - SAN FELIPE DEL PROGRESO ++","C.S. LA VIRGEN (CENTRO) ++ IXTL - SAN FELIPE DEL PROGRESO ++")
addOption(document.form.SubCat,"C.S. LA VIRGEN - ODONTOLOGICO (CENTRO)++ IXT- SAN FEL. PROG.","C.S. LA VIRGEN - ODONTOLOGICO (CENTRO)++ IXT- SAN FEL. PROG.")
addOption(document.form.SubCat," PALMILLAS ** IXT - SAN FELIPE DEL PROGRESO **"," PALMILLAS ** IXT - SAN FELIPE DEL PROGRESO **")
addOption(document.form.SubCat,"C.S. PURISIMA CONCEPCION MAYORAZGO (1) IXT-SAN FELIPE DEL P.","C.S. PURISIMA CONCEPCION MAYORAZGO (1) IXT-SAN FELIPE DEL P.")
addOption(document.form.SubCat,"C.S. PURISIMA CONCEPCION MAYORAZGO (2) IXT-SAN FELIPE DEL P.","C.S. PURISIMA CONCEPCION MAYORAZGO (2) IXT-SAN FELIPE DEL P.")
addOption(document.form.SubCat,"RINCON DE LOS PIRULES (IXTLAHUACA)","RINCON DE LOS PIRULES (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN AGUSTIN MEXTEPEC (1)  IXTLAHUACA","SAN AGUSTIN MEXTEPEC (1)  IXTLAHUACA")
addOption(document.form.SubCat,"SAN AGUSTIN MEXTEPEC (2)   IXTLAHUACA","SAN AGUSTIN MEXTEPEC (2)   IXTLAHUACA")
addOption(document.form.SubCat,"SAN ANTONIO MEXTEPEC(1)  IXTLAHUACA","SAN ANTONIO MEXTEPEC(1)  IXTLAHUACA")
addOption(document.form.SubCat,"SAN ANTONIO MEXTEPEC(2) IXTLAHUACA","SAN ANTONIO MEXTEPEC(2) IXTLAHUACA")
addOption(document.form.SubCat,"RIO HOYOS BUENAVISTA(1) (IXTLAHUACA)","RIO HOYOS BUENAVISTA(1) (IXTLAHUACA)")
addOption(document.form.SubCat,"RIO HOYOS BUENAVISTA(2) (IXTLAHUACA)","RIO HOYOS BUENAVISTA(2) (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. SAN ANTONIO DE LAS HUERTAS","C.S. SAN ANTONIO DE LAS HUERTAS")
addOption(document.form.SubCat,"C.S. SAN ANTONIO LA CIENEGA *IXT - SAN FELIPE DEL PROGRESO*","C.S. SAN ANTONIO LA CIENEGA *IXT - SAN FELIPE DEL PROGRESO*")
addOption(document.form.SubCat,"SAN JERONIMO BONCHETE (IXTLAHUACA)","SAN JERONIMO BONCHETE (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN JUAN COTE EJIDO ** IXT - SAN FELIPE DEL PROGRESO **","SAN JUAN COTE EJIDO ** IXT - SAN FELIPE DEL PROGRESO **")
addOption(document.form.SubCat,"SAN JERONIMO MAVATI (IXTLAHUACA)","SAN JERONIMO MAVATI (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. SAN JUAN JALPA (1) IXT-SAN FELIPE DEL PROGRESO","C.S. SAN JUAN JALPA (1) IXT-SAN FELIPE DEL PROGRESO")
addOption(document.form.SubCat,"C.S. SAN JUAN JALPA (2) IXT-SAN FELIPE DEL PROGRESO","C.S. SAN JUAN JALPA (2) IXT-SAN FELIPE DEL PROGRESO")
addOption(document.form.SubCat,"SAN MIGUEL LA LABOR (1) (IXTLAHUACA)","SAN MIGUEL LA LABOR (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN MIGUEL LA LABOR (2) (IXTLAHUACA)","SAN MIGUEL LA LABOR (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. SAN NICOLAS GUADALUPE (1) ++ IXT - SAN FELIPE DEL PROG+","C.S. SAN NICOLAS GUADALUPE (1) ++ IXT - SAN FELIPE DEL PROG+")
addOption(document.form.SubCat,"C.S. SAN NICOLAS GUADALUPE (2) ++ IXT- SAN FELIPE DEL PROG.","C.S. SAN NICOLAS GUADALUPE (2) ++ IXT- SAN FELIPE DEL PROG.")
addOption(document.form.SubCat,"C.S. SAN NICOLAS GUADALUPE (3) ++ IXTL - SAN FELIPE DEL PROG","C.S. SAN NICOLAS GUADALUPE (3) ++ IXTL - SAN FELIPE DEL PROG")
addOption(document.form.SubCat,"SAN PABLO TLALCHICHILPA (1) (IXTLAHUACA)","SAN PABLO TLALCHICHILPA (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN PABLO TLALCHICHILPA (2) (IXTLAHUACA)","SAN PABLO TLALCHICHILPA (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. SANTA ANA NICHI EJIDO ++ IXT - SAN FELIPE DEL PROGRESO ","C.S. SANTA ANA NICHI EJIDO ++ IXT - SAN FELIPE DEL PROGRESO ")
addOption(document.form.SubCat,"LA MESA ( 1 ) (IXTLAHUACA)","LA MESA ( 1 ) (IXTLAHUACA)")
addOption(document.form.SubCat,"LA MESA ( 2 ) (IXTLAHUACA)","LA MESA ( 2 ) (IXTLAHUACA)")
addOption(document.form.SubCat,"LA MESA ( 3 ) (IXTLAHUACA)","LA MESA ( 3 ) (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. SAN JOQUIN LA MILLAS (1) ++ IXT - SAN JOSE DEL RINCON +","C.S. SAN JOQUIN LA MILLAS (1) ++ IXT - SAN JOSE DEL RINCON +")
addOption(document.form.SubCat,"C.S. SAN JOQUIN LA MILLAS (2) ++ IXT - SAN JOSE DEL RINCON +","C.S. SAN JOQUIN LA MILLAS (2) ++ IXT - SAN JOSE DEL RINCON +")
addOption(document.form.SubCat,"GUADALUPE COTE","GUADALUPE COTE")
addOption(document.form.SubCat,"CASA DE SALUD EJ. DE SAN PEDRO EL ALTO 1 (IXTLAHUACA)","CASA DE SALUD EJ. DE SAN PEDRO EL ALTO 1 (IXTLAHUACA)")
addOption(document.form.SubCat,"CASA DE SALUD EJ. DE SAN PEDRO EL ALTO 2 (IXTLAHUACA)","CASA DE SALUD EJ. DE SAN PEDRO EL ALTO 2 (IXTLAHUACA)")
addOption(document.form.SubCat,"SANTA ANA NICHI CENTRO ** IXT - SAN FELIPE DEL PROGRESO **","SANTA ANA NICHI CENTRO ** IXT - SAN FELIPE DEL PROGRESO **")
addOption(document.form.SubCat,"SAN JERONIMO MAVATI PAC (IXTLAHUACA)","SAN JERONIMO MAVATI PAC (IXTLAHUACA)")
addOption(document.form.SubCat,"CASA DE SALUD EJ. LA VIRJEN (IXTLAHUACA)","CASA DE SALUD EJ. LA VIRJEN (IXTLAHUACA)")
addOption(document.form.SubCat,"CASA DE SALUD EJ. LA VIRGEN  (IXTLAHUACA)","CASA DE SALUD EJ. LA VIRGEN  (IXTLAHUACA)")
addOption(document.form.SubCat,"DIOS PADRE  ** IXT - SAN FELIPE DEL PROGRESO**","DIOS PADRE  ** IXT - SAN FELIPE DEL PROGRESO**")
addOption(document.form.SubCat,"AGUA ZARCA NICHI (IXTLAHUACA)","AGUA ZARCA NICHI (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN JUAN COTE CENTRO","SAN JUAN COTE CENTRO")
addOption(document.form.SubCat,"SAN FELIPE DEL PROGRESO, EL TUNAL ( 1 ) (IXTLAHUACA)","SAN FELIPE DEL PROGRESO, EL TUNAL ( 1 ) (IXTLAHUACA)")
addOption(document.form.SubCat,"CASA DE SALUD TEPETITLAN **IXT-SAN FELIPE DEL PROGRESO**","CASA DE SALUD TEPETITLAN **IXT-SAN FELIPE DEL PROGRESO**")
addOption(document.form.SubCat,"LAS PALOMAS ","LAS PALOMAS ")
addOption(document.form.SubCat,"C.S. AGUA ZARCA PUEBLO NUEVO ++ IXT - SAN JOSE DEL RINCON ++","C.S. AGUA ZARCA PUEBLO NUEVO ++ IXT - SAN JOSE DEL RINCON ++")
addOption(document.form.SubCat,"CASA DE SALUD EL LIJADERO","CASA DE SALUD EL LIJADERO")
addOption(document.form.SubCat,"CASA DE SALUD TRAMPA GRANDE ( IXTLAHUACA )","CASA DE SALUD TRAMPA GRANDE ( IXTLAHUACA )")
addOption(document.form.SubCat,"CASA DE SALUD TEJOCOTE DEL CENTRO ( IXTLAHUACA )","CASA DE SALUD TEJOCOTE DEL CENTRO ( IXTLAHUACA )")
addOption(document.form.SubCat,"SAN JOAQUIN DEL MONTE","SAN JOAQUIN DEL MONTE")
addOption(document.form.SubCat,"CASA DE SALUD MINITA DEL CEDRO ( IXTLAHUACA )","CASA DE SALUD MINITA DEL CEDRO ( IXTLAHUACA )")
addOption(document.form.SubCat,"CASA DE SALUD SAN MIGUEL DEL CENTRO II (IXTLAHUACA)","CASA DE SALUD SAN MIGUEL DEL CENTRO II (IXTLAHUACA)")
addOption(document.form.SubCat,"LA ESPERANZA","LA ESPERANZA")
addOption(document.form.SubCat,"AGUA ZARCA PUEBLO NUEVO PAC (1)  ( IXTLAHUACA )","AGUA ZARCA PUEBLO NUEVO PAC (1)  ( IXTLAHUACA )")
addOption(document.form.SubCat,"AGUA ZARCA PUEBLO NUEVO PAC (2)  ( IXTLAHUACA )","AGUA ZARCA PUEBLO NUEVO PAC (2)  ( IXTLAHUACA )")
addOption(document.form.SubCat,"CONCEPCION DE LA VENTA  **IXT-SN. JOSE DEL RINCON**","CONCEPCION DE LA VENTA  **IXT-SN. JOSE DEL RINCON**")
addOption(document.form.SubCat,"CONCEPCIÓN DEL MONTE (1) (IXTLAHUACA)","CONCEPCIÓN DEL MONTE (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"EJIDO DE LA SOLEDAD (IXTLAHUACA)","EJIDO DE LA SOLEDAD (IXTLAHUACA)")
addOption(document.form.SubCat," EL PINTAL (IXTLAHUACA)"," EL PINTAL (IXTLAHUACA)")
addOption(document.form.SubCat,"GUADALUPE BUENAVISTA (1) (IXTLAHUACA)","GUADALUPE BUENAVISTA (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"GUADALUPE BUENAVISTA (2) (IXTLAHUACA)","GUADALUPE BUENAVISTA (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. GUARDA DE LA LAGUNITA **IXT - SAN JOSE DEL RINCON **","C.S. GUARDA DE LA LAGUNITA **IXT - SAN JOSE DEL RINCON **")
addOption(document.form.SubCat,"C.S. GUARDA DE SAN ANTONIO BUENAVISTA (1) IXT-SAN JOSE DEL R","C.S. GUARDA DE SAN ANTONIO BUENAVISTA (1) IXT-SAN JOSE DEL R")
addOption(document.form.SubCat,"C.S. GUARDA DE SAN ANTONIO BUENAVISTA (2) IXT-SAN JOSE DEL R","C.S. GUARDA DE SAN ANTONIO BUENAVISTA (2) IXT-SAN JOSE DEL R")
addOption(document.form.SubCat,"C.S. GUARDA DE GUADALUPE","C.S. GUARDA DE GUADALUPE")
addOption(document.form.SubCat,"C.S. LAS ROSAS ** IXT - SAN JOSE DEL RINCON **","C.S. LAS ROSAS ** IXT - SAN JOSE DEL RINCON **")
addOption(document.form.SubCat,"C.S. LOS LOBOS PAC","C.S. LOS LOBOS PAC")
addOption(document.form.SubCat,"C.S. PALO AMARILLO ++ IXT - SAN JOSE DEL RINCON ++","C.S. PALO AMARILLO ++ IXT - SAN JOSE DEL RINCON ++")
addOption(document.form.SubCat,"PROVIDENCIA ( 1 ) (IXTLAHUACA)","PROVIDENCIA ( 1 ) (IXTLAHUACA)")
addOption(document.form.SubCat,"PROVIDENCIA ( 2 ) (IXTLAHUACA)","PROVIDENCIA ( 2 ) (IXTLAHUACA)")
addOption(document.form.SubCat,"RAMEJE (1) IXT-JIQUIPILCO","RAMEJE (1) IXT-JIQUIPILCO")
addOption(document.form.SubCat,"RAMEJE (2) IXT-JIQUIPILCO","RAMEJE (2) IXT-JIQUIPILCO")
addOption(document.form.SubCat,"C.S. ROSA DE PALO AMARILLO ++ IXT - SAN JOSE DEL RINCON ++","C.S. ROSA DE PALO AMARILLO ++ IXT - SAN JOSE DEL RINCON ++")
addOption(document.form.SubCat,"PURISIMA JALTEPEC(1) ( IXTLAHUACA )","PURISIMA JALTEPEC(1) ( IXTLAHUACA )")
addOption(document.form.SubCat,"PURISIMA JALTEPEC(2) ( IXTLAHUACA )","PURISIMA JALTEPEC(2) ( IXTLAHUACA )")
addOption(document.form.SubCat,"SAN ANTONIO PUEBLO NUEVO  ( IXTLAHUACA )","SAN ANTONIO PUEBLO NUEVO  ( IXTLAHUACA )")
addOption(document.form.SubCat,"SAN ANTONIO PUEBLO NUEVO ( 2) ( IXTLAHUACA )","SAN ANTONIO PUEBLO NUEVO ( 2) ( IXTLAHUACA )")
addOption(document.form.SubCat,"C.S. SAN FELIPE DE JESUS (1)","C.S. SAN FELIPE DE JESUS (1)")
addOption(document.form.SubCat,"C.S. SAN FELIPE DE JESUS (2)","C.S. SAN FELIPE DE JESUS (2)")
addOption(document.form.SubCat,"SAN JUAN PALO SECO ** IXT - SAN JOSE DEL RINCON **","SAN JUAN PALO SECO ** IXT - SAN JOSE DEL RINCON **")
addOption(document.form.SubCat,"SAN MIGUEL AGUA BENDITA  ( IXTLAHUACA )","SAN MIGUEL AGUA BENDITA  ( IXTLAHUACA )")
addOption(document.form.SubCat,"SAN MIGUEL DEL CENTRO ( 1 ) (IXTLAHUACA)","SAN MIGUEL DEL CENTRO ( 1 ) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN MIGUEL DEL CENTRO ( 2 ) (IXTLAHUACA)","SAN MIGUEL DEL CENTRO ( 2 ) (IXTLAHUACA)")
addOption(document.form.SubCat,"C.S. SAN ONOFRE CENTRO","C.S. SAN ONOFRE CENTRO")
addOption(document.form.SubCat,"SANTA CRUZ DEL TEJOCOTE (1 ) (IXTLAHUACA)","SANTA CRUZ DEL TEJOCOTE (1 ) (IXTLAHUACA)")
addOption(document.form.SubCat,"SANTA CRUZ DEL TEJOCOTE (2) (IXTLAHUACA)","SANTA CRUZ DEL TEJOCOTE (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"CASA DE SALUD SAN FRANCISCO SOLO *IXT - SAN JOSE DEL RINCON*","CASA DE SALUD SAN FRANCISCO SOLO *IXT - SAN JOSE DEL RINCON*")
addOption(document.form.SubCat,"CASA DE SALUD YONDECE DEL CEDRO **IXT-SN. JOSE DEL RINCON**","CASA DE SALUD YONDECE DEL CEDRO **IXT-SN. JOSE DEL RINCON**")
addOption(document.form.SubCat,"SANTA ANA PUEBLO NUEVO (SAN DIEGO)","SANTA ANA PUEBLO NUEVO (SAN DIEGO)")
addOption(document.form.SubCat,"C.S. SAN DIEGO PUEBLO NUEVO","C.S. SAN DIEGO PUEBLO NUEVO")
addOption(document.form.SubCat,"FABRICA CONCEPCION (IXTLAHUACA)","FABRICA CONCEPCION (IXTLAHUACA)")
addOption(document.form.SubCat,"CEDRO DE LA MANZANA (1) (IXTLAHUACA)","CEDRO DE LA MANZANA (1) (IXTLAHUACA)")
addOption(document.form.SubCat,"CEDRO DE LA MANZANA (2) (IXTLAHUACA)","CEDRO DE LA MANZANA (2) (IXTLAHUACA)")
addOption(document.form.SubCat,"SAN JERONIMO DELOS DOLORES (IXTLAHUACA)","SAN JERONIMO DELOS DOLORES (IXTLAHUACA)")
}

if(document.form.Category.value == 'Jilotepec'){
//var cad1="Acura";

addOption(document.form.SubCat,"C.S. ARROYO ZARCO ++ JIL - ACULCO ++","C.S. ARROYO ZARCO ++ JIL - ACULCO ++")
addOption(document.form.SubCat,"EJIDO DE SAN JERONIMO  (JILOTEPEC)","EJIDO DE SAN JERONIMO  (JILOTEPEC)")
addOption(document.form.SubCat,"EL AZAFRAN ( 1 ) (JILOTEPEC)","EL AZAFRAN ( 1 ) (JILOTEPEC)")
addOption(document.form.SubCat,"EL AZAFRAN ( 2 ) (JILOTEPEC)","EL AZAFRAN ( 2 ) (JILOTEPEC)")
addOption(document.form.SubCat,"C.S. FONDO ++ JIL - ACULCO ++","C.S. FONDO ++ JIL - ACULCO ++")
addOption(document.form.SubCat,"C.S. LA CONCEPCION ++ JIL - ACULCO ++","C.S. LA CONCEPCION ++ JIL - ACULCO ++")
addOption(document.form.SubCat,"U.M. SAN JOAQUIN COSCOMATEPEC (1) (JILOTEPEC)","U.M. SAN JOAQUIN COSCOMATEPEC (1) (JILOTEPEC)")
addOption(document.form.SubCat,"SAN LUCAS TOTOLMALAYA 1 (JILOTEPEC)","SAN LUCAS TOTOLMALAYA 1 (JILOTEPEC)")
addOption(document.form.SubCat,"SAN MARTIN EJIDO (JILOTEPEC)","SAN MARTIN EJIDO (JILOTEPEC)")
addOption(document.form.SubCat,"C.S. SAN PEDRO DENXHI (1) JIL-ACULCO","C.S. SAN PEDRO DENXHI (1) JIL-ACULCO")
addOption(document.form.SubCat,"C.S. SAN PEDRO DENXHI (2) JIL-ACULCO","C.S. SAN PEDRO DENXHI (2) JIL-ACULCO")
addOption(document.form.SubCat,"SANTA ANA MATLAVAT (JILOTEPEC)","SANTA ANA MATLAVAT (JILOTEPEC)")
addOption(document.form.SubCat,"C.S. SANTIAGO OXTHOC TOXHIE ++ JIL - ACULCO ++","C.S. SANTIAGO OXTHOC TOXHIE ++ JIL - ACULCO ++")
addOption(document.form.SubCat,"CASA DE SALUD BAÑE (JILOTEPEC)","CASA DE SALUD BAÑE (JILOTEPEC)")
addOption(document.form.SubCat,"GUNYO PONIENTE (SAN JOSE GUNYO)  (JILOTEPEC)","GUNYO PONIENTE (SAN JOSE GUNYO)  (JILOTEPEC)")
addOption(document.form.SubCat,"EL MOGOTE (1) (JILOTEPEC)","EL MOGOTE (1) (JILOTEPEC)")
addOption(document.form.SubCat,"EL MOGOTE (2) (JILOTEPEC)","EL MOGOTE (2) (JILOTEPEC)")
addOption(document.form.SubCat,"CASA DE SALUD SAN LUCAS 3° CUARTEL (1) JIL-ACULCO","CASA DE SALUD SAN LUCAS 3° CUARTEL (1) JIL-ACULCO")
addOption(document.form.SubCat,"CASA DE SALUD SAN LUCAS 3° CUARTEL (2) JIL-JILOTEPEC","CASA DE SALUD SAN LUCAS 3° CUARTEL (2) JIL-JILOTEPEC")
addOption(document.form.SubCat,"CASA DE SALUD EL JAZMIN ( EL ZETHE) (1) JIL-ACULCO","CASA DE SALUD EL JAZMIN ( EL ZETHE) (1) JIL-ACULCO")
addOption(document.form.SubCat,"CASA DE SALUD EL JAZMIN ( EL ZETHE) (2) JIL - ACULCO","CASA DE SALUD EL JAZMIN ( EL ZETHE) (2) JIL - ACULCO")
addOption(document.form.SubCat,"SANTA MARIA NATIVITAS ( 1 )  JILOTEPEC ACULCO ","SANTA MARIA NATIVITAS ( 1 )  JILOTEPEC ACULCO ")
addOption(document.form.SubCat,"SANTA MARIA NATIVITAS ( 2 ) JILOTEPEC ACULCO ","SANTA MARIA NATIVITAS ( 2 ) JILOTEPEC ACULCO ")
addOption(document.form.SubCat,"SAN JOAQUIN COSCOMATEPEC (JILOTEPEC)","SAN JOAQUIN COSCOMATEPEC (JILOTEPEC)")
addOption(document.form.SubCat,"DONGU (1) JIL-CHAPA DE MOTA","DONGU (1) JIL-CHAPA DE MOTA")
addOption(document.form.SubCat,"DONGU (2) JIL-CHAPA DE MOTA","DONGU (2) JIL-CHAPA DE MOTA")
addOption(document.form.SubCat,"LA LADERA ( 1 ) (JILOTEPEC)","LA LADERA ( 1 ) (JILOTEPEC)")
addOption(document.form.SubCat,"LA PALMA **JIL-CHAPA DE MOTA**","LA PALMA **JIL-CHAPA DE MOTA**")
addOption(document.form.SubCat,"C.S. MACAVACA ** JIL - CHAPA DE MOTA **","C.S. MACAVACA ** JIL - CHAPA DE MOTA **")
addOption(document.form.SubCat,"SAN FELIPE COAMANGO (1) JIL-CHAPA DE MOTA","SAN FELIPE COAMANGO (1) JIL-CHAPA DE MOTA")
addOption(document.form.SubCat,"SAN FELIPE COAMANGO (2) JIL-CHAPA DE MOTA","SAN FELIPE COAMANGO (2) JIL-CHAPA DE MOTA")
addOption(document.form.SubCat,"SAN FRANCISCO DE LAS TABLAS (JILOTEPEC)","SAN FRANCISCO DE LAS TABLAS (JILOTEPEC)")
addOption(document.form.SubCat,"SAN GABRIEL **JIL-CHAPA DE MOTA**","SAN GABRIEL **JIL-CHAPA DE MOTA**")
addOption(document.form.SubCat,"SAN JUAN TUXTEPEC(1) (JILOTEPEC)","SAN JUAN TUXTEPEC(1) (JILOTEPEC)")
addOption(document.form.SubCat,"SAN JUAN TUXTEPEC(2) (JILOTEPEC)","SAN JUAN TUXTEPEC(2) (JILOTEPEC)")
addOption(document.form.SubCat,"LA LADERA ( 2 ) (JILOTEPEC)","LA LADERA ( 2 ) (JILOTEPEC)")
addOption(document.form.SubCat,"AGUA ESCONDIDA 1 (JILOTEPEC)","AGUA ESCONDIDA 1 (JILOTEPEC)")
addOption(document.form.SubCat,"AGUA ESCONDIDA 2 (JILOTEPEC)","AGUA ESCONDIDA 2 (JILOTEPEC)")
addOption(document.form.SubCat,"ALDAMA ( JILOTEPEC  )","ALDAMA ( JILOTEPEC  )")
addOption(document.form.SubCat,"C.S. CALPULALPAN (1) JIL-JILOTEPEC","C.S. CALPULALPAN (1) JIL-JILOTEPEC")
addOption(document.form.SubCat,"C.S. CALPULALPAN (2) JIL-JILOTEPEC","C.S. CALPULALPAN (2) JIL-JILOTEPEC")
addOption(document.form.SubCat,"C.S. CANALEJAS (1) ** JIL - JILOTEPEC **","C.S. CANALEJAS (1) ** JIL - JILOTEPEC **")
addOption(document.form.SubCat,"C.S. CANALEJAS (2) ** JIL - JILOTEPEC **","C.S. CANALEJAS (2) ** JIL - JILOTEPEC **")
addOption(document.form.SubCat,"C.S. DOXHICHO (1) JIL - JILOTEPEC","C.S. DOXHICHO (1) JIL - JILOTEPEC")
addOption(document.form.SubCat,"C.S. DOXHICHO (2) JIL - JILOTEPEC","C.S. DOXHICHO (2) JIL - JILOTEPEC")
addOption(document.form.SubCat,"C.S. EL HUIZACHE ++ JIL - JILOTEPEC ++","C.S. EL HUIZACHE ++ JIL - JILOTEPEC ++")
addOption(document.form.SubCat,"EL ROSAL (JILOTEPEC)","EL ROSAL (JILOTEPEC)")
addOption(document.form.SubCat,"LA COMUNIDAD (JILOTEPEC)","LA COMUNIDAD (JILOTEPEC)")
addOption(document.form.SubCat,"LAS HUERTAS(1) (JILOTEPEC)","LAS HUERTAS(1) (JILOTEPEC)")
addOption(document.form.SubCat,"LAS HUERTAS(2) (JILOTEPEC)","LAS HUERTAS(2) (JILOTEPEC)")
addOption(document.form.SubCat,"C.S. SAN JUAN ACAZUCHITLAN ++ JIL - JILOTEPEC ++","C.S. SAN JUAN ACAZUCHITLAN ++ JIL - JILOTEPEC ++")
addOption(document.form.SubCat,"SAN LORENZO NENAMICOYAN  ( JILOTEPEC )","SAN LORENZO NENAMICOYAN  ( JILOTEPEC )")
addOption(document.form.SubCat,"SAN LORENZO OCTEYUCO EJIDO (JILOTEPEC)","SAN LORENZO OCTEYUCO EJIDO (JILOTEPEC)")
addOption(document.form.SubCat,"EL MATAXHI **JIL-JILOTEPEC ( UNIDAD MOVIL )","EL MATAXHI **JIL-JILOTEPEC ( UNIDAD MOVIL )")
addOption(document.form.SubCat,"SAN MARTIN TUCHICULTLAPILCO  (JILOTEPEC)","SAN MARTIN TUCHICULTLAPILCO  (JILOTEPEC)")
addOption(document.form.SubCat,"C.S. SAN MIGUEL DE LA VICTORIA ++ JIL-JILOTEPEC ++","C.S. SAN MIGUEL DE LA VICTORIA ++ JIL-JILOTEPEC ++")
addOption(document.form.SubCat,"SANTIAGO OXTHOC (1) JIL-JILOTEPEC","SANTIAGO OXTHOC (1) JIL-JILOTEPEC")
addOption(document.form.SubCat,"SANTIAGO OXTHOC (2) JIL-JILOTEPEC","SANTIAGO OXTHOC (2) JIL-JILOTEPEC")
addOption(document.form.SubCat,"TIUPA ( JILOTEPEC )","TIUPA ( JILOTEPEC )")
addOption(document.form.SubCat,"XHIMOJAY (JILOTEPEC)","XHIMOJAY (JILOTEPEC)")
addOption(document.form.SubCat,"DEVISADERO FRESNO ( 2 ) (JILOTEPEC)","DEVISADERO FRESNO ( 2 ) (JILOTEPEC)")
addOption(document.form.SubCat,"SAN JOSE DEGUEDO ( 2 ) (JILOTEPEC)","SAN JOSE DEGUEDO ( 2 ) (JILOTEPEC)")
addOption(document.form.SubCat,"CASA DE SALUD JURICA (1) (JILOTEPEC)","CASA DE SALUD JURICA (1) (JILOTEPEC)")
addOption(document.form.SubCat,"CASA DE SALUD JURICA ( 2 ) (JILOTEPEC)","CASA DE SALUD JURICA ( 2 ) (JILOTEPEC)")
addOption(document.form.SubCat,"CASA DE SALUD RINCON DE TEUPA  ( JILOTEPEC )","CASA DE SALUD RINCON DE TEUPA  ( JILOTEPEC )")
addOption(document.form.SubCat,"CASA DE SALUD MANZANAS  (JILOTEPEC)","CASA DE SALUD MANZANAS  (JILOTEPEC)")
addOption(document.form.SubCat,"JILOTEPEC UNIDAD MOVIL ( JILOTEPEC )","JILOTEPEC UNIDAD MOVIL ( JILOTEPEC )")
addOption(document.form.SubCat,"SAN LORENZO OCTEYUCO PUEBLO ( JILOTEPEC )","SAN LORENZO OCTEYUCO PUEBLO ( JILOTEPEC )")
addOption(document.form.SubCat,"CELAYITA  (JILOTEPEC)","CELAYITA  (JILOTEPEC)")
addOption(document.form.SubCat,"EL ALAMO  ( 1 ) (JILOTEPEC)","EL ALAMO  ( 1 ) (JILOTEPEC)")
addOption(document.form.SubCat,"EL RUANO (JILOTEPEC)","EL RUANO (JILOTEPEC)")
addOption(document.form.SubCat,"ENCINILLAS ** JIL - POLOTITLAN **","ENCINILLAS ** JIL - POLOTITLAN **")
addOption(document.form.SubCat,"SAN ANTONIO ESCOBEDO (JILOTEPEC)","SAN ANTONIO ESCOBEDO (JILOTEPEC)")
addOption(document.form.SubCat,"SAN FRANCISCO ACAZUCHITLALTONGO ( 1 ) (JILOTEPEC)","SAN FRANCISCO ACAZUCHITLALTONGO ( 1 ) (JILOTEPEC)")
addOption(document.form.SubCat,"SAN JOSE DEGUEDO ( 1 ) (JILOTEPEC)","SAN JOSE DEGUEDO ( 1 ) (JILOTEPEC)")
addOption(document.form.SubCat,"DEVISADERO FRESNO ( 1 ) (JILOTEPEC)","DEVISADERO FRESNO ( 1 ) (JILOTEPEC)")
addOption(document.form.SubCat,"C.S. SAN AGUSTIN BUENAVISTA (1) ++ JIL - SOYANIQUILPAN ++","C.S. SAN AGUSTIN BUENAVISTA (1) ++ JIL - SOYANIQUILPAN ++")
addOption(document.form.SubCat,"C.S. SAN AGUSTIN BUENAVISTA (2) ++ JIL - SOYANIQUILPAN ++","C.S. SAN AGUSTIN BUENAVISTA (2) ++ JIL - SOYANIQUILPAN ++")
addOption(document.form.SubCat,"SAN JUAN DAXTHI (JILOTEPEC)","SAN JUAN DAXTHI (JILOTEPEC)")
addOption(document.form.SubCat,"HUAPANGO (JILOTEPEC)","HUAPANGO (JILOTEPEC)")
addOption(document.form.SubCat,"C.S. RINCON DE BUCIO (1) JIL - TIMILPAN","C.S. RINCON DE BUCIO (1) JIL - TIMILPAN")
addOption(document.form.SubCat,"C.S. RINCON DE BUCIO (2) JIL - TIMILPAN","C.S. RINCON DE BUCIO (2) JIL - TIMILPAN")
addOption(document.form.SubCat,"SAN ANTONIO YONDEJE **JIL-TIMILPAN**","SAN ANTONIO YONDEJE **JIL-TIMILPAN**")
addOption(document.form.SubCat,"SANTIAGUITO MAXDA **JIL-TIMILPAN**","SANTIAGUITO MAXDA **JIL-TIMILPAN**")
addOption(document.form.SubCat,"ZARAGOZA ( 1 )  (JILOTEPEC)","ZARAGOZA ( 1 )  (JILOTEPEC)")
addOption(document.form.SubCat,"ZARAGOZA ( 2 ) (JILOTEPEC)NO EXISTE","ZARAGOZA ( 2 ) (JILOTEPEC)NO EXISTE")
addOption(document.form.SubCat,"LLANO DEL ZACAPEXCO(1) (JILOTEPEC)","LLANO DEL ZACAPEXCO(1) (JILOTEPEC)")
addOption(document.form.SubCat,"LLANO DEL ZACAPEXCO(2) (JILOTEPEC)","LLANO DEL ZACAPEXCO(2) (JILOTEPEC)")
addOption(document.form.SubCat,"LOMA ALTA(1) (JILOTEPEC)","LOMA ALTA(1) (JILOTEPEC)")
addOption(document.form.SubCat,"LOMA ALTA(2) (JILOTEPEC)","LOMA ALTA(2) (JILOTEPEC)")
addOption(document.form.SubCat,"C.S. LOS ARANA","C.S. LOS ARANA")
addOption(document.form.SubCat,"MONTE DE PEÑA ( JILOTEPEC )","MONTE DE PEÑA ( JILOTEPEC )")
addOption(document.form.SubCat,"C.S. PUEBLO NUEVO (1) JIL - VILLA DEL CARBON","C.S. PUEBLO NUEVO (1) JIL - VILLA DEL CARBON")
addOption(document.form.SubCat,"C.S. PUEBLO NUEVO (2) JIL - VILLA DEL CARBON","C.S. PUEBLO NUEVO (2) JIL - VILLA DEL CARBON")
addOption(document.form.SubCat,"SAN LUIS TAXHIMAY(1) (JILOTEPEC)","SAN LUIS TAXHIMAY(1) (JILOTEPEC)")
addOption(document.form.SubCat,"SAN LUIS TAXHIMAY(2) (JILOTEPEC)","SAN LUIS TAXHIMAY(2) (JILOTEPEC)")
}
if(document.form.Category.value == 'Tejupilco'){
//var cad1="Acura";
addOption(document.form.SubCat,"BARRANCA DE ESMERALDAS (TEJUPILCO)","BARRANCA DE ESMERALDAS (TEJUPILCO)")
addOption(document.form.SubCat,"AHUACATITLAN  (TEJUPILCO)","AHUACATITLAN  (TEJUPILCO)")
addOption(document.form.SubCat,"CERRO DEL CAMPO (TEJUPILCO)","CERRO DEL CAMPO (TEJUPILCO)")
addOption(document.form.SubCat,"CINCUENTA ARROBAS (TEJUPILCO)","CINCUENTA ARROBAS (TEJUPILCO)")
addOption(document.form.SubCat,"C.S. LA GOLETA  ++ TEJ - AMATEPEC ++","C.S. LA GOLETA  ++ TEJ - AMATEPEC ++")
addOption(document.form.SubCat,"LA PAROTA  ( TEJUPILCO )","LA PAROTA  ( TEJUPILCO )")
addOption(document.form.SubCat,"PALMAR CHICO (1) (TEJUPILCO)","PALMAR CHICO (1) (TEJUPILCO)")
addOption(document.form.SubCat,"PALMAR CHICO (2) (TEJUPILCO)","PALMAR CHICO (2) (TEJUPILCO)")
addOption(document.form.SubCat,"PALMAR CHICO (3) (TEJUPILCO)","PALMAR CHICO (3) (TEJUPILCO)")
addOption(document.form.SubCat,"SALITRE PALMARILLOS (TEJUPILCO)","SALITRE PALMARILLOS (TEJUPILCO)")
addOption(document.form.SubCat,"SAN MARTIN ( TEJUPILCO )","SAN MARTIN ( TEJUPILCO )")
addOption(document.form.SubCat,"SAN MIGUEL XINACAUSTO (TEJUPILCO)","SAN MIGUEL XINACAUSTO (TEJUPILCO)")
addOption(document.form.SubCat,"C.S. SAN SIMON ++ TEJ - AMATEPEC ++","C.S. SAN SIMON ++ TEJ - AMATEPEC ++")
addOption(document.form.SubCat,"SANTIAGO AMATEPEC (TEJUPILCO)","SANTIAGO AMATEPEC (TEJUPILCO)")
addOption(document.form.SubCat,"CERRO DE LAS ANIMAS  ( TEJUPILCO )","CERRO DE LAS ANIMAS  ( TEJUPILCO )")
addOption(document.form.SubCat,"MANGO MATUZ PAC (TEJUPILCO)","MANGO MATUZ PAC (TEJUPILCO)")
addOption(document.form.SubCat,"AMATEPEC (1) (TEJUPILCO)","AMATEPEC (1) (TEJUPILCO)")
addOption(document.form.SubCat,"AMATEPEC (2) (TEJUPILCO)","AMATEPEC (2) (TEJUPILCO)")
addOption(document.form.SubCat,"AMATEPEC 3 (TEJUPILCO)","AMATEPEC 3 (TEJUPILCO)")
addOption(document.form.SubCat,"ESTANCIA VIEJA (TEJUPILCO)","ESTANCIA VIEJA (TEJUPILCO)")
addOption(document.form.SubCat,"SAN DIEGO CUENTLA (TEJUPILCO)","SAN DIEGO CUENTLA (TEJUPILCO)")
addOption(document.form.SubCat,"SAN SIMON GUERRERO (1) (TEJUPILCO)","SAN SIMON GUERRERO (1) (TEJUPILCO)")
addOption(document.form.SubCat,"SAN SIMON GUERRERO (2) (TEJUPILCO)","SAN SIMON GUERRERO (2) (TEJUPILCO)")
addOption(document.form.SubCat,"SAN GABRIEL CUENTLA ( TEJUPILCO )","SAN GABRIEL CUENTLA ( TEJUPILCO )")
addOption(document.form.SubCat,"ACAMUCHITLAN   (TEJUPILCO)","ACAMUCHITLAN   (TEJUPILCO)")
addOption(document.form.SubCat,"ALMOLOYA DE LAS GRANADAS (TEJUPILCO)","ALMOLOYA DE LAS GRANADAS (TEJUPILCO)")
addOption(document.form.SubCat,"LAS ANONAS (TEJUPILCO)","LAS ANONAS (TEJUPILCO)")
addOption(document.form.SubCat,"BEJUCOS (1) (TEJUPILCO)","BEJUCOS (1) (TEJUPILCO)")
addOption(document.form.SubCat,"BEJUCOS (2) (TEJUPILCO)","BEJUCOS (2) (TEJUPILCO)")
addOption(document.form.SubCat,"EPAZOTES (TEJUPILCO)","EPAZOTES (TEJUPILCO)")
addOption(document.form.SubCat,"LA ESTANCIA ( TEJUPILCO )","LA ESTANCIA ( TEJUPILCO )")
addOption(document.form.SubCat,"C.S.LA  LABOR DE ZARAGOZA ++TEJ-TEJUPILCO++","C.S.LA  LABOR DE ZARAGOZA ++TEJ-TEJUPILCO++")
addOption(document.form.SubCat,"LOS MELCHORES (TEJUPILCO)","LOS MELCHORES (TEJUPILCO)")
addOption(document.form.SubCat,"SAN ANDRES OCOTEPEC (TEJUPILCO)","SAN ANDRES OCOTEPEC (TEJUPILCO)")
addOption(document.form.SubCat,"C.S. PANTOJA ++ TEJ - TEJUPILCO ++","C.S. PANTOJA ++ TEJ - TEJUPILCO ++")
addOption(document.form.SubCat,"SAN LUCAS DEL MAIZ (TEJUPILCO)","SAN LUCAS DEL MAIZ (TEJUPILCO)")
addOption(document.form.SubCat,"SAN MIGUEL IXTAPAN (TEJUPILCO)","SAN MIGUEL IXTAPAN (TEJUPILCO)")
addOption(document.form.SubCat,"SAUZ DE SAN LUCAS (TEJUPILCO)","SAUZ DE SAN LUCAS (TEJUPILCO)")
addOption(document.form.SubCat,"BRIGADA A PIE MONTE DE DIOS (TEJUPILCO)","BRIGADA A PIE MONTE DE DIOS (TEJUPILCO)")
addOption(document.form.SubCat,"PUERTO DEL AIRE (TEJUPILCO) ","PUERTO DEL AIRE (TEJUPILCO) ")
addOption(document.form.SubCat,"TENERIA PUEBLO NUEVO (TEJUPILCO)","TENERIA PUEBLO NUEVO (TEJUPILCO)")
addOption(document.form.SubCat,"EL CIRIAN  (TEJUPILCO) ","EL CIRIAN  (TEJUPILCO) ")
addOption(document.form.SubCat,"LA CABECERA (TEJUPILCO)","LA CABECERA (TEJUPILCO)")
addOption(document.form.SubCat,"CIENEGUILLAS DE LABRA (TEJUPILCO)","CIENEGUILLAS DE LABRA (TEJUPILCO)")
addOption(document.form.SubCat,"LA COMUNIDAD (TEJUPILCO)","LA COMUNIDAD (TEJUPILCO)")
addOption(document.form.SubCat,"REAL DE ARRIBA (TEJUPILCO)","REAL DE ARRIBA (TEJUPILCO)")
addOption(document.form.SubCat,"SAN ANDRES DE LOS GAMA (TEJUPILCO)","SAN ANDRES DE LOS GAMA (TEJUPILCO)")
addOption(document.form.SubCat,"SAN FRANCISCO OXTOTILPAN (TEJUPILCO)","SAN FRANCISCO OXTOTILPAN (TEJUPILCO)")
addOption(document.form.SubCat,"SAN LUCAS DEL PULQUE (TEJUPILCO)","SAN LUCAS DEL PULQUE (TEJUPILCO)")
addOption(document.form.SubCat,"SAN MATEO ALMOMOLOA (TEJUPILCO)","SAN MATEO ALMOMOLOA (TEJUPILCO)")
addOption(document.form.SubCat,"SAN MIGUEL OXTOTILPAN (TEJUPILCO)","SAN MIGUEL OXTOTILPAN (TEJUPILCO)")
addOption(document.form.SubCat,"SAN PEDRO TENAYAC (1) (TEJUPILCO)","SAN PEDRO TENAYAC (1) (TEJUPILCO)")
addOption(document.form.SubCat,"SAN PEDRO TENAYAC (2) (TEJUPILCO)","SAN PEDRO TENAYAC (2) (TEJUPILCO)")
addOption(document.form.SubCat,"TEQUESQUIPAN (TEJUPILCO)","TEQUESQUIPAN (TEJUPILCO)")
addOption(document.form.SubCat,"COATEPEC **TEJ-TLATLAYA**","COATEPEC **TEJ-TLATLAYA**")
addOption(document.form.SubCat,"JUNTAS DE AZUCHIL PAC ( TEJUPILCO )","JUNTAS DE AZUCHIL PAC ( TEJUPILCO )")
addOption(document.form.SubCat,"MAYALTEPEC (TEJUPILCO)","MAYALTEPEC (TEJUPILCO)")
addOption(document.form.SubCat,"MOCTEZUMA (TEJUPILCO)","MOCTEZUMA (TEJUPILCO)")
addOption(document.form.SubCat,"NUEVO COPALTEPEC (TEJUPILCO)","NUEVO COPALTEPEC (TEJUPILCO)")
addOption(document.form.SubCat,"PALMA TORCIDA (TEJUPILCO)","PALMA TORCIDA (TEJUPILCO)")
addOption(document.form.SubCat,"PALMAR GRANDE (TEJUPILCO)","PALMAR GRANDE (TEJUPILCO)")
addOption(document.form.SubCat,"RINCON GRANDE (TEJUPILCO)","RINCON GRANDE (TEJUPILCO)")
addOption(document.form.SubCat,"SAN ANTONIO DEL ROSARIO (1) (TEJUPILCO)","SAN ANTONIO DEL ROSARIO (1) (TEJUPILCO)")
addOption(document.form.SubCat,"SAN ANTONIO DEL ROSARIO (2) (TEJUPILCO)","SAN ANTONIO DEL ROSARIO (2) (TEJUPILCO)")
addOption(document.form.SubCat,"SAN FRANCISCO DE ASIS (TEJUPILCO)","SAN FRANCISCO DE ASIS (TEJUPILCO)")
addOption(document.form.SubCat,"SAN JUAN CORRAL (TEJUPILCO)","SAN JUAN CORRAL (TEJUPILCO)")
addOption(document.form.SubCat,"SAN JUAN TETITLA (TEJUPILCO)","SAN JUAN TETITLA (TEJUPILCO)")
addOption(document.form.SubCat,"SAN MATEO   (TEJUPILCO)","SAN MATEO   (TEJUPILCO)")
addOption(document.form.SubCat,"SANTA ANA ZICATECOYAN (TEJUPILCO)","SANTA ANA ZICATECOYAN (TEJUPILCO)")
addOption(document.form.SubCat,"SANTA MARIA (TEJUPILCO)","SANTA MARIA (TEJUPILCO)")
addOption(document.form.SubCat,"TLACOCUSPAN (TEJUPILCO)","TLACOCUSPAN (TEJUPILCO)")
addOption(document.form.SubCat,"TLATLAYA (TEJUPILCO)","TLATLAYA (TEJUPILCO)")
addOption(document.form.SubCat,"CASA DE SALUD TEJUPILQUITO (TEJUPILCO)","CASA DE SALUD TEJUPILQUITO (TEJUPILCO)")
addOption(document.form.SubCat,"CERRO DEL MORADO (TEJUPILCO)","CERRO DEL MORADO (TEJUPILCO)")
addOption(document.form.SubCat,"CARAVANA HUIXTITLA (TEJUPILCO/TLATLAYA)","CARAVANA HUIXTITLA (TEJUPILCO/TLATLAYA)")
addOption(document.form.SubCat,"ANCON DE PRESA (TEJUPILCO/TLATLAYA)","ANCON DE PRESA (TEJUPILCO/TLATLAYA)")
addOption(document.form.SubCat,"SAN PEDRO LIMON (TEJUPILCO)","SAN PEDRO LIMON (TEJUPILCO)")
addOption(document.form.SubCat,"CUADRILLA DE LOPEZ (TEJUPILCO)","CUADRILLA DE LOPEZ (TEJUPILCO)")
addOption(document.form.SubCat,"CAJA DE AGUA (1) ( TEJUPILCO )","CAJA DE AGUA (1) ( TEJUPILCO )")
addOption(document.form.SubCat,"CAÑADAS DE NANCHITITLA  ( TEJUPILCO )","CAÑADAS DE NANCHITITLA  ( TEJUPILCO )")
addOption(document.form.SubCat,"CRUZ DE CLAVOS ( TEJUPILCO )","CRUZ DE CLAVOS ( TEJUPILCO )")
addOption(document.form.SubCat," EL RODEO ( TEJUPILCO )"," EL RODEO ( TEJUPILCO )")
addOption(document.form.SubCat,"VALLECITO DE CUAHUILOTES (TEJUPILCO)","VALLECITO DE CUAHUILOTES (TEJUPILCO)")
addOption(document.form.SubCat,"HERMILTEPEC (TEJUPILCO)","HERMILTEPEC (TEJUPILCO)")
addOption(document.form.SubCat,"PALO GORDO  (TEJUPILCO)","PALO GORDO  (TEJUPILCO)")
addOption(document.form.SubCat,"RANCHO VIEJO (TEJUPILCO)","RANCHO VIEJO (TEJUPILCO)")
addOption(document.form.SubCat,"EL REPARO    (TEJUPILCO)","EL REPARO    (TEJUPILCO)")
addOption(document.form.SubCat,"SAN JUAN ACATITLAN (TEJUPILCO)","SAN JUAN ACATITLAN (TEJUPILCO)")
addOption(document.form.SubCat,"SANTA CRUZ ( TEJUPILCO )","SANTA CRUZ ( TEJUPILCO )")
addOption(document.form.SubCat,"SAUZ PALO GORDO ( TEJUPILCO )","SAUZ PALO GORDO ( TEJUPILCO )")
addOption(document.form.SubCat,"TROJES (TEJUPILCO)","TROJES (TEJUPILCO)")
addOption(document.form.SubCat,"PIEDRA GRANDE (TEJUPILCO)","PIEDRA GRANDE (TEJUPILCO)")
addOption(document.form.SubCat,"CASA DE SALUD HORMIGUEROS ++ TEJ-LUVIANOS ++","CASA DE SALUD HORMIGUEROS ++ TEJ-LUVIANOS ++")
}
if(document.form.Category.value == 'Tenancingo'){
//var cad1="Acura";
addOption(document.form.SubCat,"AQUIAPAN (TENANCINGO)","AQUIAPAN (TENANCINGO)")
addOption(document.form.SubCat,"PLAN DE VIGAS(TENANCINGO)","PLAN DE VIGAS(TENANCINGO)")
addOption(document.form.SubCat,"SAN ANDRES TEPETITLAN(TENANCINGO)","SAN ANDRES TEPETITLAN(TENANCINGO)")
addOption(document.form.SubCat,"LA UNION RIVA PALACIO (TENANCINGO)","LA UNION RIVA PALACIO (TENANCINGO)")
addOption(document.form.SubCat,"SAN ANTONIO PACHUQUILLA(TENANCINGO)","SAN ANTONIO PACHUQUILLA(TENANCINGO)")
addOption(document.form.SubCat,"ACUITLAPILCO (1) TEN-COATEPEC HARINAS","ACUITLAPILCO (1) TEN-COATEPEC HARINAS")
addOption(document.form.SubCat,"ACUITLAPILCO (2) TEN-COATEPEC HARINAS","ACUITLAPILCO (2) TEN-COATEPEC HARINAS")
addOption(document.form.SubCat,"CASA DE SALUD AGUA AMARGA **TEN-COATEPEC HARINAS**","CASA DE SALUD AGUA AMARGA **TEN-COATEPEC HARINAS**")
addOption(document.form.SubCat,"AGUA BENDITA (TENANCINGO)","AGUA BENDITA (TENANCINGO)")
addOption(document.form.SubCat,"CHILTEPEC (TENANCINGO)","CHILTEPEC (TENANCINGO)")
addOption(document.form.SubCat,"COLONIA HIDALGO (SAN LUIS) (TENANCINGO)","COLONIA HIDALGO (SAN LUIS) (TENANCINGO)")
addOption(document.form.SubCat,"IXTLAHUACA DE VILLADA (TENANCINGO)","IXTLAHUACA DE VILLADA (TENANCINGO)")
addOption(document.form.SubCat,"LAS VUELTAS(TENANCINGO)","LAS VUELTAS(TENANCINGO)")
addOption(document.form.SubCat,"C.S. LLANO GRANDE","C.S. LLANO GRANDE")
addOption(document.form.SubCat,"MEYUCA DE MORELOS (TENANCINGO)","MEYUCA DE MORELOS (TENANCINGO)")
addOption(document.form.SubCat,"PIEDRAS ANCHAS (1) (TENANCINGO)","PIEDRAS ANCHAS (1) (TENANCINGO)")
addOption(document.form.SubCat,"PIEDRAS ANCHAS (2) (TENANCINGO)","PIEDRAS ANCHAS (2) (TENANCINGO)")
addOption(document.form.SubCat,"PLAN DE SAN FRANCISCO (TENANCINGO)","PLAN DE SAN FRANCISCO (TENANCINGO)")
addOption(document.form.SubCat,"CASA DE SALUD POTRERO REDONDO (TENANCINGO)","CASA DE SALUD POTRERO REDONDO (TENANCINGO)")
addOption(document.form.SubCat,"AHUACATITLAN (TENANCINGO)","AHUACATITLAN (TENANCINGO)")
addOption(document.form.SubCat,"LLANO DE LA UNION  ( 1 ) (TENANCINGO)","LLANO DE LA UNION  ( 1 ) (TENANCINGO)")
addOption(document.form.SubCat,"SAN ALEJO (TENANCINGO)","SAN ALEJO (TENANCINGO)")
addOption(document.form.SubCat,"C.S. SAN MIGUEL LADERAS ** TEN - IXTAPAN DE LA SAL **","C.S. SAN MIGUEL LADERAS ** TEN - IXTAPAN DE LA SAL **")
addOption(document.form.SubCat,"CASA DE SALUD SN JOSÉ EL ARENAL","CASA DE SALUD SN JOSÉ EL ARENAL")
addOption(document.form.SubCat,"CASA DE SALUD TECOMATEPEC (TENANCINGO)","CASA DE SALUD TECOMATEPEC (TENANCINGO)")
addOption(document.form.SubCat,"CASA DE SALUD MALINALTENANGO(TENANCINGO)","CASA DE SALUD MALINALTENANGO(TENANCINGO)")
addOption(document.form.SubCat,"CASA DE SALUD SANTA ANA XOCHUCA ( TENANCINGO )","CASA DE SALUD SANTA ANA XOCHUCA ( TENANCINGO )")
addOption(document.form.SubCat,"CASA DE SALUD LA PACHUQUILLA (TENANCINGO)","CASA DE SALUD LA PACHUQUILLA (TENANCINGO)")
addOption(document.form.SubCat,"CHALMA ( 1 )  ( TENANCINGO )","CHALMA ( 1 )  ( TENANCINGO )")
addOption(document.form.SubCat,"CHALMA ( 2 )  ( TENANCINGO )","CHALMA ( 2 )  ( TENANCINGO )")
addOption(document.form.SubCat,"EL PLATANAR (TENANCINGO)","EL PLATANAR (TENANCINGO)")
addOption(document.form.SubCat,"NOXTEPEC DE ZARAGOZA (TENANCINGO)","NOXTEPEC DE ZARAGOZA (TENANCINGO)")
addOption(document.form.SubCat,"SAN ANDRES NICOLAS BRAVO (TENANCINGO)","SAN ANDRES NICOLAS BRAVO (TENANCINGO)")
addOption(document.form.SubCat,"SAN SIMON EL ALTO (TENANCINGO)","SAN SIMON EL ALTO (TENANCINGO)")
addOption(document.form.SubCat,"CASA DE SALUD COL. ALDAMA (TENANCINGO) ","CASA DE SALUD COL. ALDAMA (TENANCINGO) ")
addOption(document.form.SubCat,"CASA DE SALUD JALMOLONGA ( TENANCINGO )","CASA DE SALUD JALMOLONGA ( TENANCINGO )")
addOption(document.form.SubCat,"CASA DE SALUD LA LADRILLERA (TENANCINGO)","CASA DE SALUD LA LADRILLERA (TENANCINGO)")
addOption(document.form.SubCat,"AHUATENCO ( TENANCINGO )","AHUATENCO ( TENANCINGO )")
addOption(document.form.SubCat,"CHALMITA (SAN AMBROSIO ) (TENANCINGO)","CHALMITA (SAN AMBROSIO ) (TENANCINGO)")
addOption(document.form.SubCat,"OCUILAN DE ARTEAGA (1) (TENANCINGO)","OCUILAN DE ARTEAGA (1) (TENANCINGO)")
addOption(document.form.SubCat,"OCUILAN DE ARTEAGA (2) (TENANCINGO)","OCUILAN DE ARTEAGA (2) (TENANCINGO)")
addOption(document.form.SubCat,"SAN JUAN ATZINGO (TENANCINGO)","SAN JUAN ATZINGO (TENANCINGO)")
addOption(document.form.SubCat,"SANTA LUCIA (TENANCINGO)","SANTA LUCIA (TENANCINGO)")
addOption(document.form.SubCat,"SANTA MARTHA (TENANCINGO)","SANTA MARTHA (TENANCINGO)")
addOption(document.form.SubCat,"SANTA MONICA (TENANCINGO)","SANTA MONICA (TENANCINGO)")
addOption(document.form.SubCat,"TEZONTEPEC SANTA CRUZ (TENANCIMGO)","TEZONTEPEC SANTA CRUZ (TENANCIMGO)")
addOption(document.form.SubCat,"CASA DE SALUD LA LAGUNITA (TENANCINGO)","CASA DE SALUD LA LAGUNITA (TENANCINGO)")
addOption(document.form.SubCat,"C.S. LAGUNA SECA","C.S. LAGUNA SECA")
addOption(document.form.SubCat,"C.S. METLALTEPEC","C.S. METLALTEPEC")
addOption(document.form.SubCat,"POTZONTEPEC (TENANCINGO)","POTZONTEPEC (TENANCINGO)")
addOption(document.form.SubCat,"C.S. PUENTECILLAS ++ TEN - SULTEPEC ++","C.S. PUENTECILLAS ++ TEN - SULTEPEC ++")
addOption(document.form.SubCat,"CASA DE SALUD PUERTO FRIO (TENANCINGO)","CASA DE SALUD PUERTO FRIO (TENANCINGO)")
addOption(document.form.SubCat,"RINCON CRISTO (TENANCINGO)","RINCON CRISTO (TENANCINGO)")
addOption(document.form.SubCat,"SAN MIGUEL TOTOLMALOYA **TEN-SULTEPEC**","SAN MIGUEL TOTOLMALOYA **TEN-SULTEPEC**")
addOption(document.form.SubCat,"C.S. SAN PEDRO HUEYAHUALCO ++ TEN - SULTEPEC ++","C.S. SAN PEDRO HUEYAHUALCO ++ TEN - SULTEPEC ++")
addOption(document.form.SubCat,"SANTA CRUZ TEXCALAPA ( TENANCINGO )","SANTA CRUZ TEXCALAPA ( TENANCINGO )")
addOption(document.form.SubCat,"SANTO TOMAS DE LAS FLORES(TENANCINGO)","SANTO TOMAS DE LAS FLORES(TENANCINGO)")
addOption(document.form.SubCat,"SULTEPEQUITO ( TENANCINGO )","SULTEPEQUITO ( TENANCINGO )")
addOption(document.form.SubCat,"CASA DE SALUD SANTA ANITA **TEN-TEXCALTITLAN**","CASA DE SALUD SANTA ANITA **TEN-TEXCALTITLAN**")
addOption(document.form.SubCat,"C.S. MANANTIAL DE GUADALUPE (TENANCINGO)","C.S. MANANTIAL DE GUADALUPE (TENANCINGO)")
addOption(document.form.SubCat,"C.S. ATZUMPA","C.S. ATZUMPA")
addOption(document.form.SubCat,"CASA DE SALUD LAS TROJES (TENANCINGO)","CASA DE SALUD LAS TROJES (TENANCINGO)")
addOption(document.form.SubCat,"C.S. EL CARMEN","C.S. EL CARMEN")
addOption(document.form.SubCat,"C.S. SAN JUAN XOCHIACA ** TEN - TENANCINGO **","C.S. SAN JUAN XOCHIACA ** TEN - TENANCINGO **")
addOption(document.form.SubCat,"C.S. SANTA ANA IXTLAHUATZINGO ++ TEN - TENANCINGO ++","C.S. SANTA ANA IXTLAHUATZINGO ++ TEN - TENANCINGO ++")
addOption(document.form.SubCat,"C.S. TECOMATLAN","C.S. TECOMATLAN")
addOption(document.form.SubCat,"ZEPAYAUTLA (1) TEN-TENANCINGO","ZEPAYAUTLA (1) TEN-TENANCINGO")
addOption(document.form.SubCat,"CASA DE SALUD SAN ANTONIO AGUA BENDITA  (TENANCINGO)","CASA DE SALUD SAN ANTONIO AGUA BENDITA  (TENANCINGO)")
addOption(document.form.SubCat,"CASA DE SALUD SAN MARTIN COAPAXTONGO  ++ TEN - TENANCINGO ++","CASA DE SALUD SAN MARTIN COAPAXTONGO  ++ TEN - TENANCINGO ++")
addOption(document.form.SubCat,"CASA DE SALUD SAN NICOLAS","CASA DE SALUD SAN NICOLAS")
addOption(document.form.SubCat,"CASA DE SALUD TEPETZINGO ++ TEN - TENANCINGO ++","CASA DE SALUD TEPETZINGO ++ TEN - TENANCINGO ++")
addOption(document.form.SubCat,"SAN JOSE CHALMITA  ( TENANCINGO )","SAN JOSE CHALMITA  ( TENANCINGO )")
addOption(document.form.SubCat,"CARBAJAL (TENANCINGO)","CARBAJAL (TENANCINGO)")
addOption(document.form.SubCat,"HUAYATENCO (TENANCINGO)","HUAYATENCO (TENANCINGO)")
addOption(document.form.SubCat,"PALMILLAS (TENANCINGO)","PALMILLAS (TENANCINGO)")
addOption(document.form.SubCat,"C.S. SAN AGUSTIN ** TEN - TEXCALTITLAN **","C.S. SAN AGUSTIN ** TEN - TEXCALTITLAN **")
addOption(document.form.SubCat,"CASA DE SALUD ARROYO SECO **TEN-TEXCALTITLAN**","CASA DE SALUD ARROYO SECO **TEN-TEXCALTITLAN**")
addOption(document.form.SubCat,"CASA DE SALUD ACATITLAN **TEN-TEXCALTITLAN**","CASA DE SALUD ACATITLAN **TEN-TEXCALTITLAN**")
addOption(document.form.SubCat,"CASA DE SALUD TEXCAPILLA  **TEN-TEXCALTITLAN**","CASA DE SALUD TEXCAPILLA  **TEN-TEXCALTITLAN**")
addOption(document.form.SubCat,"CASA DE SALUD SAN ISIDRO XOCHITLA **TEN-TEXCALTITLAN**","CASA DE SALUD SAN ISIDRO XOCHITLA **TEN-TEXCALTITLAN**")
addOption(document.form.SubCat,"CASA DE SALUD VENTA MORALES ** TEN - TEXCALTITLAN **","CASA DE SALUD VENTA MORALES ** TEN - TEXCALTITLAN **")
addOption(document.form.SubCat,"EL TERRERO (TENANCINGO)","EL TERRERO (TENANCINGO)")
addOption(document.form.SubCat,"CASA DE SALUD LOS AMATES ** TEN - TONATICO **","CASA DE SALUD LOS AMATES ** TEN - TONATICO **")
addOption(document.form.SubCat,"CASA DE SALUD LA PUERTA DE SANTIAGO ** TEN - TONATICO **","CASA DE SALUD LA PUERTA DE SANTIAGO ** TEN - TONATICO **")
addOption(document.form.SubCat,"CASA DE SALUD LA AUDIENCIA (TENANCINGO)","CASA DE SALUD LA AUDIENCIA (TENANCINGO)")
addOption(document.form.SubCat,"CASA DE SALUD SAN LUCAS **TEN-VILLA GUERRERO**","CASA DE SALUD SAN LUCAS **TEN-VILLA GUERRERO**")
addOption(document.form.SubCat,"CASA DE SALUD BUENA VISTA **TEN-VILLA GUERRERO**","CASA DE SALUD BUENA VISTA **TEN-VILLA GUERRERO**")
addOption(document.form.SubCat,"CASA DE SALUD JESUS CARRANZA **TEN-VILLA GUERRERO**","CASA DE SALUD JESUS CARRANZA **TEN-VILLA GUERRERO**")
addOption(document.form.SubCat,"CASA DE SALUD SAN DIEGO","CASA DE SALUD SAN DIEGO")
addOption(document.form.SubCat,"CASA DE SALUD SAN MIGUEL  ( TENANCINGO )","CASA DE SALUD SAN MIGUEL  ( TENANCINGO )")
addOption(document.form.SubCat,"C.S. EJIDO DE LA FINCA ++ TEN - VILLA GUERRERO ++","C.S. EJIDO DE LA FINCA ++ TEN - VILLA GUERRERO ++")
addOption(document.form.SubCat,"PORFIRIO DIAZ (TENANCINGO)","PORFIRIO DIAZ (TENANCINGO)")
addOption(document.form.SubCat,"SAN BARTOLOME (1) (TENANCINGO)","SAN BARTOLOME (1) (TENANCINGO)")
addOption(document.form.SubCat,"SAN BARTOLOME (2) (TENANCINGO)","SAN BARTOLOME (2) (TENANCINGO)")
addOption(document.form.SubCat,"SAN GASPAR (VILLA GUERRERO) (TENANCINGO)","SAN GASPAR (VILLA GUERRERO) (TENANCINGO)")
addOption(document.form.SubCat,"SAN JOSE  (1) (TENANCINGO)","SAN JOSE  (1) (TENANCINGO)")
addOption(document.form.SubCat,"SAN JOSE ( 2 ) (TENANCINGO)","SAN JOSE ( 2 ) (TENANCINGO)")
addOption(document.form.SubCat,"SANTIAGO OXTOTITLAN (TENANCINGO)","SANTIAGO OXTOTITLAN (TENANCINGO)")
addOption(document.form.SubCat,"TOTOLMAJAC (TENANCINGO)","TOTOLMAJAC (TENANCINGO)")
addOption(document.form.SubCat,"ZACANGO (TENANCINGO)","ZACANGO (TENANCINGO)")
addOption(document.form.SubCat,"CASA DE SALUD LA FINCA ++ TEN - VILLA GUERRERO ++","CASA DE SALUD LA FINCA ++ TEN - VILLA GUERRERO ++")
addOption(document.form.SubCat,"CASA DE SALUD EL CARMEN ** TEN - VILLA GUERRERO **","CASA DE SALUD EL CARMEN ** TEN - VILLA GUERRERO **")
addOption(document.form.SubCat,"CASA DE SALUD SAN MATEO COAPEXCO (TENANCINGO)","CASA DE SALUD SAN MATEO COAPEXCO (TENANCINGO)")
addOption(document.form.SubCat,"CASA DE SALUD SANTA MARIA ARANZAZU (TENANCINGO)","CASA DE SALUD SANTA MARIA ARANZAZU (TENANCINGO)")
addOption(document.form.SubCat,"EL DURAZNO (TENANCINGO)","EL DURAZNO (TENANCINGO)")
addOption(document.form.SubCat,"HUITZOLTEPEC (TENANCINGO)","HUITZOLTEPEC (TENANCINGO)")
addOption(document.form.SubCat,"LA COFRADIA (TENANCINGO)","LA COFRADIA (TENANCINGO)")
addOption(document.form.SubCat,"C.S. MAMATLA ++ TEN - ZACUALPAN ++ ","C.S. MAMATLA ++ TEN - ZACUALPAN ++ ")
addOption(document.form.SubCat,"PIEDRA PARADA ( TENANCINGO )","PIEDRA PARADA ( TENANCINGO )")
addOption(document.form.SubCat,"TEOCALCINGO (TENANCINGO)","TEOCALCINGO (TENANCINGO)")
addOption(document.form.SubCat,"ZACUALPILLA ( TENANCINGO )","ZACUALPILLA ( TENANCINGO )")
addOption(document.form.SubCat,"COLOXTITLAN **TEN-ZACUALPAN**","COLOXTITLAN **TEN-ZACUALPAN**")
addOption(document.form.SubCat,"CASA DE SALUD AYOTUXCO (TENANCINGO)","CASA DE SALUD AYOTUXCO (TENANCINGO)")
addOption(document.form.SubCat,"CASA DE SALUD GAMA DE LA PAZ (TENANCINGO)","CASA DE SALUD GAMA DE LA PAZ (TENANCINGO)")
addOption(document.form.SubCat,"CASA DE SALUD RIO FLORIDO 1era. SECCION (TENANCINGO)","CASA DE SALUD RIO FLORIDO 1era. SECCION (TENANCINGO)")
addOption(document.form.SubCat,"C.S. MORA ++ TEN - ZACUALPAN ++","C.S. MORA ++ TEN - ZACUALPAN ++")
addOption(document.form.SubCat,"GUADALUPE VICTORIA (1) TEN-ZUMPAHUACAN","GUADALUPE VICTORIA (1) TEN-ZUMPAHUACAN")
addOption(document.form.SubCat,"SAN ANTONIO GUADALUPE (TENANCINGO)","SAN ANTONIO GUADALUPE (TENANCINGO)")
addOption(document.form.SubCat,"SAN GASPAR ( TENANCINGO )","SAN GASPAR ( TENANCINGO )")
addOption(document.form.SubCat,"C.S. SAN ISIDRO CHIAPA ** TEN - ZUMPAHUACAN **","C.S. SAN ISIDRO CHIAPA ** TEN - ZUMPAHUACAN **")
addOption(document.form.SubCat,"C.S. SAN PABLO TEJALPA (1) TEN - ZUMPAHUACAN","C.S. SAN PABLO TEJALPA (1) TEN - ZUMPAHUACAN")
addOption(document.form.SubCat,"C.S. SAN PABLO TEJALPA (2) TEN - ZUMPAHUACAN","C.S. SAN PABLO TEJALPA (2) TEN - ZUMPAHUACAN")
addOption(document.form.SubCat,"CASA DE SALUD SAN PEDRO GUADALUPE ** TEN-ZUMPAHUACAN**","CASA DE SALUD SAN PEDRO GUADALUPE ** TEN-ZUMPAHUACAN**")
addOption(document.form.SubCat,"CASA DE SALUD AHUATZINGO  (TENANCINGO)","CASA DE SALUD AHUATZINGO  (TENANCINGO)")
}
if(document.form.Category.value == 'Tenango del Valle'){
//var cad1="Acura";
addOption(document.form.SubCat,"SANTA MARIA NATIVITAS ( 1 ) ( TENANGO DEL VALLE )","SANTA MARIA NATIVITAS ( 1 ) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SANTA MARIA NATIVITAS ( 2 ) ( TENANGO DEL VALLE )","SANTA MARIA NATIVITAS ( 2 ) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"CALIMAYA NORTE ( TENANGO DEL VALLE )","CALIMAYA NORTE ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SAN LORENZO CUAUHTENCO (TENANGO DEL VALLE)","SAN LORENZO CUAUHTENCO (TENANGO DEL VALLE)")
addOption(document.form.SubCat,"CALIMAYA SUR (1) ( TENANGO DEL VALLE )","CALIMAYA SUR (1) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"CALIMAYA SUR (2) ( TENANGO DEL VALLE )","CALIMAYA SUR (2) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"CALIMAYA SUR (3) ( TENANGO DEL VALLE )","CALIMAYA SUR (3) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"ZARAGOZA DE GUADALUPE (1) ( TENANGO DEL VALLE )","ZARAGOZA DE GUADALUPE (1) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"ZARAGOZA DE GUADALUPE (2) ( TENANGO DEL VALLE )","ZARAGOZA DE GUADALUPE (2) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"C.S. LA CONCEPCION COATIPAC ++ T. DEL VALLE - CALIMAYA ++","C.S. LA CONCEPCION COATIPAC ++ T. DEL VALLE - CALIMAYA ++")
addOption(document.form.SubCat,"CASA DE SALUD SAN DIEGO LA HYERTA","CASA DE SALUD SAN DIEGO LA HYERTA")
addOption(document.form.SubCat,"SAN NICOLAS TLAZALA ( TENANGO DEL VALLE )","SAN NICOLAS TLAZALA ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SAN MIGUEL ALMAYA ( TENANGO DEL VALLE )","SAN MIGUEL ALMAYA ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SANTA MARIA CUAXUXCO ( TENANGO DEL VALLE )","SANTA MARIA CUAXUXCO ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"C.S. SAN JUAN TOMASQUILLO (1) T. DEL VALLE - XALATLACO","C.S. SAN JUAN TOMASQUILLO (1) T. DEL VALLE - XALATLACO")
addOption(document.form.SubCat,"C.S. SAN JUAN TOMASQUILLO (2) T. DEL VALLE - XALATLACO","C.S. SAN JUAN TOMASQUILLO (2) T. DEL VALLE - XALATLACO")
addOption(document.form.SubCat,"EL GUARDA DE GUERRERO ( TENANGO DEL VALLE )","EL GUARDA DE GUERRERO ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"TECHUCHULCO (1) ( TENANGO DEL VALLE )","TECHUCHULCO (1) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"TECHUCHULCO (2) (TENANGO DEL VALLE)","TECHUCHULCO (2) (TENANGO DEL VALLE)")
addOption(document.form.SubCat,"SAN MIGUEL OCAMPO ( TENANGO DEL VALLE )","SAN MIGUEL OCAMPO ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"MEXICALZINGO (1) ( TENANGO DEL VALLE )","MEXICALZINGO (1) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"MEXICALZINGO (2)  ( TENANGO DEL VALLE )","MEXICALZINGO (2)  ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"MEXICALZINGO (3)  ( TENANGO DEL VALLE )","MEXICALZINGO (3)  ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"MEXICALZINGO (4)  ( TENANGO DEL VALLE )","MEXICALZINGO (4)  ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SAN JUAN LA ISLA ( TENANGO DEL VALLE )","SAN JUAN LA ISLA ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SANTA MARIA RAYON  ( TENANGO  13/07/09 CEAPS)","SANTA MARIA RAYON  ( TENANGO  13/07/09 CEAPS)")
addOption(document.form.SubCat,"SAN ANTONIO LA ISLA (1) ( TENANGO DEL VALLE )","SAN ANTONIO LA ISLA (1) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SAN ANTONIO LA ISLA (2) ( TENANGO DEL VALLE )","SAN ANTONIO LA ISLA (2) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SAN  LUCAS TEPEMAJALCO ( TENANGO DEL VALLE )","SAN  LUCAS TEPEMAJALCO ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"C.S. ATLATLAHUCA (1) T. DEL VALLE - TENANGO DEL VALLE","C.S. ATLATLAHUCA (1) T. DEL VALLE - TENANGO DEL VALLE")
addOption(document.form.SubCat,"C.S. ATLATLAHUCA (2) T. DEL VALLE - TENANGO DEL VALLE","C.S. ATLATLAHUCA (2) T. DEL VALLE - TENANGO DEL VALLE")
addOption(document.form.SubCat,"SAN MIGUEL BALDERAS (1)  ( TENANGO DEL VALLE )","SAN MIGUEL BALDERAS (1)  ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SAN MIGUEL BALDERAS (2)  ( TENANGO DEL VALLE )","SAN MIGUEL BALDERAS (2)  ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SAN FRANCISCO PUTLA  ( TENANGO DEL VALLE )","SAN FRANCISCO PUTLA  ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"C.S. SANTA MARIA JAJALPA (1)","C.S. SANTA MARIA JAJALPA (1)")
addOption(document.form.SubCat,"C.S. SANTA MARIA JAJALPA (2)","C.S. SANTA MARIA JAJALPA (2)")
addOption(document.form.SubCat,"SANTIAGUITO COAXUXTENCO (1) ( TENANGO DEL VALLE )","SANTIAGUITO COAXUXTENCO (1) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SANTIAGUITO COAXUXTENCO (2) (TENANGO DEL VALLE)","SANTIAGUITO COAXUXTENCO (2) (TENANGO DEL VALLE)")
addOption(document.form.SubCat,"C.S. TEPEXOXUCA","C.S. TEPEXOXUCA")
addOption(document.form.SubCat,"SAN FRANCISCO TETETLA ( TENANGO DEL VALLE )","SAN FRANCISCO TETETLA ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"C.S. TLANISCO (1) T. DEL VALLE - TENANGO DEL VALLE","C.S. TLANISCO (1) T. DEL VALLE - TENANGO DEL VALLE")
addOption(document.form.SubCat,"C.S. TLANISCO (2) T. DEL VALLE - TENANGO DEL VALLE","C.S. TLANISCO (2) T. DEL VALLE - TENANGO DEL VALLE")
addOption(document.form.SubCat,"SAN PEDRO ZICTEPEC ( TENANGO DEL VALLE )","SAN PEDRO ZICTEPEC ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"CASA DE SALUD PUEBLO NUEVO","CASA DE SALUD PUEBLO NUEVO")
addOption(document.form.SubCat,"MAXTLECA DE GALEANA ( TENANGO DEL VALLE )","MAXTLECA DE GALEANA ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"BRIGADA JURISDICCION TENANGO DEL VALLE ( TENANGO DEL VALLE )","BRIGADA JURISDICCION TENANGO DEL VALLE ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"GUADALUPE YANCUITLALPAN (1) ( TENANGO DEL VALLE )","GUADALUPE YANCUITLALPAN (1) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"GUADALUPE YANCUITLALPAN (2) (TENANGO DEL VALLE)","GUADALUPE YANCUITLALPAN (2) (TENANGO DEL VALLE)")
addOption(document.form.SubCat,"C.S. MAGDALENA DE LOS REYES ** T. DEL VALLE - TIANGUISTENCO ","C.S. MAGDALENA DE LOS REYES ** T. DEL VALLE - TIANGUISTENCO ")
addOption(document.form.SubCat,"OCOTENCO ( TENANGO DEL VALLE )","OCOTENCO ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SAN BARTOLO DEL PROGRESO (1) ( TENANGO DEL VALLE )","SAN BARTOLO DEL PROGRESO (1) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SAN BARTOLO DEL PROGRESO (2) ( TENANGO DEL VALLE )","SAN BARTOLO DEL PROGRESO (2) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SAN NICOLAS COATEPEC (1) (TENANGO DEL VALLE)","SAN NICOLAS COATEPEC (1) (TENANGO DEL VALLE)")
addOption(document.form.SubCat,"SAN NICOLAS COATEPEC (2) (TENANGO DEL VALLE)","SAN NICOLAS COATEPEC (2) (TENANGO DEL VALLE)")
addOption(document.form.SubCat,"SAN PEDRO TLALTIZAPAN (1) ( TENANGO DEL VALLE )","SAN PEDRO TLALTIZAPAN (1) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SAN PEDRO TLALTIZAPAN (2) ( TENANGO DEL VALLE )","SAN PEDRO TLALTIZAPAN (2) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"TILAPA II ( TENANGO DEL VALLE )","TILAPA II ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"CASA DE SALUD TLACUITLAPA ++ T. DEL VALLE - SANTIAGO TIANG. ","CASA DE SALUD TLACUITLAPA ++ T. DEL VALLE - SANTIAGO TIANG. ")
addOption(document.form.SubCat,"CASA DE SALUD TLACOMULCO (TENANGO DEL VALLE)","CASA DE SALUD TLACOMULCO (TENANGO DEL VALLE)")
addOption(document.form.SubCat,"SANTIAGO TILAPA I  (1) ( TENANGO DEL VALLE )","SANTIAGO TILAPA I  (1) ( TENANGO DEL VALLE )")
addOption(document.form.SubCat,"SANTIAGO TILAPA I (2) (TENANGO DEL VALLE)","SANTIAGO TILAPA I (2) (TENANGO DEL VALLE)")
addOption(document.form.SubCat,"CASA DE SALUD CHIQUISPAC (TENANGO DEL VALLE)","CASA DE SALUD CHIQUISPAC (TENANGO DEL VALLE)")
addOption(document.form.SubCat,"CASA DE SALUD SAN LORENZO HUEHUETITLAN ( TENANGO DEL VALLE )","CASA DE SALUD SAN LORENZO HUEHUETITLAN ( TENANGO DEL VALLE )")
}


if(document.form.Category.value == 'Toluca'){
//var cad1="Acura";
addOption(document.form.SubCat,"SAN ANTONIO BUENAVISTA ( TOLUCA) ALMOLOYA DE JUAREZ","SAN ANTONIO BUENAVISTA ( TOLUCA) ALMOLOYA DE JUAREZ")
addOption(document.form.SubCat,"CASA DE SALUD BENITO JUAREZ ++ TOL - ALMOLOYA DE JUAREZ ++","CASA DE SALUD BENITO JUAREZ ++ TOL - ALMOLOYA DE JUAREZ ++")
addOption(document.form.SubCat,"CASA DE SALUD CIENEGUILLAS DE MAÑONES ( TOLUCA)","CASA DE SALUD CIENEGUILLAS DE MAÑONES ( TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD EJIDO  SAN PEDRO LA ESTANZUELA ( TOLUCA)","CASA DE SALUD EJIDO  SAN PEDRO LA ESTANZUELA ( TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD LA CABECERA PRIMERA SECCION +TOL-ALMOLOYA DE J","CASA DE SALUD LA CABECERA PRIMERA SECCION +TOL-ALMOLOYA DE J")
addOption(document.form.SubCat,"CASA DE SALUD LA CABECERA TERCERA SECCION +TOL-ALMOLOYA DE J","CASA DE SALUD LA CABECERA TERCERA SECCION +TOL-ALMOLOYA DE J")
addOption(document.form.SubCat,"CASA DE SALUD PIEDRAS BLANCAS CENTRO ( TOLUCA)","CASA DE SALUD PIEDRAS BLANCAS CENTRO ( TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD PIEDRAS BLANCAS SUR ( TOLUCA)","CASA DE SALUD PIEDRAS BLANCAS SUR ( TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD SAN ISIDRO EL RESERVADO  ( TOLUCA )","CASA DE SALUD SAN ISIDRO EL RESERVADO  ( TOLUCA )")
addOption(document.form.SubCat,"CIENEGUILLAS ( TOLUCA)","CIENEGUILLAS ( TOLUCA)")
addOption(document.form.SubCat,"C.S. DILATADA SUR ++ TOL- ALMOLOYA DE JUAREZ ++","C.S. DILATADA SUR ++ TOL- ALMOLOYA DE JUAREZ ++")
addOption(document.form.SubCat,"EL ESTANCO(1) ( TOLUCA)","EL ESTANCO(1) ( TOLUCA)")
addOption(document.form.SubCat,"EL ESTANCO(2) ( TOLUCA)","EL ESTANCO(2) ( TOLUCA)")
addOption(document.form.SubCat,"LA GAVIA PROGRESA ( TOLUCA)","LA GAVIA PROGRESA ( TOLUCA)")
addOption(document.form.SubCat,"C.S. EX HACIENDA MEXTEPEC ++ TOL - ALMOLOYA DE JUAREZ ++","C.S. EX HACIENDA MEXTEPEC ++ TOL - ALMOLOYA DE JUAREZ ++")
addOption(document.form.SubCat,"C.S. OCOYOTEPEC CENTRO","C.S. OCOYOTEPEC CENTRO")
addOption(document.form.SubCat,"C.S.R.  PALOS AMARILLOS PROGRESA **TOL - ALMOLOYA DE JUAREZ*","C.S.R.  PALOS AMARILLOS PROGRESA **TOL - ALMOLOYA DE JUAREZ*")
addOption(document.form.SubCat,"C.S. PAREDON EJIDO ++ TOL - ALMOLOYA DE JUAREZ ++","C.S. PAREDON EJIDO ++ TOL - ALMOLOYA DE JUAREZ ++")
addOption(document.form.SubCat,"C.S.R.  SALITRE DE MAÑONES  PROGRESA **TOL - ALM. DE JUAREZ*","C.S.R.  SALITRE DE MAÑONES  PROGRESA **TOL - ALM. DE JUAREZ*")
addOption(document.form.SubCat,"C.S. SAN AGUSTIN CITLALI ++ TOL - ALMOLOYA DE JUAREZ ++","C.S. SAN AGUSTIN CITLALI ++ TOL - ALMOLOYA DE JUAREZ ++")
addOption(document.form.SubCat,"SAN AGUSTIN POTEJE CENTRO (1) ( TOLUCA)","SAN AGUSTIN POTEJE CENTRO (1) ( TOLUCA)")
addOption(document.form.SubCat,"SAN AGUSTIN POTEJE CENTRO (2) (TOLUCA)","SAN AGUSTIN POTEJE CENTRO (2) (TOLUCA)")
addOption(document.form.SubCat,"SAN FRANCISCO TLALCILALCALPAN (1)  ( TOLUCA )","SAN FRANCISCO TLALCILALCALPAN (1)  ( TOLUCA )")
addOption(document.form.SubCat,"SAN FRANCISCO TLALCILALCALPAN (2)  ( TOLUCA ) ","SAN FRANCISCO TLALCILALCALPAN (2)  ( TOLUCA ) ")
addOption(document.form.SubCat,"CASA DE SALUD SAN LORENZO CUAUHTENCO **TOL - ALM. DE JUAREZ*","CASA DE SALUD SAN LORENZO CUAUHTENCO **TOL - ALM. DE JUAREZ*")
addOption(document.form.SubCat,"SAN MIGUEL ALMOLOYAN (1) TOL-ALMOLOYA DE JUAREZ","SAN MIGUEL ALMOLOYAN (1) TOL-ALMOLOYA DE JUAREZ")
addOption(document.form.SubCat,"SAN MIGUEL ALMOLOYAN (2) TOL-ALMOLOYA DE JUAREZ","SAN MIGUEL ALMOLOYAN (2) TOL-ALMOLOYA DE JUAREZ")
addOption(document.form.SubCat,"SAN MIGUEL TLALCHICHILPAN (1) TOL-ALMOLOYA DE JUAREZ","SAN MIGUEL TLALCHICHILPAN (1) TOL-ALMOLOYA DE JUAREZ")
addOption(document.form.SubCat,"SAN MIGUEL TLALCHICHILPAN (2) TOL-ALMOLOYA DE JUAREZ","SAN MIGUEL TLALCHICHILPAN (2) TOL-ALMOLOYA DE JUAREZ")
addOption(document.form.SubCat,"SAN PEDRO LA HORTALIZA ( TOLUCA)","SAN PEDRO LA HORTALIZA ( TOLUCA)")
addOption(document.form.SubCat,"C.S. SANTA CATARINA TABERNILLAS (1)  TOL -ALMOLOYA DE JUAREZ","C.S. SANTA CATARINA TABERNILLAS (1)  TOL -ALMOLOYA DE JUAREZ")
addOption(document.form.SubCat,"C.S. SANTA CATARINA TABERNILLAS (2)  TOL -ALMOLOYA DE JUAREZ","C.S. SANTA CATARINA TABERNILLAS (2)  TOL -ALMOLOYA DE JUAREZ")
addOption(document.form.SubCat,"C.S. SANTIAGUITO TLALCILALCALLI (1)","C.S. SANTIAGUITO TLALCILALCALLI (1)")
addOption(document.form.SubCat,"YEBUCIVI  (1)  ( TOLUCA)","YEBUCIVI  (1)  ( TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD BESANA ANCHA ( TOLUCA)","CASA DE SALUD BESANA ANCHA ( TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD CAÑADA DE GUADARRAMA ( TOLUCA)","CASA DE SALUD CAÑADA DE GUADARRAMA ( TOLUCA)")
addOption(document.form.SubCat,"UNIDAD MOVIL MINA MEXICO ( TOLUCA)","UNIDAD MOVIL MINA MEXICO ( TOLUCA)")
addOption(document.form.SubCat,"BRIGADA ARROYO ZARCO ( TOLUCA ) UNIDAD MOVIL","BRIGADA ARROYO ZARCO ( TOLUCA ) UNIDAD MOVIL")
addOption(document.form.SubCat,"CASA DE SALUD EL OCOTE ( TOLUCA )","CASA DE SALUD EL OCOTE ( TOLUCA )")
addOption(document.form.SubCat,"CASA DE SALUD ARROYO ZARCO CENTRO (TOLUCA)","CASA DE SALUD ARROYO ZARCO CENTRO (TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD COL ALVARO OBREGON ++TOL-METEPEC++","CASA DE SALUD COL ALVARO OBREGON ++TOL-METEPEC++")
addOption(document.form.SubCat,"CASA DE SALUD SAN LORENZO COACALCO(TOLUCA)","CASA DE SALUD SAN LORENZO COACALCO(TOLUCA)")
addOption(document.form.SubCat,"MAGDALENA OCOTITLAN 1 ( TOLUCA )","MAGDALENA OCOTITLAN 1 ( TOLUCA )")
addOption(document.form.SubCat,"MAGDALENA OCOTITLAN 2 (TOLUCA)","MAGDALENA OCOTITLAN 2 (TOLUCA)")
//
addOption(document.form.SubCat,"SAN BARTOLOME TLALTELULCO (1) ( TOLUCA )","SAN BARTOLOME TLALTELULCO (1) ( TOLUCA )")
addOption(document.form.SubCat,"SAN BARTOLOME TLALTELULCO (2) ( TOLUCA )","SAN BARTOLOME TLALTELULCO (2) ( TOLUCA )")
addOption(document.form.SubCat,"SAN GASPAR TLAHUELILPAN (1) TOL-METEPEC","SAN GASPAR TLAHUELILPAN (1) TOL-METEPEC")
addOption(document.form.SubCat,"SAN GASPAR TLAHUELILPAN (2) TOL-METEPEC","SAN GASPAR TLAHUELILPAN (2) TOL-METEPEC")
addOption(document.form.SubCat,"SAN GASPAR TLAHUELILPAN-ODONTOLOGICO (3) TOL-METEPEC","SAN GASPAR TLAHUELILPAN-ODONTOLOGICO (3) TOL-METEPEC")
addOption(document.form.SubCat,"SAN MIGUEL TOTOCUITLAPILCO (1) (TOLUCA )","SAN MIGUEL TOTOCUITLAPILCO (1) (TOLUCA )")
addOption(document.form.SubCat,"SAN MIGUEL TOTOCUITLAPILCO (2) ( TOLUCA )","SAN MIGUEL TOTOCUITLAPILCO (2) ( TOLUCA )")
addOption(document.form.SubCat,"SAN JERONIMO CHICAHUALCO (1) ( TOLUCA)","SAN JERONIMO CHICAHUALCO (1) ( TOLUCA)")
addOption(document.form.SubCat,"SAN JERONIMO CHICAHUALCO (2) ( TOLUCA)","SAN JERONIMO CHICAHUALCO (2) ( TOLUCA)")
addOption(document.form.SubCat,"SAN JERONIMO CHICAHUALCO (3) ( TOLUCA)","SAN JERONIMO CHICAHUALCO (3) ( TOLUCA)")
addOption(document.form.SubCat,"EJIDO DE LA Y ( 1 ) ( TOLUCA)","EJIDO DE LA Y  ( 1 ) ( TOLUCA)")
addOption(document.form.SubCat,"EJIDO DE LA Y ( 2 ) ( TOLUCA)","EJIDO DE LA Y  ( 2 ) ( TOLUCA)")
addOption(document.form.SubCat,"C.S. Bo. DE JESUS FRACCION 1 (1)LAGUNA CONSTITUCION - TOLUCA","C.S. Bo. DE JESUS FRACCION 1 (1)LAGUNA CONSTITUCION - TOLUCA")
addOption(document.form.SubCat,"C.S. Bo. DE JESUS FRACCION 1(2) LAGUNA CONSTITUCION - TOLUCA","C.S. Bo. DE JESUS FRACCION 1(2) LAGUNA CONSTITUCION - TOLUCA")
addOption(document.form.SubCat,"BARRIO DE JESUS FRACCION 2 A ( 1 ) ( TOLUCA)","BARRIO DE JESUS FRACCION 2 A ( 1 ) ( TOLUCA)")
addOption(document.form.SubCat,"BARRIO DE JESUS FRACCION 2 A (2) ( TOLUCA)","BARRIO DE JESUS FRACCION 2 A (2) ( TOLUCA)")
addOption(document.form.SubCat,"BARRIO DE JESUS FRACCION 2 A (3) ( TOLUCA)","BARRIO DE JESUS FRACCION 2 A (3) ( TOLUCA)")
addOption(document.form.SubCat,"BARRIO MEXICO (2) (TOLUCA)","BARRIO MEXICO (2) (TOLUCA)")
addOption(document.form.SubCat,"CACALOMACAN ESTE ( 1 ) ( TOLUCA)","CACALOMACAN ESTE ( 1 ) ( TOLUCA)")
addOption(document.form.SubCat,"CACALOMACAN ESTE ( 2 ) ( TOLUCA)","CACALOMACAN ESTE ( 2 ) ( TOLUCA)")
addOption(document.form.SubCat,"C.S. CACALOMACAN OESTE ** TOL - TOLUCA **","C.S. CACALOMACAN OESTE ** TOL - TOLUCA **")
addOption(document.form.SubCat,"CALIXTLAHUACA ( TOLUCA)","CALIXTLAHUACA ( TOLUCA)")
addOption(document.form.SubCat,"CAPULTITLAN (1)(TOLUCA)","CAPULTITLAN (1)(TOLUCA)")
addOption(document.form.SubCat,"CAPULTITLAN (2) (TOLUCA)","CAPULTITLAN (2) (TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD COL LAZARO CARDENAS(1) (TOLUCA)","CASA DE SALUD COL LAZARO CARDENAS(1) (TOLUCA)")
addOption(document.form.SubCat,"DIF II RASTRO (1) ( TOLUCA)","DIF II RASTRO (1) ( TOLUCA)")
addOption(document.form.SubCat,"DIF II RASTRO (2) ( TOLUCA)","DIF II RASTRO (2) ( TOLUCA)")
addOption(document.form.SubCat,"DIF II  RASTRO (3) ( TOLUCA)","DIF II  RASTRO (3) ( TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD COL. FRANCISCO I MADERO ++TOL-METEPEC++","CASA DE SALUD COL. FRANCISCO I MADERO ++TOL-METEPEC++")
addOption(document.form.SubCat,"CASA DE SALUD MAYORAZGO DE LEÓN 2 (TOLUCA)","CASA DE SALUD MAYORAZGO DE LEÓN 2 (TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD POTEJE SUR (1)  ( TOLUCA)","CASA DE SALUD POTEJE SUR (1)  ( TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD ROSAURA ZAPATA (1) (TOLUCA)","CASA DE SALUD ROSAURA ZAPATA (1) (TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD ROSAURA ZAPATA (2) ( TOLUCA)","CASA DE SALUD ROSAURA ZAPATA (2) ( TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD SAN CAYETANO MORELOS","CASA DE SALUD SAN CAYETANO MORELOS")
addOption(document.form.SubCat,"CASA DE SALUD SAN LUCAS TUNCO (TOLUCA)","CASA DE SALUD SAN LUCAS TUNCO (TOLUCA)")
addOption(document.form.SubCat,"CASA DE SALUD SAN SEBASTIAN (TOLUCA)","CASA DE SALUD SAN SEBASTIAN (TOLUCA)")
addOption(document.form.SubCat,"SANTA CRUZ OTZACATIPAN ( TOLUCA)","SANTA CRUZ OTZACATIPAN ( TOLUCA)")
addOption(document.form.SubCat,"EL COPORO  (TOLUCA)","EL COPORO  (TOLUCA)")
addOption(document.form.SubCat,"C.S. CRESPA 1A SECC (1) TOL - TOLUCA","C.S. CRESPA 1A SECC (1) TOL - TOLUCA")
addOption(document.form.SubCat,"C.S. CRESPA 1A SECC (2) TOL - TOLUCA","C.S. CRESPA 1A SECC (2) TOL - TOLUCA")
addOption(document.form.SubCat,"EJIDO SAN MATEO OTZACATIPAN (1) (TOLUCA)","EJIDO SAN MATEO OTZACATIPAN (1) (TOLUCA)")
addOption(document.form.SubCat,"EJIDO SAN MATEO OTZACATIPAN  (2) (TOLUCA)","EJIDO SAN MATEO OTZACATIPAN  (2) (TOLUCA)")
addOption(document.form.SubCat,"C.S. MAYORAZGO DE LEON **TOL-ALMOLOYA DE JUAREZ**","C.S. MAYORAZGO DE LEON **TOL-ALMOLOYA DE JUAREZ**")
addOption(document.form.SubCat,"PUEBLO NUEVO (1) ( TOLUCA)","PUEBLO NUEVO (1) ( TOLUCA)")
addOption(document.form.SubCat,"PUEBLO NUEVO (2) ( TOLUCA)","PUEBLO NUEVO (2) ( TOLUCA)")
addOption(document.form.SubCat,"PUEBLO NUEVO (3) ( TOLUCA)","PUEBLO NUEVO (3) ( TOLUCA)")
addOption(document.form.SubCat,"PUEBLO NUEVO (4) (TOLUCA)","PUEBLO NUEVO (4) (TOLUCA)")
addOption(document.form.SubCat,"SAN ANDRES CUEXCONTITLAN (1) ( TOLUCA)","SAN ANDRES CUEXCONTITLAN (1) ( TOLUCA)")
addOption(document.form.SubCat,"SAN ANDRES CUEXCONTITLAN (2) ( TOLUCA)","SAN ANDRES CUEXCONTITLAN (2) ( TOLUCA)")
addOption(document.form.SubCat,"SAN ANDRES CUEXCONTITLAN (3) ( TOLUCA)","SAN ANDRES CUEXCONTITLAN (3) ( TOLUCA)")
addOption(document.form.SubCat,"SAN ANDRES CUEXCONTITLAN (4) ( TOLUCA)","SAN ANDRES CUEXCONTITLAN (4) ( TOLUCA)")
addOption(document.form.SubCat,"SAN ANDRES CUEXCONTITLAN (5) ( TOLUCA)","SAN ANDRES CUEXCONTITLAN (5) ( TOLUCA)")
addOption(document.form.SubCat,"SAN ANTONIO BUENAVISTA ( TOLUCA)","SAN ANTONIO BUENAVISTA ( TOLUCA)")
addOption(document.form.SubCat,"SAN BUENAVENTURA (1) ( TOLUCA)","SAN BUENAVENTURA (1) ( TOLUCA)")
addOption(document.form.SubCat,"SAN BUENAVENTURA (2) ( TOLUCA)","SAN BUENAVENTURA (2) ( TOLUCA)")
addOption(document.form.SubCat,"SAN CRISTOBAL HUICHOCHITLAN (1) ( TOLUCA ) ","SAN CRISTOBAL HUICHOCHITLAN (1) ( TOLUCA ) ")
addOption(document.form.SubCat,"SAN CRISTOBAL HUICHOCHITLAN (2) ( TOLUCA )","SAN CRISTOBAL HUICHOCHITLAN (2) ( TOLUCA )")
addOption(document.form.SubCat,"SAN CRISTOBAL TECOLIT (TOLUCA)","SAN CRISTOBAL TECOLIT (TOLUCA)")
addOption(document.form.SubCat,"SAN DIEGO DE LOS PADRES (1) TOL-TOLUCA","SAN DIEGO DE LOS PADRES (1) TOL-TOLUCA")
addOption(document.form.SubCat,"SAN DIEGO DE LOS PADRES (2) TOL-TOLUCA","SAN DIEGO DE LOS PADRES (2) TOL-TOLUCA")
addOption(document.form.SubCat,"SAN FELIPE TLALMIMILOLPAN  ( TOLUCA)","SAN FELIPE TLALMIMILOLPAN  ( TOLUCA)")
addOption(document.form.SubCat,"SAN JUAN TILAPA(1) ( TOLUCA)","SAN JUAN TILAPA(1) ( TOLUCA)")
addOption(document.form.SubCat,"SAN JUAN TILAPA(2) ( TOLUCA)","SAN JUAN TILAPA(2) ( TOLUCA)")
addOption(document.form.SubCat,"SAN LORENZO TEPALTITLAN (1)  (TOLUCA)","SAN LORENZO TEPALTITLAN (1)  (TOLUCA)")
addOption(document.form.SubCat,"SAN LORENZO TEPALTITLAN (2)  (TOLUCA)","SAN LORENZO TEPALTITLAN (2)  (TOLUCA)")
addOption(document.form.SubCat,"C.S. SAN MARTIN TOLTEPEC ++ TOL - TOLUCA ++","C.S. SAN MARTIN TOLTEPEC ++ TOL - TOLUCA ++")
addOption(document.form.SubCat,"SAN MATEO OXTOTITLAN ** TOL - TOLUCA **","SAN MATEO OXTOTITLAN ** TOL - TOLUCA **")
addOption(document.form.SubCat,"ALMACEN TOLUCA **TOL-TOLUCA**","ALMACEN TOLUCA **TOL-TOLUCA**")
addOption(document.form.SubCat,"SAN MIGUEL TOTOLTEPEC (1) TOL-TOLUCA","SAN MIGUEL TOTOLTEPEC (1) TOL-TOLUCA")
addOption(document.form.SubCat,"SAN MIGUEL TOTOLTEPEC (2) TOL-TOLUCA","SAN MIGUEL TOTOLTEPEC (2) TOL-TOLUCA")
addOption(document.form.SubCat,"SAN PEDRO DE LA CONCEPCION(1) ( TOLUCA)","SAN PEDRO DE LA CONCEPCION(1) ( TOLUCA)")
addOption(document.form.SubCat,"SAN PEDRO DE LA CONCEPCION(2) ( TOLUCA)","SAN PEDRO DE LA CONCEPCION(2) ( TOLUCA)")
addOption(document.form.SubCat,"SAN PEDRO TEJALPA (1) ( TOLUCA )","SAN PEDRO TEJALPA (1) ( TOLUCA )")
addOption(document.form.SubCat,"SAN PEDRO TEJALPA (2) ( TOLUCA )","SAN PEDRO TEJALPA (2) ( TOLUCA )")
addOption(document.form.SubCat,"SAN PEDRO TOTOLTEPEC (1) ( TOLUCA)","SAN PEDRO TOTOLTEPEC (1) ( TOLUCA)")
addOption(document.form.SubCat,"SAN PEDRO TOTOLTEPEC (2) ( TOLUCA)","SAN PEDRO TOTOLTEPEC (2) ( TOLUCA)")
addOption(document.form.SubCat,"SANTA ANA TLAPALTITLAN ( TOLUCA)","SANTA ANA TLAPALTITLAN ( TOLUCA)")
addOption(document.form.SubCat,"SANTA CRUZ ATZCAPOZALTONGO (1) ( TOLUCA)","SANTA CRUZ ATZCAPOZALTONGO (1) ( TOLUCA)")
addOption(document.form.SubCat,"SANTA CRUZ ATZCAPOZALTONGO ( 2 )  ( TOLUCA)","SANTA CRUZ ATZCAPOZALTONGO ( 2 )  ( TOLUCA)")
addOption(document.form.SubCat,"C.S. SANTA MARIA DEL MONTE ++ TOL - ZINACANTEPEC ++","C.S. SANTA MARIA DEL MONTE ++ TOL - ZINACANTEPEC ++")
addOption(document.form.SubCat,"C.S. SANTA MARIA TOTOLTEPEC (1) TOL - TOLUCA","C.S. SANTA MARIA TOTOLTEPEC (1) TOL - TOLUCA")
addOption(document.form.SubCat,"C.S. SANTA MARIA TOTOLTEPEC (2) TOL - TOLUCA","C.S. SANTA MARIA TOTOLTEPEC (2) TOL - TOLUCA")
addOption(document.form.SubCat,"SANTIAGO TLACOTEPEC ( 1 ) ( TOLUCA)","SANTIAGO TLACOTEPEC ( 1 ) ( TOLUCA)")
addOption(document.form.SubCat,"SANTIAGO TLACOTEPEC ( 2 ) ( TOLUCA)","SANTIAGO TLACOTEPEC ( 2 ) ( TOLUCA)")
addOption(document.form.SubCat,"SANTIAGO TLAXOMULCO ( TOLUCA)","SANTIAGO TLAXOMULCO ( TOLUCA)")
addOption(document.form.SubCat,"TECAXIC ( TOLUCA)","TECAXIC ( TOLUCA)")
addOption(document.form.SubCat,"TLACHALOYA PUEBLO 1a. SECCION ( 1 ) ( TOLUCA)","TLACHALOYA PUEBLO 1a. SECCION ( 1 ) ( TOLUCA)")
addOption(document.form.SubCat,"TLACHALOYA PUEBLO 1a SECCION ( 2 ) ( TOLUCA)","TLACHALOYA PUEBLO 1a SECCION ( 2 ) ( TOLUCA)")
addOption(document.form.SubCat,"TLACHALOYA EJIDO 2a.SECCION ( 1 ) ( TOLUCA)","TLACHALOYA EJIDO 2a.SECCION ( 1 ) ( TOLUCA)")
addOption(document.form.SubCat,"TLACHALOYA EJIDO 2a.SECCION ( 2 )( TOLUCA)","TLACHALOYA EJIDO 2a.SECCION ( 2 )( TOLUCA)")
addOption(document.form.SubCat,"MODERNA DE LA CRUZ (1) ( TOLUCA)","MODERNA DE LA CRUZ (1) ( TOLUCA)")
addOption(document.form.SubCat,"MODERNA DE LA CRUZ (2) ( TOLUCA)","MODERNA DE LA CRUZ (2) ( TOLUCA)")
addOption(document.form.SubCat,"SAN PABLO AUTOPAN PRIMERA SECCION ( TOLUCA )","SAN PABLO AUTOPAN PRIMERA SECCION ( TOLUCA )")
addOption(document.form.SubCat,"BRIGADA JURISDICCION TOLUCA ( TOLUCA )","BRIGADA JURISDICCION TOLUCA ( TOLUCA )")
addOption(document.form.SubCat,"BARRIO MEXICO (1) (TOLUCA)","BARRIO MEXICO (1) (TOLUCA)")
addOption(document.form.SubCat,"BARRIO MEXICO (3) (TOLUCA)","BARRIO MEXICO (3) (TOLUCA)")
addOption(document.form.SubCat,"EMILIANO ZAPATA (TOLUCA) ZINACANTEPEC","EMILIANO ZAPATA (TOLUCA) ZINACANTEPEC")
addOption(document.form.SubCat,"LOMA ALTA (TOLUCA) ZINACANTEPEC","LOMA ALTA (TOLUCA) ZINACANTEPEC")
addOption(document.form.SubCat,"SAN ANTONIO ACAHUALCO (1)  ( TOLUCA )","SAN ANTONIO ACAHUALCO (1)  ( TOLUCA )")
addOption(document.form.SubCat,"SAN ANTONIO ACAHUALCO (2) ( TOLUCA )","SAN ANTONIO ACAHUALCO (2) ( TOLUCA )")
addOption(document.form.SubCat,"SAN ANTONIO ACAHUALCO (3) ( TOLUCA )","SAN ANTONIO ACAHUALCO (3) ( TOLUCA )")
addOption(document.form.SubCat,"SAN BARTOLO EL VIEJO (TOLUCA)","SAN BARTOLO EL VIEJO (TOLUCA)")
addOption(document.form.SubCat,"C.S. SAN JUAN DE LAS HUERTAS (1)","C.S. SAN JUAN DE LAS HUERTAS (1)")
addOption(document.form.SubCat,"C.S. SAN JUAN DE LAS HUERTAS (2)","C.S. SAN JUAN DE LAS HUERTAS (2)")
addOption(document.form.SubCat,"C.S. SAN JUAN DE LAS HUERTAS - ODONTOLOGICO","C.S. SAN JUAN DE LAS HUERTAS - ODONTOLOGICO")
addOption(document.form.SubCat,"SAN LUIS MEXTEPEC (1) TOL - ZINACANTEPEC","SAN LUIS MEXTEPEC (1) TOL - ZINACANTEPEC")
addOption(document.form.SubCat,"SAN LUIS MEXTEPEC (2) TOL - ZINACANTEPEC","SAN LUIS MEXTEPEC (2) TOL - ZINACANTEPEC")
addOption(document.form.SubCat,"SAN LUIS MEXTEPEC - ODONTOLOGICO ** TOL - ZINACANTEPEC **","SAN LUIS MEXTEPEC - ODONTOLOGICO ** TOL - ZINACANTEPEC **")
addOption(document.form.SubCat,"C.S. SANTA CRUZ CUAUHTENCO","C.S. SANTA CRUZ CUAUHTENCO")
addOption(document.form.SubCat,"SANTA JUANA 1A.SECC. ( TOLUCA)","SANTA JUANA 1A.SECC. ( TOLUCA)")
addOption(document.form.SubCat,"LA PUERTA DEL MONTE **TOL-ZINACANTEPEC**","LA PUERTA DEL MONTE **TOL-ZINACANTEPEC**")
addOption(document.form.SubCat,"C.S. EL CURTIDOR ++ TOL - ZINACANTEPEC  ++","C.S. EL CURTIDOR ++ TOL - ZINACANTEPEC  ++")
addOption(document.form.SubCat,"SAN BARTOLO DEL LLANO **TOL-ZINACANTEPEC**","SAN BARTOLO DEL LLANO **TOL-ZINACANTEPEC**")
//---
}

if(document.form.Category.value == 'Valle de Bravo'){
//var cad1="Acura";
addOption(document.form.SubCat,"AGUA BENDITA (VALLE DE BRAVO)","AGUA BENDITA (VALLE DE BRAVO)")
addOption(document.form.SubCat,"AMANALCO  (VALLE DE BRAVO)","AMANALCO  (VALLE DE BRAVO)")
addOption(document.form.SubCat,"AMANALCO ** ODONTOLOGICO ** (VALLE DE BRAVO)","AMANALCO ** ODONTOLOGICO ** (VALLE DE BRAVO)")
addOption(document.form.SubCat,"C.S. EL POTRERO","C.S. EL POTRERO")
addOption(document.form.SubCat,"RINCON DE GUADALUPE (VALLE DE BRAVO)","RINCON DE GUADALUPE (VALLE DE BRAVO)")
addOption(document.form.SubCat,"C.S. SAN BARTOLO","C.S. SAN BARTOLO")
addOption(document.form.SubCat,"SAN MATEO (VALLE DE BRAVO)","SAN MATEO (VALLE DE BRAVO)")
addOption(document.form.SubCat,"SAN JERONIMO **V. DE BRAVO-AMANALCO**","SAN JERONIMO **V. DE BRAVO-AMANALCO**")
addOption(document.form.SubCat,"EL CAPULIN (V. BRAVO / AMANALCO)","EL CAPULIN (V. BRAVO / AMANALCO)")
addOption(document.form.SubCat,"CASA DE SALUD LOS POLVILLOS","CASA DE SALUD LOS POLVILLOS")
addOption(document.form.SubCat,"CASA DE SALUD SAN JUAN ( VALLE DE BRAVO )","CASA DE SALUD SAN JUAN ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"CASA DE SALUD CAPILLLA VIEJA ** V. DE BRAVO - AMANALCO **","CASA DE SALUD CAPILLLA VIEJA ** V. DE BRAVO - AMANALCO **")
addOption(document.form.SubCat,"C.S. EL CAPULIN ** V. DE BRAVO - DONATO GUERRA **","C.S. EL CAPULIN ** V. DE BRAVO - DONATO GUERRA **")
addOption(document.form.SubCat,"SAN AGUSTIN LAS PALMAS (1)  ( VALLE DE BRAVO )","SAN AGUSTIN LAS PALMAS (1)  ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"SAN AGUSTIN LAS PALMAS (2)  ( VALLE DE BRAVO )","SAN AGUSTIN LAS PALMAS (2)  ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"C.S. SAN ANTONIO DE LA LAGUNA ++V. DE BRAVO - DONATO GUERRA+","C.S. SAN ANTONIO DE LA LAGUNA ++V. DE BRAVO - DONATO GUERRA+")
addOption(document.form.SubCat,"SAN FRANCISCO MIHUALTEPEC EJIDO  (VALLE DE BRAVO)","SAN FRANCISCO MIHUALTEPEC EJIDO  (VALLE DE BRAVO)")
addOption(document.form.SubCat,"SAN FRANCISCO MIHUALTEPEC  POBLADO (1) (VALLE DE BRAVO)","SAN FRANCISCO MIHUALTEPEC  POBLADO (1) (VALLE DE BRAVO)")
addOption(document.form.SubCat,"SAN FRANCISCO MIHUALTEPEC POBLADO (2) (VALLE DE BRAVO)","SAN FRANCISCO MIHUALTEPEC POBLADO (2) (VALLE DE BRAVO)")
addOption(document.form.SubCat,"SAN JUAN XOCONUSCO (1)  ( VALLE DE BRAVO )","SAN JUAN XOCONUSCO (1)  ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"SAN JUAN XOCONUSCO (2) ( VALLE DE BRAVO )","SAN JUAN XOCONUSCO (2) ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"SAN MARTIN OBISPO ( 1 ) (VALLE DE BRAVO)","SAN MARTIN OBISPO ( 1 ) (VALLE DE BRAVO)")
addOption(document.form.SubCat,"SAN MARTIN OBISPO ( 2 ) (VALLE DE BRAVO)","SAN MARTIN OBISPO ( 2 ) (VALLE DE BRAVO)")
addOption(document.form.SubCat,"SAN SIMON DE LA LAGUNA (1) V. DE BRAVO-DONATO GUERRA","SAN SIMON DE LA LAGUNA (1) V. DE BRAVO-DONATO GUERRA")
addOption(document.form.SubCat,"SAN SIMON DE LA LAGUNA (2) V. DE BRAVO-DONATO GUERRA","SAN SIMON DE LA LAGUNA (2) V. DE BRAVO-DONATO GUERRA")
addOption(document.form.SubCat,"SANTIAGO HUITLAPALTEPEC ** V. DE BRAVO - DONATO GUERRA **","SANTIAGO HUITLAPALTEPEC ** V. DE BRAVO - DONATO GUERRA **")
addOption(document.form.SubCat,"CASA DE SALUD SAN  MIGUEL XOOLTEPEC (VALLE DE BRAVO)","CASA DE SALUD SAN  MIGUEL XOOLTEPEC (VALLE DE BRAVO)")
addOption(document.form.SubCat,"C.S. DONATO GUERRA (1) V. DE BRAVO - DONATO GUERRA","C.S. DONATO GUERRA (1) V. DE BRAVO - DONATO GUERRA")
addOption(document.form.SubCat,"C.S. DONATO GUERRA (2) V. DE BRAVO - DONATO GUERRA","C.S. DONATO GUERRA (2) V. DE BRAVO - DONATO GUERRA")
addOption(document.form.SubCat,"C.S. DONATO GUERRA-ODONTOLOGICO *V.DE BRAVO - DONATO GUERRA*","C.S. DONATO GUERRA-ODONTOLOGICO *V.DE BRAVO - DONATO GUERRA*")
addOption(document.form.SubCat,"C.S. MIAHUATLAN DE HIDALGO ++ V. DE BRAVO-IXTAPAN DEL ORO++","C.S. MIAHUATLAN DE HIDALGO ++ V. DE BRAVO-IXTAPAN DEL ORO++")
addOption(document.form.SubCat,"C.S. TUTUAPAN ** V. DE BRAVO - IXTAPAN DEL ORO **","C.S. TUTUAPAN ** V. DE BRAVO - IXTAPAN DEL ORO **")
addOption(document.form.SubCat,"C.S. EL CHILAR ** V. DE BRAVO - IXTAPAN DEL ORO **","C.S. EL CHILAR ** V. DE BRAVO - IXTAPAN DEL ORO **")
addOption(document.form.SubCat,"CASA DE SALUD EJIDO DE MIAHUATLAN  DE HIDALGO (V. DE BRAVO)","CASA DE SALUD EJIDO DE MIAHUATLAN  DE HIDALGO (V. DE BRAVO)")
addOption(document.form.SubCat,"CRUZ BLANCA PROGRESA (VALLE DE BRAVO)","CRUZ BLANCA PROGRESA (VALLE DE BRAVO)")
addOption(document.form.SubCat,"C.S. POTRERO DE ARRIBA ++ V. DE BRAVO-SANTO TOMAS DE LOS P.","C.S. POTRERO DE ARRIBA ++ V. DE BRAVO-SANTO TOMAS DE LOS P.")
addOption(document.form.SubCat,"EL PUERTO DE SANTO TOMAS (VALLE DE BRAVO)","EL PUERTO DE SANTO TOMAS (VALLE DE BRAVO)")
addOption(document.form.SubCat,"RINCON CHICO (VALLE DE BRAVO)","RINCON CHICO (VALLE DE BRAVO)")
addOption(document.form.SubCat,"SANTO TOMAS DE LOS PLATANOS (VALLE DE BRAVO)","SANTO TOMAS DE LOS PLATANOS (VALLE DE BRAVO)")
addOption(document.form.SubCat,"CASA DE SALUD IXTAPANTONGO ( VALLE DE BRAVO )","CASA DE SALUD IXTAPANTONGO ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"CERRO GORDO (VALLE DE BRAVO)","CERRO GORDO (VALLE DE BRAVO)")
addOption(document.form.SubCat,"CUADRILLA DE DOLORES (1) V. DE BRAVO - V. DE BRAVO","CUADRILLA DE DOLORES (1) V. DE BRAVO - V. DE BRAVO")
addOption(document.form.SubCat,"CUADRILLA DE DOLORES (2) V. DE BRAVO - V. DE BRAVO","CUADRILLA DE DOLORES (2) V. DE BRAVO - V. DE BRAVO")
addOption(document.form.SubCat,"LOS SAUCOS (VALLE DE BRAVO)","LOS SAUCOS (VALLE DE BRAVO)")
addOption(document.form.SubCat,"C.S. SANTA MARIA PIPIOLTEPEC ++V. DE BRAVO-VALLE DE BRAVO++","C.S. SANTA MARIA PIPIOLTEPEC ++V. DE BRAVO-VALLE DE BRAVO++")
addOption(document.form.SubCat,"VALLE DE BRAVO (2) (VALLE DE BRAVO)","VALLE DE BRAVO (2) (VALLE DE BRAVO)")
addOption(document.form.SubCat,"CUESTA DEL CARMEN ** V. DE BRAVO - VILLA DE ALLENDE **","CUESTA DEL CARMEN ** V. DE BRAVO - VILLA DE ALLENDE **")
addOption(document.form.SubCat,"EL JACAL (VALLE DE BRAVO)","EL JACAL (VALLE DE BRAVO)")
addOption(document.form.SubCat,"C.S. LOMA DE JUAREZ (1)","C.S. LOMA DE JUAREZ (1)")
addOption(document.form.SubCat,"C.S. LOMA DE JUAREZ (2)","C.S. LOMA DE JUAREZ (2)")
addOption(document.form.SubCat,"C.S. SABANA DEL ROSARIO ++ V. DE BRAVO - VILLA DE ALLENDE ++","C.S. SABANA DEL ROSARIO ++ V. DE BRAVO - VILLA DE ALLENDE ++")
addOption(document.form.SubCat,"C.S. SABANA TABORDA ++ V. DE BRAVO - VILLA DE ALLENDE ++","C.S. SABANA TABORDA ++ V. DE BRAVO - VILLA DE ALLENDE ++")
addOption(document.form.SubCat,"C.S. SAN FELIPE SANTIAGO (1) V. DE BRAVO - VILLA DE ALLENDE","C.S. SAN FELIPE SANTIAGO (1) V. DE BRAVO - VILLA DE ALLENDE")
addOption(document.form.SubCat,"C.S. SAN FELIPE SANTIAGO (2) V. DE BRAVO - VILLA DE ALLENDE","C.S. SAN FELIPE SANTIAGO (2) V. DE BRAVO - VILLA DE ALLENDE")
addOption(document.form.SubCat,"SAN JERONIMO TOTOLTEPEC ** V. DE BRAVO - VILLA DE ALLENDE **","SAN JERONIMO TOTOLTEPEC ** V. DE BRAVO - VILLA DE ALLENDE **")
addOption(document.form.SubCat,"C.S. SAN JUAN BUENAVISTA ** V. DE BRAVO - VILLA DE ALLENDE *","C.S. SAN JUAN BUENAVISTA ** V. DE BRAVO - VILLA DE ALLENDE *")
addOption(document.form.SubCat,"SAN PABLO MALACATEPEC (VALLE DE BRAVO)","SAN PABLO MALACATEPEC (VALLE DE BRAVO)")
addOption(document.form.SubCat,"SANTA TERESA  PAC ** V. DE BRAVO - VILLA DE ALLENDE **","SANTA TERESA  PAC ** V. DE BRAVO - VILLA DE ALLENDE **")
addOption(document.form.SubCat,"CASA DE SALUD LOS BERROS ** V. DE BRAVO - VILLA DE ALLENDE *","CASA DE SALUD LOS BERROS ** V. DE BRAVO - VILLA DE ALLENDE *")
addOption(document.form.SubCat,"CASA DE SALUD SAN ILDEFONSO (VALLE DE BRAVO)","CASA DE SALUD SAN ILDEFONSO (VALLE DE BRAVO)")
addOption(document.form.SubCat,"CASA DE SALUD VARECHIQUICHUCA ++V. DE BRAVO - V. DE ALLENDE+","CASA DE SALUD VARECHIQUICHUCA ++V. DE BRAVO - V. DE ALLENDE+")
addOption(document.form.SubCat,"HOSPITAL ** V. DE BRAVO - VILLA DE VICTORIA **","HOSPITAL ** V. DE BRAVO - VILLA DE VICTORIA **")
addOption(document.form.SubCat,"CASA DE SALUD EL ESPINAL (VALLE DE BRAVO)","CASA DE SALUD EL ESPINAL (VALLE DE BRAVO)")
addOption(document.form.SubCat,"CASA DE SALUD EJIDO DE LOS PADRES *V. DE BRAVO - VILLA VICT.","CASA DE SALUD EJIDO DE LOS PADRES *V. DE BRAVO - VILLA VICT.")
addOption(document.form.SubCat,"CASA DE SALUD PUERTA DEL PILAR ( VALLE DE BRAVO )","CASA DE SALUD PUERTA DEL PILAR ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"SAN AGUSTIN ALTAMIRANO 2da. SECCION (VALLE DE BRAVO)","SAN AGUSTIN ALTAMIRANO 2da. SECCION (VALLE DE BRAVO)")
addOption(document.form.SubCat,"C.S. CASAS COLORADAS ++ V. DE BRAVO - VILLA VICTORIA ++","C.S. CASAS COLORADAS ++ V. DE BRAVO - VILLA VICTORIA ++")
addOption(document.form.SubCat,"CASA DE SALUD SANTA ISABEL DEL MONTE","CASA DE SALUD SANTA ISABEL DEL MONTE")
addOption(document.form.SubCat,"C.S. DOLORES VAQUERIAS","C.S. DOLORES VAQUERIAS")
addOption(document.form.SubCat,"C.S. EL CAPULIN ++ V. DE BRAVO - VILLA VICTORIA ++","C.S. EL CAPULIN ++ V. DE BRAVO - VILLA VICTORIA ++")
addOption(document.form.SubCat,"CASA DE SALUD BARRIO DE LOS REMEDIOS *V. DE BRAVO-VILLA VICT","CASA DE SALUD BARRIO DE LOS REMEDIOS *V. DE BRAVO-VILLA VICT")
addOption(document.form.SubCat,"CASA DE SALUD LAGUNA SECA (VALLE DE BRAVO)","CASA DE SALUD LAGUNA SECA (VALLE DE BRAVO)")
addOption(document.form.SubCat,"LOS CEDROS (1) (VALLE DE BRAVO)","LOS CEDROS (1) (VALLE DE BRAVO)")
addOption(document.form.SubCat,"LOS CEDROS (2) (VALLE DE BRAVO)","LOS CEDROS (2) (VALLE DE BRAVO)")
addOption(document.form.SubCat,"C.S. PALIZADA ++ V. DE BRAVO - VILLA VICTORIA ++","C.S. PALIZADA ++ V. DE BRAVO - VILLA VICTORIA ++")
addOption(document.form.SubCat,"C.S. SAN AGUSTIN ALTAMIRANO","C.S. SAN AGUSTIN ALTAMIRANO")
addOption(document.form.SubCat,"CASA DE SALUD SAN AGUSTIN BERROS ( VALLE DE BRAVO )","CASA DE SALUD SAN AGUSTIN BERROS ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"SAN AGUSTIN CANOHILLAS (VALLE DE BRAVO)","SAN AGUSTIN CANOHILLAS (VALLE DE BRAVO)")
addOption(document.form.SubCat,"SAN ANTONIO DEL RINCON (VALLE DE BRAVO)","SAN ANTONIO DEL RINCON (VALLE DE BRAVO)")
addOption(document.form.SubCat,"C.S. SAN DIEGO SUCHITEPEC ++ V. DE BRAVO - VILLA VICTORIA ++","C.S. SAN DIEGO SUCHITEPEC ++ V. DE BRAVO - VILLA VICTORIA ++")
addOption(document.form.SubCat,"SAN LUIS EL ALTO ( VALLE DE BRAVO )","SAN LUIS EL ALTO ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"SAN LUIS LA MANZANA (VALLE DE BRAVO)","SAN LUIS LA MANZANA (VALLE DE BRAVO)")
addOption(document.form.SubCat,"SAN MARCOS DE LA LOMA 1 (VALLE DE BRAVO)","SAN MARCOS DE LA LOMA 1 (VALLE DE BRAVO)")
addOption(document.form.SubCat,"SANTIAGO DEL MONTE (1)  ( VALLE DE BRAVO )","SANTIAGO DEL MONTE (1)  ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"SANTIAGO DEL MONTE (2)  ( VALLE DE BRAVO )","SANTIAGO DEL MONTE (2)  ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"SITIO EJIDO (VALLE DE BRAVO)","SITIO EJIDO (VALLE DE BRAVO)")
addOption(document.form.SubCat,"C.S. TURCIO (1)","C.S. TURCIO (1)")
addOption(document.form.SubCat,"C.S. TURCIO (2)","C.S. TURCIO (2)")
addOption(document.form.SubCat,"EL CERRILLO (1) V. DE BRAVO-VILLA VICTORIA","EL CERRILLO (1) V. DE BRAVO-VILLA VICTORIA")
addOption(document.form.SubCat,"CASA DE SALUD SANTIAGO DEL MONTE PUEBLO","CASA DE SALUD SANTIAGO DEL MONTE PUEBLO")
addOption(document.form.SubCat,"CASA DE SALUD BARRIO DE LOS RAMEJE ( VALLE DE BRAVO )","CASA DE SALUD BARRIO DE LOS RAMEJE ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"CASA DE SALUD BARRIO DE SAN MIGUEL ** V. DE BRAVO - V. VICT.","CASA DE SALUD BARRIO DE SAN MIGUEL ** V. DE BRAVO - V. VICT.")
addOption(document.form.SubCat,"CASA DE SALUD BARRIO DE VIVEROS (VALLE D BRAVO)","CASA DE SALUD BARRIO DE VIVEROS (VALLE D BRAVO)")
addOption(document.form.SubCat,"C.S.R. SAN AGUSTIN BERROS SECC G PAC","C.S.R. SAN AGUSTIN BERROS SECC G PAC")
addOption(document.form.SubCat,"CASA DE SALUD TURCIO 2DA SECCION","CASA DE SALUD TURCIO 2DA SECCION")
addOption(document.form.SubCat,"CASA DE SALUD VENTA DE OCOTILLOS","CASA DE SALUD VENTA DE OCOTILLOS")
addOption(document.form.SubCat,"CASA DE SALUD LA CAMPANILLA","CASA DE SALUD LA CAMPANILLA")
addOption(document.form.SubCat,"CASA DE SALUD MINA VIEJA ** V. DE BRAVO - VILLA VICTORIA **","CASA DE SALUD MINA VIEJA ** V. DE BRAVO - VILLA VICTORIA **")
addOption(document.form.SubCat,"CASA DE SALUD BARRIO DE LOS CEDROS ++V. DE BRAVO-VILLA VIC.+","CASA DE SALUD BARRIO DE LOS CEDROS ++V. DE BRAVO-VILLA VIC.+")
addOption(document.form.SubCat,"CASA DE SALUD SAN DIEGO DEL CERRITO ++V. DE BRAVO - VILLA V","CASA DE SALUD SAN DIEGO DEL CERRITO ++V. DE BRAVO - VILLA V")
addOption(document.form.SubCat,"OTZOLOAPAN (1) ( VALLE DE BRAVO )","OTZOLOAPAN (1) ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"OTZOLOAPAN (2) ( VALLE DE BRAVO )","OTZOLOAPAN (2) ( VALLE DE BRAVO )")
addOption(document.form.SubCat,"ZACAZONAPAN ( VALLE DE BRAVO )","ZACAZONAPAN ( VALLE DE BRAVO )")
}
if(document.form.Category.value == 'Xonacatlan'){
addOption(document.form.SubCat,"C.S. DOS RIOS (1) XON - HUIXQUILUCAN","C.S. DOS RIOS (1) XON - HUIXQUILUCAN")
addOption(document.form.SubCat,"C.S. DOS RIOS (2) XON - HUIXQUILUCAN","C.S. DOS RIOS (2) XON - HUIXQUILUCAN")
addOption(document.form.SubCat,"PIEDRA GRANDE (XONACATLAN)","PIEDRA GRANDE (XONACATLAN)")
addOption(document.form.SubCat,"SAN CRISTOBAL TEXCALUCAN (1) (XONACATLAN)","SAN CRISTOBAL TEXCALUCAN (1) (XONACATLAN)")
addOption(document.form.SubCat,"SAN CRISTOBAL TEXCALUCAN (2) (XONACATLAN)","SAN CRISTOBAL TEXCALUCAN (2) (XONACATLAN)")
addOption(document.form.SubCat,"SAN CRISTOBAL TEXCALUCAN (3) (XONACATLAN)","SAN CRISTOBAL TEXCALUCAN (3) (XONACATLAN)")
addOption(document.form.SubCat,"SAN CRISTOBAL TEXCALUCAN (4) (XONACATLAN)","SAN CRISTOBAL TEXCALUCAN (4) (XONACATLAN)")
addOption(document.form.SubCat,"C.S. SAN JUAN YAUTEPEC (1) ++ XON - HUIXQUILUCAN ++","C.S. SAN JUAN YAUTEPEC (1) ++ XON - HUIXQUILUCAN ++")
addOption(document.form.SubCat,"C.S. SAN JUAN YAUTEPEC (2) ++ XON - HUIXQUILUCAN ++","C.S. SAN JUAN YAUTEPEC (2) ++ XON - HUIXQUILUCAN ++")
addOption(document.form.SubCat,"C.S. SAN JUAN YAUTEPEC (3) ++ XON - HUIXQUILUCAN ++","C.S. SAN JUAN YAUTEPEC (3) ++ XON - HUIXQUILUCAN ++")
addOption(document.form.SubCat,"SANTA CRUZ AYOTUZCO (1) (XONACATLAN)","SANTA CRUZ AYOTUZCO (1) (XONACATLAN)")
addOption(document.form.SubCat,"SANTA CRUZ AYOTUZCO (2) (XONACATLAN)","SANTA CRUZ AYOTUZCO (2) (XONACATLAN)")
addOption(document.form.SubCat,"C.S. SANTIAGO YANCUITLALPAN ++ XON - HUIXQUILUCAN ++","C.S. SANTIAGO YANCUITLALPAN ++ XON - HUIXQUILUCAN ++")
addOption(document.form.SubCat,"CASA DE SALUD EL GUARDA (XONACATLAN)","CASA DE SALUD EL GUARDA (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD LAS CANTERAS ( XONACATLAN )","CASA DE SALUD LAS CANTERAS ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD SAN RAMON (XONACATLAN)","CASA DE SALUD SAN RAMON (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD EL PEDREGAL **XON-HUIXQUILUCAN**","CASA DE SALUD EL PEDREGAL **XON-HUIXQUILUCAN**")
addOption(document.form.SubCat,"CASA DE SALUD EL HIELO (XONACATLAN)","CASA DE SALUD EL HIELO (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD EL PALACIO (XONACATLAN)","CASA DE SALUD EL PALACIO (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD HUIXQUILUCAN V (XONACATLAN)","CASA DE SALUD HUIXQUILUCAN V (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD SAN BARTOLOME COATEPEC II ( XONACATLAN )","CASA DE SALUD SAN BARTOLOME COATEPEC II ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD MAGDALENA CHICHICASPA V (XONACATLAN)","CASA DE SALUD MAGDALENA CHICHICASPA V (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD SAN BARTOLOME COATEPEC I (XONACATLAN)","CASA DE SALUD SAN BARTOLOME COATEPEC I (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD MAGDALENA CHICHICASPA IV (XONACATLAN)","CASA DE SALUD MAGDALENA CHICHICASPA IV (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD MAGDALENA CHICHICASPA I  ( XONACATLAN )","CASA DE SALUD MAGDALENA CHICHICASPA I  ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD IGNACIO ALLENDE (XONACATLAN)","CASA DE SALUD IGNACIO ALLENDE (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD SANTIAGO YANCUITLALPAN I ( XONACATLAN )","CASA DE SALUD SANTIAGO YANCUITLALPAN I ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD CERRO DE SAN FRANCISCO  ( XONACATLAN )","CASA DE SALUD CERRO DE SAN FRANCISCO  ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD SANTA CRUZ AYOTUXCO II ** XON - HUIXQUILUCAN *","CASA DE SALUD SANTA CRUZ AYOTUXCO II ** XON - HUIXQUILUCAN *")
addOption(document.form.SubCat,"CASA DE SALUD SAN FRANCISCO AYOTUXCO ( XONACATLAN )","CASA DE SALUD SAN FRANCISCO AYOTUXCO ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD ZACAMULPA 3 ( XONACATLAN )","CASA DE SALUD ZACAMULPA 3 ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD ZACAMULPA 2 ( XONACATLAN )","CASA DE SALUD ZACAMULPA 2 ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD SAN JACINTO ** XON - HUIXQUILUCAN **","CASA DE SALUD SAN JACINTO ** XON - HUIXQUILUCAN **")
addOption(document.form.SubCat,"CASA DE SALUD EL CERRITO ** XON - HUIXQUILUCAN **","CASA DE SALUD EL CERRITO ** XON - HUIXQUILUCAN **")
addOption(document.form.SubCat,"COLONIA ALVARO OBREGON (XONACATLAN)","COLONIA ALVARO OBREGON (XONACATLAN)")
addOption(document.form.SubCat,"C.S. COL.REFORMA TLALMIMILOLPAN ** XON - LERMA **","C.S. COL.REFORMA TLALMIMILOLPAN ** XON - LERMA **")
addOption(document.form.SubCat,"ZACAMULPA HUITZIZILAPAN ( XONACATLAN )","ZACAMULPA HUITZIZILAPAN ( XONACATLAN )")
addOption(document.form.SubCat,"SAN LORENZO HUITZIZILAPAN (1) (XONACATLAN)","SAN LORENZO HUITZIZILAPAN (1) (XONACATLAN)")
addOption(document.form.SubCat,"SAN LORENZO HUITZIZILAPAN (2) (XONACATLAN)","SAN LORENZO HUITZIZILAPAN (2) (XONACATLAN)")
addOption(document.form.SubCat,"SAN MIGUEL AMEYALCO (XONACATLAN)","SAN MIGUEL AMEYALCO (XONACATLAN)")
addOption(document.form.SubCat,"SAN NICOLAS PERALTA (XONACATLAN)","SAN NICOLAS PERALTA (XONACATLAN)")
addOption(document.form.SubCat,"SAN PEDRO HUITZIZILAPAN (XONACATLAN)","SAN PEDRO HUITZIZILAPAN (XONACATLAN)")
addOption(document.form.SubCat,"SAN PEDRO TULTEPEC 1 (XONACATLAN)","SAN PEDRO TULTEPEC 1 (XONACATLAN)")
addOption(document.form.SubCat,"SAN PEDRO TULTEPEC 2 (XONACATLAN)","SAN PEDRO TULTEPEC 2 (XONACATLAN)")
addOption(document.form.SubCat,"SAN PEDRO TULTEPEC 3 (XONACATLAN)","SAN PEDRO TULTEPEC 3 (XONACATLAN)")
addOption(document.form.SubCat,"SANTA MARIA ATARASQUILLO(XONACATLAN)","SANTA MARIA ATARASQUILLO(XONACATLAN)")
addOption(document.form.SubCat,"SANTIAGO ANALCO (XONACATLAN)","SANTIAGO ANALCO (XONACATLAN)")
addOption(document.form.SubCat,"SAN FRANCISCO XOCHICUAUTLA (XONACATLAN)","SAN FRANCISCO XOCHICUAUTLA (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD SAN MARTIN LAS RAJAS (XONACATLAN)","CASA DE SALUD SAN MARTIN LAS RAJAS (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD SALAZAR ( XONACATLAN )","CASA DE SALUD SALAZAR ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD ZACAMULPA 1 ( XONACATLAN )","CASA DE SALUD ZACAMULPA 1 ( XONACATLAN )")
addOption(document.form.SubCat,"SAN JERONIMO ACAZULCO (XONACATLAN)","SAN JERONIMO ACAZULCO (XONACATLAN)")
addOption(document.form.SubCat,"SAN PEDRO ATLAPULCO (XONACATLAN)","SAN PEDRO ATLAPULCO (XONACATLAN)")
addOption(document.form.SubCat,"SAN PEDRO CHOLULA 1 (XONACATLAN)","SAN PEDRO CHOLULA 1 (XONACATLAN)")
addOption(document.form.SubCat,"SAN PEDRO CHOLULA 2 (XONACATLAN)","SAN PEDRO CHOLULA 2 (XONACATLAN)")
addOption(document.form.SubCat,"SANTA MARIA LA ASUNCION TEPEXO (XONACATLAN)","SANTA MARIA LA ASUNCION TEPEXO (XONACATLAN)")
addOption(document.form.SubCat,"SAN MIGUEL OCOYOACAC (XONACATLAN)","SAN MIGUEL OCOYOACAC (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD EL PEDREGAL-OCOYOACAC","CASA DE SALUD EL PEDREGAL-OCOYOACAC")
addOption(document.form.SubCat,"VILLA CUAHUTEMOC  ( 2 ) (XONACATLAN)","VILLA CUAHUTEMOC  ( 2 ) (XONACATLAN)")
addOption(document.form.SubCat,"SANTA ANA JILOTZINGO (1) (XONACATLAN)","SANTA ANA JILOTZINGO (1) (XONACATLAN)")
addOption(document.form.SubCat,"SANTA ANA JILOTZINGO (2) (XONACATLAN)","SANTA ANA JILOTZINGO (2) (XONACATLAN)")
addOption(document.form.SubCat," SANTA ANA JILOTZINGO (3) (XONACATLAN)"," SANTA ANA JILOTZINGO (3) (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD SANTA ANA JILOTZINGO NO EXISTE","CASA DE SALUD SANTA ANA JILOTZINGO NO EXISTE")
addOption(document.form.SubCat,"COL. GUADALUPE VICTORIA (1) XON-OTZOLOTEPEC","COL. GUADALUPE VICTORIA (1) XON-OTZOLOTEPEC")
addOption(document.form.SubCat,"COL. GUADALUPE VICTORIA (2) XON-OTZOLOTEPEC","COL. GUADALUPE VICTORIA (2) XON-OTZOLOTEPEC")
addOption(document.form.SubCat,"COL. GUADALUPE VICTORIA (3) XON-OTZOLOTEPEC","COL. GUADALUPE VICTORIA (3) XON-OTZOLOTEPEC")
addOption(document.form.SubCat,"LA PILAR MARIA ( 1 ) (XONACATLAN)","LA PILAR MARIA ( 1 ) (XONACATLAN)")
addOption(document.form.SubCat,"MAYORAZGO (SANTA ANA)  ( 1 ) (XONACATLAN)","MAYORAZGO (SANTA ANA)  ( 1 ) (XONACATLAN)")
addOption(document.form.SubCat,"MAYORAZGO (SANTA ANA)  ( 2 ) (XONACATLAN)","MAYORAZGO (SANTA ANA)  ( 2 ) (XONACATLAN)")
addOption(document.form.SubCat,"SAN MATEO CAPULHUAC (1) (XONACATLAN)","SAN MATEO CAPULHUAC (1) (XONACATLAN)")
addOption(document.form.SubCat,"SAN MATEO CAPULHUAC (2) (XONACATLAN)","SAN MATEO CAPULHUAC (2) (XONACATLAN)")
addOption(document.form.SubCat,"SAN MATEO CAPULHUAC (3) (XONACATLAN)","SAN MATEO CAPULHUAC (3) (XONACATLAN)")
addOption(document.form.SubCat,"SAN MATEO MOZOQUILPAN  (XONACATLAN)","SAN MATEO MOZOQUILPAN  (XONACATLAN)")
addOption(document.form.SubCat,"SAN MATEO MOZOQUILPAN ( 2 ) (NO EXISTE)","SAN MATEO MOZOQUILPAN ( 2 ) (NO EXISTE)")
addOption(document.form.SubCat,"SAN MATEO MOZOQUILPAN ( 3 ) (NO EXISTE)","SAN MATEO MOZOQUILPAN ( 3 ) (NO EXISTE)")
addOption(document.form.SubCat,"SAN MATEO MOZOQUILPAN ( 4 ) (NO EXISTE)","SAN MATEO MOZOQUILPAN ( 4 ) (NO EXISTE)")
addOption(document.form.SubCat,"VILLA CUAHUTEMOC  ( 1 ) (XONACATLAN)","VILLA CUAHUTEMOC  ( 1 ) (XONACATLAN)")
addOption(document.form.SubCat,"VILLA SECA (XONACATLAN)","VILLA SECA (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD BARRIO DE  LA BARRANCA (XONACATLAN)","CASA DE SALUD BARRIO DE  LA BARRANCA (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD SAN AGUSTIN MIMBRES ++XON-OTZOLOTEPEC++","CASA DE SALUD SAN AGUSTIN MIMBRES ++XON-OTZOLOTEPEC++")
addOption(document.form.SubCat,"CASA DE SALUD LA HUANICA ++ XON - OTZOLOTEPEC ++","CASA DE SALUD LA HUANICA ++ XON - OTZOLOTEPEC ++")
addOption(document.form.SubCat,"CASA DE SALUD CONCEPCION HIDALGO ( XONACATLAN )","CASA DE SALUD CONCEPCION HIDALGO ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD EJIDO DE MOZOQUILPAN (XONACATLAN)","CASA DE SALUD EJIDO DE MOZOQUILPAN (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD LA Y ( XONACATLAN )","CASA DE SALUD LA Y ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD PUENTE SAN PEDRO ( XONACATLAN )","CASA DE SALUD PUENTE SAN PEDRO ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD EL ESPINO ** XON - OTZOLOTEPEC **","CASA DE SALUD EL ESPINO ** XON - OTZOLOTEPEC **")
addOption(document.form.SubCat,"BARRIO DE GUADALUPE (1) XONACATLAN","BARRIO DE GUADALUPE (1) XONACATLAN")
addOption(document.form.SubCat,"BARRIO DE GUADALUPE (2) XONACATLAN","BARRIO DE GUADALUPE (2) XONACATLAN")
addOption(document.form.SubCat,"BARRIO DE GUADALUPE (3) XONACATLAN","BARRIO DE GUADALUPE (3) XONACATLAN")
addOption(document.form.SubCat,"C.S. EMILIANO ZAPATA ++ XON - SAN MATEO ATENCO ++","C.S. EMILIANO ZAPATA ++ XON - SAN MATEO ATENCO ++")
addOption(document.form.SubCat,"C.S. SANTA JUANITA BUENAVISTA **XON-SAN MATEO ATENCO**","C.S. SANTA JUANITA BUENAVISTA **XON-SAN MATEO ATENCO**")
addOption(document.form.SubCat,"SANTA MARIA LA ASUNCION (1) (XONACATLAN)","SANTA MARIA LA ASUNCION (1) (XONACATLAN)")
addOption(document.form.SubCat,"SANTA MARIA LA ASUNCION (2) (XONACATLAN)","SANTA MARIA LA ASUNCION (2) (XONACATLAN)")
addOption(document.form.SubCat,"CASA DE SALUD SN. PEDRO ARRIBA 2da. SECCION ** XON-TEMOAYA**","CASA DE SALUD SN. PEDRO ARRIBA 2da. SECCION ** XON-TEMOAYA**")
addOption(document.form.SubCat,"C.S. ALLENDE ++ XON - TEMOAYA ++","C.S. ALLENDE ++ XON - TEMOAYA ++")
addOption(document.form.SubCat,"ENTHAVI ( 1 )  (XONACATLAN)","ENTHAVI ( 1 )  (XONACATLAN)")
addOption(document.form.SubCat,"ENTHAVI ( 2 )  (XONACATLAN)","ENTHAVI ( 2 )  (XONACATLAN)")
addOption(document.form.SubCat,"JIQUIPILCO EL VIEJO (1) XON - TEMOAYA","JIQUIPILCO EL VIEJO (1) XON - TEMOAYA")
addOption(document.form.SubCat,"JIQUIPILCO EL VIEJO (2) XON - TEMOAYA","JIQUIPILCO EL VIEJO (2) XON - TEMOAYA")
addOption(document.form.SubCat,"JIQUIPILCO EL VIEJO (3) XON - TEMOAYA","JIQUIPILCO EL VIEJO (3) XON - TEMOAYA")
addOption(document.form.SubCat,"EL LAUREL ( 1 ) (XONACATLAN)","EL LAUREL ( 1 ) (XONACATLAN)")
addOption(document.form.SubCat,"EL LAUREL ( 2 ) (XONACATLAN)","EL LAUREL ( 2 ) (XONACATLAN)")
addOption(document.form.SubCat,"C.S. POTHE (1) ++ XON - TEMOAYA ++","C.S. POTHE (1) ++ XON - TEMOAYA ++")
addOption(document.form.SubCat,"C.S. POTHE (2) ++ XON - TEMOAYA ++","C.S. POTHE (2) ++ XON - TEMOAYA ++")
addOption(document.form.SubCat,"C.S. RANCHERIA LAS LOMAS ** XON - TEMOAYA **","C.S. RANCHERIA LAS LOMAS ** XON - TEMOAYA **")
addOption(document.form.SubCat,"SAN DIEGO ALCALA (1) (XONACATLAN)","SAN DIEGO ALCALA (1) (XONACATLAN)")
addOption(document.form.SubCat,"SAN DIEGO ALCALA (2) (XONACATLAN)","SAN DIEGO ALCALA (2) (XONACATLAN)")
addOption(document.form.SubCat,"SAN JOSE PATHE (XONACATLAN)","SAN JOSE PATHE (XONACATLAN)")
addOption(document.form.SubCat,"SAN LORENZO OYAMEL (1) (XONACATLAN)","SAN LORENZO OYAMEL (1) (XONACATLAN)")
addOption(document.form.SubCat,"SAN LORENZO OYAMEL (2) (XONACATLAN)","SAN LORENZO OYAMEL (2) (XONACATLAN)")
addOption(document.form.SubCat,"SAN PEDRO ARRIBA 1era. SECCION (1) ( XONACATLAN )","SAN PEDRO ARRIBA 1era. SECCION (1) ( XONACATLAN )")
addOption(document.form.SubCat,"SAN PEDRO ARRIBA 1era. SECCION (2) ( XONACATLAN )","SAN PEDRO ARRIBA 1era. SECCION (2) ( XONACATLAN )")
addOption(document.form.SubCat,"SAN PEDRO ARRIBA 1era. SECCION (3) ( XONACATLAN )","SAN PEDRO ARRIBA 1era. SECCION (3) ( XONACATLAN )")
addOption(document.form.SubCat,"SAN PEDRO ARRIBA 1era. SECCION (4) ( XONACATLAN )","SAN PEDRO ARRIBA 1era. SECCION (4) ( XONACATLAN )")
addOption(document.form.SubCat,"C.S. SN PEDRO ABAJO 1RA SECCION ++ XON - TEMOAYA ++","C.S. SN PEDRO ABAJO 1RA SECCION ++ XON - TEMOAYA ++")
addOption(document.form.SubCat,"C.S. SN PEDRO ABAJO SEGUNDA SECCION (1) ++ XON - TEMOAYA ++","C.S. SN PEDRO ABAJO SEGUNDA SECCION (1) ++ XON - TEMOAYA ++")
addOption(document.form.SubCat,"C.S. SN PEDRO ABAJO SEGUNDA SECCION (2) ++ XON - TEMOAYA ++","C.S. SN PEDRO ABAJO SEGUNDA SECCION (2) ++ XON - TEMOAYA ++")
addOption(document.form.SubCat,"TABORDA (1) (XONACATLAN)","TABORDA (1) (XONACATLAN)")
addOption(document.form.SubCat,"TABORDA (2) (XONACATLAN)","TABORDA (2) (XONACATLAN)")
addOption(document.form.SubCat,"LAS TROJES (1) ( XONACATLAN )","LAS TROJES (1) ( XONACATLAN )")
addOption(document.form.SubCat,"LAS TROJES (2) ( XONACATLAN )","LAS TROJES (2) ( XONACATLAN )")
addOption(document.form.SubCat,"LAS TROJES (3) ( XONACATLAN )","LAS TROJES (3) ( XONACATLAN )")
addOption(document.form.SubCat,"CASA DE SALUD MAGDALENA TENEXPAN **XON-TEMOAYA**","CASA DE SALUD MAGDALENA TENEXPAN **XON-TEMOAYA**")
addOption(document.form.SubCat,"C.S. SAN JOSE COMALCO ** XON - TEMOAYA **","C.S. SAN JOSE COMALCO ** XON - TEMOAYA **")
addOption(document.form.SubCat,"CASA DE SALUD SOLALPAN 1A. SECC ( XONACATLAN )","CASA DE SALUD SOLALPAN 1A. SECC ( XONACATLAN )")
addOption(document.form.SubCat,"C.S. SAN JOSE LAS LOMAS ** XON - TEMOAYA **","C.S. SAN JOSE LAS LOMAS ** XON - TEMOAYA **")
addOption(document.form.SubCat,"C.S. SAN JOSE BUENAVISTA EL GRANDE","C.S. SAN JOSE BUENAVISTA EL GRANDE")
addOption(document.form.SubCat,"CENTRO DE SALUD XONACATLAN (1) (XONACATLAN)","CENTRO DE SALUD XONACATLAN (1) (XONACATLAN)")
addOption(document.form.SubCat,"CENTRO DE SALUD XONACATLAN (2) (XONACATLAN)","CENTRO DE SALUD XONACATLAN (2) (XONACATLAN)")
addOption(document.form.SubCat,"CENTRO DE SALUD XONACATLAN (3) **XONACATLAN**","CENTRO DE SALUD XONACATLAN (3) **XONACATLAN**")
addOption(document.form.SubCat,"CENTRO DE SALUD XONACATLAN **ODONTOLOGICO**","CENTRO DE SALUD XONACATLAN **ODONTOLOGICO**")
addOption(document.form.SubCat,"SAN MIGUEL MIMIAPAN ( 1 )  (XONACATLAN)","SAN MIGUEL MIMIAPAN ( 1 )  (XONACATLAN)")
addOption(document.form.SubCat,"SAN MIGUEL MIMIAPAN ( 2 )  (XONACATLAN)","SAN MIGUEL MIMIAPAN ( 2 )  (XONACATLAN)")
addOption(document.form.SubCat,"SANTA MARIA ZOLOTEPEC ( 1 ) ( XONACATLAN )","SANTA MARIA ZOLOTEPEC ( 1 ) ( XONACATLAN )")
addOption(document.form.SubCat,"SANTA MARIA ZOLOTEPEC ( 2 ) ( XONACATLAN )","SANTA MARIA ZOLOTEPEC ( 2 ) ( XONACATLAN )")
addOption(document.form.SubCat,"C.S. SANTIAGO TEJOCOTILLOS","C.S. SANTIAGO TEJOCOTILLOS")
}

 if(document.form.Category.value == 'Bancomer'){
//var cad1="Acura";
addOption(document.form.SubCat,"0137032404-GRUPO SECEXA", "0137032404-GRUPO SECEXA");
//addOption(document.form.SubCat,"Cuenta Bancomer-00001 DLLS", "Cuenta Bancomer-0001 DLLS");
}
 if(document.form.Category.value == 'First Bank'){
//var cad1="Acura";
addOption(document.form.SubCat,"SECEXA INTERNACIONAL", "SECEXA INTERNACIONAL");
//addOption(document.form.SubCat,"Cuenta Bancomer-00001 DLLS", "Cuenta Bancomer-0001 DLLS");
}

    var bank= form.Category.value;
    form.txtf_bank.value=bank;
}

function SelectSubCat_02(){
// ON selection of category this function will work

removeAllOptions(document.form.SubCat);
addOption(document.form.SubCat, "", "No. de Cuenta", "");

if(document.form.Category.value == 'HSBC'){
//var cad1="Acura";
addOption(document.form.SubCat,"4032038408", "4032038408");
addOption(document.form.SubCat,"4019524735", "4019524735");
addOption(document.form.SubCat,"4023650732", "4023650732");
addOption(document.form.SubCat,"7001887827", "7001887827");
}

 if(document.form.Category.value == 'Bancomer'){
//var cad1="Acura";
addOption(document.form.SubCat,"0137032404", "0137032404");
addOption(document.form.SubCat,"0452612143", "0452612143");
//addOption(document.form.SubCat,"Cuenta Bancomer-00001 DLLS", "Cuenta Bancomer-0001 DLLS");
}
if(document.form.Category.value == 'First Bank'){
//var cad1="Acura";
addOption(document.form.SubCat,"1486123403", "1486123403");
//addOption(document.form.SubCat,"0452612143", "0452612143");
//addOption(document.form.SubCat,"Cuenta Bancomer-00001 DLLS", "Cuenta Bancomer-0001 DLLS");
}
if(document.form.Category.value == 'Bank of America'){
//var cad1="Acura";
addOption(document.form.SubCat,"1111111111", "1111111111");
//addOption(document.form.SubCat,"0452612143", "0452612143");
//addOption(document.form.SubCat,"Cuenta Bancomer-00001 DLLS", "Cuenta Bancomer-0001 DLLS");
}

    var bank_2= form.Category.value;
    form.txtf_bankk.value=bank_2;
}

function SelectSubCat_03(){
// ON selection of category this function will work

removeAllOptions(document.form.SubCat);
addOption(document.form.SubCat, "", "No. de Cuenta", "");

if(document.form.Category.value == 'HSBC'){
//var cad1="Acura";
addOption(document.form.SubCat,"4032038408", "4032038408");
addOption(document.form.SubCat,"4019524735", "4019524735");
addOption(document.form.SubCat,"4023650732", "4023650732");
addOption(document.form.SubCat,"7001887827", "7001887827");
}

 if(document.form.Category.value == 'Bancomer'){
//var cad1="Acura";
addOption(document.form.SubCat,"0137032404", "0137032404");
addOption(document.form.SubCat,"0452612143", "0452612143");
//addOption(document.form.SubCat,"Cuenta Bancomer-00001 DLLS", "Cuenta Bancomer-0001 DLLS");
}
if(document.form.Category.value == 'First Bank'){
//var cad1="Acura";
addOption(document.form.SubCat,"1486123403", "1486123403");
//addOption(document.form.SubCat,"0452612143", "0452612143");
//addOption(document.form.SubCat,"Cuenta Bancomer-00001 DLLS", "Cuenta Bancomer-0001 DLLS");
}
if(document.form.Category.value == 'Bank of America'){
//var cad1="Acura";
addOption(document.form.SubCat,"1111111111", "1111111111");
//addOption(document.form.SubCat,"0452612143", "0452612143");
//addOption(document.form.SubCat,"Cuenta Bancomer-00001 DLLS", "Cuenta Bancomer-0001 DLLS");
}

    var bank_3= form.Category.value;
    form.txtf_bancos2.value=bank_3;
}

function SelectSubCat_Empleado(){
// ON selection of category this function will work

removeAllOptions(document.form.SubCat);
addOption(document.form.SubCat, "", "Horario", "");

if(document.form.Category.value == 'Empleado 1'){
//var cad1="Acura";
addOption(document.form.SubCat,"8:00 AM - 17:00 PM", "8:00 AM - 17:00 PM");

}

 if(document.form.Category.value == 'Empleado 2'){
//var cad1="Acura";
addOption(document.form.SubCat,"9:00 AM - 18:00 PM", "9:00 AM - 18:00 PM");

}


    var hora= form.Category.value;
    form.txtf_38.value=hora;
}
function Select(){
// ON selection of category this function will work

removeAllOptions(document.form1.City);
addOption(document.form1.City, "", "City", "");

if(document.form1.County.value == 'Los Angeles'){
//var cad1="Acura";
addOption(document.form1.City,"Alhambra", "Alhambra");
addOption(document.form1.City,"Bell", "Bell");
addOption(document.form1.City,"Calabazas", "Calabazas");
addOption(document.form1.City,"Diamond Bar", "Diamond Bar");
addOption(document.form1.City,"El Segundo", "El Segundo");
addOption(document.form1.City,"Glendale", "Glendale");
addOption(document.form1.City,"Hawtorne", "Hawtorne");
addOption(document.form1.City,"Inglewood", "Inglewood");
addOption(document.form1.City,"Los Angeles", "Los Angeles");
addOption(document.form1.City,"Malibu", "Malibu");
addOption(document.form1.City,"Norwalk", "Norwalk");
addOption(document.form1.City,"Palmdale", "Palmdale");
addOption(document.form1.City,"Rosemead", "Rosemead");
addOption(document.form1.City,"San Fernando", "San Fernando");
addOption(document.form1.City,"Temple City", "Temple City");
addOption(document.form1.City,"West Covina", "West Covina");
}

if(document.form1.County.value == 'Orange'){
addOption(document.form1.City,"Anaheim", "Anaheim");
addOption(document.form1.City,"Brea", "Brea");
addOption(document.form1.City,"Costa Mesa", "Costa Mesa");
addOption(document.form1.City,"Dove Canyon", "Dove Canyon");
addOption(document.form1.City,"Fullerton", "Fullerton");
addOption(document.form1.City,"Garden Grove", "Garden Grove");
addOption(document.form1.City,"Huntington Beach", "Huntington Beach");
addOption(document.form1.City,"Irvine", "Irvine");
addOption(document.form1.City,"Laguna Niguel", "Laguna Niguel");
addOption(document.form1.City,"Monarch Beach", "Monarch Beach");
addOption(document.form1.City,"Newport Coast", "Newport Coast");
addOption(document.form1.City,"Orange", "Orange");
addOption(document.form1.City,"Placentia", "Placentia");
addOption(document.form1.City,"Santa Ana", "Santa Ana");
addOption(document.form1.City,"Tustin", "Tustin");
addOption(document.form1.City,"Westminster", "Westminster");
}
if(document.form1.County.value == 'Riverside'){
addOption(document.form1.City,"Cathedral City", "Cathedral City");
addOption(document.form1.City,"Blythe", "Blythe");
addOption(document.form1.City,"Calimesa", "Calimesa");
addOption(document.form1.City,"Canyon Lake", "Canyon Lake");
addOption(document.form1.City,"Corona", "Corona");
addOption(document.form1.City,"Indians Wells", "Indians Wells");
addOption(document.form1.City,"Indio", "Indio");
addOption(document.form1.City,"La Quinta", "La Quinta");
addOption(document.form1.City,"Moreno Valley", "Moreno Valley");
addOption(document.form1.City,"Norco", "Norco");
addOption(document.form1.City,"Palm Desert", "Palm Desert");
addOption(document.form1.City,"Palm Springs", "Palm Springs");
addOption(document.form1.City,"Riverside", "Riverside");
addOption(document.form1.City,"San Jacinto", "San Jacinto");
addOption(document.form1.City,"Temecula", "Temecula");
}

if(document.form1.County.value == 'San Bernardino'){
addOption(document.form1.City,"Apple Valley", "Apple Valley");
addOption(document.form1.City,"Barstow", "Barstow");
addOption(document.form1.City,"Big Bear Lake", "Big Bear Lake");
addOption(document.form1.City,"Chino", "Chino");
addOption(document.form1.City,"Chino Hills", "Chino Hills");
addOption(document.form1.City,"Fontana", "Fontana");
addOption(document.form1.City,"Grand Terrace", "Grand Terrace");
addOption(document.form1.City,"Hesperia", "Hesperia");
addOption(document.form1.City,"Highland", "Highland");
addOption(document.form1.City,"Joshua Tree", "Joshua Tree");
addOption(document.form1.City,"Lake Arrowhead", "Lake Arrowhead");
addOption(document.form1.City,"Montclair", "Montclair");
addOption(document.form1.City,"Needles", "Needles");
addOption(document.form1.City,"Ontario", "Ontario");
addOption(document.form1.City,"Rancho Cucamonga", "Rancho Cucamonga");
addOption(document.form1.City,"San Bernardino", "San Bernardino");
addOption(document.form1.City,"Upland", "Upland");
addOption(document.form1.City,"Victorville", "Victorville");
addOption(document.form1.City,"Yucaipa", "Yucaipa");
addOption(document.form1.City,"Yuca Valley", "Yuca Valley");
}

if(document.form1.County.value == 'Ventura'){
addOption(document.form1.City,"Camarillo", "Camarillo");
addOption(document.form1.City,"Fillmore", "Fillmore");
addOption(document.form1.City,"Moorpark", "Moorpark");
addOption(document.form1.City,"Oxnard", "Oxnard");
addOption(document.form1.City,"Port Hueneme", "Port Hueneme");
addOption(document.form1.City,"Santa Paula", "Santa Paula");
addOption(document.form1.City,"Simi Valley", "Simi Valley");
addOption(document.form1.City,"Thousand Oaks", "Thousand Oaks");
addOption(document.form1.City,"Ventura", "Ventura");
}

}//end of if SelectSubCat2

function SelectSubCat(){
// ON selection of category this function will work

removeAllOptions(document.form1.SubCat);
addOption(document.form1.SubCat, "", "Model", "");

if(document.form1.Category.value == 'Acura'){
//var cad1="Acura";
addOption(document.form1.SubCat,"Integra", "Integra");
addOption(document.form1.SubCat,"Legend", "Legend");
addOption(document.form1.SubCat,"NSX", "NSX");

}
if(document.form1.Category.value == 'Audi'){
addOption(document.form1.SubCat,"100", "100");
addOption(document.form1.SubCat,"200", "200");
addOption(document.form1.SubCat,"80", "80", "");
addOption(document.form1.SubCat,"Coupe", "Coupe", "");
}
if(document.form1.Category.value == 'BMW'){
addOption(document.form1.SubCat,"318", "318");
addOption(document.form1.SubCat,"325", "325");
addOption(document.form1.SubCat,"525", "525");
addOption(document.form1.SubCat,"535", "535");
addOption(document.form1.SubCat,"735", "735");
addOption(document.form1.SubCat,"750", "750");
addOption(document.form1.SubCat,"850", "850");
addOption(document.form1.SubCat,"M3", "M3");
addOption(document.form1.SubCat,"M5", "M5");
}
if(document.form1.Category.value == 'Buick'){
addOption(document.form1.SubCat,"Century", "Century");
addOption(document.form1.SubCat,"Le Sabre", "Le Sabre");
addOption(document.form1.SubCat,"Park Avenue", "Park Avenue");
addOption(document.form1.SubCat,"Reatta", "Reatta");
addOption(document.form1.SubCat,"Regal", "Regal");
addOption(document.form1.SubCat,"Riviera", "Riviera");
addOption(document.form1.SubCat,"Roadmaster", "Roadmaster");
addOption(document.form1.SubCat,"Skylark", "Skylark");
addOption(document.form1.SubCat,"Terraza", "Terraza");
}
if(document.form1.Category.value == 'Chevrolet'){
addOption(document.form1.SubCat,"Astro", "Astro");
addOption(document.form1.SubCat,"Avalanche", "Avalanche");
addOption(document.form1.SubCat,"Aveo", "Aveo");
addOption(document.form1.SubCat,"Blazer", "Blazer");
addOption(document.form1.SubCat,"C1500", "C1500");
addOption(document.form1.SubCat,"C2500", "C2500");
addOption(document.form1.SubCat,"C3500", "C3500");
addOption(document.form1.SubCat,"Cavalier", "Cavalier");
addOption(document.form1.SubCat,"Cobalt", "Cobalt");
addOption(document.form1.SubCat,"Colorado", "Colorado");
addOption(document.form1.SubCat,"Corvette", "Corvette");
addOption(document.form1.SubCat,"Epica", "Epica");
addOption(document.form1.SubCat,"Equinox", "Equinox");
addOption(document.form1.SubCat,"Express", "Express");
addOption(document.form1.SubCat,"Impala", "Impala");
addOption(document.form1.SubCat,"K1500", "K1500");
addOption(document.form1.SubCat,"K2500", "K2500");
addOption(document.form1.SubCat,"K3500", "K3500");
addOption(document.form1.SubCat,"Malibu", "Malibu");
addOption(document.form1.SubCat,"Montecarlo", "Montecarlo");
addOption(document.form1.SubCat,"Optra", "Optra");
addOption(document.form1.SubCat,"Suburban", "Suburban");
addOption(document.form1.SubCat,"Tahoe", "Tahoe");
addOption(document.form1.SubCat,"TrailBlazer", "TrailBlazer");
addOption(document.form1.SubCat,"Uplander", "Uplander");
addOption(document.form1.SubCat,"Venture", "Venture");
}
if(document.form1.Category.value == 'Chrysler'){
addOption(document.form1.SubCat,"Cirrus", "Cirrus");
addOption(document.form1.SubCat,"Concorde", "Concorde");
addOption(document.form1.SubCat,"LHS", "LHS");
addOption(document.form1.SubCat,"Sebring", "Sebring");
addOption(document.form1.SubCat,"Town&Contry", "Town&Contry");
}

if(document.form1.Category.value == 'Dodge'){
addOption(document.form1.SubCat,"Avenger", "Avenger");
addOption(document.form1.SubCat,"Caravan", "Caravan");
addOption(document.form1.SubCat,"Dakota", "Dakota");
addOption(document.form1.SubCat,"Durango", "Durango");
addOption(document.form1.SubCat,"Grand Caravan", "Grand Caravan");
addOption(document.form1.SubCat,"Intrepid", "Intrepid");
addOption(document.form1.SubCat,"Magnum", "Magnum");
addOption(document.form1.SubCat,"Neon", "Neon");
addOption(document.form1.SubCat,"Ram 1500", "Ram 1500");
addOption(document.form1.SubCat,"Ram 2500", "Ram 2500");
addOption(document.form1.SubCat,"Ram 3500", "Ram 3500");
addOption(document.form1.SubCat,"Ram Van", "Ram Van");
addOption(document.form1.SubCat,"Sprinter", "Sprinter");
addOption(document.form1.SubCat,"Stratus", "Stratus");
addOption(document.form1.SubCat,"Viper", "Viper");
}
if(document.form1.Category.value == 'Ford'){
addOption(document.form1.SubCat,"Crown Victoria", "Crown Victoria");
addOption(document.form1.SubCat,"Econoline 150", "Econoline 150");
addOption(document.form1.SubCat,"Econoline 250", "Econoline 250");
addOption(document.form1.SubCat,"Econoline 350", "Econoline 350");
addOption(document.form1.SubCat,"Escape", "Escape");
addOption(document.form1.SubCat,"Excursion", "Excursion");
addOption(document.form1.SubCat,"Expedition", "Expedition");
addOption(document.form1.SubCat,"Explorer", "Explorer");
addOption(document.form1.SubCat,"F150", "F150");
addOption(document.form1.SubCat,"F250", "F250");
addOption(document.form1.SubCat,"F350", "F350");
addOption(document.form1.SubCat,"Five Hundred", "Five Hundred");
addOption(document.form1.SubCat,"Focus", "Focus");
addOption(document.form1.SubCat,"Freestar", "Freestar");
addOption(document.form1.SubCat,"Freestyle", "Freestyle");
addOption(document.form1.SubCat,"Mustang", "Mustang");
addOption(document.form1.SubCat,"Ranger", "Ranger");
addOption(document.form1.SubCat,"Taurus", "Tarus");
addOption(document.form1.SubCat,"Thunderbird", "Thunderbird");
}
if(document.form1.Category.value == 'GMC'){
addOption(document.form1.SubCat,"C1500", "C1500");
addOption(document.form1.SubCat,"C2500", "C2500");
addOption(document.form1.SubCat,"C3500", "C3500");
addOption(document.form1.SubCat,"Canyon", "Canyon");
addOption(document.form1.SubCat,"Envoy", "Envoy");
addOption(document.form1.SubCat,"Jimmy", "Jimmy");
addOption(document.form1.SubCat,"K1500", "K1500");
addOption(document.form1.SubCat,"K2500", "K2500");
addOption(document.form1.SubCat,"K3500", "K3500");
addOption(document.form1.SubCat,"Safari", "Safari");
addOption(document.form1.SubCat,"Savana", "Savana");
addOption(document.form1.SubCat,"Sonoma", "Sonoma");
addOption(document.form1.SubCat,"Suburban", "Suburban");
addOption(document.form1.SubCat,"Yukon", "Yukon");
}
if(document.form1.Category.value == 'GEO'){
addOption(document.form1.SubCat,"Metro", "Metro");
addOption(document.form1.SubCat,"Prizm", "Prizm");
addOption(document.form1.SubCat,"Storm", "Storm");
addOption(document.form1.SubCat,"Tracker", "Tracker");
}

if(document.form1.Category.value == 'Honda'){
addOption(document.form1.SubCat,"Accord", "Accord");
addOption(document.form1.SubCat,"Civic", "Civic");
addOption(document.form1.SubCat,"CR-V", "CR-V");
addOption(document.form1.SubCat,"Element", "Element");
addOption(document.form1.SubCat,"EV-Plus", "EV-Plus");
addOption(document.form1.SubCat,"Fit", "Fit");
addOption(document.form1.SubCat,"Odyssey", "Odyssey");
addOption(document.form1.SubCat,"Passport", "Passport");
addOption(document.form1.SubCat,"Pilot", "Pilot");
addOption(document.form1.SubCat,"Prelude", "Prelude");
addOption(document.form1.SubCat,"Redgeline", "Redgeline");
addOption(document.form1.SubCat,"S2000", "S2000");
}
if(document.form1.Category.value == 'Hummer'){
addOption(document.form1.SubCat,"H2", "H2");
addOption(document.form1.SubCat,"H3", "H3");
}
if(document.form1.Category.value == 'Hyundai'){
addOption(document.form1.SubCat,"Accent", "Accent");
addOption(document.form1.SubCat,"Azera", "Azera");
addOption(document.form1.SubCat,"Elantra", "Elantra");
addOption(document.form1.SubCat,"Entourage", "Entourage");
addOption(document.form1.SubCat,"Excel", "Excel");
addOption(document.form1.SubCat,"Santa fe", "Santa fe");
addOption(document.form1.SubCat,"Sonata", "Sonata");
addOption(document.form1.SubCat,"Tiburon", "Tiburon");
addOption(document.form1.SubCat,"Tucson", "Tucson");
}

if(document.form1.Category.value == 'Infinty'){
addOption(document.form1.SubCat,"FX35", "FX35");
addOption(document.form1.SubCat,"FX45", "FX45");
addOption(document.form1.SubCat,"G35", "G35");
addOption(document.form1.SubCat,"M30", "M30");
addOption(document.form1.SubCat,"Q45", "Q45");
addOption(document.form1.SubCat,"QX56", "QX56");
}
if(document.form1.Category.value == 'Jeep'){
addOption(document.form1.SubCat,"Cherokee", "Cherokee");
addOption(document.form1.SubCat,"Comanche", "Comanche");
addOption(document.form1.SubCat,"Commander", "Commander");
addOption(document.form1.SubCat,"Compas", "Compas");
addOption(document.form1.SubCat,"Grand Wagonner", "Grand Wagonner");
addOption(document.form1.SubCat,"Liberty", "Liberty");
}
if(document.form1.Category.value == 'Lexus'){
addOption(document.form1.SubCat,"ES250", "ES250");
addOption(document.form1.SubCat,"GS350", "GS350");
addOption(document.form1.SubCat,"GS430", "GS430");
addOption(document.form1.SubCat,"GX470", "GX470");
addOption(document.form1.SubCat,"IS250", "IS250");
addOption(document.form1.SubCat,"IS350", "IS350");
addOption(document.form1.SubCat,"LS400", "LS400");
addOption(document.form1.SubCat,"LS460", "LS460");
addOption(document.form1.SubCat,"LX470", "LX470");
addOption(document.form1.SubCat,"RX350", "RX350");
}
if(document.form1.Category.value == 'Mitsubishi'){
addOption(document.form1.SubCat,"Eclipse", "Eclipse");
addOption(document.form1.SubCat,"Endeavor", "Endeavor");
addOption(document.form1.SubCat,"Galant", "Galant");
addOption(document.form1.SubCat,"Max", "Max");
addOption(document.form1.SubCat,"Mighty", "Mighty");
addOption(document.form1.SubCat,"Mirage", "Mirage");
addOption(document.form1.SubCat,"Montero", "Montero");
addOption(document.form1.SubCat,"Lancer", "Lancer");
addOption(document.form1.SubCat,"Outlander", "Outlander");
addOption(document.form1.SubCat,"Precis", "Precis");
addOption(document.form1.SubCat,"Raider", "Raider");
addOption(document.form1.SubCat,"Sigma", "Sigma");
addOption(document.form1.SubCat,"Van", "Van");
}

if(document.form1.Category.value == 'Nissan'){
addOption(document.form1.SubCat,"240SX", "240SX");
addOption(document.form1.SubCat,"300ZX", "300ZX");
addOption(document.form1.SubCat,"Altima", "Altima");
addOption(document.form1.SubCat,"Armada", "Armada");
addOption(document.form1.SubCat,"Axxers", "Axxers");
addOption(document.form1.SubCat,"Frontier", "Frontier");
addOption(document.form1.SubCat,"Maxima", "Maxima");
addOption(document.form1.SubCat,"Murano", "Murano");
addOption(document.form1.SubCat,"Pathfinder", "Pathfinder");
addOption(document.form1.SubCat,"Pickup", "Pickup");
addOption(document.form1.SubCat,"Pulsar", "Pulsar");
addOption(document.form1.SubCat,"Quest", "Quest");
addOption(document.form1.SubCat,"Sentra", "Sentra");
addOption(document.form1.SubCat,"Stanza", "Stanza");
addOption(document.form1.SubCat,"Titan", "Titan");
addOption(document.form1.SubCat,"Van", "Van");
addOption(document.form1.SubCat,"XTerra", "Xterra");
}
if(document.form1.Category.value == 'Oldsmobile'){
addOption(document.form1.SubCat,"Calais", "Calais");
addOption(document.form1.SubCat,"Custom Cruiser", "Custom Cruiser");
addOption(document.form1.SubCat,"Cutlas", "Cutlas");
addOption(document.form1.SubCat,"Delta88", "Delta88");
addOption(document.form1.SubCat,"Ninety-Eight", "Ninety-Eight");
addOption(document.form1.SubCat,"Silhouette", "Silhouette");
addOption(document.form1.SubCat,"Tornado", "Tornado");
}
if(document.form1.Category.value == 'Plymouth'){
addOption(document.form1.SubCat,"Acclaim", "Acclaim");
addOption(document.form1.SubCat,"Colt", "Colt");
addOption(document.form1.SubCat,"Colt Vista", "Colt Vista");
addOption(document.form1.SubCat,"Grand Voyager", "Grand Voyager");
addOption(document.form1.SubCat,"Horizon", "Horizon");
addOption(document.form1.SubCat,"Laser", "Laser");
addOption(document.form1.SubCat,"Sundance", "Sundance");
addOption(document.form1.SubCat,"Voyager", "Voyager");
}
if(document.form1.Category.value == 'Pontiac'){
addOption(document.form1.SubCat,"6000", "6000");
addOption(document.form1.SubCat,"Boneville", "Boneville");
addOption(document.form1.SubCat,"Firebird", "Firebird");
addOption(document.form1.SubCat,"G5", "G5");
addOption(document.form1.SubCat,"G6", "G6");
addOption(document.form1.SubCat,"Grand Am", "Grand Am");
addOption(document.form1.SubCat,"Grand Prix", "Grand Prix");
addOption(document.form1.SubCat,"Lemans", "Lemans");
addOption(document.form1.SubCat,"Montana", "Montana");
addOption(document.form1.SubCat,"Solstice", "Solstice");
addOption(document.form1.SubCat,"Sunbird", "Sunbird");
addOption(document.form1.SubCat,"Torrent", "Torrent");
addOption(document.form1.SubCat,"Trans Sport", "Trans Sport");
addOption(document.form1.SubCat,"Vibe", "Vibe");
addOption(document.form1.SubCat,"Wave", "Wave");
}
if(document.form1.Category.value == 'Toyota'){
addOption(document.form1.SubCat,"4Runner", "4Runner");
addOption(document.form1.SubCat,"Avalon", "Avalon");
addOption(document.form1.SubCat,"Camry", "Camry");
addOption(document.form1.SubCat,"Celica", "Celica");
addOption(document.form1.SubCat,"Corolla", "Corolla");
addOption(document.form1.SubCat,"Cressida", "Cressida");
addOption(document.form1.SubCat,"FJCruiser", "FJCruiser");
addOption(document.form1.SubCat,"Highlander", "Highlander");
addOption(document.form1.SubCat,"Land Cruiser", "Land Cruiser");
addOption(document.form1.SubCat,"Matrix", "Matrix");
addOption(document.form1.SubCat,"Paseo", "Paseo");
addOption(document.form1.SubCat,"Pickup", "Pickup");
addOption(document.form1.SubCat,"Previa", "Previa");
addOption(document.form1.SubCat,"Prius", "Prius");
addOption(document.form1.SubCat,"RAV4", "RAV4");
addOption(document.form1.SubCat,"Sequoia", "Sequioa");
addOption(document.form1.SubCat,"Sienna", "Sienna");
addOption(document.form1.SubCat,"T100", "T100");
addOption(document.form1.SubCat,"Tacoma", "Tacoma");
addOption(document.form1.SubCat,"Tercel", "Tercel");
addOption(document.form1.SubCat,"Yaris", "Yaris");
}

if(document.form1.Category.value == 'VW'){
addOption(document.form1.SubCat,"Beetle", "Beetle");
addOption(document.form1.SubCat,"Cabrio", "Cabrio");
addOption(document.form1.SubCat,"Cabriolet", "Cabriolet");
addOption(document.form1.SubCat,"Corrado", "Corrado");
addOption(document.form1.SubCat,"EOS", "EOS");
addOption(document.form1.SubCat,"Eurovan", "Eurovan");
addOption(document.form1.SubCat,"Fox", "Fox");
addOption(document.form1.SubCat,"Golf", "Golf");
addOption(document.form1.SubCat,"GTI", "GTI");
addOption(document.form1.SubCat,"Jetta", "Jetta");
addOption(document.form1.SubCat,"Passat", "Passat");
addOption(document.form1.SubCat,"Rabbit", "Rabbit");
addOption(document.form1.SubCat,"Touareg", "Touareg");
}


}

///////////////// 
function SelectSubCat2(){
// ON selection of category this function will work

removeAllOptions(document.form1.slct_Model2);
addOption(document.form1.slct_Model2, "", "Model", "");

if(document.form1.slct_Make2.value == 'Acura'){
//var cad1="Acura";
addOption(document.form1.slct_Model2,"Integra", "Integra");
addOption(document.form1.slct_Model2,"Legend", "Legend");
addOption(document.form1.slct_Model2,"NSX", "NSX");

}
if(document.form1.slct_Make2.value == 'Audi'){
addOption(document.form1.slct_Model2,"100", "100");
addOption(document.form1.slct_Model2,"200", "200");
addOption(document.form1.slct_Model2,"80", "80", "");
addOption(document.form1.slct_Model2,"Coupe", "Coupe", "");
}
if(document.form1.slct_Make2.value == 'BMW'){
addOption(document.form1.slct_Model2,"318", "318");
addOption(document.form1.slct_Model2,"325", "325");
addOption(document.form1.slct_Model2,"525", "525");
addOption(document.form1.slct_Model2,"535", "535");
addOption(document.form1.slct_Model2,"735", "735");
addOption(document.form1.slct_Model2,"750", "750");
addOption(document.form1.slct_Model2,"850", "850");
addOption(document.form1.slct_Model2,"M3", "M3");
addOption(document.form1.slct_Model2,"M5", "M5");
}
if(document.form1.slct_Make2.value == 'Buick'){
addOption(document.form1.slct_Model2,"Century", "Century");
addOption(document.form1.slct_Model2,"Le Sabre", "Le Sabre");
addOption(document.form1.slct_Model2,"Park Avenue", "Park Avenue");
addOption(document.form1.slct_Model2,"Reatta", "Reatta");
addOption(document.form1.slct_Model2,"Regal", "Regal");
addOption(document.form1.slct_Model2,"Riviera", "Riviera");
addOption(document.form1.slct_Model2,"Roadmaster", "Roadmaster");
addOption(document.form1.slct_Model2,"Skylark", "Skylark");
addOption(document.form1.slct_Model2,"Terraza", "Terraza");
}
if(document.form1.slct_Make2.value == 'Chevrolet'){
addOption(document.form1.slct_Model2,"Astro", "Astro");
addOption(document.form1.slct_Model2,"Avalanche", "Avalanche");
addOption(document.form1.slct_Model2,"Aveo", "Aveo");
addOption(document.form1.slct_Model2,"Blazer", "Blazer");
addOption(document.form1.slct_Model2,"C1500", "C1500");
addOption(document.form1.slct_Model2,"C2500", "C2500");
addOption(document.form1.slct_Model2,"C3500", "C3500");
addOption(document.form1.slct_Model2,"Cavalier", "Cavalier");
addOption(document.form1.slct_Model2,"Cobalt", "Cobalt");
addOption(document.form1.slct_Model2,"Colorado", "Colorado");
addOption(document.form1.slct_Model2,"Corvette", "Corvette");
addOption(document.form1.slct_Model2,"Epica", "Epica");
addOption(document.form1.slct_Model2,"Equinox", "Equinox");
addOption(document.form1.slct_Model2,"Express", "Express");
addOption(document.form1.slct_Model2,"Impala", "Impala");
addOption(document.form1.slct_Model2,"K1500", "K1500");
addOption(document.form1.slct_Model2,"K2500", "K2500");
addOption(document.form1.slct_Model2,"K3500", "K3500");
addOption(document.form1.slct_Model2,"Malibu", "Malibu");
addOption(document.form1.slct_Model2,"Montecarlo", "Montecarlo");
addOption(document.form1.slct_Model2,"Optra", "Optra");
addOption(document.form1.slct_Model2,"Suburban", "Suburban");
addOption(document.form1.slct_Model2,"Tahoe", "Tahoe");
addOption(document.form1.slct_Model2,"TrailBlazer", "TrailBlazer");
addOption(document.form1.slct_Model2,"Uplander", "Uplander");
addOption(document.form1.slct_Model2,"Venture", "Venture");
}
if(document.form1.slct_Make2.value == 'Chrysler'){
addOption(document.form1.slct_Model2,"Cirrus", "Cirrus");
addOption(document.form1.slct_Model2,"Concorde", "Concorde");
addOption(document.form1.slct_Model2,"LHS", "LHS");
addOption(document.form1.slct_Model2,"Sebring", "Sebring");
addOption(document.form1.slct_Model2,"Town&Contry", "Town&Contry");
}

if(document.form1.slct_Make2.value == 'Dodge'){
addOption(document.form1.slct_Model2,"Avenger", "Avenger");
addOption(document.form1.slct_Model2,"Caravan", "Caravan");
addOption(document.form1.slct_Model2,"Dakota", "Dakota");
addOption(document.form1.slct_Model2,"Durango", "Durango");
addOption(document.form1.slct_Model2,"Grand Caravan", "Grand Caravan");
addOption(document.form1.slct_Model2,"Intrepid", "Intrepid");
addOption(document.form1.slct_Model2,"Magnum", "Magnum");
addOption(document.form1.slct_Model2,"Neon", "Neon");
addOption(document.form1.slct_Model2,"Ram 1500", "Ram 1500");
addOption(document.form1.slct_Model2,"Ram 2500", "Ram 2500");
addOption(document.form1.slct_Model2,"Ram 3500", "Ram 3500");
addOption(document.form1.slct_Model2,"Ram Van", "Ram Van");
addOption(document.form1.slct_Model2,"Sprinter", "Sprinter");
addOption(document.form1.slct_Model2,"Stratus", "Stratus");
addOption(document.form1.slct_Model2,"Viper", "Viper");
}
if(document.form1.slct_Make2.value == 'Ford'){
addOption(document.form1.slct_Model2,"Crown Victoria", "Crown Victoria");
addOption(document.form1.slct_Model2,"Econoline 150", "Econoline 150");
addOption(document.form1.slct_Model2,"Econoline 250", "Econoline 250");
addOption(document.form1.slct_Model2,"Econoline 350", "Econoline 350");
addOption(document.form1.slct_Model2,"Escape", "Escape");
addOption(document.form1.slct_Model2,"Excursion", "Excursion");
addOption(document.form1.slct_Model2,"Expedition", "Expedition");
addOption(document.form1.slct_Model2,"Explorer", "Explorer");
addOption(document.form1.slct_Model2,"F150", "F150");
addOption(document.form1.slct_Model2,"F250", "F250");
addOption(document.form1.slct_Model2,"F350", "F350");
addOption(document.form1.slct_Model2,"Five Hundred", "Five Hundred");
addOption(document.form1.slct_Model2,"Focus", "Focus");
addOption(document.form1.slct_Model2,"Freestar", "Freestar");
addOption(document.form1.slct_Model2,"Freestyle", "Freestyle");
addOption(document.form1.slct_Model2,"Mustang", "Mustang");
addOption(document.form1.slct_Model2,"Ranger", "Ranger");
addOption(document.form1.slct_Model2,"Taurus", "Tarus");
addOption(document.form1.slct_Model2,"Thunderbird", "Thunderbird");
}
if(document.form1.slct_Make2.value == 'GMC'){
addOption(document.form1.slct_Model2,"C1500", "C1500");
addOption(document.form1.slct_Model2,"C2500", "C2500");
addOption(document.form1.slct_Model2,"C3500", "C3500");
addOption(document.form1.slct_Model2,"Canyon", "Canyon");
addOption(document.form1.slct_Model2,"Envoy", "Envoy");
addOption(document.form1.slct_Model2,"Jimmy", "Jimmy");
addOption(document.form1.slct_Model2,"K1500", "K1500");
addOption(document.form1.slct_Model2,"K2500", "K2500");
addOption(document.form1.slct_Model2,"K3500", "K3500");
addOption(document.form1.slct_Model2,"Safari", "Safari");
addOption(document.form1.slct_Model2,"Savana", "Savana");
addOption(document.form1.slct_Model2,"Sonoma", "Sonoma");
addOption(document.form1.slct_Model2,"Suburban", "Suburban");
addOption(document.form1.slct_Model2,"Yukon", "Yukon");
}
if(document.form1.slct_Make2.value == 'GEO'){
addOption(document.form1.slct_Model2,"Metro", "Metro");
addOption(document.form1.slct_Model2,"Prizm", "Prizm");
addOption(document.form1.slct_Model2,"Storm", "Storm");
addOption(document.form1.slct_Model2,"Tracker", "Tracker");
}

if(document.form1.slct_Make2.value == 'Honda'){
addOption(document.form1.slct_Model2,"Accord", "Accord");
addOption(document.form1.slct_Model2,"Civic", "Civic");
addOption(document.form1.slct_Model2,"CR-V", "CR-V");
addOption(document.form1.slct_Model2,"Element", "Element");
addOption(document.form1.slct_Model2,"EV-Plus", "EV-Plus");
addOption(document.form1.slct_Model2,"Fit", "Fit");
addOption(document.form1.slct_Model2,"Odyssey", "Odyssey");
addOption(document.form1.slct_Model2,"Passport", "Passport");
addOption(document.form1.slct_Model2,"Pilot", "Pilot");
addOption(document.form1.slct_Model2,"Prelude", "Prelude");
addOption(document.form1.slct_Model2,"Redgeline", "Redgeline");
addOption(document.form1.slct_Model2,"S2000", "S2000");
}
if(document.form1.slct_Make2.value == 'Hummer'){
addOption(document.form1.slct_Model2,"H2", "H2");
addOption(document.form1.slct_Model2,"H3", "H3");
}
if(document.form1.slct_Make2.value == 'Hyundai'){
addOption(document.form1.slct_Model2,"Accent", "Accent");
addOption(document.form1.slct_Model2,"Azera", "Azera");
addOption(document.form1.slct_Model2,"Elantra", "Elantra");
addOption(document.form1.slct_Model2,"Entourage", "Entourage");
addOption(document.form1.slct_Model2,"Excel", "Excel");
addOption(document.form1.slct_Model2,"Santa fe", "Santa fe");
addOption(document.form1.slct_Model2,"Sonata", "Sonata");
addOption(document.form1.slct_Model2,"Tiburon", "Tiburon");
addOption(document.form1.slct_Model2,"Tucson", "Tucson");
}

if(document.form1.slct_Make2.value == 'Infinty'){
addOption(document.form1.slct_Model2,"FX35", "FX35");
addOption(document.form1.slct_Model2,"FX45", "FX45");
addOption(document.form1.slct_Model2,"G35", "G35");
addOption(document.form1.slct_Model2,"M30", "M30");
addOption(document.form1.slct_Model2,"Q45", "Q45");
addOption(document.form1.slct_Model2,"QX56", "QX56");
}
if(document.form1.slct_Make2.value == 'Jeep'){
addOption(document.form1.slct_Model2,"Cherokee", "Cherokee");
addOption(document.form1.slct_Model2,"Comanche", "Comanche");
addOption(document.form1.slct_Model2,"Commander", "Commander");
addOption(document.form1.slct_Model2,"Compas", "Compas");
addOption(document.form1.slct_Model2,"Grand Wagonner", "Grand Wagonner");
addOption(document.form1.slct_Model2,"Liberty", "Liberty");
}
if(document.form1.slct_Make2.value == 'Lexus'){
addOption(document.form1.slct_Model2,"ES250", "ES250");
addOption(document.form1.slct_Model2,"GS350", "GS350");
addOption(document.form1.slct_Model2,"GS430", "GS430");
addOption(document.form1.slct_Model2,"GX470", "GX470");
addOption(document.form1.slct_Model2,"IS250", "IS250");
addOption(document.form1.slct_Model2,"IS350", "IS350");
addOption(document.form1.slct_Model2,"LS400", "LS400");
addOption(document.form1.slct_Model2,"LS460", "LS460");
addOption(document.form1.slct_Model2,"LX470", "LX470");
addOption(document.form1.slct_Model2,"RX350", "RX350");
}
if(document.form1.slct_Make2.value == 'Mitsubishi'){
addOption(document.form1.slct_Model2,"Eclipse", "Eclipse");
addOption(document.form1.slct_Model2,"Endeavor", "Endeavor");
addOption(document.form1.slct_Model2,"Galant", "Galant");
addOption(document.form1.slct_Model2,"Max", "Max");
addOption(document.form1.slct_Model2,"Mighty", "Mighty");
addOption(document.form1.slct_Model2,"Mirage", "Mirage");
addOption(document.form1.slct_Model2,"Montero", "Montero");
addOption(document.form1.slct_Model2,"Lancer", "Lancer");
addOption(document.form1.slct_Model2,"Outlander", "Outlander");
addOption(document.form1.slct_Model2,"Precis", "Precis");
addOption(document.form1.slct_Model2,"Raider", "Raider");
addOption(document.form1.slct_Model2,"Sigma", "Sigma");
addOption(document.form1.slct_Model2,"Van", "Van");
}

if(document.form1.slct_Make2.value == 'Nissan'){
addOption(document.form1.slct_Model2,"240SX", "240SX");
addOption(document.form1.slct_Model2,"300ZX", "300ZX");
addOption(document.form1.slct_Model2,"Altima", "Altima");
addOption(document.form1.slct_Model2,"Armada", "Armada");
addOption(document.form1.slct_Model2,"Axxers", "Axxers");
addOption(document.form1.slct_Model2,"Frontier", "Frontier");
addOption(document.form1.slct_Model2,"Maxima", "Maxima");
addOption(document.form1.slct_Model2,"Murano", "Murano");
addOption(document.form1.slct_Model2,"Pathfinder", "Pathfinder");
addOption(document.form1.slct_Model2,"Pickup", "Pickup");
addOption(document.form1.slct_Model2,"Pulsar", "Pulsar");
addOption(document.form1.slct_Model2,"Quest", "Quest");
addOption(document.form1.slct_Model2,"Sentra", "Sentra");
addOption(document.form1.slct_Model2,"Stanza", "Stanza");
addOption(document.form1.slct_Model2,"Titan", "Titan");
addOption(document.form1.slct_Model2,"Van", "Van");
addOption(document.form1.slct_Model2,"XTerra", "Xterra");
}
if(document.form1.slct_Make2.value == 'Oldsmobile'){
addOption(document.form1.slct_Model2,"Calais", "Calais");
addOption(document.form1.slct_Model2,"Custom Cruiser", "Custom Cruiser");
addOption(document.form1.slct_Model2,"Cutlas", "Cutlas");
addOption(document.form1.slct_Model2,"Delta88", "Delta88");
addOption(document.form1.slct_Model2,"Ninety-Eight", "Ninety-Eight");
addOption(document.form1.slct_Model2,"Silhouette", "Silhouette");
addOption(document.form1.slct_Model2,"Tornado", "Tornado");
}
if(document.form1.slct_Make2.value == 'Plymouth'){
addOption(document.form1.slct_Model2,"Acclaim", "Acclaim");
addOption(document.form1.slct_Model2,"Colt", "Colt");
addOption(document.form1.slct_Model2,"Colt Vista", "Colt Vista");
addOption(document.form1.slct_Model2,"Grand Voyager", "Grand Voyager");
addOption(document.form1.slct_Model2,"Horizon", "Horizon");
addOption(document.form1.slct_Model2,"Laser", "Laser");
addOption(document.form1.slct_Model2,"Sundance", "Sundance");
addOption(document.form1.slct_Model2,"Voyager", "Voyager");
}
if(document.form1.slct_Make2.value == 'Pontiac'){
addOption(document.form1.slct_Model2,"6000", "6000");
addOption(document.form1.slct_Model2,"Boneville", "Boneville");
addOption(document.form1.slct_Model2,"Firebird", "Firebird");
addOption(document.form1.slct_Model2,"G5", "G5");
addOption(document.form1.slct_Model2,"G6", "G6");
addOption(document.form1.slct_Model2,"Grand Am", "Grand Am");
addOption(document.form1.slct_Model2,"Grand Prix", "Grand Prix");
addOption(document.form1.slct_Model2,"Lemans", "Lemans");
addOption(document.form1.slct_Model2,"Montana", "Montana");
addOption(document.form1.slct_Model2,"Solstice", "Solstice");
addOption(document.form1.slct_Model2,"Sunbird", "Sunbird");
addOption(document.form1.slct_Model2,"Torrent", "Torrent");
addOption(document.form1.slct_Model2,"Trans Sport", "Trans Sport");
addOption(document.form1.slct_Model2,"Vibe", "Vibe");
addOption(document.form1.slct_Model2,"Wave", "Wave");
}
if(document.form1.slct_Make2.value == 'Toyota'){
addOption(document.form1.SubCat,"4Runner", "4Runner");
addOption(document.form1.slct_Model2,"Avalon", "Avalon");
addOption(document.form1.slct_Model2,"Camry", "Camry");
addOption(document.form1.slct_Model2,"Celica", "Celica");
addOption(document.form1.slct_Model2,"Corolla", "Corolla");
addOption(document.form1.slct_Model2,"Cressida", "Cressida");
addOption(document.form1.slct_Model2,"FJCruiser", "FJCruiser");
addOption(document.form1.slct_Model2,"Highlander", "Highlander");
addOption(document.form1.slct_Model2,"Land Cruiser", "Land Cruiser");
addOption(document.form1.slct_Model2,"Matrix", "Matrix");
addOption(document.form1.slct_Model2,"Paseo", "Paseo");
addOption(document.form1.slct_Model2,"Pickup", "Pickup");
addOption(document.form1.slct_Model2,"Previa", "Previa");
addOption(document.form1.slct_Model2,"Prius", "Prius");
addOption(document.form1.slct_Model2,"RAV4", "RAV4");
addOption(document.form1.slct_Model2,"Sequoia", "Sequioa");
addOption(document.form1.slct_Model2,"Sienna", "Sienna");
addOption(document.form1.slct_Model2,"T100", "T100");
addOption(document.form1.slct_Model2,"Tacoma", "Tacoma");
addOption(document.form1.slct_Model2,"Tercel", "Tercel");
addOption(document.form1.slct_Model2,"Yaris", "Yaris");
}

if(document.form1.slct_Make2.value == 'VW'){
addOption(document.form1.slct_Model2,"Beetle", "Beetle");
addOption(document.form1.slct_Model2,"Cabrio", "Cabrio");
addOption(document.form1.slct_Model2,"Cabriolet", "Cabriolet");
addOption(document.form1.slct_Model2,"Corrado", "Corrado");
addOption(document.form1.slct_Model2,"EOS", "EOS");
addOption(document.form1.slct_Model2,"Eurovan", "Eurovan");
addOption(document.form1.slct_Model2,"Fox", "Fox");
addOption(document.form1.slct_Model2,"Golf", "Golf");
addOption(document.form1.slct_Model2,"GTI", "GTI");
addOption(document.form1.slct_Model2,"Jetta", "Jetta");
addOption(document.form1.slct_Model2,"Passat", "Passat");
addOption(document.form1.slct_Model2,"Rabbit", "Rabbit");
addOption(document.form1.slct_Model2,"Touareg", "Touareg");
}


}
////////////////
function SelectSubCat3(){
// ON selection of category this function will work

removeAllOptions(document.form1.slct_Model3);
addOption(document.form1.slct_Model3, "", "Model", "");

if(document.form1.slct_Make3.value == 'Acura'){
//var cad1="Acura";
addOption(document.form1.slct_Model3,"Integra", "Integra");
addOption(document.form1.slct_Model3,"Legend", "Legend");
addOption(document.form1.slct_Model3,"NSX", "NSX");

}
if(document.form1.slct_Make3.value == 'Audi'){
addOption(document.form1.slct_Model3,"100", "100");
addOption(document.form1.slct_Model3,"200", "200");
addOption(document.form1.slct_Model3,"80", "80", "");
addOption(document.form1.slct_Model3,"Coupe", "Coupe", "");
}
if(document.form1.slct_Make3.value == 'BMW'){
addOption(document.form1.slct_Model3,"318", "318");
addOption(document.form1.slct_Model3,"325", "325");
addOption(document.form1.slct_Model3,"525", "525");
addOption(document.form1.slct_Model3,"535", "535");
addOption(document.form1.slct_Model3,"735", "735");
addOption(document.form1.slct_Model3,"750", "750");
addOption(document.form1.slct_Model3,"850", "850");
addOption(document.form1.slct_Model3,"M3", "M3");
addOption(document.form1.slct_Model3,"M5", "M5");
}
if(document.form1.slct_Make3.value == 'Buick'){
addOption(document.form1.slct_Model3,"Century", "Century");
addOption(document.form1.slct_Model3,"Le Sabre", "Le Sabre");
addOption(document.form1.slct_Model3,"Park Avenue", "Park Avenue");
addOption(document.form1.slct_Model3,"Reatta", "Reatta");
addOption(document.form1.slct_Model3,"Regal", "Regal");
addOption(document.form1.slct_Model3,"Riviera", "Riviera");
addOption(document.form1.slct_Model3,"Roadmaster", "Roadmaster");
addOption(document.form1.slct_Model3,"Skylark", "Skylark");
addOption(document.form1.slct_Model3,"Terraza", "Terraza");
}
if(document.form1.slct_Make3.value == 'Chevrolet'){
addOption(document.form1.slct_Model3,"Astro", "Astro");
addOption(document.form1.slct_Model3,"Avalanche", "Avalanche");
addOption(document.form1.slct_Model3,"Aveo", "Aveo");
addOption(document.form1.slct_Model3,"Blazer", "Blazer");
addOption(document.form1.slct_Model3,"C1500", "C1500");
addOption(document.form1.slct_Model3,"C2500", "C2500");
addOption(document.form1.slct_Model3,"C3500", "C3500");
addOption(document.form1.slct_Model3,"Cavalier", "Cavalier");
addOption(document.form1.slct_Model3,"Cobalt", "Cobalt");
addOption(document.form1.slct_Model3,"Colorado", "Colorado");
addOption(document.form1.slct_Model3,"Corvette", "Corvette");
addOption(document.form1.slct_Model3,"Epica", "Epica");
addOption(document.form1.slct_Model3,"Equinox", "Equinox");
addOption(document.form1.slct_Model3,"Express", "Express");
addOption(document.form1.slct_Model3,"Impala", "Impala");
addOption(document.form1.slct_Model3,"K1500", "K1500");
addOption(document.form1.slct_Model3,"K2500", "K2500");
addOption(document.form1.slct_Model3,"K3500", "K3500");
addOption(document.form1.slct_Model3,"Malibu", "Malibu");
addOption(document.form1.slct_Model3,"Montecarlo", "Montecarlo");
addOption(document.form1.slct_Model3,"Optra", "Optra");
addOption(document.form1.slct_Model3,"Suburban", "Suburban");
addOption(document.form1.slct_Model3,"Tahoe", "Tahoe");
addOption(document.form1.slct_Model3,"TrailBlazer", "TrailBlazer");
addOption(document.form1.slct_Model3,"Uplander", "Uplander");
addOption(document.form1.slct_Model3,"Venture", "Venture");
}
if(document.form1.slct_Make3.value == 'Chrysler'){
addOption(document.form1.slct_Model3,"Cirrus", "Cirrus");
addOption(document.form1.slct_Model3,"Concorde", "Concorde");
addOption(document.form1.slct_Model3,"LHS", "LHS");
addOption(document.form1.slct_Model3,"Sebring", "Sebring");
addOption(document.form1.slct_Model3,"Town&Contry", "Town&Contry");
}

if(document.form1.slct_Make3.value == 'Dodge'){
addOption(document.form1.slct_Model3,"Avenger", "Avenger");
addOption(document.form1.slct_Model3,"Caravan", "Caravan");
addOption(document.form1.slct_Model3,"Dakota", "Dakota");
addOption(document.form1.slct_Model3,"Durango", "Durango");
addOption(document.form1.slct_Model3,"Grand Caravan", "Grand Caravan");
addOption(document.form1.slct_Model3,"Intrepid", "Intrepid");
addOption(document.form1.slct_Model3,"Magnum", "Magnum");
addOption(document.form1.slct_Model3,"Neon", "Neon");
addOption(document.form1.slct_Model3,"Ram 1500", "Ram 1500");
addOption(document.form1.slct_Model3,"Ram 2500", "Ram 2500");
addOption(document.form1.slct_Model3,"Ram 3500", "Ram 3500");
addOption(document.form1.slct_Model3,"Ram Van", "Ram Van");
addOption(document.form1.slct_Model3,"Sprinter", "Sprinter");
addOption(document.form1.slct_Model3,"Stratus", "Stratus");
addOption(document.form1.slct_Model3,"Viper", "Viper");
}
if(document.form1.slct_Make3.value == 'Ford'){
addOption(document.form1.slct_Model3,"Crown Victoria", "Crown Victoria");
addOption(document.form1.slct_Model3,"Econoline 150", "Econoline 150");
addOption(document.form1.slct_Model3,"Econoline 250", "Econoline 250");
addOption(document.form1.slct_Model3,"Econoline 350", "Econoline 350");
addOption(document.form1.slct_Model3,"Escape", "Escape");
addOption(document.form1.slct_Model3,"Excursion", "Excursion");
addOption(document.form1.slct_Model3,"Expedition", "Expedition");
addOption(document.form1.slct_Model3,"Explorer", "Explorer");
addOption(document.form1.slct_Model3,"F150", "F150");
addOption(document.form1.slct_Model3,"F250", "F250");
addOption(document.form1.slct_Model3,"F350", "F350");
addOption(document.form1.slct_Model3,"Five Hundred", "Five Hundred");
addOption(document.form1.slct_Model3,"Focus", "Focus");
addOption(document.form1.slct_Model3,"Freestar", "Freestar");
addOption(document.form1.slct_Model3,"Freestyle", "Freestyle");
addOption(document.form1.slct_Model3,"Mustang", "Mustang");
addOption(document.form1.slct_Model3,"Ranger", "Ranger");
addOption(document.form1.slct_Model3,"Taurus", "Tarus");
addOption(document.form1.slct_Model3,"Thunderbird", "Thunderbird");
}
if(document.form1.slct_Make3.value == 'GMC'){
addOption(document.form1.slct_Model3,"C1500", "C1500");
addOption(document.form1.slct_Model3,"C2500", "C2500");
addOption(document.form1.slct_Model3,"C3500", "C3500");
addOption(document.form1.slct_Model3,"Canyon", "Canyon");
addOption(document.form1.slct_Model3,"Envoy", "Envoy");
addOption(document.form1.slct_Model3,"Jimmy", "Jimmy");
addOption(document.form1.slct_Model3,"K1500", "K1500");
addOption(document.form1.slct_Model3,"K2500", "K2500");
addOption(document.form1.slct_Model3,"K3500", "K3500");
addOption(document.form1.slct_Model3,"Safari", "Safari");
addOption(document.form1.slct_Model3,"Savana", "Savana");
addOption(document.form1.slct_Model3,"Sonoma", "Sonoma");
addOption(document.form1.slct_Model3,"Suburban", "Suburban");
addOption(document.form1.slct_Model3,"Yukon", "Yukon");
}
if(document.form1.slct_Make3.value == 'GEO'){
addOption(document.form1.slct_Model3,"Metro", "Metro");
addOption(document.form1.slct_Model3,"Prizm", "Prizm");
addOption(document.form1.slct_Model3,"Storm", "Storm");
addOption(document.form1.slct_Model3,"Tracker", "Tracker");
}

if(document.form1.slct_Make3.value == 'Honda'){
addOption(document.form1.slct_Model3,"Accord", "Accord");
addOption(document.form1.slct_Model3,"Civic", "Civic");
addOption(document.form1.slct_Model3,"CR-V", "CR-V");
addOption(document.form1.slct_Model3,"Element", "Element");
addOption(document.form1.slct_Model3,"EV-Plus", "EV-Plus");
addOption(document.form1.slct_Model3,"Fit", "Fit");
addOption(document.form1.slct_Model3,"Odyssey", "Odyssey");
addOption(document.form1.slct_Model3,"Passport", "Passport");
addOption(document.form1.slct_Model3,"Pilot", "Pilot");
addOption(document.form1.slct_Model3,"Prelude", "Prelude");
addOption(document.form1.slct_Model3,"Redgeline", "Redgeline");
addOption(document.form1.slct_Model3,"S2000", "S2000");
}
if(document.form1.slct_Make3.value == 'Hummer'){
addOption(document.form1.slct_Model3,"H2", "H2");
addOption(document.form1.slct_Model3,"H3", "H3");
}
if(document.form1.slct_Make3.value == 'Hyundai'){
addOption(document.form1.slct_Model3,"Accent", "Accent");
addOption(document.form1.slct_Model3,"Azera", "Azera");
addOption(document.form1.slct_Model3,"Elantra", "Elantra");
addOption(document.form1.slct_Model3,"Entourage", "Entourage");
addOption(document.form1.slct_Model3,"Excel", "Excel");
addOption(document.form1.slct_Model3,"Santa fe", "Santa fe");
addOption(document.form1.slct_Model3,"Sonata", "Sonata");
addOption(document.form1.slct_Model3,"Tiburon", "Tiburon");
addOption(document.form1.slct_Model3,"Tucson", "Tucson");
}

if(document.form1.slct_Make3.value == 'Infinty'){
addOption(document.form1.slct_Model3,"FX35", "FX35");
addOption(document.form1.slct_Model3,"FX45", "FX45");
addOption(document.form1.slct_Model3,"G35", "G35");
addOption(document.form1.slct_Model3,"M30", "M30");
addOption(document.form1.slct_Model3,"Q45", "Q45");
addOption(document.form1.slct_Model3,"QX56", "QX56");
}
if(document.form1.slct_Make3.value == 'Jeep'){
addOption(document.form1.slct_Model3,"Cherokee", "Cherokee");
addOption(document.form1.slct_Model3,"Comanche", "Comanche");
addOption(document.form1.slct_Model3,"Commander", "Commander");
addOption(document.form1.slct_Model3,"Compas", "Compas");
addOption(document.form1.slct_Model3,"Grand Wagonner", "Grand Wagonner");
addOption(document.form1.slct_Model3,"Liberty", "Liberty");
}
if(document.form1.slct_Make3.value == 'Lexus'){
addOption(document.form1.slct_Model3,"ES250", "ES250");
addOption(document.form1.slct_Model3,"GS350", "GS350");
addOption(document.form1.slct_Model3,"GS430", "GS430");
addOption(document.form1.slct_Model3,"GX470", "GX470");
addOption(document.form1.slct_Model3,"IS250", "IS250");
addOption(document.form1.slct_Model3,"IS350", "IS350");
addOption(document.form1.slct_Model3,"LS400", "LS400");
addOption(document.form1.slct_Model3,"LS460", "LS460");
addOption(document.form1.slct_Model3,"LX470", "LX470");
addOption(document.form1.slct_Model3,"RX350", "RX350");
}
if(document.form1.slct_Make3.value == 'Mitsubishi'){
addOption(document.form1.slct_Model3,"Eclipse", "Eclipse");
addOption(document.form1.slct_Model3,"Endeavor", "Endeavor");
addOption(document.form1.slct_Model3,"Galant", "Galant");
addOption(document.form1.slct_Model3,"Max", "Max");
addOption(document.form1.slct_Model3,"Mighty", "Mighty");
addOption(document.form1.slct_Model3,"Mirage", "Mirage");
addOption(document.form1.slct_Model3,"Montero", "Montero");
addOption(document.form1.slct_Model3,"Lancer", "Lancer");
addOption(document.form1.slct_Model3,"Outlander", "Outlander");
addOption(document.form1.slct_Model3,"Precis", "Precis");
addOption(document.form1.slct_Model3,"Raider", "Raider");
addOption(document.form1.slct_Model3,"Sigma", "Sigma");
addOption(document.form1.slct_Model3,"Van", "Van");
}

if(document.form1.slct_Make3.value == 'Nissan'){
addOption(document.form1.slct_Model3,"240SX", "240SX");
addOption(document.form1.slct_Model3,"300ZX", "300ZX");
addOption(document.form1.slct_Model3,"Altima", "Altima");
addOption(document.form1.slct_Model3,"Armada", "Armada");
addOption(document.form1.slct_Model3,"Axxers", "Axxers");
addOption(document.form1.slct_Model3,"Frontier", "Frontier");
addOption(document.form1.slct_Model3,"Maxima", "Maxima");
addOption(document.form1.slct_Model3,"Murano", "Murano");
addOption(document.form1.slct_Model3,"Pathfinder", "Pathfinder");
addOption(document.form1.slct_Model3,"Pickup", "Pickup");
addOption(document.form1.slct_Model3,"Pulsar", "Pulsar");
addOption(document.form1.slct_Model3,"Quest", "Quest");
addOption(document.form1.slct_Model3,"Sentra", "Sentra");
addOption(document.form1.slct_Model3,"Stanza", "Stanza");
addOption(document.form1.slct_Model3,"Titan", "Titan");
addOption(document.form1.slct_Model3,"Van", "Van");
addOption(document.form1.slct_Model3,"XTerra", "Xterra");
}
if(document.form1.slct_Make3.value == 'Oldsmobile'){
addOption(document.form1.slct_Model3,"Calais", "Calais");
addOption(document.form1.slct_Model3,"Custom Cruiser", "Custom Cruiser");
addOption(document.form1.slct_Model3,"Cutlas", "Cutlas");
addOption(document.form1.slct_Model3,"Delta88", "Delta88");
addOption(document.form1.slct_Model3,"Ninety-Eight", "Ninety-Eight");
addOption(document.form1.slct_Model3,"Silhouette", "Silhouette");
addOption(document.form1.slct_Model3,"Tornado", "Tornado");
}
if(document.form1.slct_Make3.value == 'Plymouth'){
addOption(document.form1.slct_Model3,"Acclaim", "Acclaim");
addOption(document.form1.slct_Model3,"Colt", "Colt");
addOption(document.form1.slct_Model3,"Colt Vista", "Colt Vista");
addOption(document.form1.slct_Model3,"Grand Voyager", "Grand Voyager");
addOption(document.form1.slct_Model3,"Horizon", "Horizon");
addOption(document.form1.slct_Model3,"Laser", "Laser");
addOption(document.form1.slct_Model3,"Sundance", "Sundance");
addOption(document.form1.slct_Model3,"Voyager", "Voyager");
}
if(document.form1.slct_Make3.value == 'Pontiac'){
addOption(document.form1.slct_Model3,"6000", "6000");
addOption(document.form1.slct_Model3,"Boneville", "Boneville");
addOption(document.form1.slct_Model3,"Firebird", "Firebird");
addOption(document.form1.slct_Model3,"G5", "G5");
addOption(document.form1.slct_Model3,"G6", "G6");
addOption(document.form1.slct_Model3,"Grand Am", "Grand Am");
addOption(document.form1.slct_Model3,"Grand Prix", "Grand Prix");
addOption(document.form1.slct_Model3,"Lemans", "Lemans");
addOption(document.form1.slct_Model3,"Montana", "Montana");
addOption(document.form1.slct_Model3,"Solstice", "Solstice");
addOption(document.form1.slct_Model3,"Sunbird", "Sunbird");
addOption(document.form1.slct_Model3,"Torrent", "Torrent");
addOption(document.form1.slct_Model3,"Trans Sport", "Trans Sport");
addOption(document.form1.slct_Model3,"Vibe", "Vibe");
addOption(document.form1.slct_Model3,"Wave", "Wave");
}
if(document.form1.slct_Make3.value == 'Toyota'){
addOption(document.form1.slct_Model3,"4Runner", "4Runner");
addOption(document.form1.slct_Model3,"Avalon", "Avalon");
addOption(document.form1.slct_Model3,"Camry", "Camry");
addOption(document.form1.slct_Model3,"Celica", "Celica");
addOption(document.form1.slct_Model3,"Corolla", "Corolla");
addOption(document.form1.slct_Model3,"Cressida", "Cressida");
addOption(document.form1.slct_Model3,"FJCruiser", "FJCruiser");
addOption(document.form1.slct_Model3,"Highlander", "Highlander");
addOption(document.form1.slct_Model3,"Land Cruiser", "Land Cruiser");
addOption(document.form1.slct_Model3,"Matrix", "Matrix");
addOption(document.form1.slct_Model3,"Paseo", "Paseo");
addOption(document.form1.slct_Model3,"Pickup", "Pickup");
addOption(document.form1.slct_Model3,"Previa", "Previa");
addOption(document.form1.slct_Model3,"Prius", "Prius");
addOption(document.form1.slct_Model3,"RAV4", "RAV4");
addOption(document.form1.slct_Model3,"Sequoia", "Sequioa");
addOption(document.form1.slct_Model3,"Sienna", "Sienna");
addOption(document.form1.slct_Model3,"T100", "T100");
addOption(document.form1.slct_Model3,"Tacoma", "Tacoma");
addOption(document.form1.slct_Model3,"Tercel", "Tercel");
addOption(document.form1.slct_Model3,"Yaris", "Yaris");
}

if(document.form1.slct_Make3.value == 'VW'){
addOption(document.form1.slct_Model3,"Beetle", "Beetle");
addOption(document.form1.slct_Model3,"Cabrio", "Cabrio");
addOption(document.form1.slct_Model3,"Cabriolet", "Cabriolet");
addOption(document.form1.slct_Model3,"Corrado", "Corrado");
addOption(document.form1.slct_Model3,"EOS", "EOS");
addOption(document.form1.slct_Model3,"Eurovan", "Eurovan");
addOption(document.form1.slct_Model3,"Fox", "Fox");
addOption(document.form1.slct_Model3,"Golf", "Golf");
addOption(document.form1.slct_Model3,"GTI", "GTI");
addOption(document.form1.slct_Model3,"Jetta", "Jetta");
addOption(document.form1.slct_Model3,"Passat", "Passat");
addOption(document.form1.slct_Model3,"Rabbit", "Rabbit");
addOption(document.form1.slct_Model3,"Touareg", "Touareg");
}


}

////////
function removeAllOptions(selectbox)
{
	var i;
	for(i=selectbox.options.length-1;i>=0;i--)
	{
		//selectbox.options.remove(i);
		selectbox.remove(i);
	}
}


function addOption(selectbox, value, text )
{
	var optn = document.createElement("OPTION");
	optn.text = text;
	optn.value = value;

	selectbox.options.add(optn);
    //putString(optn.valueoptions
   // var cad2= document.form1.SubCat.value;
   
}


function putCar()
 {
   // var cad3=document.form1.Category.value+"-"+value;
    //document.form1.txtf_VM.value=cad3;
     /*var cad1= form.Category.value;
     var cad2= form.SubCat.value;
     var cad3=cad1+"-"+cad2;
     form.txtf_VM.value=cad3;*/
     document.form1.txtf_VM.value=document.form1.Category.value+"-"+document.form1.SubCat.value;
      document.form1.txtf_VM.value =  document.form1.txtf_VM.value.toUpperCase();
}
function putCars()
 {
  
     document.form1.txtf_City.value=document.form1.City.value;
 }


function putCar2()
 {
      document.form1.txtf_VM2.value=document.form1.slct_Make2.value+"-"+document.form1.slct_Model2.value;
}

function putCar3()
 {
      document.form1.txtf_VM3.value=document.form1.slct_Make3.value+"-"+document.form1.slct_Model3.value;
}

 function putArea(form) 
      		                       {
      		                         var a_phone = form.phones.value;
      		                         form.txtf_area.value= a_phone;
                                     document.form1.txtf_numb1.focus();
                                   }	
aux=0;
function test()
                      {
                            
                          alert("We did it");
						  
						  if(aux==0)
						    {
								debe1 = parseFloat(document.form.txtf_deb.value); 
						    document.form.txtf_sd.value=debe1;
							aux++;
							}
							else
						  //debe1 = parseFloat(document.form.txtf_deb.value);
						  //aux=aux+debe;
						  otra=parseFloat(document.form.txtf_deb.value);
						  otra2=parseFloat(document.form.txtf_deb2.value);
						  document.form.txtf_sd.value=otra+otra2;
					  }


function checkS()
                      {
                            
                          var letters = document.form1.txtf_numb1.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 3)
                                {
                                  document.form1.txtf_numb1.focus()
                                }
                                 else
                               {
                                  document.form1.txtf_numb2.focus()
                               }
                      }

function check4()
                      {
                            
                          var letters = document.form1.txtf_numb2.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 4)
                                {
                                  document.form1.txtf_numb2.focus()
                                }
                                 else
                               {
                                  document.form1.slct_phones2.focus()
                               }
                      }
function check5()
                      {
                            
                          var letters = document.form1.txtf_wp3.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 4)
                                {
                                  document.form1.txtf_wp3.focus()
                                }
                                 else
                               {
                                  document.form1.slct_phones3.focus()
                               }
                      }
function check6()
                      {
                            
                          var letters = document.form1.txtf_em4.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 4)
                                {
                                  document.form1.txtf_em4.focus()
                                }
                                 else
                               {
                                  document.form1.txtf_email.focus()
                               }
                      }
 function putAreaWP(form) 
      		                       {
      		                         var b_phone = form.slct_phones2.value;
      		                         form.txtf_a2.value= b_phone;
                                     document.form1.txtf_wp2.focus();
      		                       }	
function check2()
                      {
                            
                          var letters2 = document.form1.txtf_wp2.value.length +1;
                          //alert(" "+letters);
                          if (letters2 <= 3)
                                {
                                  document.form1.txtf_wp2.focus()
                                }
                                 else
                               {
                                  document.form1.txtf_wp3.focus()
                               }
                      }
 function putAreaEP(form) 
      		                       {
      		                         var c_phone = form.slct_phones3.value;
      		                         form.txtf_a3.value= c_phone;
                                    document.form1.txtf_em3.focus();
      		                       }
 function putCoincide(form) 
      		                       {
      		                         var coincide_n = form.slct_coin.value;
      		                         form.txtf_coin.value= coincide_n;
                                    //form.txtf_coin.focus();
      		                       }	
 function putCaptura(form) 
      		                       {
      		                         var captura = form.slct_10.value;
      		                         form.txtf_10.value= captura;
                                    document.form1.txtf_10.focus();
      		                       }
 function putOperr3(form) 
   									{
								     var captura = form.slct_name.value;
								     form.txtf_desc.value= captura;
								     document.form1.txtf_desc.focus();
   									}
function check3()
                      {
                            
                          var letters3 = document.form1.txtf_em3.value.length +1;
                          //alert(" "+letters);
                          if (letters3 <= 3)
                                {
                                  document.form1.txtf_em3.focus()
                                }
                                 else
                               {
                                  document.form1.txtf_em4.focus()
                               }
                      }

function putYear(form) 
      		                       {
      		                         var d1 = form.slct_Y2.value;
      		                         form.txtf_Y2.value= d1;
                                   }   

function putDates(form)
                                  {
                                     var mydate=new Date()
                                     var theyear=mydate.getYear()
                                     if (theyear < 1000)
                                        theyear+=1900
                                     var theday=mydate.getDay()
                                     var themonth=mydate.getMonth()+1
                                     if (themonth<10)
                                        themonth="0"+themonth
                                     var theday=mydate.getDate()
                                     if (theday<10)
                                         theday="0"+theday

//////EDIT below three variable to customize the format of the date/////

var displayfirst=themonth
var displaysecond=theday
var displaythird=theyear

////////////////////////////////////

                         form.txtf_date.value=displaythird+"/"+displayfirst+"/"+displaysecond
                         form.txtf_name.focus()

                                   }

function putPlate(form) 
      		                       {
      		                         var pla = form.slct_pla.value;
      		                         form.txt_plate.value= pla;
      		                       }	

function showHideItems(myItem)
                          {
                                var myItem = document.getElementById(myItem);
                                if (myItem.style.display != "none") 
                                      {
                                         myItem.style.display = "none";
                                      }
                              else {
                                         myItem.style.display = "block";
                                   }
                          }    
function putYears(form) 
      		                        {
      		                         var y = form.select01.value;
      		                         form.textfield.value= y;
      		                       }	

function putMaker(form, form2)
                                {
      		                         var m = form.select2.value;
      		                         form2.textfield1.value= m;
      		                       }	

function varitext(text){
text=document
print(text)
}
function putPlate2(form) 
      		                       {
      		                         var pla2 = form.slct_pla.value;
      		                         form.txtf_plate.value= pla2;
      		                       }	

function putPlate3(form) 
      		                       {
      		                         
      		                         form.txtf_bup.value=form.txtf_plate2.value;
      		                       }	
//functions for the project CONTROL INTERNO

function setClient(form) 
      		                       {
      		                         var cli1= form.slct_cli.value;
      		                         form.txtf_cli.value=cli1;
      		                       }
								   
function setClientAl(form) 
      		                       {
      		                         var clien= form.slct_cli.value;
      		                         form.txtf_3.value=clien;
      		                       }
								   
function setClientA(form) 
      		                       {
      		                         var clie1= form.slct_cli.value;
      		                         form.txtf_cli.value=clie1;
      		                       }
								   

//function in Captura.jsp
function setClientCap(form) 
      		                       {
      		                         var cliente= form.slct_cli.value;
      		                         form.txtf_client.value=cliente;
      		                       }								   
								   
function setClientCap2(form) 
      		                       {
      		                         var clie= form.slct_cli.value;
      		                         form.usuario.value=clie;
									 form.passw.focus();
									 
      		                       }	
								   
function setClientCap3(form) 
      		                       {
      		                         var clien= form.slct_cli.value;
      		                         form.txtf_user.value=clien;
									 form.txtf_pass.focus();
									 
      		                       }	
function setClientSS(form) 
      		                       {
      		                         var cli1= form.slct_cli.value;
      		                         form.txtf_nomcli.value=cli1;
      		                       }
								   
function setFolios(form) 
      		                       {
      		                         var fol= form.slct_imp2.value;
      		                         form.txtf_folio.value=fol;
      		                       }
function setStatus(form) 
      		                       {
      		                         var sta= form.slct_sta1.value;
      		                         form.txtf_sta.value=sta;
      		                       }

/*function setFolius(form) 
      		                       {
      		                         var fol= form.slct_imp.value;
      		                         form.txtf_nor.value=fol;
      		                       }*/
								   
function setFolius2(form) 
      		                       {
      		                         var fol= form.slct_imp.value;
      		                         form.txtf_nor.value=fol;
      		                       }	
								   
			function setFolius3(form) 
      		                       {
      		                         var fol= form.slct_imp.value;
      		                         form.txtf_norden.value=fol;
      		                       }		
								   
function setImport(form) 
      		                       {
      		                         var imp= form.slct_imp.value;
      		                         form.txtf_imp.value=imp;
      		                       }
								   
//code added on the 08/12/2008
function setImport2(form) 
      		                       {
      		                         var imp2= form.slct_imp.value;
      		                         form.txtf_2.value=imp2;
      		                       }
								   
function setNor2(form) 
      		                       {
      		                         var nor1= form.slct_imp.value;
      		                         form.txtf_norden.value=nor1;
      		                       }
function setImpDia(form) 
      		                       {
      		                         var dia1= form.slct_imp2.value;
      		                         form.txtf_conc.value=dia1;
      		                       }
function setDocu(form) 
      		                       {
      		                         var doc1= form.slct_imp3.value;
      		                         form.txtf_conc2.value=doc1;
      		                       }
								   
function setRev(form) 
      		                       {
      		                         var rev1= form.slct_imp4.value;
      		                         form.txtf_imp2.value=rev1;
      		                       }
								   
function setProc(form) 
      		                       {
      		                         var proc1= form.slct_imp5.value;
      		                         form.txtf_sn.value=proc1;
      		                       }
								   
function setDepa(form) 
      		                       {
      		                         var depa2= form.slct_imp6.value;
      		                         form.txtf_depto.value=depa2;
      		                       }


function setAcount(form) 
      		                       {
      		                         //var acount= form.SubCat.value;
      		                         //form.txtf_acount.value=acount;
									 document.form.txtf_acount.value=document.form.SubCat.value
      		                       }
								   
//functions created in march 10th							   
function setAcount_02(form) 
      		                       {
      		                         //var acount= form.SubCat.value;
      		                         //form.txtf_acount.value=acount;
									 document.form.txtf_cuenta.value=document.form.SubCat.value
      		                       }
function setAcount_03(form) 
      		                       {
      		                         //var acount= form.SubCat.value;
      		                         //form.txtf_acount.value=acount;
									 document.form.txtf_cuenta2.value=document.form.SubCat.value
									 
      		                       }
								   
function setOfna(form) 
      		                       {
      		                         //var acount= form.SubCat.value;
      		                         //form.txtf_acount.value=acount;
									 document.form.txtf_ofna.value=document.form.slct_ofna.value
      		                       }								   
								   
function setCliente(form) 
      		                       {
      		                         var cli= form.slct_cli.value;
      		                         form.txtf_clien.value=cli;
      		                       }
								   
								   
function setCantFar(form) 
      		                       {
      		                         var can= form.slct_cant.value;
      		                         form.txtf_cant.value=can;
      		                       }
								   
//code added on the date 08/12/2008

function setCliente2(form) 
      		                       {//alert("entro");
      		                         var cli2= form.slct_cli.value;
      		                         form.txtf_3.value=cli2;
								   }
function setjurisTol(form) 
  {//alert("entro");
    var cli2= form.slct_cli.value;
    form.txtf_jur.value=cli2;
}
function setClienteDes(form) 
      		                       {//alert("entro");
      		                         var clides= form.slct_des.value;
      		                         form.txtf_2.value=clides;
								   }								   
function setClienteDes2(form) 
  {//alert("entro");
    var clides= form.slct_descr.value;
    form.txtf_descr.value=clides;
}								   
								   
								   function setFols(form) 
      		                       {//alert("entro");
      		                         var fol= form.slct_fols.value;
      		                         form.txtf_fol2.value=fol;
								   }
								   
function setCliente22(form) 
      		                       {//alert("entro");
      		                         var cli22= form.slct_cli2.value;
      		                         form.txtf_4.value=cli22;
								   }
								   
	function setC(form) 
      		                       {alert("entro");
      		                         //var cli2= form.slct_cli.value;
      		                         //form.txtf_3.value=cli2;
								   }							   
function setCliente3(form) 
      		                       {
      		                         var cli3= form.slct_cve2.value;
      		                         form.txtf_32.value=cli3;
      		                       }
								   
function setCliente33(form) 
      		                       {
      		                         var cli33= form.slct_cve3.value;
      		                         form.txtf_333.value=cli33;
      		                       }
								   
function setPrograma(form) 
      		                       {
      		                         var pro= form.slct_tu.value;
      		                         form.txtf_tu.value=pro;
      		                       }
function setMedicos(form) 
      		                       {
      		                         var med= form.Category.value;
      		                         form.txtf_med.value=med;
      		                       }					
function setPacientes(form) 
      		                       {
      		                         var pac= form.SubCat.value;
      		                         form.txtf_pac.value=pac;
      		                       }					



function setCie(form) 
      		                       {
      		                         var cie= form.slct_cie.value;
      		                         form.txtf_cie.value=cie;
      		                       }

function setLot(form) 
      		                       {
      		                         var lot= form.slct_lote2.value;
      		                         form.txtf_lote2.value=lot;
      		                       }

function setLot1(form) 
      		                       {
      		                         var lot1= form.slct_lote.value;
      		                         form.txtf_lote.value=lot1;
      		                       }
function setLetterUbic(form) 
      		                       {
      		                         var ubic_bod= form.slc_LetterUbic.value;
      		                         form.txtf_ubi.value=ubic_bod;
      		                       }
function setNumUbic(form) 
      		                       {
      		                         var ubic_bod= form.slc_NumUbic.value;
      		                         form.txtf_ubi.value=form.txtf_ubi.value+ubic_bod;
      		                       }								   
function dimePropiedades(form){ 
    var texto 
    texto = "El numero de opciones del select: " + form.slct_lote.length 
    var indice = form.slct_lote.selectedIndex 
    texto += "\nIndice de la opcion escogida: " + indice 
    var valor = form.slct_lote.options[indice].value 
    texto += "\nValor de la opcion escogida: " + valor 
    var textoEscogido = form.slct_lote.options[indice].text 
    texto += "\nTexto de la opcion escogida: " + textoEscogido 
    //alert(texto) 
	form.slct_cad.value=form.slct_cad.options[indice].value;
	form.txtf_cad.value=form.slct_cad.value;
	//alert(texto)
} 
	
function dimePropiedades2(form){ 
    var texto 
    texto = "El numero de opciones del select: " + form.slct_cve.length 
    var indice = form.slct_cve.selectedIndex 
    texto += "\nIndice de la opcion escogida: " + indice 
    var valor = form.slct_cve.options[indice].value 
    texto += "\nValor de la opcion escogida: " + valor 
    var textoEscogido = form.slct_cve.options[indice].text 
    texto += "\nTexto de la opcion escogida: " + textoEscogido 
    //alert(texto) 
	form.slct_lot.value=form.slct_lot.options[indice].value;
	form.txtf_lote.value=form.slct_lot.value;
	//alert(texto)
} 

function setLot3(form) 
      		                       {
      		                         var lot3= form.slct_lote3.value;
      		                         form.txtf_lote3.value=lot3;
      		                       }
function setLotes(form) 
      		                       {
      		                         var lotes= form.slct_lote.value;
      		                         form.txtf_lote.value=lotes;
									 
      		                       }

function setLote(form,vari) 
      		                       {
									   //alert(vari);
									   
									 if(vari=='805253')
									 {
      		                           var lote= form.slct_lote.value;
      		                           form.txtf_cad.value="01/01/2010";
									   form.txtf_lote.value=lote;
									 }
									 
									 if(vari=='08K099')
									 {
      		                           var lote= form.slct_lote.value;
      		                           form.txtf_cad.value="02/21/2011";
									   form.txtf_lote.value=lote;
									 }
									 
									  if(vari=='09B139')
									 {
      		                           var lote= form.slct_lote.value;
      		                           form.txtf_cad.value="05/10/2010";
									   form.txtf_lote.value=lote;
									 }
									   if(vari=='09C017')
									 {
      		                           var lote= form.slct_lote.value;
      		                           form.txtf_cad.value="05/20/2020";
									   form.txtf_lote.value=lote;
									 }
									 
									   if(vari=='09C018')
									 {
      		                           var lote= form.slct_lote.value;
      		                           form.txtf_cad.value="07/13/2020";
									   form.txtf_lote.value=lote;
									 }
									 
      		                       }								 
								   
function setCad(form) 
      		                       {
									   //alert(vari);
      		                         var cad= form.slct_cad.value;
      		                         form.txtf_cad.value=cad;
									 
      		                       }	
function setCad2(form) 
      		                       {
									   //alert(vari);
      		                         var cad2= form.slct_cad2.value;
      		                         form.txtf_cad2.value=cad2;
									 
      		                       }	
								   
function setCad3(form) 
      		                       {
									   //alert(vari);
      		                         var cad3= form.slct_cad3.value;
      		                         form.txtf_cad3.value=cad3;
									 
      		                       }	
								   
function setClienteEsp(form) 
      		                       {
      		                         var tra= form.slct_esp.value;
      		                         form.txtf_9.value=tra;
      		                       }
								   

								   
function setDestino(form) 
      		                       {
      		                         var des= form.slct_des.value;
      		                         form.txtf_4.value=des;
      		                       }
								   
function setDestino2(form) 
      		                       {
      		                         var des2= form.slct_des.value;
      		                         form.txtf_8.value=des2;
      		                       }
								   
function setTrabajo(form) 
      		                       {
      		                         var tra= form.slct_tra.value;
      		                         form.txtf_5.value=tra;
      		                       }
function setNor(form) 
      		                       {
      		                         var nor= form.slct_nor.value;
      		                         form.txtf_norden.value=nor;
      		                       }
								   
function setDel(form) 
      		                       {
      		                         var del= form.select3.value;
      		                         form.txtf_51.value=del;
      		                       }
function setAl(form) 
      		                       {
      		                         var al= form.select4.value;
      		                         form.txtf_52.value=al;
      		                       }
function setMes(form) 
      		                       {
      		                         var m= form.select5.value;
      		                         form.txtf_57.value=m;
      		                       }
								   
function setAnio(form) 
      		                       {
      		                         var an= form.select6.value;
      		                         form.txtf_58.value=an;
      		                       }
								   
function setEla(form) 
      		                       {
      		                         var el= form.select7.value;
      		                         form.txtf_50.value=el;
      		                       }
								   
function setHorario(form)
                                  {
									  var ho= form.SubCat.value;
      		                          form.txtf_39.value=ho;
								  }
								  
								  function setActi(form,nam)
                                  {
									 //form.txtf_36.value="ya no";
									  
									  if(nam==0)
									  {
										  
									  var act_1= form.slct_0.value;
      		                          form.txtf_1.value=act_1;
									  }
									  if(nam==1)
									  {
										  
									  var act_2= form.slct_1.value;
      		                          form.txtf_6.value=act_2;
									  } 
									   if(nam==2)
									  {
										  
									  var act_3= form.slct_2.value;
      		                          form.txtf_11.value=act_3;
									  } 
									   if(nam==3)
									  {
										  
									  var act_4= form.slct_3.value;
      		                          form.txtf_16.value=act_4;
									  }
									   if(nam==4)
									  {
										  
									  var act_5= form.slct_4.value;
      		                          form.txtf_21.value=act_5;
									  } 
									  if(nam==5)
									  {
										  
									  var act_6= form.slct_5.value;
      		                          form.txtf_26.value=act_6;
									  } 
									  
									   if(nam==6)
									  {
										  
									  var act_7= form.slct_6.value;
      		                          form.txtf_31.value=act_7;
									  } 
									   if(nam==7)
									  {
										  
									  var act_88= form.slct_7.value;
      		                          form.txtf_36.value=act_88;
									  } 
									  if(nam==8)
									  {
										  
									  var act_9= form.slct_8.value;
      		                          form.txtf_41.value=act_9;
									  }  
									
									  
									   if(nam==9)
									  {
										  
									  var act_10= form.slct_9.value;
      		                          form.txtf_46.value=act_10;
									  } 
									   if(nam==10)
									  {
										  
									  var act_11= form.slct_10.value;
      		                          form.txtf_51.value=act_11;
									  }   
									  if(nam==11)
									  {
										  
									  var act_12= form.slct_11.value;
      		                          form.txtf_56.value=act_12;
									  form.txtf_36.value=act_12;
									  }    
								  }
					function setActiAlm2(form,nam)
                                  {
									 //form.txtf_36.value="ya no";
									  
									  if(nam==0)
									  {
										//alert("hello");   
									  var acta_1= form.slct_0.value;
      		                          form.txtf_1.value=acta_1;
									  }
									 
									  if(nam==1)
									  {
										//alert("hello");  
									  var acta_2= form.slct_1.value;
      		                          form.txtf_4.value=acta_2;
									  } 
									   if(nam==2)
									  {
										  
									  var acta_3= form.slct_2.value;
      		                          form.txtf_7.value=acta_3;
									  } 
									   if(nam==3)
									  {
										  
									  var acta_4= form.slct_3.value;
      		                          form.txtf_10.value=acta_4;
									  }
									   if(nam==4)
									  {
										  
									  var acta_5= form.slct_4.value;
      		                          form.txtf_13.value=acta_5;
									  } 
									  if(nam==5)
									  {
										  
									  var acta_6= form.slct_5.value;
      		                          form.txtf_16.value=acta_6;
									  } 
									  
									   if(nam==6)
									  {
										  
									  var acta_7= form.slct_6.value;
      		                          form.txtf_19.value=acta_7;
									  } 
									   if(nam==7)
									  {
										  
									  var acta_8= form.slct_7.value;
      		                          form.txtf_22.value=acta_8;
									  } 
									  if(nam==8)
									  {
										  
									  var acta_9= form.slct_8.value;
      		                          form.txtf_25.value=acta_9;
									  }  
									
									  
									   if(nam==9)
									  {
										  
									  var acta_10= form.slct_9.value;
      		                          form.txtf_28.value=acta_10;
									  } 
									   if(nam==10)
									  {
										  
									  var acta_11= form.slct_10.value;
      		                          form.txtf_31.value=acta_11;
									  }   
									  if(nam==11)
									  {
										  
									  var acta_12= form.slct_11.value;
      		                          form.txtf_34.value=acta_12;
									  //form.txtf_36.value=act_12;
									  }  
									  //second block of select
									  if(nam==12)
									  {
										  //alert("hello");
									  var acta_13= form.slct_12.value;
      		                          form.txtf_37.value=acta_13;
									  //form.txtf_36.value=act_12;
									  }
									  if(nam==13)
									  {
										  //alert("hello");
									  var acta_14= form.slct_13.value;
      		                          form.txtf_40.value=acta_14;
									  //form.txtf_36.value=act_12;
									  }
									  if(nam==14)
									  {
										  //alert("hello");
									  var acta_15= form.slct_14.value;
      		                          form.txtf_43.value=acta_15;
									  //form.txtf_36.value=act_12;
									  }
									  if(nam==15)
									  {
										  //alert("hello");
									  var acta_16= form.slct_15.value;
      		                          form.txtf_46.value=acta_16;
									  //form.txtf_36.value=act_12;
									  }
									   if(nam==16)
									  {
										  //alert("hello");
									  var acta_17= form.slct_16.value;
      		                          form.txtf_49.value=acta_17;
									  //form.txtf_36.value=act_12;
									  }
									  if(nam==17)
									  {
										  //alert("hello");
									  var acta_18= form.slct_17.value;
      		                          form.txtf_52.value=acta_18;
									  //form.txtf_36.value=act_12;
									  }
						             if(nam==18)
									  {
										  //alert("hello");
									  var acta_19= form.slct_18.value;
      		                          form.txtf_55.value=acta_19;
									  //form.txtf_36.value=act_12;
									  }
									  if(nam==19)
									  {
										  //alert("hello");
									  var acta_20= form.slct_19.value;
      		                          form.txtf_58.value=acta_20;
									  //form.txtf_36.value=act_12;
									  }	
									  
									  if(nam==20)
									  {
										  //alert("hello");
									  var acta_21= form.slct_20.value;
      		                          form.txtf_61.value=acta_21;
									  //form.txtf_36.value=act_12;
									  }
									  if(nam==21)
									  {
										  //alert("hello");
									  var acta_22= form.slct_21.value;
      		                          form.txtf_64.value=acta_22;
									  //form.txtf_36.value=act_12;
									  }		
									   if(nam==22)
									  {
										  //alert("hello");
									  var acta_22= form.slct_22.value;
      		                          form.txtf_67.value=acta_22;
									  //form.txtf_36.value=act_12;
									  }
									  if(nam==23)
									  {
										  //alert("hello");
									  var acta_23= form.slct_23.value;
      		                          form.txtf_70.value=acta_23;
									  //form.txtf_36.value=act_12;
									  }	
									  
								  }			  
								  
					function setActiAlm(form,nam)
                                  {
									 //form.txtf_36.value="ya no";
									  
									  if(nam==0)
									  {
										  
									  var acta_1= form.slct_0.value;
      		                          form.txtf_1.value=acta_1;
									  }
									  if(nam==1)
									  {
										  
									  var acta_2= form.slct_1.value;
      		                          form.txtf_5.value=acta_2;
									  } 
									   if(nam==2)
									  {
										  
									  var acta_3= form.slct_2.value;
      		                          form.txtf_9.value=acta_3;
									  } 
									   if(nam==3)
									  {
										  
									  var acta_4= form.slct_3.value;
      		                          form.txtf_13.value=acta_4;
									  }
									   if(nam==4)
									  {
										  
									  var acta_5= form.slct_4.value;
      		                          form.txtf_17.value=acta_5;
									  } 
									  if(nam==5)
									  {
										  
									  var acta_6= form.slct_5.value;
      		                          form.txtf_21.value=acta_6;
									  } 
									  
									   if(nam==6)
									  {
										  
									  var acta_7= form.slct_6.value;
      		                          form.txtf_25.value=acta_7;
									  } 
									   if(nam==7)
									  {
										  
									  var acta_8= form.slct_7.value;
      		                          form.txtf_29.value=acta_8;
									  } 
									  if(nam==8)
									  {
										  
									  var acta_9= form.slct_8.value;
      		                          form.txtf_33.value=acta_9;
									  }  
									
									  
									   if(nam==9)
									  {
										  
									  var acta_10= form.slct_9.value;
      		                          form.txtf_37.value=acta_10;
									  } 
									   if(nam==10)
									  {
										  
									  var acta_11= form.slct_10.value;
      		                          form.txtf_41.value=acta_11;
									  }   
									  if(nam==11)
									  {
										  
									  var acta_12= form.slct_11.value;
      		                          form.txtf_45.value=acta_12;
									  //form.txtf_36.value=act_12;
									  }    
								  }
								  
					function set8a9(form,nam)
                                  {
									  var names="form.slct_0";
									  var myArray = ['slct_0', 'February', 'March'];
									  
									  
									  if(nam==0)
									  {
										  
									  var a_1= form.slct_0.value;
      		                          form.txtf_1.value=a_1;
									  }
									  if(nam==1)
									  {
										  
									  var a_1= form.slct_1.value;
      		                          form.txtf_1.value=a_1;
									  }
									  if(nam==2)
									  {
										  
									  var a_1= form.slct_2.value;
      		                          form.txtf_1.value=a_1;
									  }
									  if(nam==3)
									  {
										  
									  var a_1= form.slct_3.value;
      		                          form.txtf_1.value=a_1;
									  }
									  if(nam==4)
									  {
										  
									  var a_1= form.slct_4.value;
      		                          form.txtf_1.value=a_1;
									  }
									  if(nam==5)
									  {
										  
									  var a_1= form.slct_5.value;
      		                          form.txtf_1.value=a_1;
									  }
									  if(nam==6)
									  {
										 
									  var a_1= form.slct_6.value;
      		                          form.txtf_1.value=a_1;
									  }
									  if(nam==7)
									  {
										 
									  var a_1= form.slct_7.value;
      		                          form.txtf_4.value=a_1;
									  }
									  if(nam==8)
									  {
										  
									  var a_1= form.slct_8.value;
      		                          form.txtf_4.value=a_1;
									  }
									  if(nam==9)
									  {
										  
									  var a_1= form.slct_9.value;
      		                          form.txtf_4.value=a_1;
									  }
									  if(nam==10)
									  {
										  
									  var a_1= form.slct_10.value;
      		                          form.txtf_4.value=a_1;
									  }
									  if(nam==11)
									  {
										  
									  var a_1= form.slct_11.value;
      		                          form.txtf_4.value=a_1;
									  }
									  if(nam==12)
									  {
										  
									  var a_1= form.slct_12.value;
      		                          form.txtf_4.value=a_1;
									  }
									  if(nam==13)
									  {
										  
									  var a_1= form.slct_13.value;
      		                          form.txtf_4.value=a_1;
									  }
									  if(nam==14)
									  {
										  
									  var a_1= form.slct_14.value;
      		                          form.txtf_7.value=a_1;
									  }
									  if(nam==15)
									  {
										  
									  var a_1= form.slct_15.value;
      		                          form.txtf_7.value=a_1;
									  }
									  if(nam==16)
									  {
										  
									  var a_1= form.slct_16.value;
      		                          form.txtf_7.value=a_1;
									  }
									  if(nam==17)
									  {
										  
									  var a_1= form.slct_17.value;
      		                          form.txtf_7.value=a_1;
									  }
									  if(nam==18)
									  {
										  
									  var a_1= form.slct_18.value;
      		                          form.txtf_7.value=a_1;
									  }
									  if(nam==19)
									  {
										  
									  var a_1= form.slct_19.value;
      		                          form.txtf_7.value=a_1;
									  }
									   if(nam==20)
									  {
										  
									  var a_1= form.slct_20.value;
      		                          form.txtf_10.value=a_1;
									  }
									  if(nam==21)
									  {
										  
									  var a_1= form.slct_21.value;
      		                          form.txtf_10.value=a_1;
									  }
									  if(nam==22)
									  {
										  
									  var a_1= form.slct_22.value;
      		                          form.txtf_10.value=a_1;
									  }
									  if(nam==23)
									  {
										  
									  var a_1= form.slct_23.value;
      		                          form.txtf_10.value=a_1;
									  }
									  if(nam==24)
									  {
										  
									  var a_1= form.slct_24.value;
      		                          form.txtf_10.value=a_1;
									  }
									  if(nam==25)
									  {
										  
									  var a_1= form.slct_25.value;
      		                          form.txtf_10.value=a_1;
									  }
									  if(nam==26)
									  {
										  
									  var a_1= form.slct_26.value;
      		                          form.txtf_10.value=a_1;
									  }
									  if(nam==27)
									  {
									  var a_1= form.slct_27.value;
      		                          form.txtf_10.value=a_1;
									  }
									   if(nam==28)
									  {
										
									  var a_1= form.slct_28.value;
      		                          form.txtf_13.value=a_1;
									  } 
									  if(nam==29)
									  {
										
									  var a_1= form.slct_29.value;
      		                          form.txtf_13.value=a_1;
									  }
									  if(nam==30)
									  {
										
									  var a_1= form.slct_30.value;
      		                          form.txtf_13.value=a_1;
									  }
									  if(nam==31)
									  {
										
									  var a_1= form.slct_31.value;
      		                          form.txtf_13.value=a_1;
									  }
									  if(nam==32)
									  {
										
									  var a_1= form.slct_32.value;
      		                          form.txtf_13.value=a_1;
									  }
									  if(nam==33)
									  {
										  
									  var a_1= form.slct_33.value;
      		                          form.txtf_13.value=a_1;
									  }
									  if(nam==34)
									  {
										  
									  var a_1= form.slct_34.value;
      		                          form.txtf_13.value=a_1;
									  }
									   if(nam==35)
									  {
										  
									  var a_1= form.slct_35.value;
      		                          form.txtf_16.value=a_1;
									  } 
									  if(nam==36)
									  {
										  
									  var a_1= form.slct_36.value;
      		                          form.txtf_16.value=a_1;
									  }
									  if(nam==37)
									  {
										  
									  var a_1= form.slct_37.value;
      		                          form.txtf_16.value=a_1;
									  }
									  if(nam==38)
									  {
										  
									  var a_1= form.slct_38.value;
      		                          form.txtf_16.value=a_1;
									  }
									  if(nam==39)
									  {
										  
									  var a_1= form.slct_39.value;
      		                          form.txtf_16.value=a_1;
									  }
									  if(nam==40)
									  {
										  
									  var a_1= form.slct_40.value;
      		                          form.txtf_16.value=a_1;
									  }
									  if(nam==41)
									  {
										  
									  var a_1= form.slct_41.value;
      		                          form.txtf_16.value=a_1;
									  }
									   if(nam==42)
									  {
										  
									  var a_1= form.slct_42.value;
      		                          form.txtf_19.value=a_1;
									  } 
									  if(nam==43)
									  {
										  
									  var a_1= form.slct_43.value;
      		                          form.txtf_19.value=a_1;
									  }
									  if(nam==44)
									  {
										  
									  var a_1= form.slct_44.value;
      		                          form.txtf_19.value=a_1;
									  }
									  if(nam==45)
									  {
										  
									  var a_1= form.slct_45.value;
      		                          form.txtf_19.value=a_1;
									  }
									  if(nam==46)
									  {
										  
									  var a_1= form.slct_46.value;
      		                          form.txtf_19.value=a_1;
									  }
									  if(nam==47)
									  {
										  
									  var a_1= form.slct_47.value;
      		                          form.txtf_19.value=a_1;
									  }
									
									  if(nam==48)
									  {
										  
									  var a_1= form.slct_48.value;
      		                          form.txtf_19.value=a_1;
									  }
									   if(nam==49)
									  {
										  
									  var a_1= form.slct_49.value;
      		                          form.txtf_22.value=a_1;
									  } 
									  if(nam==50)
									  {
										  
									  var a_1= form.slct_50.value;
      		                          form.txtf_22.value=a_1;
									  }
									  if(nam==51)
									  {
										  
									  var a_1= form.slct_51.value;
      		                          form.txtf_22.value=a_1;
									  }
									  if(nam==52)
									  {
										  
									  var a_1= form.slct_52.value;
      		                          form.txtf_22.value=a_1;
									  }
									  if(nam==53)
									  {
										  
									  var a_1= form.slct_53.value;
      		                          form.txtf_22.value=a_1;
									  }
									  if(nam==54)
									  {
										  
									  var a_1= form.slct_54.value;
      		                          form.txtf_22.value=a_1;
									  }
									
									  if(nam==55)
									  {
										  
									  var a_1= form.slct_55.value;
      		                          form.txtf_22.value=a_1;
									  }
									  if(nam==56)
									  {
										  
									  var a_1= form.slct_56.value;
      		                          form.txtf_25.value=a_1;
									  } 
									  if(nam==57)
									  {
										  
									  var a_1= form.slct_57.value;
      		                          form.txtf_25.value=a_1;
									  }
									  if(nam==58)
									  {
										  
									  var a_1= form.slct_58.value;
      		                          form.txtf_25.value=a_1;
									  }
									  if(nam==59)
									  {
										  
									  var a_1= form.slct_59.value;
      		                          form.txtf_25.value=a_1;
									  }
									  if(nam==60)
									  {
										  
									  var a_1= form.slct_60.value;
      		                          form.txtf_25.value=a_1;
									  }
									  if(nam==61)
									  {
										  
									  var a_1= form.slct_61.value;
      		                          form.txtf_25.value=a_1;
									  }
									  if(nam==62)
									  {
										  
									  var a_1= form.slct_62.value;
      		                          form.txtf_25.value=a_1;
									  }
									if(nam==63)
									  {
										  
									  var a_1= form.slct_63.value;
      		                          form.txtf_28.value=a_1;
									  } 
									  if(nam==64)
									  {
										  
									  var a_1= form.slct_64.value;
      		                          form.txtf_28.value=a_1;
									  }
									  if(nam==65)
									  {
										  
									  var a_1= form.slct_65.value;
      		                          form.txtf_28.value=a_1;
									  }
									  if(nam==66)
									  {
										  
									  var a_1= form.slct_66.value;
      		                          form.txtf_28.value=a_1;
									  }
									  if(nam==67)
									  {
										  
									  var a_1= form.slct_67.value;
      		                          form.txtf_28.value=a_1;
									  }
									  if(nam==68)
									  {
										  
									  var a_1= form.slct_68.value;
      		                          form.txtf_28.value=a_1;
									  }
									  if(nam==69)
									  {
										  
									  var a_1= form.slct_69.value;
      		                          form.txtf_28.value=a_1;
									  }
									  if(nam==70)
									  {
										  
									  var a_1= form.slct_70.value;
      		                          form.txtf_31.value=a_1;
									  } 
									  if(nam==71)
									  {
										  
									  var a_1= form.slct_71.value;
      		                          form.txtf_31.value=a_1;
									  }
									  if(nam==72)
									  {
										  
									  var a_1= form.slct_72.value;
      		                          form.txtf_31.value=a_1;
									  }
									  if(nam==73)
									  {
										  
									  var a_1= form.slct_73.value;
      		                          form.txtf_31.value=a_1;
									  }
									  if(nam==74)
									  {
										  
									  var a_1= form.slct_74.value;
      		                          form.txtf_31.value=a_1;
									  }
									  if(nam==75)
									  {
										  
									  var a_1= form.slct_75.value;
      		                          form.txtf_31.value=a_1;
									  }
									  if(nam==76)
									  {
										  
									  var a_1= form.slct_76.value;
      		                          form.txtf_31.value=a_1;
									  }
									  if(nam==77)
									  {
										  
									  var a_1= form.slct_77.value;
      		                          form.txtf_34.value=a_1;
									  } 
									  if(nam==78)
									  {
										  
									  var a_1= form.slct_78.value;
      		                          form.txtf_34.value=a_1;
									  }
									  if(nam==79)
									  {
										  
									  var a_1= form.slct_79.value;
      		                          form.txtf_34.value=a_1;
									  }
									  if(nam==80)
									  {
										  
									  var a_1= form.slct_80.value;
      		                          form.txtf_34.value=a_1;
									  }
									  if(nam==81)
									  {
										  
									  var a_1= form.slct_81.value;
      		                          form.txtf_34.value=a_1;
									  }
									  if(nam==82)
									  {
										  
									  var a_1= form.slct_82.value;
      		                          form.txtf_34.value=a_1;
									  }
									  if(nam==83)
									  {
										  
									  var a_1= form.slct_83.value;
      		                          form.txtf_34.value=a_1;
									  }
									 
								  }

//functions created on dec-11-07
function setFolio(form)
                                  {
									  var fo= form.slct_imp.value;
      		                          form.txtf_fol.value=fo;
								  }
								  
function setCli(form)
                                  {
									  var cl= form.slct_cli.value;
      		                          form.txtf_cli.value=cl;
								  }
								  
function setCliAlm(form)
                                  {
									  var cli= form.slct_cli.value;
      		                          form.txtf_nom.value=cli;
								  }
								  
								   
function addTotal(form) 
		              {
                      
					  
					    var imp = parseFloat(form.txtf_impuestos.value);
                        var hono1 = parseFloat(form.txtf_honag.value);   
                        var hono2 = parseFloat(form.txtf_honcom.value);  
						var rev = parseFloat(form.txtf_rev.value);
						var fle = parseFloat(form.txtf_fle.value);
						var vis = parseFloat(form.txtf_visad.value);
						var est = parseFloat(form.txtf_esti.value);
						var shp = parseFloat(form.txtf_shp.value);
						var eti = parseFloat(form.txtf_etiq.value);
						var otr = parseFloat(form.txtf_otr.value);
						var otr2 = parseFloat(form.txtf_otr2.value);
		                var ans= (imp+hono1+hono2+rev+fle+vis+est+shp+eti+otr+otr2).toFixed(2); 
						form.txtf_totald.value = ans; 
						//form.txtf_tc2.value= ans;
					  }
function addTotal2(form) 
		              {
                      
					  
					    var imp_2 = parseFloat(form.txtf_emn.value);
                        var hono1_2 = parseFloat(form.txtf_totdlls.value);   
                        var hono2_2 = parseFloat(form.txtf_hsbc1.value);  
						var rev_2 = parseFloat(form.txtf_hsbc2.value);
						var fle_2 = parseFloat(form.txtf_bbva1.value);
						var vis_2 = parseFloat(form.txtf_hsbc3.value);
						var est_2 = parseFloat(form.txtf_hsbc4.value);
						var shp_2 = parseFloat(form.txtf_bbva2.value);
						var eti_2 = parseFloat(form.txtf_fb.value);
						var otr_2 = parseFloat(form.txtf_ba.value);
						
		                var ans_2= (imp_2+hono1_2+hono2_2+rev_2+fle_2+vis_2+est_2+shp_2+eti_2+otr_2).toFixed(2); 
						form.txtf_total.value = ans_2; 
						//form.txtf_tc2.value= ans;
					  }
					  
function addS(form) 
		              {
                        var sum1 = form.txtf_25.value;
                        var sum2 = parseFloat(form.txtf_13.value);
						//var sum3 = parseFloat(form.txtf_22.value);
						//var sum4 =  parseFloat(document.form.txtf_32.value)//parseInt(form.txtf_31.value);
						//var sum5 =  parseFloat(document.form.txtf_41.value)//parseInt(form.txtf_40.value);
						//res=(sum1+sum2);
						form.txtf_46.value=sum1;
					  }
					  
function addImp(form) 
		              {
                      
					  
					    var vari_1 = parseFloat(form.txtf_prev.value);
						var vari_2 = parseFloat(form.txtf_igi.value);
						var vari_3 = parseFloat(form.txtf_dta.value);
						var vari_4 = parseFloat(form.txtf_iva.value);
						var vari_5 = parseFloat(form.txtf_otros.value);
						var answer= (vari_1+vari_2+vari_3+vari_4+vari_5).toFixed(2); 
						form.txtf_impuestos.value = answer;
					  }
// code for tha date 22/feb

function addTotalJ(form) 
		              {
                      
					  //alert("hello");
					    var imp = parseFloat(form.txtf_3.value);
                        var hono1 = parseFloat(form.txtf_9.value);   
                        var hono2 = parseFloat(form.txtf_15.value);  
						var rev = parseFloat(form.txtf_21.value);
						var fle = parseFloat(form.txtf_27.value);
						var vis = parseFloat(form.txtf_33.value);
						var est = parseFloat(form.txtf_39.value);
						var shp = parseFloat(form.txtf_45.value);
						var eti = parseFloat(form.txtf_51.value);
						var otr = parseFloat(form.txtf_57.value);
		                var ans= (imp+hono1+hono2+rev+fle+vis+est+shp+eti+otr).toFixed(2); 
						form.txtf_62.value = ans; 
						//form.txtf_tc2.value= ans;
					  }
function addTotalCC(form) 
		              {
                      
					 /* var tc=form.txtf_55.value;
		  var dlls=form.txtf_56.value;
		  form.txtf_60.value = (tc*dlls).toFixed(2);*/
					    var vari_1 = parseFloat(form.txtf_55.value);
						var vari_2 = parseFloat(form.txtf_56.value);
						var answer= (vari_1+vari_2).toFixed(2); 
						form.txtf_60.value = answer;
					  }
function setCurrency(form)
      {
		  var tc=form.txtf_tc.value;
		  var dlls=form.txtf_dlls.value;
		  form.txtf_mn.value = (tc*dlls).toFixed(2);
	  }

//Metodh for convert dlls to pesos
function setCurrency2(form)
      {
		  var tc2=form.txtf_tc.value;
		  var dlls2=form.txtf_edlls.value;
		  form.txtf_totdlls.value = (tc2*dlls2).toFixed(2);
	  }
function setBlank(form)
     {
		 form.txtf_dlls.value="";
		 form.txtf_tc.value="";
		 form.txtf_mn.value="";
	 }


function setDir(form) 
      		                       {
      		                         var d= form.slct_direc.value;
      		                         form.txtf_dir.value=d;
      		                       }	


function refresh()
{
    window.location.reload( false );
}

function toUppercaseInven() {
         document.form.txtf_desc.value =  document.form.txtf_desc.value.toUpperCase();
}

function toUppercasePaq1() {
         document.form.txtf_cs.value =  document.form.txtf_cs.value.toUpperCase();
}

function toUppercaseF1() {
         document.form.txtf_spss.value =  document.form.txtf_spss.value.toUpperCase();
}

function toUppercaseF2() {
         document.form.txtf_fol2.value =  document.form.txtf_fol2.value.toUpperCase();
}
function toUppercaseEnc() {
         document.form1.txtf_encar.value =  document.form1.txtf_encar.value.toUpperCase();
}
function toUppercaseENT() {
         document.form.txtf_8.value =  document.form.txtf_8.value.toUpperCase();
		 document.form.txtf_10.focus();
}

function toUppercaseCve() {
         document.form.txtf_2.value =  document.form.txtf_2.value.toUpperCase();
}
function toUppercaseLote() {
         document.form.txtf_lote.value =  document.form.txtf_lote.value.toUpperCase();
}
function toUppercaseUbic() {
         document.form.txtf_ubi.value =  document.form.txtf_ubi.value.toUpperCase();
}
function toUppercaseFS() {
         document.form.txtf_spss.value =  document.form.txtf_spss.value.toUpperCase();
}
function toUppercaseF3() {
         document.form.txtf_tu.value =  document.form.txtf_tu.value.toUpperCase();
}
function toUppercaseF4() {
         document.form.txtf_med.value =  document.form.txtf_med.value.toUpperCase();
}
function toUppercaseF5() {
         document.form.txtf_pac.value =  document.form.txtf_pac.value.toUpperCase();
}
function toUppercaseF6() {
         document.form.txtf_edad.value =  document.form.txtf_edad.value.toUpperCase();
}


function toUppercaseMP() {
         document.form1.txtf_7.value =  document.form1.txtf_7.value.toUpperCase();
}
function toUppercaseO4() {
         document.form1.txtf_nom.value =  document.form1.txtf_nom.value.toUpperCase();
}
function toUppercaseO5() {
         document.form1.txtf_asun.value =  document.form1.txtf_asun.value.toUpperCase();
}
function toUppercaseO6() {
         document.form1.txtf_toma.value =  document.form1.txtf_toma.value.toUpperCase();
}
function toUppercaseO7() {
         document.form1.txtf_mot.value =  document.form1.txtf_mot.value.toUpperCase();
}
function toUppercaseO8() {
         document.form1.txtf_jur.value =  document.form1.txtf_jur.value.toUpperCase();
}
function toUppercaseO9() {
         document.form1.txtf_usu.value =  document.form1.txtf_usu.value.toUpperCase();
}
function toUppercase() {
         document.form1.txtf_client.value =  document.form1.txtf_client.value.toUpperCase();
}

function toUppercase5() {
         document.form1.txtf_name.value =  document.form1.txtf_name.value.toUpperCase();
}

function toUppercase6() {
         document.form1.txtf_add.value =  document.form1.txtf_add.value.toUpperCase();
}
function toUppercase7() {
         document.form1.txtf_City.value =  document.form1.txtf_City.value.toUpperCase();
}
function toUppercase8() {
         document.form1.txtf_plate2.value =  document.form1.txtf_plate2.value.toUpperCase();
}

// Message for leave the capture or stay
function confirmation() {
	var answer = confirm("Leave tizag.com?")
	if (answer){
		alert("Bye bye!")
		window.location = "../index.html"
	}
	else{
		alert("Thanks for sticking around!")
	}
}

function prompter() {
var reply = prompt("Introduzca CLAVE DE DIRECTIVO", "")
//alert (reply)
}

function handleEnter (field, event) {
	//var miTabla=new elements();
	//elements[]={"txtf_ref","txtf_con","txtf_deb"};
	       		var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
	       		if (keyCode == 13) {
	       			var i;
	       			for (i = 0; i < field.form.elements.length; i++)
	       				if (field == field.form.elements[i])
	       					break;
	       			i = (i + 1) % field.form.elements.length;
	       			field.form.elements[i].focus();
	       			return false;
	       		} 
	       		else
	       		return true;
	       	}      
function putF()
    {
		alert("hello");
	  document.form.txtf_ref.focus();	
	}
function focusMostrar()
    {
		alert("hello");
	  document.form.txtf_ref.focus();	
	}
	
function putFocus(form)
    {
		alert("hello");
	  document.form.txtf_pass.focus();	
	}	
	
	
b_1=0;
function doCleanB(form1)
                      {
                        if(b_1==0)
                         {              
                           form1.txtf_deb.value="";
                           b_1++;
                         } 
						 form1.txtf_deb.focus();
                      }			
function doCleanB2(form1)

                     {
						 form1.txtf_ref.value="";
						 form1.txtf_con.value="";
						 form1.txtf_deb.value="";
						 form1.txtf_ref.focus();
					 }
function doCleanB21(form1)

                     {
						 //form1.txtf_ref.value="";
						 form1.txtf_con.value="";
						 form1.txtf_deb.value="";
						 form1.txtf_con.focus();
					 }
function doCleanB3(form1)

                     {
						 form1.txtf_num.value="";
						 form1.txtf_con2.value="";
						 form1.txtf_imp.value="";
						 form1.txtf_num.focus();
					 }
function doCleanB31(form1)

                     {
						 //form1.txtf_num.value="";
						 form1.txtf_con2.value="";
						 form1.txtf_imp.value="";
						 form1.txtf_con2.focus();
					 }
function capLock(e){ 
  kc=e.keyCode?e.keyCode:e.which; 
  sk=e.shiftKey?e.shiftKey:((kc==16)?true:false); 
  if(((kc>=65&&kc<=90)&&!sk)||((kc>=97&&kc<=122)&&sk)) 
    document.getElementById('caplock').style.visibility = 'visible'; 
  else document.getElementById('caplock').style.visibility = 'hidden'; 
} 

function setDay1(form)
                 {
					 //alert("hello");
					day1= form.slct_day1.value;
      		        form.txtf_day1.value=day1;
				 }
function setDay2(form)
                 {
					 //alert("hello");
					day2= form.slct_day2.value;
      		        form.txtf_day2.value=day2;
				 }
						
function setMes2(form) 
      		                       {
      		                         var m= form.select2.value;
      		                         form.textfield2.value=m;
      		                       }
function setMes3(form) 
      		                       {
      		                         var m= form.select3.value;
      		                         form.textfield3.value=m;
      		                       }
								   
function setAnnio(form) 
      		                       {
      		                         var m= form.select4.value;
      		                         form.textfield4.value=m;
      		                       }
function setImpDep(form)
      {
		  var imp1=form.txtf_imp.value;
		  //var dlls=form.txtf_dlls.value;
		  form.txtf_imp2.value = ((imp1*0.25)/12).toFixed(2);
	  }
function setTraD(form) 
      		                      {
      		                         var tad= form.slct_tad.value;
      		                         form.txtf_tad.value=tad;
      		                       }
								   
function setPerA(form) 
      		                      {
      		                         var pas= form.slct_pas.value;
      		                         form.txtf_pas.value=pas;
      		                       }
function setImpDep2(form)
      {
		  var imp2=form.txtf_imp.value;
		  var imp3=form.txtf_imp2.value;
		  form.txtf_sn.value = (imp2-imp3).toFixed(2);
	  }
	  
	  bas_1=0;
function doCleanBas(form1)
                      {
                        if(bas_1==0)
                         {              
                           form1.txtf_imp.value="";
                           bas_1++;
                         } 
						 form1.txtf_imp.focus();
                      }	
function ValidateFormCap(form)
                                {
									//alert("hello");
									//var idd=document.getElementById('taker');
								  if( form.usuario.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, ESTA VACIO EL CAMPO DE USUARIO') 
                                                form.usuario.focus(); 
												//alert(""+idd.value)
                                                return false; 
                                           }
								return true;
								}
								
function ValidateFar(form)
                                {
									//alert("hello");
									var idd=document.getElementById('txtf_fol2');
									
									var idd2=document.getElementById('txtf_32');
									
								if( idd.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, INGRESE EL NÚMERO DE FOLIO DE LA RECETA') 
                                                form.txtf_fol2.focus(); 
												//alert(""+idd.value)
                                                return false; 
                                           }
								
							
										   return true;
								}

function ValidateFarInv3(form)
{	
	var cve=document.getElementById('txtf_2');	
	var cant=document.getElementById('txtf_exi');	
	if( cve.value=="")  //IsEmpty(form.usuario)
           {
                alert('Error, SELECCIONE O BIEN INSERTE LA CLAVE') 
                form.txtf_2.focus(); 
				//alert(""+idd.value)
                return false; 
           }
		   return true;		   
}

function ValidateFar1(form)
                                {
									//alert("hello");
									var idd=document.getElementById('txtf_fol2');
									var prov=document.getElementById('txtf_4');
									var recibe=document.getElementById('txtf_5');
									var entrega=document.getElementById('txtf_8');
									var ubicacion=document.getElementById('txtf_6');
									var origen=document.getElementById('txtf_7');
									var coincide=document.getElementById('txtf_coin');									
								if( idd.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, INGRESE EL NÚMERO DE FOLIO DE LA REMISION') 
                                                form.txtf_fol2.focus(); 
												//alert(""+idd.value)
                                                //return false; 
                                           }															
										   //return true;
								if( prov.value=="") { alert('El PROVEEDOR es un dato necesario, ingresalo por favor'); form.txtf_4.focus(); 												
                                                //return false;
												}//return true;
								if( recibe.value=="") { alert('Quien RECIBE es un dato necesario, ingresalo por favor'); form.txtf_5.focus(); 												
                                                //return false;
												}//return true;
								if( entrega.value=="") { alert('Quien ENTREGA es un dato necesario, ingresalo por favor'); form.txtf_8.focus(); 												
                                                //return false;
												}//return true;
								if( ubicacion.value=="") { alert('La UBICACION es un dato necesario, ingresalo por favor'); form.txtf_6.focus(); 												
                                                //return false;
												}//return true;
								if( origen.value=="") { alert('El ORIGEN es un dato necesario, ingresalo por favor'); form.txtf_7.focus(); 												
                                                //return false;
												}//return true;
								if( coincide.value=="") { alert('Debes indicar SI o NO Coincide el Documento con la Remisión'); form.txtf_coin.focus(); 												
                                                return false;}return true;
												
								}
function ValidateCat(form)
                                {
									//alert("hello");
									var nom=document.getElementById('txtf_nom');
									var asunto=document.getElementById('txtf_asun');
									var tel1=document.getElementById('txtf_6');
									var tel2=document.getElementById('txtf_7');
									var tel3=document.getElementById('txtf_8');
									var recado=document.getElementById('txtf_rec');
									var oper=document.getElementById('txtf_toma');									
								if( nom.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, Debe ingresar el NOMBRE DE QUIEN LLAMO');form.txtf_nom.focus(); 
												//alert(""+idd.value)
                                                //return false; 
                                           }															
										   //return true;
								if( asunto.value=="") { alert('El ASUNTO es un dato necesario, ingresalo por favor'); form.txtf_asun.focus(); 												
                                                //return false;
												}//return true;
								if( tel1.value=="") { alert('El FORMATO DEL NUMERO TELEFONICO ES INCORRECTO, Ingresélo nuevamente'); form.txtf_6.focus(); 												
                                                //return false;
												}//return true;
								else if( tel2.value=="") { alert('El FORMATO DEL NUMERO TELEFONICO ES INCORRECTO, Ingresélo nuevamente'); form.txtf_7.focus(); 												
                                                //return false;
												}//return true;
								else if( tel3.value=="") { alert('El FORMATO DEL NUMERO TELEFONICO ES INCORRECTO, Ingresélo nuevamente'); form.txtf_8.focus(); 												
                                                //return false;
												}//return true;
								if( recado.value=="") { alert('Debes ingresar un RECADO para ubicar la llamada'); form.txtf_rec.focus(); 												
                                                //return false;
												}//return true;
								if( oper.value=="") { alert('Debes registrar el OPERADOR que recibio la LLAMADA'); form.txtf_toma.focus(); 												
                                                return false;}return true;
												
								}

function ValidateLlamSal(form)
                                {
									//alert("hello");
									var nom=document.getElementById('txtf_nom');
									var mot=document.getElementById('txtf_mot');
									var juris=document.getElementById('txtf_jur');
									var usu=document.getElementById('txtf_usu');
									var fecha=document.getElementById('txtf_caduc');
																	
								if( nom.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, Debe ingresar el NOMBRE DE LA PERSONA A LLAMAR');form.txtf_nom.focus(); 
												//alert(""+idd.value)
                                                return false; 
                                           }															
										   //return true;
								if( mot.value=="") { alert('El MOTIVO es un dato necesario, ingresalo por favor'); form.txtf_mot.focus(); 												
                                                return false;
												}//return true;
								if( fecha.value=="") { alert('Ingresa la FECHA DE LA PROXIMA VISITA por favor'); form.txtf_caduc.focus(); 												
                                return false;
								}
								if( juris.value=="") { alert('LA JURISDICCIÓN es un dato necesario, ingresalo por favor'); form.txtf_jur.focus(); 												
                                                return false;
												}//return true;
								else if( usu.value=="") { alert('Error, Debe ingresar el NOMBRE DE LA PERSONA QUE REGISTRO LA LLAMADA'); form.txtf_usu.focus(); 												
                                                return false;
												}return true;
							
												
								}

function ValidateAbas(form)
                                {
									//alert("hello");
									var idd=document.getElementById('txtf_tu');
									var idd2=document.getElementById('txtf_cs');
								/*if(idd.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, ESTA VACIO EL CAMPO DE PROVEEDOR') 
                                                form.txtf_3.focus(); 
												alert(""+idd.value)
                                                return false; 
                                           }
								if(idd2.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, ESTA VACIO EL CAMPO DE CANTIDAD A SURTIR') 
                                                form.txtf_3.focus(); 
												alert(""+idd.value)
                                                return false; 
                                           }
								
								
									   */
										   return true;
								}
								


function setExi(form)
   {
	   //alert("in")
	  var cr=document.form.txtf_sol1.value; 
	  var sol=document.form.txtf_sur1.value;
	  var exi=document.form.txtf_exi.value;
	  
	      if(sol>cr)
	      {
		    alert("ERROR, LA CANTIDAD SURTIDA ES MAYOR QUE LA RECETADA")
           
		 }
		  else
		  {
	    	  document.form.txtf_exi.value= exi-sur;
		  }
	  var mini= document.form.txtf_exi.value
		 
	  if(mini = 0)
	     alert("Realice un PEDIDO su Stock ya esta en la MÍNIMA CANTIDAD")
		  
	}
	
	function setError(form)
   {
	   //alert("in")
	   alert("ERROR, Clave Agotada")
   }
	function setExIn(form)
   {
	   //alert("in")
	  var mas=parseInt(document.form.txtf_cs.value);
	  var exi=parseInt(document.form.txtf_exi.value);
	  //alert("in"+sur+exi)
	  document.form.txtf_exi.value= mas+exi;
	  var mini= document.form.txtf_exi.value
	  //if(mini <= 30)
	    // alert("Realice un PEDIDO su Stock ya esta en la MÍNIMA CANTIDAD")
	   
	}

function setExi2(form)
   {
	   //alert("in")
	  var sur=document.form.txtf_cs2.value;
	  var exi=document.form.txtf_exi2.value;
	  //alert("in"+sur+exi)
	  document.form.txtf_exi2.value= exi-sur;
	  var mini= document.form.txtf_exi2.value
	  if(mini <= 30)
	     alert("Realice un PEDIDO su Stock ya esta en la MÍNIMA CANTIDAD")
	   
	}

function setExi3(form)
   {
	   //alert("in")
	  var sur=document.form.txtf_cs3.value;
	  var exi=document.form.txtf_exi3.value;
	  //alert("in"+sur+exi)
	  document.form.txtf_exi3.value= exi-sur;
	  var mini= document.form.txtf_exi3.value
	  if(mini <= 30)
	     alert("Realice un PEDIDO su Stock ya esta en la MÍNIMA CANTIDAD")
	   
	}


function ValidateAlmacen(form)
                                {
									//alert("hello");
									var idd=document.getElementById('txtf_3');
									var idd2=document.getElementById('txtf_4');
								if( idd.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, ESTA VACIO EL CAMPO DE NOMBRE DE CLIENTE') 
                                                form.txtf_3.focus(); 
												//alert(""+idd.value)
                                                return false; 
                                           }
										   if( idd2.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, ESTA VACIO EL CAMPO DE MERCANCIA') 
                                                form.txtf_4.focus(); 
												//alert(""+idd.value)
                                                return false; 
                                           }
								return true;
								}
								
function ValidateFormName(form)
                                {
									//alert("hello");
									//var idd=document.getElementById('taker');
								  if( form1.txtf_client.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, ESTA VACIO EL CAMPO DE NOMBRE DE CLIENTE') 
                                                form1.txtf_client.focus(); 
												//alert(""+idd.value)
                                                return false; 
                                           }
								return true;
								}
								
function ValidateFormCant(form)
                                {
								  alert("hello");
									//var idd=document.getElementById('taker');
								  if( form1.txtf_exi.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, ESTA VACIO EL CAMPO DE EXISTE') 
                                                form1.txtf_exi.focus(); 
												//alert(""+idd.value)
                                                return false; 
                                           }
								return true;
								}


function ValidateForms(form)
                                {
									//alert("hello");
									//var idd=document.getElementById('taker');
								  if( form.txtf_exi.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, ESTA VACIO EL CAMPO DE USUARIO') 
                                                form.usuario.focus(); 
												//alert(""+idd.value)
                                                return false; 
                                           }
								 if( form.passw.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, ESTA VACIO EL CAMPO DE PASSWORD') 
                                                form.passw.focus(); 
												//alert(""+idd.value)
                                                return false; 
                                           }
										    return true;
								}
								
function ValidateForms2(form)
                                {
									//alert("hello");
									//var idd=document.getElementById('taker');
								  if( form.txtf_user.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, ESTA VACIO EL CAMPO DE USUARIO') 
                                                form.txtf_user.focus(); 
												//alert(""+idd.value)
                                                return false; 
                                           }
								 if( form.txtf_pass.value=="")  //IsEmpty(form.usuario)
                                           {
                                                alert('Error, ESTA VACIO EL CAMPO DE PASSWORD') 
                                                form.txtf_pass.focus(); 
												//alert(""+idd.value)
                                                return false; 
                                           }
										    return true;
								}	
								
function setTimes(form)
      {
		  var teaTime = new Date();
          teaTime.setHours(17); // 17 means 5 o'clock in the evening
          teaTime.setMinutes(45);
          teaTime.setSeconds(0);
          teaTime.setMilliseconds(30);
          //writeln("The date and time is " + teaTime + "<BR>");
          alert("The date and time is " + teaTime + "<BR>");
		  }
		  
function setTimes2()
    {
		
		//set date var
d = new Date();

//set time vars
var second = d.getSeconds();
var minute = d.getMinutes();
var hour = d.getHours();
var weekDay = d.getDay();
var day = d.getDate();
var year = d.getFullYear();
var month = d.getMonth();

//if minute less than 10 add leading zero
if(minute<10) {
	minute = "0" + minute;
}

if(hour<10) {
	hour = "0" + hour;
}

//make date string
var date = month + "/" + day + "/" + year + " " + hour + ":" + minute;

//Create Function: set field value
function setFieldValue(id, value) {
	document.getElementById(id).value = value;
}


window.onload = function() {
	
	setFieldValue("textfield", date);
	
}
		
		}
		
function myFun(id)
{
	//var ban=0;
	//var id  = document.getElementById("slct_3").value;
	//ar id2 = document.getElementById("slct_2").value;
	if(id=="slct_2")
	   {
	    alert("Deposito REALIZADO");
        
	   }
	if(id=="slct_3")
	    alert("Deposito REALIZADO");	
		
		alert("SISTEMA EN PROCESO DE PRUEBA");
}


 function goto_Pre()//return to the step 3 to the step 2
    { 
	 alert("SISTEMA DE CONTROL -- PERIODO DE PRUEBAS");
    //ans="<%=w1Inc%>"
    //alert(ans)
    //location.href='pre_presupcri.jsp?back=11'
     
  }   
 //Funciotns for the GNK project
 
  function putMex(form) 
      		                       {
      		                         var mex= form.slct_1.value;
      		                         //form.txtf_1.value= mex;
                                     form.slct_2.focus();
									 var mex2= form.slct_2.value;
      		                         form.txtf_1.value= mex2+"/"+mex+"/"+"2009";
									 form.txtf_2.focus();
      		                       }	
								   
function putHH(form) 
      		                       {
      		                         var hh1= form.slct_3.value;
      		                         //form.txtf_1.value= mex;
                                     //document.form1.slct_4.focus();
									 //var hh2= form.slct_3.value;
      		                         //form.txtf_2.value= hh1+":"+hh2;
									 form.txtf_2.value= hh1;
									 document.form1.slct_4.focus();
      		                       }

function putMM(form) 
      		                       {
      		                         var mm1= form.slct_4.value;
      		                         //form.txtf_1.value= mex;
                                     //document.form1.slct_4.focus();
									 //var hh2= form.slct_3.value;
      		                         //form.txtf_2.value= hh1+":"+hh2;
									 form.txtf_22.value= mm1;
									 document.form1.slct_5.focus();
      		                       }

function putHHH(form) 
      		                       {
      		                         var mm1= form.slct_5.value;
      		                         //form.txtf_1.value= mex;
                                     //document.form1.slct_4.focus();
									 //var hh2= form.slct_3.value;
      		                         //form.txtf_2.value= hh1+":"+hh2;
									 form.txtf_3.value= mm1;
									 document.form1.slct_6.focus();
      		                       }
function putMMM(form) 
      		                       {
      		                         var mm1= form.slct_6.value;
      		                         //form.txtf_1.value= mex;
                                     //document.form1.slct_4.focus();
									 //var hh2= form.slct_3.value;
      		                         //form.txtf_2.value= hh1+":"+hh2;
									 form.txtf_33.value= mm1;
									 var tini=parseFloat(form.txtf_2.value);
									 var tfin=parseFloat(form.txtf_3.value);
									 var hora= tfin-tini;
                                     var min1=parseFloat(form.txtf_22.value);
									 var min2=parseFloat(form.txtf_33.value);
									 var minu= min2-min1;
									   
									 if(min1<=min2)
									  {
									   if(minu<10)
									     minu="0"+minu;
									 
									     form.txtf_4.value=hora+":"+minu;
									  }
									  else
									   {
										 hora=tfin-tini;
										 minu=min2-min1;
										 var nmin=60+(minu);
										 var nhor=hora-1;
										 form.txtf_4.value=nhor+":"+nmin;
										 
										 
									   }
									 document.form1.txtf_5.focus();
      		                       }


function putHH2(form) 
      		                       {
      		                         var hh11= form.slct_4.value;
      		                         form.txtf_1.value= mex;
                                     document.form1.slct_6.focus();
									 var hh22= form.slct_6.value;
      		                         form.txtf_3.value= hh11+":"+hh22;
									 var hora1=parseFloat(form.txtf_2.value);
									 var hora2=parseFloat(form.txtf_3.value);
									 //var total=hora2-hora1;
									 form.txtf_3.value=total;
									 document.form1.txtf_5.focus();
      		                       }
								   
 function putCad(form) 
      		                       {
      		                         var mex= form.slct_7.value;
      		                         //form.txtf_1.value= mex;
                                     //document.form1.slct_2.focus();
									 //var mex2= form.slct_2.value;
      		                         form.txtf_6.value= mex;
									 document.form1.slct_8.focus();
      		                       }	
								   
function putCadA(form) 
      		                       {
      		                         var mex= form.slct_8.value;
      		                         //form.txtf_1.value= mex;
                                     //document.form1.slct_2.focus();
									 //var mex2= form.slct_2.value;
      		                         form.txtf_66.value= mex;
									 document.form1.txtf_7.focus();
      		                       }	
								   
function setUnis(form) 
      		                       {
      		                         var uni= form.SubCat.value;
      		                         //form.txtf_1.value= mex;
                                     //document.form1.slct_2.focus();
									 //var mex2= form.slct_2.value;
      		                         form.txtf_2.value= uni;
									 //document.form.Submit.focus();
      		                }
							
function setTurno(form) 
      		                       {
      		                         var tur= form.slct_tur.value;
      		                         //form.txtf_1.value= mex;
                                     //document.form1.slct_2.focus();
									 //var mex2= form.slct_2.value;
      		                         form.txtf_pass.value= tur;
									 //document.form.Submit.focus();
      		                       }
							
//Functions for the Project CAT

function putAsunto(form) 
      		                       {
      		                         var d1 = form1.slct_asun.value;
      		                         form1.txtf_mot.value= d1;
                                   } 
function putAsunto2(form) 
      		                       {
      		                         var d1 = form1.slct_asun.value;
      		                         form1.txtf_asun.value= d1;
                                   } 
function putSetDes(form) 
  {
    var d1 = form1.slct_descripcion.value;
    form1.txtf_desripcion.value= d1;
} 	

function putOpe0508(form) 
      		                       {
      		                         var d1 = form1.slct_ope.value;
      		                         form1.txtf_usu.value= d1;
                                   }								   
function putOpe(form) 
      		                       {
      		                         var op1 = form1.slct_ope.value;
      		                         form1.txtf_10.value= op1;
                                   } 
function putOpe2(form) 
      		                       {
      		                         var op1 = form1.slct_ope.value;
      		                         form1.txtf_toma.value= op1;
                                   } 								   
								   
function checkLada2()
                      {
                          //alert("quibo") 
                          var letters = document.form.txtf_61.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 3)
                                {
                                  document.form.txtf_61.focus()
                                }
                                 else
                               {
                                  document.form.txtf_71.focus()
                               }
                      }								   
								   
function checkLada22()
                      {
                          //alert("quibo") 
                          var letters = document.form.txtf_lad.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 3)
                                {
                                  document.form.txtf_lad.focus()
                                }
                                 else
                               {
                                  document.form.txtf_first.focus()
                               }
                      }											   
function checkLada()
                      {
                          //alert("quibo") 
                          var letters = document.form1.txtf_6.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 3)
                                {
                                  document.form1.txtf_6.focus()
                                }
                                 else
                               {
                                  document.form1.txtf_7.focus()
                               }
                      }
function checkFormat()
                      {
                          //alert("quibo") 
                          var letters = document.form.txtf_exi.value.length +1;
                          //alert(" "+letters);
						  
                          if (letters == 5)
                                {
									if(document.form.txtf_exi.value.charAt(1)!="," && document.form.txtf_exi.value.charAt(2)!=","&& document.form.txtf_exi.value.charAt(3)!=",")
									{
                                  document.form.txtf_exi.value=document.form.txtf_exi.value.charAt(0) + ","+document.form.txtf_exi.value.charAt(1)+document.form.txtf_exi.value.charAt(2)+document.form.txtf_exi.value.charAt(3)+document.form.txtf_exi.value.charAt(4);}
								 
                                }  
							if (letters == 7)
                                {
									if(document.form.txtf_exi.value.charAt(5)!="," && document.form.txtf_exi.value.charAt(3)!=",")
									{
                                  document.form.txtf_exi.value=document.form.txtf_exi.value.charAt(0) + document.form.txtf_exi.value.charAt(2) + ","+document.form.txtf_exi.value.charAt(3)+document.form.txtf_exi.value.charAt(4)+document.form.txtf_exi.value.charAt(5)+document.form.txtf_exi.value.charAt(6);}
								 
                                }  
								if (letters == 8)
                                {
									if(document.form.txtf_exi.value.charAt(1)!=",")
									{
                                  document.form.txtf_exi.value=document.form.txtf_exi.value.charAt(0) + document.form.txtf_exi.value.charAt(1) +document.form.txtf_exi.value.charAt(3)+ ","+document.form.txtf_exi.value.charAt(4)+document.form.txtf_exi.value.charAt(5)+document.form.txtf_exi.value.charAt(6)+document.form.txtf_exi.value.charAt(7);}
								 
                                } 
								if (letters == 9)
                                {
									if(document.form.txtf_exi.value.charAt(1)!=",")
									{
                                  document.form.txtf_exi.value=document.form.txtf_exi.value.charAt(0) +","+ document.form.txtf_exi.value.charAt(1) +document.form.txtf_exi.value.charAt(2)+ document.form.txtf_exi.value.charAt(4)+","+document.form.txtf_exi.value.charAt(5)+document.form.txtf_exi.value.charAt(6)+document.form.txtf_exi.value.charAt(7);}
								 
                                } 
                      }					  
function check()
                      {
                          // alert("quibo") 
                          var letters = document.form1.txtf_7.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 3)
                                {
                                  document.form1.txtf_7.focus()
                                }
                                 else
                               {
                                  document.form1.txtf_8.focus()
                               }
                      }
function checkCap()
                      {
                          // alert("quibo") 
                          var letters = document.form.txtf_71.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 3)
                                {
                                  document.form.txtf_71.focus()
                                }
                                 else
                               {
                                  document.form.txtf_81.focus()
                               }
                      }
					  
	function checkCap2()
                      {
                          // alert("quibo") 
                          var letters = document.form.txtf_first.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 3)
                                {
                                  document.form.txtf_first.focus()
                                }
                                 else
                               {
                                  document.form.txtf_sec.focus()
                               }
                      }				  
					  
function checkU()
                      {
                            
                          var letters = document.form1.txtf_81.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 4)
                                {
                                  document.form1.txtf_81.focus()
                                }
                                 else
                               {
                                  document.form1.txtf_91.focus()
                               }
                      }
					  
function checkUCap()
                      {
                            
                          var letters = document.form.txtf_81.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 4)
                                {
                                  document.form.txtf_81.focus()
                                }
                                 else
                               {
                                  document.form.txtf_91.focus()
                               }
                      }
					  
function checkUCap2()
                      {
                            
                          var letters = document.form.txtf_sec.value.length +1;
                          //alert(" "+letters);
                          if (letters <= 4)
                                {
                                  document.form.txtf_sec.focus()
                                }
                                 else
                               {
                                  document.form.txtf_8.focus()
                               }
                      }
					  
//code for the proveedores project

function putProv(form) 
      		                       {
      		                         var prov1 = form.slct_1.value;
      		                         form.txtf_4.value= prov1;
                                   } 
function putUni(form) 
      		                       {
      		                         var uni = form.slct_uni.value;
      		                         form.txtf_uni.value= uni;
                                   }
function putEsca(form) 
      		                       {
      		                         var uni = form.slc_esca.value;
      		                         form.txtf_esca.value= uni;
                                   }								   
function putOperador(form) 
      		                       {
      		                         var ope = form.slct_ope.value;
      		                         form.txtf_ope.value= ope;
                                   }								   
								   
function putRecibe(form) 
      		                       {
      		                         var rec1 = form.slct_2.value;
      		                         form.txtf_5.value= rec1;
                                   } 
function putUbicacion(form) 
      		                       {
      		                         var prov1 = form.slct_3.value;
      		                         form.txtf_6.value= prov1;
                                   }
function putEqu(form) 
      		                       {
      		                         var equ = form.sclt_Equ.value;
      		                         form.txtf_Equ.value= equ;
                                   }								   
								   
function putOrigen(form) 
      		                       {
      		                         var prov1 = form.slct_4.value;
      		                         form.txtf_7.value= prov1;
                                   }
function putDay(form) 
      		                       {
      		                         var day = form.txtf_day.value;
      		                         form.txtf_d.value= day;
                                   }
function putMes(form) 
      		                       {
      		                         var mes = form.slct_mes.value;
      		                         form.txtf_m.value= mes;
                                   }
function putAnio(form) 
      		                       {
      		                         var anio = form.sclt_anio.value;
      		                         form.txtf_y.value= anio;
								   }
								   								   
//recetas´ function								   
function showR()
{
	if(form.txtf_exi.value=="0")
	  {
	   alert("Hello");
       form.txtf_cs.value="0"; 
	  }
}

//Funciones Para Captura de Recetas
function putExi(form)
{	
	form.txtf_cr.value="";
}
function putExist(form)
{	
	form.txtf_exi.value="";
	alert("Verifica si coincide el LOTE y CADUCIDAD, de lo contrario ingrésalos de forma manual, Despues de clic en el botón CAPTURAR");	
}
function putCla(form)
{	
	form.txtf_3.value="";	
}

function putExi1(form)
{	
	form.txtf_cs.value="";
	form.txtf_cs.focus();
	
}
function disableButton(form)
{	
	form.sb.disabled="false";
	form.sb.focus();
	
}

function checkCap(form)
{
   if( (form.txtf_cr.value=""))
       alert("Error")
	
}
function setMensaje()
 {
	 
	//if(confirm
	alert("CLAVE INVÁLIDA NO REGRISTADA EN EL SISTEMA, ¿Desea Agregar una CLAVE NUEVA? -- SI = De clic en el botón AGREGAR CLAVE");
	//)	{	self.location='http://201.122.57.206:8080/gnk/reg_nueva.jsp';		}else;
 }
 function setMensaje_1()
 {
	 
	//if(confirm
	alert("CLAVE INVÁLIDA NO REGRISTADA EN EL SISTEMA, DE CLICK EN LA LISTA DESPLEGABLE");
	//)	{	self.location='http://201.122.57.206:8080/gnk/reg_nueva.jsp';		}else;
 }

 
function setM1()
 {
	alert("<< -- ADVERTENCIA -- >> DEBES DE ESCOGER UNA OPCIÓN VÁLIDA DENTRO DE LA LISTA DE CLAVES")
 }


function setMens1(form)
 {
	if(form.txtf_3.value=="Clave") 
	    alert("Escoja una Clave antes de ACTIVAR ESTE BOTÓN");
	//reload();
	
	 }
	 
	 
//Function for show and hide

 function showHideItems(myItem,glo)
                          {
                              if(glo==0)
                                alert ("Please fill the Credit Card's numbers");
                              else
                                    {
                                        glo++;
                                     }
                                var myItem = document.getElementById(myItem);
                                if (myItem.style.display != "none") 
                                      {//alert("if no"+myItem.id);
                         
                                      //items are currently displayed, so hide them


                                      myItem.style.display = "none";

               //                      swapImage(myButton,"plus");
                       }
                   else {
                            //alert("else");  
                            //items are currently hidden, so display them
                           myItem.style.display = "block";

                 //          swapImage(myButton,"minus");
                        }
         }   
		 
function setObsName(form) 
      		                      {
      		                         var obs= form.slct_1.value;
      		                         form.txtf_1.value=obs;
      		                       }

function fillCategoryTol(){ 
addOption(document.form.slect_past, "1","1");
addOption(document.form.slect_past, "2","2");
addOption(document.form.slect_past, "3","3");
addOption(document.form.slect_past, "4","4");
addOption(document.form.slect_enfer, "1","1");
addOption(document.form.slect_enfer, "2","2");
addOption(document.form.slect_enfer, "3","3");
addOption(document.form.slect_enfer, "4","4");
addOption(document.form.slect_enfer, "5","5");
addOption(document.form.slect_clim, "Frio","Frio");
addOption(document.form.slect_clim, "Caluroso","Caluroso");
addOption(document.form.slect_clim, "Templado","Templado");
addOption(document.form.slect_cat, "B.I.","Batallón de Infantería");
addOption(document.form.slect_cat, "C.I.N.E.","C.I.N.E.");
addOption(document.form.slect_cat, "S.S.F.B.A.M.","S.S.F.B.A.M.");
addOption(document.form.slect_cat, "R.C.M.","R.C.M.");
addOption(document.form.slect_cat, "E.M.","E.M.");
addOption(document.form.slect_cat, "PSN.MIL.","PSN.MIL.");
addOption(document.form.slct_win, "Windows XP","Windows XP");
addOption(document.form.slct_win, "Windows Vista","Windows Vista");
addOption(document.form.slct_win, "Windows 7","Windows 7");
addOption(document.form.slct_win, "Otro","Otro");
addOption(document.form.slct_tr, "Si","Si");
addOption(document.form.slct_tr, "No","No");
addOption(document.form.slct_tr2, "Si","Si");
addOption(document.form.slct_tr2, "No","No");

addOption(document.form.slect_doc, "1","1");
addOption(document.form.slect_doc, "2","2");
addOption(document.form.slect_doc, "3","3");
addOption(document.form.slect_doc, "4","4");
addOption(document.form.slect_doc, "5","5");
addOption(document.form.slect_cel, "Telcel","Telcel");
addOption(document.form.slect_cel, "Movistar","Movistar");
addOption(document.form.slect_cel, "Nextel","Nextel");
addOption(document.form.slect_cel, "Todas","Todas");
addOption(document.form.slect_mod, "1","1");
addOption(document.form.slect_mod, "2","2");
addOption(document.form.slect_mod, "3","3");
addOption(document.form.slect_mod, "4","4");
addOption(document.form.slect_mod, "5","5");
addOption(document.form.slect_mod, "6","6");
addOption(document.form.slect_labor, "Lunes a Viernes","Lunes a Viernes");
addOption(document.form.slect_labor, "Lunes a Sabado","Lunes a Sabado");
addOption(document.form.slect_labor, "Lunes a Domingo","Lunes a Domingo");
addOption(document.form.slect_anaq, "1","1");
addOption(document.form.slect_anaq, "2","2");
addOption(document.form.slect_anaq, "3","3");
addOption(document.form.slect_anaq, "4","4");
addOption(document.form.slect_anaq, "5","5");
addOption(document.form.slect_anaq, "6","6");
addOption(document.form.slect_anaq, "7","7");
addOption(document.form.slect_clue, "No Tiene","No Tiene");
addOption(document.form.slect_tel, "No Tiene","No Tiene");
addOption(document.form.slect_fax, "No Tiene","No Tiene");
addOption(document.form.slect_correo, "No Tiene","No Tiene");
addOption(document.form.slect_tresp, "No Tiene","No Tiene");
addOption(document.form.slect_cresp, "No Tiene","No Tiene");
addOption(document.form.slect_odont, "No Hay","No Hay");

}

function Selectpast(){
 
 if(document.form.slect_past.value == '1'){
    var n1= form.slect_past.value;
    form.txtf_23.value="1";

      }
if(document.form.slect_past.value == '2'){
    var n1= form.slect_past.value;
    form.txtf_23.value="2";

      }
if(document.form.slect_past.value == '3'){
    var n1= form.slect_past.value;
    form.txtf_23.value="3";

      }
if(document.form.slect_past.value == '4'){
    var n1= form.slect_past.value;
    form.txtf_23.value="4";

      }

if(document.form.slect_enfer.value == '1'){
    var n1= form.slect_enfer.value;
    form.txtf_24.value="1";

      }
if(document.form.slect_enfer.value == '2'){
    var n1= form.slect_enfer.value;
    form.txtf_24.value="2";

      }
if(document.form.slect_enfer.value == '3'){
    var n1= form.slect_enfer.value;
    form.txtf_24.value="3";

      }
if(document.form.slect_enfer.value == '4'){
    var n1= form.slect_enfer.value;
    form.txtf_24.value="4";

      }
if(document.form.slect_enfer.value == '5'){
    var n1= form.slect_enfer.value;
    form.txtf_24.value="5";

      }
if(document.form.slect_clim.value == 'Frio'){
    var n1= form.slect_clim.value;
    form.txtf_28.value="Frio";

      }
if(document.form.slect_clim.value == 'Templado'){
    var n1= form.slect_clim.value;
    form.txtf_28.value="Templado";

      }	  
if(document.form.slect_clim.value == 'Caluroso'){
    var n1= form.slect_clim.value;
    form.txtf_28.value="Caluroso";

      }
if(document.form.slect_cat.value == 'C.S.Urbano'){
    var n1= form.slect_cat.value;
    form.txtf_16.value="C.S.Urbano";

      }
if(document.form.slect_cat.value == 'C.S.Rural'){
    var n1= form.slect_cat.value;
    form.txtf_16.value="C.S.Rural";

      }	  
if(document.form.slect_cat.value == 'Hospital'){
    var n1= form.slect_cat.value;
    form.txtf_16.value="Hospital";

      }	  
if(document.form.slect_cat.value == 'SYGUE'){
    var n1= form.slect_cat.value;
    form.txtf_16.value="SYGUE";

      }	  
if(document.form.slect_cat.value == 'Unidad Movil'){
    var n1= form.slect_cat.value;
    form.txtf_16.value="Unidad Movil";

      }	  
if(document.form.slect_doc.value == '1'){
    var n1= form.slect_doc.value;
    form.txtf_22.value="1";

      }	  
if(document.form.slect_doc.value == '2'){
    var n1= form.slect_doc.value;
    form.txtf_22.value="2";

      }	  
if(document.form.slect_doc.value == '3'){
    var n1= form.slect_doc.value;
    form.txtf_22.value="3";

      }	  
if(document.form.slect_doc.value == '4'){
    var n1= form.slect_doc.value;
    form.txtf_22.value="4";

      }	  
if(document.form.slect_doc.value == '5'){
    var n1= form.slect_doc.value;
    form.txtf_22.value="5";

      }	  
if(document.form.slect_cel.value == 'Telcel'){
    var n1= form.slect_cel.value;
    form.txtf_31.value="Telcel";

      }	  	  
if(document.form.slect_cel.value == 'Movistar'){
    var n1= form.slect_cel.value;
    form.txtf_31.value="Movistar";

      }	  	  
if(document.form.slect_cel.value == 'Nextel'){
    var n1= form.slect_cel.value;
    form.txtf_31.value="Nextel";

      }	  	  	  
if(document.form.slect_cel.value == 'Todas'){
    var n1= form.slect_cel.value;
    form.txtf_31.value="Todas";

      }	 
if(document.form.slect_mod.value == '1'){
    var n1= form.slect_mod.value;
    form.txtf_15.value="1";

      }	 	  
if(document.form.slect_mod.value == '2'){
    var n1= form.slect_mod.value;
    form.txtf_15.value="2";

      }	  
if(document.form.slect_mod.value == '3'){
    var n1= form.slect_mod.value;
    form.txtf_15.value="3";

      }	  
if(document.form.slect_mod.value == '4'){
    var n1= form.slect_mod.value;
    form.txtf_15.value="4";

      }	  
if(document.form.slect_mod.value == '5'){
    var n1= form.slect_mod.value;
    form.txtf_15.value="5";

      }	  
if(document.form.slect_mod.value == '6'){
    var n1= form.slect_mod.value;
    form.txtf_15.value="6";

      }	  
	  
if(document.form.slect_labor.value == 'Lunes a Viernes'){
    var n1= form.slect_labor.value;
    form.txtf_27.value="Lunes a Viernes";
	  
	  }
if(document.form.slect_labor.value == 'Lunes a Sabado'){
    var n1= form.slect_labor.value;
    form.txtf_27.value="Lunes a Sabado";
	  
	  }
if(document.form.slect_labor.value == 'Lunes a Domingo'){
    var n1= form.slect_labor.value;
    form.txtf_27.value="Lunes a Domingo";
	  
	  }
if(document.form.slect_anaq.value == '1'){
    var n1= form.slect_anaq.value;
    form.txtf_29.value="1";
	  
	  }	  
if(document.form.slect_anaq.value == '2'){
    var n1= form.slect_anaq.value;
    form.txtf_29.value="2";
	  
	  }	  
if(document.form.slect_anaq.value == '3'){
    var n1= form.slect_anaq.value;
    form.txtf_29.value="3";
	  
	  }	  	  
if(document.form.slect_anaq.value == '4'){
    var n1= form.slect_anaq.value;
    form.txtf_29.value="4";
	  
	  }	  	  
	  
if(document.form.slect_anaq.value == '5'){
    var n1= form.slect_anaq.value;
    form.txtf_29.value="5";
	  
	  }	  	  
	  
if(document.form.slect_anaq.value == '6'){
    var n1= form.slect_anaq.value;
    form.txtf_29.value="6";
	  
	  }	  	  
if(document.form.slect_anaq.value == '7'){
    var n1= form.slect_anaq.value;
    form.txtf_29.value="7";
	  
	  }	  	  
	  
if(document.form.slect_clue.value == 'No Tiene'){
    var n1= form.slect_clue.value;
    form.txtf_7.value="No Tiene";
	  
	  }	  	  	  

if(document.form.slect_tel.value == 'No Tiene'){
    var n1= form.slect_tel.value;
    form.txtf_8.value="No Tiene";
	  
	  }
if(document.form.slect_fax.value == 'No Tiene'){
    var n1= form.slect_fax.value;
    form.txtf_9.value="No Tiene";
	  
	  }
if(document.form.slect_correo.value == 'No Tiene'){
    var n1= form.slect_correo.value;
    form.txtf_10.value="No Tiene";
	  
	  }
	  	  
if(document.form.slect_tresp.value == 'No Tiene'){
    var n1= form.slect_tresp.value;
    form.txtf_18.value="No Tiene";
	  
	  }
if(document.form.slect_cresp.value == 'No Tiene'){
    var n1= form.slect_cresp.value;
    form.txtf_19.value="No Tiene";
	  
	  }

if(document.form.slect_odont.value == 'No Hay'){
    var n1= form.slect_odont.value;
    form.txtf_20.value="No Hay";
	  
	  }

}

function setJuris(form) 
      		                       {
      		                         var med= form.slct_juris.value;
      		                         form.txtf_juris.value=med;
      		                       }	
								   
function setSello(form) 
      		                       {
      		                         var sello= form.slct_sello.value;
      		                         form.txtf_sello.value=sello;
      		                       }		
function deleteDate(form)
     {
		 form.txtf_caduc.value="";
		 form.txtf_caduci.value="";
	 }
//function for delete the key name in the find task
function deleteCve(form)
     {
		 form.txtf_cve.value="";
		 form.txtf_cve.focus();
	 }
function deleteName(form)
     {
		 form.txtf_descri.value="";
		 form.txtf_descri.focus();
	 }
function putUbic2(form)
     {//alert("siiiii");
	   //isChar(form.txtf_cantm.value)
		var v_ubi= form.slct_ubi.value
		form.txtf_ubi.value=v_ubi;
		 //form.txtf_descri.focus();
	 }	 
	 
function putUb(form)
     {//alert("siiiii");
		var u2= form.slct_u.value
		form.txtf_ubic.value=u2;
		 //form.txtf_descri.focus();
	 }	 
	 
function putCla_ves(form)
     {//alert("siiiii");
		var cla_ves= form.slct_cve.value
		form.txtf_clave.value=cla_ves;
		 //form.txtf_descri.focus();
	 }	  
	 
function putLot_es(form)
     {//alert("siiiii");
		var lo_tes= form.slct_lot.value
		form.txtf_lote.value=lo_tes;
		 //form.txtf_descri.focus();
	 }	
	 
function dimePropiedades2(form){ 
    var texto 
    texto = "El numero de opciones del select: " + form.slct_cve.length 
    var indice = form.slct_cve.selectedIndex 
    texto += "\nIndice de la opcion escogida: " + indice 
    var valor = form.slct_cve.options[indice].value 
    texto += "\nValor de la opcion escogida: " + valor 
    var textoEscogido = form.slct_cve.options[indice].text 
    texto += "\nTexto de la opcion escogida: " + textoEscogido 
    //alert(texto) 
	form.slct_lot.value=form.slct_lot.options[indice].value;
	form.txtf_lote.value=form.slct_lot.value;
	//alert(texto) 
	}
function setClienteDess(form) 
      		                       {//alert("entro");
      		                         var clides= form.slct_des.value;
									 //alert("entro"+clides);
      		                         form.txtf_cla.value=clides;
								  	} 

function delUbi(form)
{
  form.txtf_cb.value=""; 	
}

function putUbi_en(form)
     {//alert("siiiii");
		var ubis= form.slct_u.value
		form.txtf_ubi.value=ubis;
		 //form.txtf_descri.focus();
	 }
function putSuma(form)
{
	//alert("alae");
	var cajas=parseInt(form.txtf_exi.value);
	var pzas =parseInt(form.txtf_pza.value);
	var rto=parseInt(document.form.txtf_rto.value);
	//var rto  =form.txtf_rto.value;
	var exis = ((cajas*pzas)+rto)*1;
	form.txtf_exist.value=exis;
}

function isChar (Data)
{
	varChars = "éèàùûôoöë'-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	var isChar = true;
	var index = 0;
	while ((index < Data.length) && (isChar))     
	 {     
	   isChar = (varChars.indexOf(Data.charAt(index)) != -1);     
	   index ++;     
	 }
	if (!isChar)     
	{     
	  window.alert("Erreur ! Saisissez une chaine de caractères");     
	  
	  }
}

function otroFolio(form)
    {
		form.txtf_folio.value="";
		form.txtf_fecha.value="";
		document.form1.txtf_folio.focus();
		
	}

function fechas(caja)  

{   
   if (caja)  
    {    
      borrar = caja;  
      if ((caja.substr(2,1) == "/") && (caja.substr(5,1) == "/"))  
        {        
          for (i=0; i<10; i++)  
             {     
                if (((caja.substr(i,1)<"0") || (caja.substr(i,1)>"9")) && (i != 2) && (i != 5))  
                  {  
                      borrar = '';  
                      break;    

                  }    

            }  

       if (borrar)  
         {   
            a = caja.substr(6,4);  
            m = caja.substr(3,2);  
            d = caja.substr(0,2);  
              if((a < 1900) || (a > 2050) || (m < 1) || (m > 12) || (d < 1) || (d > 31))  
                 borrar = '';  
              else 
                {  
                   if((a%4 != 0) && (m == 2) && (d > 28))        
                       borrar = ''; // Año no viciesto y es febrero y el dia es mayor a 28  
                   else     
				      {  
                        if ((((m == 4) || (m == 6) || (m == 9) || (m==11)) && (d>30)) || ((m==2) && (d>29)))  
                          borrar = '';                               
                      }  // else  
                } // fin else  

          } // if (error)  

         } // if ((caja.substr(2,1) == "/") && (caja.substr(5,1) == "/"))                              
           else 
              borrar = '';  
                 if (borrar == '')  
				   {
                      alert('FORMATO DE FECHA ERRÓNEA, VUELVA A INGRESARLO');  
				       document.form1.txtf_fecha.focus();
					   document.form1.txtf_fecha.value="";
				   }
       } // if (caja)     

} // FUNCION 

function fechas2(caja)  

{   
   if (caja)  
    {    
      borrar = caja;  
      if ((caja.substr(2,1) == "/") && (caja.substr(5,1) == "/"))  
        {        
          for (i=0; i<10; i++)  
             {     
                if (((caja.substr(i,1)<"0") || (caja.substr(i,1)>"9")) && (i != 2) && (i != 5))  
                  {  
                      borrar = '';  
                      break;    

                  }    

            }  

       if (borrar)  
         {   
            a = caja.substr(6,4);  
            m = caja.substr(3,2);  
            d = caja.substr(0,2);  
              if((a < 1900) || (a > 2050) || (m < 1) || (m > 12) || (d < 1) || (d > 31))  
                 borrar = '';  
              else 
                {  
                   if((a%4 != 0) && (m == 2) && (d > 28))        
                       borrar = ''; // Año no viciesto y es febrero y el dia es mayor a 28  
                   else     
				      {  
                        if ((((m == 4) || (m == 6) || (m == 9) || (m==11)) && (d>30)) || ((m==2) && (d>29)))  
                          borrar = '';                               
                      }  // else  
                } // fin else  

          } // if (error)  

         } // if ((caja.substr(2,1) == "/") && (caja.substr(5,1) == "/"))                              
           else 
              borrar = '';  
                 if (borrar == '')  
				   {
                      alert('FORMATO DE FECHA ERRÓNEA, VUELVA A INGRESARLO');  
				       document.form1.txtf_fecalm.value="";
					   document.form1.txtf_fecalm.focus();
				   }
       } // if (caja)     

} // FUNCION 

function fechas3(caja)  

{   
   if (caja)  
    {    
      borrar = caja;  
      if ((caja.substr(2,1) == "/") && (caja.substr(5,1) == "/"))  
        {        
          for (i=0; i<10; i++)  
             {     
                if (((caja.substr(i,1)<"0") || (caja.substr(i,1)>"9")) && (i != 2) && (i != 5))  
                  {  
                      borrar = '';  
                      break;    

                  }    

            }  

       if (borrar)  
         {   
            a = caja.substr(6,4);  
            m = caja.substr(3,2);  
            d = caja.substr(0,2);  
              if((a < 1900) || (a > 2050) || (m < 1) || (m > 12) || (d < 1) || (d > 31))  
                 borrar = '';  
              else 
                {  
                   if((a%4 != 0) && (m == 2) && (d > 28))        
                       borrar = ''; // Año no viciesto y es febrero y el dia es mayor a 28  
                   else     
				      {  
                        if ((((m == 4) || (m == 6) || (m == 9) || (m==11)) && (d>30)) || ((m==2) && (d>29)))  
                          borrar = '';                               
                      }  // else  
                } // fin else  

          } // if (error)  

         } // if ((caja.substr(2,1) == "/") && (caja.substr(5,1) == "/"))                              
           else 
              borrar = '';  
                 if (borrar == '')  
				   {
                      alert('FORMATO DE FECHA ERRÓNEA, VUELVA A INGRESARLO');  
				       document.form1.txtf_cadu.value="";
					   document.form1.txtf_cadu.focus();
				   }
       } // if (caja)     

} // FUNCION 

function setSello2(form) 
      		                       {
      		                         var sello2= form.slct_sello2.value;
      		                         form.txtf_sellgnk.value=sello2;
      		                       }	
function otroFolioEM(form)
    {
		form.txtf_folio.value="";
		form.txtf_foling.value="";
		form.txtf_fecha.value="";
		form.txtf_fecalm.value="";
		document.form1.txtf_folio.focus();
		
	}
	var slideCache = new Array();
function RunSlideShow(pictureName,imageFiles,displaySecs)
{alert("que pecks");
var imageSeparator = imageFiles.indexOf(";");
var nextImage = imageFiles.substring(0,imageSeparator);
if (document.all)
{
document.getElementById(pictureName).style.filter="blendTrans(duration=2)";
document.getElementById(pictureName).filters.blendTrans.Apply();
}
document.getElementById(pictureName).src = nextImage;
if (document.all)
{
document.getElementById(pictureName).filters.blendTrans.Play();
}
var futureImages= imageFiles.substring(imageSeparator+1,imageFiles.length)
+ ';' + nextImage;
setTimeout("RunSlideShow('"+pictureName+"','"+futureImages+"',"+displaySecs+")",
displaySecs*1000);
// Cache the next image to improve performance.
imageSeparator = futureImages.indexOf(";");
nextImage = futureImages.substring(0,imageSeparator);
if (slideCache[nextImage] == null) {
slideCache[nextImage] = new Image;
slideCache[nextImage].src = nextImage;
}
}
function setBAT(form) 
      		                       {
      		                         var bat= form.slect_cat.value;
      		                         form.txtf_16.value=bat;
      		                       }	
function fillCategory2hosp(){ 
//form1.txtf_bup.value=form1.txtf_plate2.value;
 // this function is used to fill the category list on load
addOption(document.form.Category, "JURISDICCION SANITARIA I DURANGO","JURISDICCION SANITARIA I DURANGO"); 
addOption(document.form.Category, "JURISDICCION SANITARIA II GOMEZ PALACIO","JURISDICCION SANITARIA II GOMEZ PALACIO"); 
addOption(document.form.Category, "JURISDICCION SANITARIA III SANTIAGO PAPASQUIARO","JURISDICCION SANITARIA III SANTIAGO PAPASQUIARO"); 
addOption(document.form.Category, "JURISDICCION SANITARIA IV RODEO","JURISDICCION SANITARIA IV RODEO"); 
   
    
document.form.txtf_ref.focus();
setTimeInv();

 //document.form.txtf_ref.focus();	
}
	
function SelectSubCat01hosp(){
// ON selection of category this function will work

removeAllOptions(document.form.SubCat);
//addOption(document.form.SubCat, "", "No. de Cuenta", "");     

if(document.form.Category.value == 'JURISDICCION SANITARIA I DURANGO'){
                //addOption(document.form.SubCat,"","--Escoja Pelotón--")

addOption(document.form.SubCat,"HOSPITAL GENERAL DE DURANGO","HOSPITAL GENERAL DE DURANGO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL LA GUAJOLOTA","HOSPITAL INTEGRAL LA GUAJOLOTA")
addOption(document.form.SubCat,"HOSPITAL COMUNITARIO FRANCISCO I. MADERO","HOSPITAL COMUNITARIO FRANCISCO I. MADERO")
addOption(document.form.SubCat,"ALMACÉN GENERAL","ALMACÉN GENERAL")
addOption(document.form.SubCat,"HOSPITAL DE SALUD MENTAL","HOSPITAL DE SALUD MENTAL")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DEL MEZQUITAL","HOSPITAL INTEGRAL DEL MEZQUITAL")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE HUAZAMOTA","HOSPITAL INTEGRAL DE HUAZAMOTA")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DEL SALTO","HOSPITAL INTEGRAL DEL SALTO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE SUCHIL","HOSPITAL INTEGRAL DE SUCHIL")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL EL DURAZNO","HOSPITAL INTEGRAL EL DURAZNO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE TAMAZULA","HOSPITAL INTEGRAL DE TAMAZULA")
addOption(document.form.SubCat,"FARMACIA SEGURO POPULAR DURANGO","FARMACIA SEGURO POPULAR DURANGO")
addOption(document.form.SubCat,"DIF ESTATAL","DIF ESTATAL")

}
if(document.form.Category.value == 'JURISDICCION SANITARIA II GOMEZ PALACIO'){

addOption(document.form.SubCat,"HOSPITAL GENERAL DE CUENCAME","HOSPITAL GENERAL DE CUENCAME")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL SIMON BOLIVAR","HOSPITAL INTEGRAL SIMON BOLIVAR")
addOption(document.form.SubCat,"HOSPITAL GENERAL DE GOMEZ PALACIO","HOSPITAL GENERAL DE GOMEZ PALACIO")
addOption(document.form.SubCat,"HOSPITAL GENERAL DE LERDO","HOSPITAL GENERAL DE LERDO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL MAPIMI","HOSPITAL INTEGRAL MAPIMI")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE PEÑON BLANCO","HOSPITAL INTEGRAL DE PEÑON BLANCO")
addOption(document.form.SubCat,"ALMACÉN JURISDICCIÓN SANITARIA NO. 2","ALMACÉN JURISDICCIÓN SANITARIA NO. 2")
addOption(document.form.SubCat,"FARMACIA SEGURO POPULAR DE GOMEZ PALACIO","FARMACIA SEGURO POPULAR DE GOMEZ PALACIO")

}
if(document.form.Category.value == 'JURISDICCION SANITARIA III SANTIAGO PAPASQUIARO'){

addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE CANATLAN","HOSPITAL INTEGRAL DE CANATLAN")
addOption(document.form.SubCat,"HOSPITAL GENERAL SANTIAGO PAPASQUIARO","HOSPITAL GENERAL SANTIAGO PAPASQUIARO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE NUEVO IDEAL","HOSPITAL INTEGRAL DE NUEVO IDEAL")
addOption(document.form.SubCat,"ALMACÉN JURISDICCIÓN SANITARIA NO. 3","ALMACÉN JURISDICCIÓN SANITARIA NO. 3")
addOption(document.form.SubCat,"CENTRO DE SALUD PAPASQUIARO","CENTRO DE SALUD PAPASQUIARO")

}

if(document.form.Category.value == 'JURISDICCION SANITARIA IV RODEO'){
addOption(document.form.SubCat,"HOSPITAL GENERAL SANTA MARIA DEL ORO","HOSPITAL GENERAL SANTA MARIA DEL ORO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE SAN JUAN DEL RIO","HOSPITAL INTEGRAL DE SAN JUAN DEL RIO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE LAS NIEVES","HOSPITAL INTEGRAL DE LAS NIEVES")
addOption(document.form.SubCat,"ALMACÉN JURISDICCIÓN SANITARIA NO.4 RODEO","ALMACÉN JURISDICCIÓN SANITARIA NO.4 RODEO")


}



}	
function fillCategory2rural(){ 
//form1.txtf_bup.value=form1.txtf_plate2.value;
 // this function is used to fill the category list on load
addOption(document.form.Category, "JURISDICCION SANITARIA I DURANGO","JURISDICCION SANITARIA I DURANGO"); 
addOption(document.form.Category, "JURISDICCION SANITARIA II GOMEZ PALACIO","JURISDICCION SANITARIA II GOMEZ PALACIO"); 
addOption(document.form.Category, "JURISDICCION SANITARIA III SANTIAGO PAPASQUIARO","JURISDICCION SANITARIA III SANTIAGO PAPASQUIARO"); 
addOption(document.form.Category, "JURISDICCION SANITARIA IV RODEO","JURISDICCION SANITARIA IV RODEO"); 
   
    
document.form.txtf_ref.focus();
setTimeInv();

 //document.form.txtf_ref.focus();	
}
function SelectSubCat01rural(){
// ON selection of category this function will work

removeAllOptions(document.form.SubCat);
//addOption(document.form.SubCat, "", "No. de Cuenta", "");     

if(document.form.Category.value == 'JURISDICCION SANITARIA I DURANGO'){
                //addOption(document.form.SubCat,"","--Escoja Pelotón--")

/*addOption(document.form.SubCat,"HOSPITAL GENERAL DE DURANGO","HOSPITAL GENERAL DE DURANGO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL LA GUAJOLOTA","HOSPITAL INTEGRAL LA GUAJOLOTA")
addOption(document.form.SubCat,"HOSPITAL COMUNITARIO FRANCISCO I. MADERO","HOSPITAL COMUNITARIO FRANCISCO I. MADERO")
addOption(document.form.SubCat,"HOSPITAL DE SALUD MENTAL","HOSPITAL DE SALUD MENTAL")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DEL MEZQUITAL","HOSPITAL INTEGRAL DEL MEZQUITAL")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE HUAZAMOTA","HOSPITAL INTEGRAL DE HUAZAMOTA")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DEL SALTO","HOSPITAL INTEGRAL DEL SALTO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE SUCHIL","HOSPITAL INTEGRAL DE SUCHIL")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL EL DURAZNO","HOSPITAL INTEGRAL EL DURAZNO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE TAMAZULA","HOSPITAL INTEGRAL DE TAMAZULA")
addOption(document.form.SubCat,"FARMACIA SEGURO POPULAR DURANGO","FARMACIA SEGURO POPULAR DURANGO")

*/
addOption(document.form.SubCat,"CSU BENJAMIN MENDEZ","CSU BENJAMIN MENDEZ")
addOption(document.form.SubCat,"CSU DIVISION DEL NORTE","CSU DIVISION DEL NORTE")
addOption(document.form.SubCat,"CSU JOSE LOPEZ PORTILLO ","CSU JOSE LOPEZ PORTILLO ")
addOption(document.form.SubCat,"CSU JOSE ANGEL LEAL ","CSU JOSE ANGEL LEAL ")
addOption(document.form.SubCat,"CENTRO DE SALUD JARDINES DE CANCUN","CENTRO DE SALUD JARDINES DE CANCUN")
addOption(document.form.SubCat,"CSU COL. EJIDAL","CSU COL. EJIDAL")
addOption(document.form.SubCat,"CSS INDEPENDENCIA Y LIBERTAD","CSS INDEPENDENCIA Y LIBERTAD")
addOption(document.form.SubCat,"CSR LLANO GRANDE","CSR LLANO GRANDE")
addOption(document.form.SubCat,"CENTRO DE SALUD DE GUADALUPE VICTORIA","CENTRO DE SALUD DE GUADALUPE VICTORIA")
addOption(document.form.SubCat,"CENTRO DE SALUD DE NOMBRE DE DIOS","CENTRO DE SALUD DE NOMBRE DE DIOS")
addOption(document.form.SubCat,"CENTRO DE SALUD DE VICENTE GUERRERO ","CENTRO DE SALUD DE VICENTE GUERRERO ")
addOption(document.form.SubCat,"CSS COL. HIDALGO","CSS COL. HIDALGO")
addOption(document.form.SubCat,"CENTRO ESTATAL DE CANCEROLOGÍA","CENTRO ESTATAL DE CANCEROLOGÍA")
addOption(document.form.SubCat,"CSU AZCAPOTZALCO","CSU AZCAPOTZALCO")
addOption(document.form.SubCat,"ALMACÉN GENERAL","ALMACÉN GENERAL")
addOption(document.form.SubCat,"CENTRO DE SALUD BOSQUES DEL VALLE","CENTRO DE SALUD BOSQUES DEL VALLE")
addOption(document.form.SubCat,"CENTRO DE SALUD LA VIRGEN","CENTRO DE SALUD LA VIRGEN")
addOption(document.form.SubCat,"CSR PRAXEDIS GUERRERO","CSR PRAXEDIS GUERRERO")
addOption(document.form.SubCat,"CSR FELIPE CARRILLO PUERTO","CSR FELIPE CARRILLO PUERTO")
addOption(document.form.SubCat,"CS SANTA MARÍA DE OCOTAN","CS SANTA MARÍA DE OCOTAN")
addOption(document.form.SubCat,"CSR LA JOYA","CSR LA JOYA")
addOption(document.form.SubCat,"CS LA CIUDAD","CS LA CIUDAD")
addOption(document.form.SubCat,"CS SAN MIGUEL DE CRUCES","CS SAN MIGUEL DE CRUCES")
addOption(document.form.SubCat,"CENTRO DE SALUD No 1","CENTRO DE SALUD No 1")
addOption(document.form.SubCat,"CENTRO DE SALUD No 2","CENTRO DE SALUD No 2")
addOption(document.form.SubCat,"CENTRO DE SALUD DE VILLA UNION","CENTRO DE SALUD DE VILLA UNION")
addOption(document.form.SubCat,"DIF ESTATAL","DIF ESTATAL")

}
if(document.form.Category.value == 'JURISDICCION SANITARIA II GOMEZ PALACIO'){
/*
addOption(document.form.SubCat,"HOSPITAL GENERAL DE CUENCAME","HOSPITAL GENERAL DE CUENCAME")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL SIMON BOLIVAR","HOSPITAL INTEGRAL SIMON BOLIVAR")
addOption(document.form.SubCat,"HOSPITAL GENERAL DE GOMEZ PALACIO","HOSPITAL GENERAL DE GOMEZ PALACIO")
addOption(document.form.SubCat,"HOSPITAL GENERAL DE LERDO","HOSPITAL GENERAL DE LERDO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL MAPIMI","HOSPITAL INTEGRAL MAPIMI")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE PEÑON BLANCO","HOSPITAL INTEGRAL DE PEÑON BLANCO")
addOption(document.form.SubCat,"ALMACÉN JURISDICCIÓN SANITARIA NO. 2","ALMACÉN JURISDICCIÓN SANITARIA NO. 2")
addOption(document.form.SubCat,"FARMACIA SEGURO POPULAR DE GOMEZ PALACIO","FARMACIA SEGURO POPULAR DE GOMEZ PALACIO")

*/
addOption(document.form.SubCat,"CENTRO DE SALUD CUENCAME","CENTRO DE SALUD CUENCAME")
addOption(document.form.SubCat,"CENTRO DE SALUD NAZAS","CENTRO DE SALUD NAZAS")
addOption(document.form.SubCat,"CENTRO DE SALUD TLAHUALILO","CENTRO DE SALUD TLAHUALILO")
addOption(document.form.SubCat,"CENTRO DE SALUD DE GÓMEZ PALACIO","CENTRO DE SALUD DE GÓMEZ PALACIO")
addOption(document.form.SubCat,"CENTRO DE SALUD LERDO","CENTRO DE SALUD LERDO")
}
if(document.form.Category.value == 'JURISDICCION SANITARIA III SANTIAGO PAPASQUIARO'){
/*
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE CANATLAN","HOSPITAL INTEGRAL DE CANATLAN")
addOption(document.form.SubCat,"HOSPITAL GENERAL SANTIAGO PAPASQUIARO","HOSPITAL GENERAL SANTIAGO PAPASQUIARO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE NUEVO IDEAL","HOSPITAL INTEGRAL DE NUEVO IDEAL")
addOption(document.form.SubCat,"ALMACÉN JURISDICCIÓN SANITARIA NO. 3","ALMACÉN JURISDICCIÓN SANITARIA NO. 3")

*/
addOption(document.form.SubCat,"CENTRO DE SALUD DE GUANACEVI","CENTRO DE SALUD DE GUANACEVI")
addOption(document.form.SubCat,"CENTRO DE SALUD DE TEPEHUANES","CENTRO DE SALUD DE TEPEHUANES")
addOption(document.form.SubCat,"CENTRO DE SALUD PAPASQUIARO","CENTRO DE SALUD PAPASQUIARO")

}

if(document.form.Category.value == 'JURISDICCION SANITARIA IV RODEO'){
/*
addOption(document.form.SubCat,"HOSPITAL GENERAL SANTA MARIA DEL ORO","HOSPITAL GENERAL SANTA MARIA DEL ORO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE SAN JUAN DEL RIO","HOSPITAL INTEGRAL DE SAN JUAN DEL RIO")
addOption(document.form.SubCat,"HOSPITAL INTEGRAL DE LAS NIEVES","HOSPITAL INTEGRAL DE LAS NIEVES")
addOption(document.form.SubCat,"ALMACÉN JURISDICCIÓN SANITARIA NO.4 RODEO","ALMACÉN JURISDICCIÓN SANITARIA NO.4 RODEO")
	
*/
addOption(document.form.SubCat,"CENTRO DE SALUD INDE","CENTRO DE SALUD INDE")
addOption(document.form.SubCat,"SANTA MARIA DEL ORO","SANTA MARIA DEL ORO")
addOption(document.form.SubCat,"CENTRO DE SALUD RODEO","CENTRO DE SALUD RODEO")



}



}
function mueveReloj(){ 
    
    momentoActual = new Date() 
    hora = momentoActual.getHours() 
    minuto = momentoActual.getMinutes() 
    segundo = momentoActual.getSeconds() 
	
	str_segundo = new String (segundo) 
    if (str_segundo.length == 1) 
       segundo = "0" + segundo 

    str_minuto = new String (minuto) 
    if (str_minuto.length == 1) 
       minuto = "0" + minuto 

    str_hora = new String (hora) 
    if (str_hora.length == 1) 
       hora = "0" + hora 



    horaImprimible = hora + ":" + minuto + ":" + segundo 

    document.form.reloj.value = horaImprimible 

    setTimeout("mueveReloj()",1000) 
	
	//enviar el cursor al campo del folio
    /*var foc=document.form.txtf_foliore.value;
	if (foc !="")
	{
		document.form.txtf_cb.focus();
	}else
	{
		document.form.txtf_foliore.focus();
	}
		*/
	
	//document.form.txtf_cb.focus();
	hora();
} 

function verificaN(obj) 
{
		 
missinginfo = "";
    if (obj.txtf_t1.value=="")
	{
	missinginfo += "\n - Campo Día";
	}
	if (obj.txtf_t2.value=="")
	{
	missinginfo += "\n - Campo Mes";
	}
	if (obj.txtf_t3.value=="")
	{
	missinginfo += "\n - Campo Año";
	}
    if (obj.txtf_foliore.value=="")
	{
	missinginfo += "\n - Campo Folio Receta";
	}
	if (obj.txtf_paciente.value=="")
	{
	missinginfo += "\n - Campo Nombre Paciente";
	}
	if (obj.txtf_edad.value=="")
	{
	missinginfo += "\n - Campo Edad Paciente";
	}
	if (obj.txtf_foliosp.value=="")
	{
	missinginfo += "\n - Campo Folio Seguro Popular";
	}
				
    if (obj.txtf_cedu.value=="")
	{
	missinginfo += "\n - Campo Cedula Médico";
	}			
    if (obj.txtf_nomed.value=="")
	{
	missinginfo += "\n - Campo Nombre Médico";
	}			
    if (obj.txtf_cause.value=="")
	{
	missinginfo += "\n - Campo Causes";
	}			
    if (obj.txtf_clave1.value=="")
	{
	missinginfo += "\n - Campo Clave Medicamento";
	}			
    if (obj.txtf_descrip1.value=="")
	{
	missinginfo += "\n - Campo Descripción Medicamento";
	}			
    if (obj.txtf_sol1.value=="")
	{
	missinginfo += "\n - Campo Cantidad Solicitada";
	}			
    if (obj.txtf_sur1.value=="")
	{
	missinginfo += "\n - Campo Cantidad Surtida";
	}
	
if (missinginfo != "")
	{
	missinginfo = "TE HA FALTADO INTRODUCIR LOS SIGUIENTES DATOS:\n" + missinginfo + "\n\n ¡INGRESA LOS DATOS FALTANTES Y TRATA OTRA VEZ!\n";
	alert(missinginfo);

	return false;
	}
else return true;
}

function verificaN_Fa(obj) 
{
		 
missinginfo = "";
    if (obj.txtf_foliore.value=="")
	{
	missinginfo += "\n - Campo Folio Receta";
	}
	if (obj.txtf_paciente.value=="")
	{
	missinginfo += "\n - Campo Nombre Paciente";
	}
	if (obj.txtf_edad.value=="")
	{
	missinginfo += "\n - Campo Edad Paciente";
	}
	if (obj.txtf_foliosp.value=="")
	{
	missinginfo += "\n - Campo Folio Seguro Popular";
	}
				
    if (obj.txtf_cedu.value=="")
	{
	missinginfo += "\n - Campo Cedula Médico";
	}			
    if (obj.txtf_nomed.value=="")
	{
	missinginfo += "\n - Campo Nombre Médico";
	}			
    if (obj.txtf_cause.value=="")
	{
	missinginfo += "\n - Campo Causes";
	}			
    if (obj.txtf_clave1.value=="")
	{
	missinginfo += "\n - Campo Clave Medicamento";
	}			
    if (obj.txtf_descrip1.value=="")
	{
	missinginfo += "\n - Campo Descripción Medicamento";
	}			
    if (obj.txtf_sol1.value=="")
	{
	missinginfo += "\n - Campo Cantidad Solicitada";
	}			
    if (obj.txtf_sur1.value=="")
	{
	missinginfo += "\n - Campo Cantidad Surtida";
	}
	
if (missinginfo != "")
	{
	missinginfo = "TE HA FALTADO INTRODUCIR LOS SIGUIENTES DATOS:\n" + missinginfo + "\n\n ¡INGRESA LOS DATOS FALTANTES Y TRATA OTRA VEZ!\n";
	alert(missinginfo);

	return false;
	}
else return true;
}



function setSur(form)
   {
	   //alert("in")
	  var sol1,sur1; 
	  var sol=document.form.txtf_sol1.value; 
	  var sur=document.form.txtf_sur1.value;
	  
	  sol1=parseInt(sol);
	  sur1=parseInt(sur);
	
	   if(sur1>sol1)
	      {
		   alert("ERROR, LA CANTIDAD SURTIDA ES MAYOR QUE LA RECETADA")
           document.form.txtf_sur1.value="";
		   document.form.txtf_sol1.value="";
		 }
	  
		
	}
	function setSur1(form)
   {
	   //alert("in")
	  var sol1,sur1; 
	  var sol=document.form.txtf_sol1.value; 
	  var sur=document.form.txtf_sur1.value;
	  
	  sol1=parseInt(sol);
	  sur1=parseInt(sur);
	 if (sur1>0)
	 {
	   if(sur1>sol1)
	      {
		   alert("ERROR, LA CANTIDAD SURTIDA ES MAYOR QUE LA RECETADA")
           document.form.txtf_sur1.value="";
		   //document.form.txtf_sol1.value="";
		 }
	 }else {
		 alert("ERROR, LA CANTIDAD SURTIDA ES CERO")
           document.form.txtf_sur1.value="";
		   //document.form.txtf_sol1.value="";
	 }
		  
	}
function verificaNcol(obj) 
{
		 
missinginfo = "";

    missinginfo = "";
    if (obj.txtf_t1.value=="")
	{
	missinginfo += "\n - Campo Día";
	}
	if (obj.txtf_t2.value=="")
	{
	missinginfo += "\n - Campo Mes";
	}
	if (obj.txtf_t3.value=="")
	{
	missinginfo += "\n - Campo Año";
	}
	if (obj.txtf_clave1.value=="")
	{
	missinginfo += "\n - Campo Clave Medicamento";
	}			
    if (obj.txtf_descrip1.value=="")
	{
	missinginfo += "\n - Campo Descripción Medicamento";
	}			
    if (obj.txtf_sol1.value=="")
	{
	missinginfo += "\n - Campo Cantidad Solicitada";
	}			
    if (obj.txtf_sur1.value=="")
	{
	missinginfo += "\n - Campo Cantidad Surtida";
	}
	if (obj.txtf_servicio.value=="")
	{
	missinginfo += "\n - Campo Tipo de Servicio";
	}
	if (obj.txtf_encarser.value=="")
	{
	missinginfo += "\n - Campo Encargado del Servicio";
	}
	
if (missinginfo != "")
	{
	missinginfo = "TE HA FALTADO INTRODUCIR LOS SIGUIENTES DATOS:\n" + missinginfo + "\n\n ¡INGRESA LOS DATOS FALTANTES Y TRATA OTRA VEZ!\n";
	alert(missinginfo);

	return false;
	}
else return true;
}





function putEmpty()
{
document.form.txtf_cause.value="";
}

function envioCur(form)
{
//document.form.txtf_foliore.focus();
document.form.txtf_cb.focus();
}

function cerrar() {
//alert("2");
div = document.getElementById('flotante');
div.style.display='none';

div = document.getElementById('recetas');
div.style.display='block';
}
function cerrar2() {
//alert("2");
div = document.getElementById('contra');
div.style.display='block';

div = document.getElementById('recetas');
div.style.display='none';

document.form.txtf_pass.focus();
}

//validar campios solo numeros
//http://www.telefonica.net/web2/blas-mar/validarformu.html
function validar() { // 1
    tecla = (document.all) ? e.keyCode : e.which; // 2
    if (tecla==8) return true; // 3
    patron =/[A-Za-z\s]/; // 4
    te = String.fromCharCode(tecla); // 5
    return patron.test(te); // 6
} 
function verificaN1(obj) 
{
		 
missinginfo = "";

   
    if (obj.txtf_sol1.value=="")
	{
	missinginfo += "\n - Campo Cantidad Solicitada";
	}			
    if (obj.txtf_sur1.value=="")
	{
	missinginfo += "\n - Campo Cantidad Surtida";
	}
	
if (missinginfo != "")
	{
	missinginfo = "TE HA FALTADO INTRODUCIR LOS SIGUIENTES DATOS:\n" + missinginfo + "\n\n ¡INGRESA LOS DATOS FALTANTES Y TRATA OTRA VEZ!\n";
	alert(missinginfo);

	return false;
	}
else return true;
}

function putNom(form) 
{
	var nombre=form.slct_afiliados.value
	form.txtf_paciente.value=nombre;
}

function putDays()
      {
                          //alert("quibo") 
			var dayv = document.form.txtf_t1.value;
			var day22 = document.form.txtf_t1.value.length +1;
			    if(day22>2)
				  {
					 if(dayv==00)
					  {
						alert("DIA Fuera de Rango: "+dayv);
						document.form.txtf_t1.value="";
						document.form.txtf_t1.focus();
				       } else{
								
							if(dayv>=1 && dayv<=31)
									  {
										  /*
									   var day = document.form.txtf_t1.value.length +1;
									 
									   if (day <= 2)
											{
											  document.form.txtf_t1.focus()
											}
											 else
										   {*/
											   
												   document.form.txtf_t2.focus()
												
										   }else{
												 alert("DIA Fuera de Rango: "+dayv);
												 document.form.txtf_t1.value="";
												 document.form.txtf_t1.focus();
												 }		
											
							}
					   }
						
									 // alert(""+dayv);
									 
									 
					  
     }




function putMonthss()
       {
                          //alert("quibo") 
             var month = document.form.txtf_t2.value.length +1;
		     var monthv = document.form.txtf_t2.value;
		     var month22 = document.form.txtf_t2.value.length +1;
						 
				if(month22>2)
				  {
					 if(monthv==00)
					  {
						alert("DIA Fuera de Rango: "+monthv);
						document.form.txtf_t2.value="";
						document.form.txtf_t2.focus();
				       }else{
									   if(monthv>=1 && monthv<=12)
									  {
										  document.form.txtf_foliore.focus()
									  }else
									   { 
										 alert("MES Fuera de Rango: "+monthv);
										 document.form.txtf_t2.value="";
										 document.form.txtf_t2.focus();
									   }
					         }
					      
						 
				  }
						 // alert(""+dayv);
						 /*if(monthv>=0 && monthv<=12)
						  {
                          //alert(" "+letters);
                           if (month <= 2)
                                {
                                  document.form.txtf_t2.focus()
                                }
                                 else
                               {
                                  document.form.txtf_t3.focus()
                               }
					      }else
						   { 
						     alert("MES Fuera de Rango: "+monthv);
						     document.form.txtf_t2.value="";
							 document.form.txtf_t2.focus();
						   }*/
        }
		

function putMonthss22()
       {
                          //alert("quibo") 
             var month = document.form.txtf_t2.value.length +1;
		     var monthv = document.form.txtf_t2.value;
		     var month22 = document.form.txtf_t2.value.length +1;
						 
				if(month22>2)
				  {
					 if(monthv==00)
					  {
						alert("DIA Fuera de Rango: "+monthv);
						document.form.txtf_t2.value="";
						document.form.txtf_t2.focus();
				       }else{
									   if(monthv>=1 && monthv<=12)
									  {
										  document.form.select_servi.focus()
									  }else
									   { 
										 alert("MES Fuera de Rango: "+monthv);
										 document.form.txtf_t2.value="";
										 document.form.txtf_t2.focus();
									   }
					         }
					      
						 
				  }
						 // alert(""+dayv);
						 /*if(monthv>=0 && monthv<=12)
						  {
                          //alert(" "+letters);
                           if (month <= 2)
                                {
                                  document.form.txtf_t2.focus()
                                }
                                 else
                               {
                                  document.form.txtf_t3.focus()
                               }
					      }else
						   { 
						     alert("MES Fuera de Rango: "+monthv);
						     document.form.txtf_t2.value="";
							 document.form.txtf_t2.focus();
						   }*/
        }

		
function putYearss(form)
                      {
                          //alert("quibo") 
						  
                          var year = document.form.txtf_t3.value.length +1;
						  var yearv = document.form.txtf_t3.value;
						 // alert(""+dayv);
						// if( (yearv==0) || (yearv>=2009 && yearv<=2018))
						  //{
                          //alert(" "+letters);
                           if (year <= 4)
                                {
                                  document.form.txtf_t3.focus()
                                }
                                 else
                               {
                                  document.form.txtf_foliore.focus()
                               }
						//	}else
						  // { 
						 //  if(yearv>=2009 && yearv<=2018)
						   // {
						     if(year==5)
							 {
								 var d=new Date();
								 //alert(""+d.getDate()+"ffff"+d.getMonth());
								 
								 var day= document.form.txtf_t1.value;
								 var month=document.form.txtf_t2.value;
								 var years=document.form.txtf_t3.value;
								 //alert(""+day+" "+d.getDate());
								 if( (yearv<=2012 || yearv>2012) || (day<d.getDate() && month<=(d.getMonth()+1) && yearv<=2011))
								  {
									  
									if( (yearv<=2011 || yearv>2012))
										 {
							                alert("Año Fuera de Rango: "+yearv);
						                    document.form.txtf_t3.value="";
							                document.form.txtf_t3.focus();
										 }
									if((day<d.getDate() && month<=(d.getMonth()+1) && yearv<=2011))
									     {
											 alert("Fecha No Valida!: "+day+"/"+month+"/"+yearv);
						                    document.form.txtf_t1.value="";
											document.form.txtf_t2.value="";
											document.form.txtf_t3.value="";
							                document.form.txtf_t1.focus();
										 }
								  }
								  
							 }
							//}
						   //}
                      }

function putYearss22(form)
                      {
                          //alert("quibo") 
						  
                          var year = document.form.txtf_t3.value.length +1;
						  var yearv = document.form.txtf_date1.value;
						 // alert(""+dayv);
						// if( (yearv==0) || (yearv>=2009 && yearv<=2018))
						  //{
                          //alert(" "+letters);
                           if (year <= 4)
                                {
                                  document.form.txtf_t3.focus()
                                }
                                 else
                               {
                                  document.form.txtf_cant.focus()
                               }
						//	}else
						  // { 
						 //  if(yearv>=2009 && yearv<=2018)
						   // {
						    /* if(year==5)
							 {
								 var d=new Date();
								 //alert(""+d.getDate()+"ffff"+d.getMonth());
								 
								 var day= document.form.txtf_t1.value;
								 var month=document.form.txtf_t2.value;
								 var years=document.form.txtf_t3.value;
								 //alert(""+day+" "+d.getDate());
								 if( (yearv<=2012 || yearv>2012) || (day<d.getDate() && month<=(d.getMonth()+1) && yearv<=2011))
								  {
									  
									if( (yearv<=2011 || yearv>2012))
										 {
							                alert("Año Fuera de Rango: "+yearv);
						                    document.form.txtf_t3.value="";
							                document.form.txtf_t3.focus();
										 }
									if((day<d.getDate() && month<=(d.getMonth()+1) && yearv<=2011))
									     {
											 alert("Fecha No Valida!: "+day+"/"+month+"/"+yearv);
						                    document.form.txtf_t1.value="";
											document.form.txtf_t2.value="";
											document.form.txtf_t3.value="";
							                document.form.txtf_t1.focus();
										 }
								  }
								  
							 }
							//}
						   //}*/
                      }





function putYearss2(form)
                      {
                          //alert("quibo") 
						  
                          var year = document.form.txtf_t3.value.length +1;
						  var yearv = document.form.txtf_t3.value;
						 // alert(""+dayv);
						// if( (yearv==0) || (yearv>=2009 && yearv<=2018))
						  //{
                          //alert(" "+letters);
                           if (year <= 4)
                                {
                                  document.form.txtf_t3.focus()
                                }
                                 else
                               {
                                  document.form.txtf_med1.focus()
                               }
						//	}else
						  // { 
						 //  if(yearv>=2009 && yearv<=2018)
						   // {
						     if(year==5)
							 {
								 var d=new Date();
								 //alert(""+d.getDate()+"ffff"+d.getMonth());
								 
								 var day= document.form.txtf_t1.value;
								 var month=document.form.txtf_t2.value;
								 var years=document.form.txtf_t3.value;
								 //alert(""+day+" "+d.getDate());
								 if( (yearv<=2012 || yearv>2012) || (day<d.getDate() && month<=(d.getMonth()+1) && yearv<=2011))
								  {
									  
									if( (yearv<=2011 || yearv>2012))
										 {
							                alert("Año Fuera de Rango: "+yearv);
						                    document.form.txtf_t3.value="";
							                document.form.txtf_t3.focus();
										 }
									else if((day<d.getDate() && month<=(d.getMonth()+1) && yearv<=2011))
									     {
											 alert("Fecha No Valida!: "+day+"/"+month+"/"+yearv);
						                    document.form.txtf_t1.value="";
											document.form.txtf_t2.value="";
											document.form.txtf_t3.value="";
							                document.form.txtf_t1.focus();
										 }
									else{
								 	document.form.select_servi.focus(); 
								 	}
								  }
								 
							 }
							 
							//}
						   //}
						  
                      }




function mosTrar(form)
                      {
	  var mostrar2; 
	  var sur=document.form.txtf_cb22.value;
	  
	  mostrar2=parseInt(sur);				  
              
			  if(mostrar2>0)
			  {
                       document.form.txtf_carnet.focus();
               }else{
				   document.form.txtf_carnet.focus();
			   }
			}
			
function enViarc(form)
          {
			  if(document.form.txtf_exist.value=="")
			  {
				  document.form.txtf_med1.focus();
			  }else
			  {
				  document.form.txtf_sol1.focus();
			  }
			  
	/*  var mostrar2; 
	  var sur=document.form.txtf_cb22.value;
	  
	  mostrar2=parseInt(sur);				  
              
			  if(mostrar2>0)
			  {
                       document.form.txtf_carnet.focus();
               }else{
				   document.form.txtf_carnet.focus();
			   }*/
			}		 

function putDaysa()
                      {
                          //alert("quibo") 
						  var dayv = document.form.txtf_t1a.value;
						 // alert(""+dayv);
						 if(dayv>=0 && dayv<=31)
						  {
                           var day = document.form.txtf_t1a.value.length +1;
                           //alert(" "+letters);
                           if (day <= 2)
                                {
                                  document.form.txtf_t1a.focus()
                                }
                                 else
                               {
								   
                                       document.form.txtf_t2a.focus()
									
                               }
						
						  }else
						   { 
						     alert("DIA Fuera de Rango: "+dayv);
						     document.form.txtf_t1a.value="";
							 document.form.txtf_t1a.focus();
						   }
                      }
function putMonthssa()
                      {
                          //alert("quibo") 
                          var month = document.form.txtf_t2a.value.length +1;
						  var monthv = document.form.txtf_t2a.value;
						 // alert(""+dayv);
						 if(monthv>=0 && monthv<=12)
						  {
                          //alert(" "+letters);
                           if (month <= 2)
                                {
                                  document.form.txtf_t2a.focus()
                                }
                                 else
                               {
                                  document.form.txtf_t3a.focus()
                               }
					      }else
						   { 
						     alert("MES Fuera de Rango: "+monthv);
						     document.form.txtf_t2a.value="";
							 document.form.txtf_t2a.focus();
						   }
                      }
function putYearssa(form)
                      {
                          //alert("quibo") 
						  
                          var year = document.form.txtf_t3a.value.length +1;
						  var yearv = document.form.txtf_t3a.value;
						 // alert(""+dayv);
						// if( (yearv==0) || (yearv>=2009 && yearv<=2018))
						  //{
                          //alert(" "+letters);
                           if (year <= 4)
                                {
                                  document.form.txtf_t3a.focus()
                                }
                                 else
                               {
                                  document.form.txtf_t1b.focus()
                               }
						
                      }
					  
function putDaysb()
                      {
                          //alert("quibo") 
						  var dayv = document.form.txtf_t1b.value;
						 // alert(""+dayv);
						 if(dayv>=0 && dayv<=31)
						  {
                           var day = document.form.txtf_t1b.value.length +1;
                           //alert(" "+letters);
                           if (day <= 2)
                                {
                                  document.form.txtf_t1b.focus()
                                }
                                 else
                               {
								   
                                       document.form.txtf_t2b.focus()
									
                               }
						
						  }else
						   { 
						     alert("DIA Fuera de Rango: "+dayv);
						     document.form.txtf_t1b.value="";
							 document.form.txtf_t1b.focus();
						   }
                      }
function putMonthssb()
                      {
                          //alert("quibo") 
                          var month = document.form.txtf_t2b.value.length +1;
						  var monthv = document.form.txtf_t2b.value;
						 // alert(""+dayv);
						 if(monthv>=0 && monthv<=12)
						  {
                          //alert(" "+letters);
                           if (month <= 2)
                                {
                                  document.form.txtf_t2b.focus()
                                }
                                 else
                               {
                                  document.form.txtf_t3b.focus()
                               }
					      }else
						   { 
						     alert("MES Fuera de Rango: "+monthv);
						     document.form.txtf_t2b.value="";
							 document.form.txtf_t2b.focus();
						   }
                      }
function putYearssb(form)
                      {
                          //alert("quibo") 
						  
                          var year = document.form.txtf_t3b.value.length +1;
						  var yearv = document.form.txtf_t3b.value;
						 // alert(""+dayv);
						// if( (yearv==0) || (yearv>=2009 && yearv<=2018))
						  //{
                          //alert(" "+letters);
                           if (year <= 4)
                                {
                                  document.form.txtf_t3b.focus()
                                }
                                 else
                               {
                                  document.form.txtf_t1c.focus()
                               }
						
                      }					  
function putDaysc()
                      {
                          //alert("quibo") 
						  var dayv = document.form.txtf_t1c.value;
						 // alert(""+dayv);
						 if(dayv>=0 && dayv<=31)
						  {
                           var day = document.form.txtf_t1c.value.length +1;
                           //alert(" "+letters);
                           if (day <= 2)
                                {
                                  document.form.txtf_t1c.focus()
                                }
                                 else
                               {
								   
                                       document.form.txtf_t2c.focus()
									
                               }
						
						  }else
						   { 
						     alert("DIA Fuera de Rango: "+dayv);
						     document.form.txtf_t1c.value="";
							 document.form.txtf_t1c.focus();
						   }
                      }
function putMonthssc()
                      {
                          //alert("quibo") 
                          var month = document.form.txtf_t2c.value.length +1;
						  var monthv = document.form.txtf_t2c.value;
						 // alert(""+dayv);
						 if(monthv>=0 && monthv<=12)
						  {
                          //alert(" "+letters);
                           if (month <= 2)
                                {
                                  document.form.txtf_t2c.focus()
                                }
                                 else
                               {
                                  document.form.txtf_t3c.focus()
                               }
					      }else
						   { 
						     alert("MES Fuera de Rango: "+monthv);
						     document.form.txtf_t2c.value="";
							 document.form.txtf_t2b.focus();
						   }
                      }
function putYearssc(form)
                      {
                          //alert("quibo") 
						  
                          var year = document.form.txtf_t3c.value.length +1;
						  var yearv = document.form.txtf_t3c.value;
						 // alert(""+dayv);
						// if( (yearv==0) || (yearv>=2009 && yearv<=2018))
						  //{
                          //alert(" "+letters);
                           if (year <= 4)
                                {
                                  document.form.txtf_t3c.focus()
                                }
                                
						
                      }	
					  
function mayNom(form)
{
	document.form.txtf_nom.value=document.form.txtf_nom.value.toUpperCase();
}
function mayApep(form)
{
	document.form.txtf_ap.value=document.form.txtf_ap.value.toUpperCase();
}
function mayApem(form)
{
	document.form.txtf_am.value=document.form.txtf_am.value.toUpperCase();
}
function CloseWin(){
window.opener = top ;
window.close();
}
function mayNomm(form)
{
	document.form.txtf_nom.value=document.form.txtf_nom.value.toUpperCase();
}
function mayApepm(form)
{
	document.form.txtf_pat.value=document.form.txtf_pat.value.toUpperCase();
}
function mayApemm(form)
{
	document.form.txtf_mat.value=document.form.txtf_mat.value.toUpperCase();
}

function mayApemm22(form)
{
	document.form.txtf_mat.value=document.form.txtf_mat.value.toUpperCase();
}

function Servi_col(form)
     {//alert("siiiii");
		var servi= form.select_servi.value
		form.txtf_servicio.value=servi;
		 //form.txtf_descri.focus();
	 }	
	 
	 function verificaNcol_pend(obj) 
{
		 
missinginfo = "";

 missinginfo = "";
    if (obj.txtf_foliore.value=="")
	{
	missinginfo += "\n - Campo Día";
	}
	if (obj.txtf_t3.value=="")
	{
	missinginfo += "\n - Campo Fecha";
	}
	if (obj.txtf_servicio.value=="")
	{
	missinginfo += "\n - Campo Tipo de Servicio";
	}
	if (obj.txtf_encarser.value=="")
	{
	missinginfo += "\n - Campo Encargado del Servicio";
	}    if (obj.txtf_clave1.value=="")
	{
	missinginfo += "\n - Campo Clave Medicamento";
	}			
    if (obj.txtf_descrip1.value=="")
	{
	missinginfo += "\n - Campo Descripción Medicamento";
	}			
    if (obj.txtf_sol1.value=="")
	{
	missinginfo += "\n - Campo Cantidad Solicitada";
	}			
    if (obj.txtf_sur1.value=="")
	{
	missinginfo += "\n - Campo Cantidad Surtida";
	}
	
	
if (missinginfo != "")
	{
	missinginfo = "TE HA FALTADO INTRODUCIR LOS SIGUIENTES DATOS:\n" + missinginfo + "\n\n ¡INGRESA LOS DATOS FALTANTES Y TRATA OTRA VEZ!\n";
	alert(missinginfo);

	return false;
	}
else return true;
}