import cosas.*

object camion {
    const property cargas = []
    const pesoDelCamion = 1000
    
    method pesoTotal() {
      return pesoDelCamion + self.pesoDeLasCargas()
    }

    method pesoDeLasCargas() {
      return cargas.sum({carga => carga.peso()})
    }

    method cargar(carga) {
      carga.add(carga)
    }

    method descargar(carga) {
      cargas.remove(carga)
    }

    method pesoDeLasCargasImpares() {
      return cargas.map({carga => carga.odd()})
    }

    method hayCargaConPeso(peso){
        return cargas.any({carga => carga.peso() == peso})
    }

    method PrimerCargaConNivelDePeligro(peligrosidad) {
        const cargasPeligrosas = cargas.filter({
        carga => carga.peligrosidad() > peligrosidad
      })
        return cargasPeligrosas.first() 
    }

    method cosasQueSuperanElNiveDePeligro(peligrosidad) {
      const cargasPeligrosas = cargas.filter({
        carga => carga.peligrosidad() > peligrosidad
      })

      return cargasPeligrosas
    }

    method superaElNivelDePeligro(carga) {
      return cargas.map({
        cargas => carga.peligrosidad() > cargas.peligrosidad()
      })
    }

    method estaExedidoDePeso() {
      return self.pesoTotal() > 2500
    }

    method puedeCircularEnRuta(peligrosidad) {
        const cargasPeligrosas = cargas.all({
            carga => carga.peligrosidad() < peligrosidad
        })

        return self.estaExedidoDePeso() and cargasPeligrosas
    }
}