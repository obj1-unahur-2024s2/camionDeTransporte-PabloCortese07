object knightRider {
    const property peso = 500
    const property peligrosidad = 10 
}

object bumblebee {
    const property peso = 800
    var peligrosidad = 10 
    var estaTrasformado = false

    method transformar() {
      estaTrasformado = not estaTrasformado
    }

    method transformarse() {
      if(estaTrasformado){
        peligrosidad = 15
      }else{
        peligrosidad = 10
      }
    }
}