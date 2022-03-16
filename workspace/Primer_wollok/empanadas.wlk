object galvan {
	var sueldo = 15000
	
	method incrementarSueldo(valor){
		sueldo += valor
		
	}
}

object baigorria{
	var empanadasVendidas = 0
	const cobroPorEmpanada = 15
	
	method venderEmpanadas(cantidad){
		empanadasVendidas+=cantidad
	}
	method sueldo(){
		
		return empanadasVendidas * cobroPorEmpanada
		}
}

object gimenez{
	var fondos = 300000
	
	method pagarSueldo(empleado){
		fondos -= empleado.sueldo()
	}
	method fondos(){
		return fondos
	}

}
