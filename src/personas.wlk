object olivia {
	
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion
	
	method recibirMasajes() { gradoDeConcentracion += 3 }
	
	method discutir() { gradoDeConcentracion --  }
	
	method darseBanioDeVapor() { }
}

object bruno {
	
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso() = peso
	
	method recibirMasajes() { esFeliz = true }
	
	method darseBanioDeVapor() { 
		peso -= 500
		tieneSed = true
	}
	
	method tomarAgua() { tieneSed = false }
	
	method comerFideos() { 
		peso += 250
		tieneSed = true
	}
	
	method correr() { peso -= 300 }
	
	method verNoticiero() { esFeliz = false }
	
	method estaPerfecto() = esFeliz and peso.between(50000, 70000) and not tieneSed
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	
	var nivelDeContractura = 0
	var tienePielGrasosa = false
	
	method nivelDeContractura() = nivelDeContractura
	method tienePielGrasosa() = tienePielGrasosa
		
	method recibirMasajes() { nivelDeContractura = 0.max(nivelDeContractura - 2)}
	
	method darseBanioDeVapor() { tienePielGrasosa = false}
	
	method comerBigMac() { tienePielGrasosa = true }
	
	method bajarALaFosa() {
		tienePielGrasosa = true
		nivelDeContractura ++
	}
	
	method jugarPaddle() { nivelDeContractura += 3 }
	
	method diaDeTrabajo() {
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}



