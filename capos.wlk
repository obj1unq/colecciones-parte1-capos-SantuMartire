object rolando {
    var mochila = #{} //Creo un conjunto vacio quesera utilizado luego
    var property capacidad = 2
    var hogar = castillo
    const historial = []

    method encontrar(artefacto){
        //mochila.contains(artefacto) sirve para consultar si la mochila (set o lista) tiene un artefacto
        if (mochila.size() < capacidad){
            mochila.add(artefacto)
        }
        historial.add(artefacto)
    }

    method mochila(){
        return mochila
    }

    method llegarAHogar(){
            hogar.almacenar(mochila)
            mochila.clear()
    }

    method posesiones(){
        return mochila + hogar.cofre()
    }

    method posee(artefacto){
        return self.posesiones().contains(artefacto)
    }

    method historial(){
        return historial
    }

    method artefactoEnHistorial(indice){
        return historial.get(indice)
    }
}

object castillo{

    var property cofre = #{}
    method almacenar(artefactos){
        cofre.addAll(artefactos)
    }
}
object espada {

}

object collar {

}

object armadura {

}

object libro {

}