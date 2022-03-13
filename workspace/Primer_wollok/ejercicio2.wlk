/*Agregar a Roque, que es una persona
● Tiene un ave, a veces es Pepón, a veces es Pepita, por lo tanto tiene
que entender un mensaje para que se le indique cual es su ave.
Inicialmente es pepita.
● Entiende el mensaje alimentar, que recibe un alimento por
parámetro. Al recibir este mensaje roque alimenta a su ave.
Ejemplo 1: Si tiene a pepona con energía de 30, y recibe el
mensaje alimentar(alpiste) pepon queda con 40 de energía
Ejemplo 2: Si tiene a pepita con energía de 100 y recibe el
mensaje alimentar(alpiste) pepita queda con 120 de energía.
● Entiende el mensaje cenas(), el cual devuelve la cantidad de veces
que roque dio de alimentar a su ave (pensar como hacer para
recordar este dato)*/

object roque{
	//Variables
	var energia_pepita=100
	var energia_pepon=100
	var ave_elegida="pepita"
	var cenas_pepita=0
	var cenas_pepon=0
	
	//Metodos
	method elegir(ave){
		ave_elegida=ave.me_eligieron()
		return ave_elegida
	}
	method alimentar(comida){	
		if (ave_elegida == "pepita"){
		energia_pepita = energia_pepita+ (comida.energiaQueAporta()/2)
		cenas_pepita = cenas_pepita + 1
		return cenas_pepita
		}
		else 
		energia_pepon = energia_pepon + (comida.energiaQueAporta()/2)
		cenas_pepon = cenas_pepon + 1
		return cenas_pepon
	}
		
}
//******************************AVES******************************
object pepita{
	
	method me_eligieron(){
		return "pepita"
	}
}

object pepon{
	
	method me_eligieron(){
		return "pepon"
	}
}

//******************************COMIDAS******************************
object alpiste{
	method energiaQueAporta(){
		return 20
	}
}

object manzana{
	var madurez=1
	
	method madurar(mod){
		madurez=mod
	}
	method madurar(){
		madurez=madurez + 1
	}
	method energiaQueAporta(){
		return (madurez*5)
	}
}
