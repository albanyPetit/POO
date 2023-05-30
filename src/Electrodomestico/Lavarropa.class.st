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
Lavarropa >> calcularValor [
	|total|
	total := super calcularValor.
	(capacidadCarga > 30) ifTrue: [ total := total +350 ].
	^total .
]

{ #category : #inicializadores }
Lavarropa >> inicializar [
	capacidadCarga := 5.
	tipoCarga := 'superior'.
	sistemaLavado := 'europeo'.
]
