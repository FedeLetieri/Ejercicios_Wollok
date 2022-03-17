object galvan {
	var sueldo = 15000
	var deuda = 0
	var totalDinero = 0
	method incrementarSueldo(valor){
		sueldo += valor	
	}
	method sueldoAcobrar(){
		totalDinero+=sueldo
		return totalDinero
	}
	
	method gastarDinero(dineroGastado){
		totalDinero=totalDinero-dineroGastado
		if (totalDinero < 0) {deuda+=totalDinero
		totalDinero=0}
	}
	
	
}

object baigorria{
	var empanadasVendidas = 0
	const cobroPorEmpanada = 15
	
	method venderEmpanadas(cantidad){
		empanadasVendidas+=cantidad
	}
	method sueldoAcobrar(){
		return empanadasVendidas * cobroPorEmpanada
		}
	//method 	
}

object gimenez{
	var fondos = 300000
	
	method pagarSueldo(empleado){
		fondos -= empleado.sueldoAcobrar()
	}
	method fondos(){
		return fondos
	}
}