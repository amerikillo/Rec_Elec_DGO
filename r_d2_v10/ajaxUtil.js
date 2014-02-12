/* ************************************************
* Utileria Ajax
* Autor: Ing. Mauricio Anguiano Guzmán
* E-mail: mau.aguzman@gmail.com
* Esta pequeña libreria depende de el framework prototype. http://www.prototypejs.org/
*/



/**
* Funcion que realiza una peticion mediante post a determinada url y actualiza con la respuesta una division
* Contiene las siguientes opciones
* @param {String}   url La URL donde realiza la peticion
* @param {Object}   optionsRequest Un objeto con las siguientes caracteristicas {parameters: '', container: '', loader: '', postFunction: function(){}}
* parameters:       Una serie de parametros definidos con el formato param=valor&maram2=valor2&param3=valor3 (por default una cadena vacia)
* container:       Identificador de una division en la cual se reflejara la respuesta a la peticion (por default 'container')
* loader:          El nombre de un identificador de una division que logra el efecto de cargando (por default no aparecera)
* mask:				Identifica una division que hace el efecto de pantalla modal
* preFunction: 		Referencia a una funcion que se ejecutara antes de realizar la peticion
* postFunction:  	Referencia a una funcion que se ejecutara despues de  haber recibido respuesta y haber actualizado el contenido
*/
function doAjaxRequest(url, optionsRequest){
    if(url){
        var parameters = __$AnalizaValor(optionsRequest, "parameters", "");
        var container = __$AnalizaValor(optionsRequest, "container", "container");
        var preFunction = __$AnalizaValor(optionsRequest, "preFunction");
        var postFunction = __$AnalizaValor(optionsRequest, "postFunction");
        var loader = __$AnalizaValor(optionsRequest, "loader"); 
        var mask = __$AnalizaValor(optionsRequest, "mask");
        
        if(!parameters.empty() && !parameters.blank()){
            if(parameters.startsWith("&") || parameters.startsWith("?")){
                parameters = parameters.substr(1);
            }
            parameters+="&";
        }
        parameters+= 'rand=' + Math.random();
        
        if(!url.empty() && !url.blank()){
        	__$PrepareAndShowLoading(mask, loader);
            var opcPrototype = {
                method: 'post',
                onSuccess: function(transport){
                    var responseText = transport.responseText || "No hubo respuesta... por favor intentelo mas tarde";
                    if(container){
                    	$(container).update(responseText);
                    }                  
                    if(postFunction){
                        try{
                            postFunction();
                        }catch(error){
                        	alert(error);
                    	}
                	}
                	__$TerminateLoading(mask, loader);
            	},
            	onFailure: function(){
					__$TerminateLoading(mask, loader);
                	alert('Por favor intentelo mas tarde');
            	}
        	}
        	if(parameters!=undefined){
            	opcPrototype.parameters = parameters;
        	}
        	if(preFunction){
                try{
                  	preFunction();
                }catch(error){
                	alert(error);
              	}
          	}
        	new Ajax.Request(url, opcPrototype);
        
    	}
	}
}


/**
* Funcion interna que se encarga de entregar un parametro opcional
* o un valor por defecto desde una coleccion tipo JSON
*/
function __$AnalizaValor(coleccion, parametro, defecto) {
    if (coleccion==undefined || parametro==undefined) {
        return defecto;
    }
    else{
        var valor = coleccion[parametro];
        if(valor==undefined){
            return defecto;
        }
        return valor;
    }
}



/**
* Funcion que establece los valores necesarios en las divisiones mask y loader 
* para mostrar un efecto de cargando y ponerlo como si fuera una ventana modal
*/
function __$PrepareAndShowLoading(mask, loader){
	mask = document.getElementById(mask);
	loader = document.getElementById(loader);
	if(mask){
		//Posicionamiento
		mask.style.position = 'absolute';
		mask.style.width = pageWidth() + 'px';
		mask.style.top = topPosition() + 'px';
		mask.style.left = leftPosition() + 'px'; 
		mask.style.height = pageHeight() + 'px';
		
		//Color
		mask.style.backgroundColor = '#666'; 
		
		//Transparencia
		/* for IE */
		mask.style.filter = 'alpha(opacity=50)';
		/* CSS3 Estandar */
		mask.style.opacity = '0.5';
		mask.style.display = '';
	}
	if(loader){
		loader.style.position = "absolute";
		loader.style.top = (topPosition() + pageHeight()/3) + 'px';
		loader.style.left = "0";
		loader.style.width = "100%";
		loader.style.textAlign = "center";
		loader.style.display = '';
	}
}

/*
* Funcion que oculta las divisiones que realizan el efecto de cargando.
*/
function __$TerminateLoading(mask, loader){
	mask = document.getElementById(mask);
	loader = document.getElementById(loader);
	if(mask){ mask.style.display = 'none'; }
	if(loader){ loader.style.display = 'none'; }
}
  
// calculate the current window width //
function pageWidth() {
  return window.innerWidth != null ? window.innerWidth : document.documentElement && document.documentElement.clientWidth ? document.documentElement.clientWidth : document.body != null ? document.body.clientWidth : null;
}

// calculate the current window height //
function pageHeight() {
  return window.innerHeight != null? window.innerHeight : document.documentElement && document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body != null? document.body.clientHeight : null;
}

// calculate the current window vertical offset //
function topPosition() {
  return typeof window.pageYOffset != 'undefined' ? window.pageYOffset : document.documentElement && document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop ? document.body.scrollTop : 0;
}

// calculate the position starting at the left of the window //
function leftPosition() {
  return typeof window.pageXOffset != 'undefined' ? window.pageXOffset : document.documentElement && document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft ? document.body.scrollLeft : 0;
}
  