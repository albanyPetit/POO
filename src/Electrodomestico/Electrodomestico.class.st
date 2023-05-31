"
superclase Electrodomestico
"
Class {
	#name : #Electrodomestico,
	#superclass : #Object,
	#instVars : [
		'precioBase',
		'color',
		'consumo',
		'peso',
		'descripcion',
		'marca'
	],
	#category : #Electrodomestico
}

{ #category : #constructores }
Electrodomestico class >> crear: unPrecio peso: unPeso letra: unaLetra [
	|unElectro|
	unElectro := self new.
	unElectro inicializar: unPrecio peso: unPeso letra: unaLetra .
	^unElectro .
]

{ #category : #otros }
Electrodomestico class >> obtenerAdicionalConsumo: unConsumo [
	|adicionalConsumo|
	(unConsumo = 'A') ifTrue: [ adicionalConsumo := 3000 .]
	ifFalse: [ (unConsumo = 'B') ifTrue: [ adicionalConsumo := 2300 .] ifFalse: [adicionalConsumo := 0.].].
	^adicionalConsumo .
]

{ #category : #otros }
Electrodomestico class >> obtenerAdiconalPeso: unPeso [
	|adicionalPeso|
	(unPeso >= 0 & unPeso <= 19) ifTrue: [ adicionalPeso := 150 ] ifFalse: [ adicionalPeso := 0 ].
	^adicionalPeso .
]

{ #category : #propiasDelTipo }
Electrodomestico >> calcularAdicional: final [
	^0.
]

{ #category : #propiasDelTipo }
Electrodomestico >> calcularValor [
	|resp|
	resp := precioBase + (Electrodomestico obtenerAdiconalPeso: peso) + (Electrodomestico obtenerAdicionalConsumo: consumo).
	resp := resp + (self calcularAdicional: resp).
	
	^resp.
]

{ #category : #inicializadores }
Electrodomestico >> inicializar: unPrecio peso: unPeso letra: unaLetra [
	precioBase := unPrecio .
	peso := unPeso .
	consumo := unaLetra .
	color := 'blanco'.
	descripcion := ''.
	marca := ''.
]
