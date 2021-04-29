/** First Wollok example */
object deltaAntiguedades {
	
	
	var antiguedades = [balanzaDeAlmacen] 
	
	method tenemosStock() {
        // return antiguedades.size() > 0
        return  not antiguedades.isEmpty()
    }
    
    method todoLoQueHay() {
    	return antiguedades
    }
    
    method comprarLote(nuevasAntiguedades){
    	antiguedades.addAll(nuevasAntiguedades)
    }
    
	
	method recienteAdquisicion(){
	 return antiguedades.last()
	}
	
	method adquirir(elemento){
		antiguedades.add(elemento)
	}
	
	method cantidad() {
		return antiguedades.size()
	}
	
	method esMuyAntigua(elemento){
        return elemento.anios() > 100
    }
        
    method antiguedad(posicion){
        return antiguedades.get(posicion).anios()
    }
    
    method reparar(posicion){
        antiguedades.get(posicion).restaurar()
    }
    
    method restaurar(){
        antiguedades.first().restaurar()
    }
    method estabaApuradoElClienteReciente(){
        self.recienteAdquisicion().restaurar()
    }
    
	method restaurarSiHaceFalta(elemento) {
        if (elemento.enMalEstado())
           elemento.restaurar()
    }
    
    method vender(elemento) {
        antiguedades.remove(elemento)
    }
// Asi eliminas el elemento de la coleccion

	method cualMasBarato() {
		//TODO
	}
    
    method venderTodo() {
        antiguedades.clear()
    }

    method queTanAntiguo(objeto) {
        return  
        	if (antiguedades.contains(objeto)) 
            	{{objeto.anios() }
            	} // - que tan antiguas es cada una
        	else
            	0
    }

	// Alerta spoiler: lo vemos la proxima clase
    method repararTodos() {
        antiguedades.forEach{ sujetoAntiguoInanimado => sujetoAntiguoInanimado.restaurar()}
    }

}


object lampara {

    var foquitos = [4,4,6,7,8]

    method anios() {
        return 80
    }

    method enMalEstado() {
        return foquitos.sum() < 35
    }

    method restaurar() {
        foquitos = [10,10,10,10]
    }

}
object martilloCarpintero{
    var nombre = "martillo"
    const anioCreacion = 1999
    var conservacion = 33
    
    method anios(){
        return (2021 - anioCreacion)
    }
    
    method enMalEstado(){
    	return conservacion < 50
    }
    
    method restaurar(){
        self.restaurar( anioCreacion - 1900)
    }

    method restaurar(antig){
        conservacion = 100.min(conservacion + antig)
    }
}

object camisetaDeMaradona {
    const antiguedad = 40
    var estado = 8
   
    method anios(){
        return antiguedad
    }
    method restaurar(){
        estado = estado+1
    }
    method enMalEstado(){
        return estado.even()
    }
}

object jarron {
    var fechadeadquisicion
    
    method enMalEstado() {
        return false
    }
    
    method anios() {
        return 2021 - fechadeadquisicion
    }
    method restaurar() {
    	// NADA
    }
}


object coronaInglesa {
    var antiguedad=10
	var estado="Gastado"

	method restaurar(){
    	estado = "nuevo"
	}
	method enMalEstado(){
    	return estado != "nuevo"
	}
	method anios() {
		return 100
	}
}


object monaLisa {
    var antiguedad = 2
    var estadoDeConservacion = "reparar"

    method antiguedad(){
        return antiguedad
    }
    method enMalEstado(){
        return estadoDeConservacion == "reparar"
    }
    method restarurar(){
    	estadoDeConservacion = "ok"
    }
}



object maquinaDeEscribir {
    const antiguedad = 90
    var estado = 6
    method antiguedad(){
        return antiguedad
    }
    method restaurar(){
        estado = estado + 2
    }
    method reparar(){
        return estado < 10
    }

}



object botinesDeFutbol {
	const malEstado = "Su estado es malo"
    var conservacion = malEstado

    method restaurar() {
        conservacion = "Su estado es muy bueno"
    }

    method antiguedad() {
        return "Son los que usó ronaldo en el mundial 2002"
    }

    method enMalEstado() {
        return conservacion == malEstado
    }

}

object relojAntiguo {
    var antiguedad = 50
    var restaurado = false

    method restaurar() {
        restaurado = true
    }

    method enMalEstado() {
        return not restaurado
    }

    method antiguedad() {
        return antiguedad
    }
}



object cuadroDeBerni {
    var estaRestaurado = false
    const edad = 70
    method enMalEstado(){
        return not estaRestaurado
    }
    
    method restaurar(){
        estaRestaurado = true
    }
    
    method antiguedad(){
        return edad
    }
}


object balanzaDeAlmacen {
    const antiguedad = 10
    var estado = 5
    method anios(){
        return antiguedad
    }
    method restaurar(){
        estado = estado + 1
    }
    method enMalEstado(){
        return estado < 3
    }
}

object camisetadeArgentina1930{
    var estado="destruida"
    method antiguedad(){
        return 91
    }
    method enMalEstado(){
        return estado.contains("des")
    }
    method restaurar(){
        estado = "impecable"
    }
}