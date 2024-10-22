class Bicicleta{
  const rodado
  const property largo
  const marca 
  const property accesorios

  method marca() = marca  // Para que no moleste con que no uso marca

  method altura() = rodado * 2.5 + 15
  method velocidadCrucero() = if(largo > 120) rodado + 6 else rodado + 2
  method carga() = accesorios.sum({a => a.carga()})
  method peso() = rodado * 0.5 + accesorios.sum({a => a.peso()})
  method tieneLuz() = accesorios.any({a => a.esLuminoso()})
  method cantAccesoriosLivianos() = accesorios.count({a => a.peso() < 1}) 
}

object farolito {
  method peso() = 0.5
  method carga() = 0
  method esLuminoso() = true
}

class Canasto {
  const volumen 
  method peso() = volumen * 0.1
  method carga() = volumen * 2
  method esLuminoso() = false
}
class Morral {
  const largo
  const tieneOjoDeGato 
  method peso() = 1.2
  method carga() = largo / 3
  method esLuminoso() = tieneOjoDeGato
}