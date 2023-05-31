"
subclase
"
Class {
	#name : #Lavarropa,
	#superclass : #Electrodomestico,
	#instVars : [
		'capacidadCarga',
		'tipoCarga',
		'sistemaLavado'
	],
	#category : #Electrodomestico
}

{ #category : #constructores }
Lavarropa class >> crear: unPrecio peso: unPeso letra: unaLetra [
	|lavarropa|
	lavarropa := super crear: unPrecio peso: unPeso letra: unaLetra.
	lavarropa inicializar .
	^lavarropa .
]

{ #category : #propiasDelTipo }
Lavarropa >> calcularAdicional: final [
	(capacidadCarga > 30) ifTrue: [ ^350 ] ifFalse: [ ^0 ].
]

{ #category : #inicializadores }
Lavarropa >> inicializar [
	capacidadCarga := 35.
	tipoCarga := 'superior'.
	sistemaLavado := 'europeo'.
]
