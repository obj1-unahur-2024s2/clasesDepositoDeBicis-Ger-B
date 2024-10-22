class Deposito{
	const bicis

	method bicisRapidas() = bicis.filter({b => b.velocidadCrucero() > 25})
	method marcasEnElDeposito() = bicis.map({b => b.marca()}).asSet()
	method esNocturno() = bicis.all({b => b.tieneLuz()})
	method hayBiciParaLlevar(unPeso) = bicis.any({b => b.carga() > unPeso})
	// 3
	method marcaDeLaMasRapida() {
		const biciMasRapida = bicis.max({b => b.velocidadCrucero()})
		return biciMasRapida.marca()
	}
	method cargaDeLasBicisLargas() {
		const bicisMasLargas = bicis.filter({b => b.largo() > 170})
		return bicisMasLargas.sum({b => b.carga()})
	}
	method nroDeBicisSinAccesorios() = bicis.count({b => b.accesorios().isEmpty()})
	// 4
	method bicisCompanierasDe(unaBici) {
		const candidatas = bicis.filter({b => b != unaBici})
		return candidatas.filter({b => self.modulo(b.largo() - unaBici.largo()) <= 10 and (b.marca() == unaBici.marca())})
	}
	method modulo(resta) = if(resta < 0) -resta else resta 
}
