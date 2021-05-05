/** First Wollok example */
object deltaAntiguedades {
	
	
	const antiguedades = [balanzaDeAlmacen] 
	
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
		
		return antiguedades.min( { antiguedad => antiguedad.precio() })
		
	}

	method elMasAntiguo() {
		
		return antiguedades.min( { x => x.fechaFabricacion() })
		
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
    method listaPrecios(){
    	return antiguedades.map({ant => ant.precio() })	
    }

	// 
    method repararTodos() {
        antiguedades.forEach( { sujetoAntiguoInanimado =>sujetoAntiguoInanimado.restaurar()} )
    }
    
    method delSigloPasado() {
    	
    	return antiguedades.filter( {ant => ant.fechaFabricacion() < 2000})
    	
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
    const fechadeadquisicion = 1990
    
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
    const antiguedad = 2
    var estadoDeConservacion = "reparar"

    method anios(){
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
    method anios(){
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

    method anios() {
        return "Son los que usó ronaldo en el mundial 2002"
    }

    method enMalEstado() {
        return conservacion == malEstado
    }

}

object relojAntiguo {
    const antiguedad = 50
    var restaurado = false

    method restaurar() {
        restaurado = true
    }

    method enMalEstado() {
        return not restaurado
    }

    method anios() {
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
    
    method anios(){
        return edad
    }
    method precio() = edad
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
    method precio() = 5
}

object camisetadeArgentina1930{
    var estado="destruida"
    method anios(){
        return 91
    }
    method enMalEstado(){
        return estado.contains("des")
    }
    method restaurar(){
        estado = "impecable"
    }
}