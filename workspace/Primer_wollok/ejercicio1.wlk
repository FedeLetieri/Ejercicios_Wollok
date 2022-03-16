/*Agregar a Pepón: Pepón es otra ave que puede comer el alpiste y la
manzana y sigue las siguientes reglas:
● La energía inicial de pepón es 30.
● Sabe decir su energía.
● Cuando come, solo puede aprovechar la mitad de la energía que
aporta el alimento
○ Ejemplo: si tiene 30 de energía y come alpiste su nueva energía
es 30 + 20/2 = 40
● Cuando vuela gasta 20 fijos más 2 joules por km,
○ Ejemplo si tiene 30 de energía y vuela 3 km su nueva energía
es: 30 - 20 - 2*3 = 4*//*Actualizado */

object pepon{
	var energia=35
	
	method comer(comida){
		energia=energia + (comida.energiaQueAporta()/2)
	}
	
	method volar(distancia){
		energia=energia-20-(2*distancia)	
	}
	
	method hablar(){
	return energia
	}
	
	}


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


