object galvan {
	var sueldo = 15000
	var deuda = 0
	var totalDinero = 0
	method incrementarSueldo(valor){
		sueldo += valor	
	}
	method sueldoAcobrar(){
		if (deuda > 0 ){
			totalDinero=totalDinero-deuda
			deuda=0
		}
		totalDinero+=sueldo
		return totalDinero
	}
	
	method gastar(cantidad){
		totalDinero=totalDinero-cantidad
		if (totalDinero<0){
			deuda+=-totalDinero
			totalDinero=0
		}
	}
	method dinero(){
		return totalDinero
	}
	
	method deuda(){
		return deuda
	}
}

object baigorria{
	var empanadasVendidas = 0
	const cobroPorEmpanada = 15
	var totalDinero=0
	
	method venderEmpanadas(cantidad){
		empanadasVendidas+=cantidad
	}
	method sueldoAcobrar(){
		totalDinero=empanadasVendidas * cobroPorEmpanada
		}
	method totalCobrado(){
		return totalDinero
	}	
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
