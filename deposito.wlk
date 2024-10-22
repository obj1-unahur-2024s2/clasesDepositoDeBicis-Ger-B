class Deposito{
	const bicis

	method bicisRapidas() = bicis.filter({b => b.velocidadCrucero() > 25})
	method marcasEnElDeposito() = bicis.map({b => b.marca()}).asSet()
	method esNocturno() = bicis.all({b => b.tieneLuz()})
	method hayBiciParaLlevar(unPeso) = bicis.any({b => b.carga() > unPeso})
}