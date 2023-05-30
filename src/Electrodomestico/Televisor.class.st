"
subclase
"
Class {
	#name : #Televisor,
	#superclass : #Electrodomestico,
	#instVars : [
		'tamanioPantalla',
		'resolucion',
		'hdmi',
		'smart'
	],
	#category : #Electrodomestico
}

{ #category : #constructores }
Televisor class >> crear: unPrecio peso: unPeso letra: unaLetra [
	|tele|
	tele := super crear: unPrecio peso: unPeso letra: unaLetra.
	tele inicializar .
	^tele.
]

{ #category : #propiasDelTipo }
Televisor >> calcularValor [
	|total|
	total := super calcularValor .
	(hdmi >1) ifTrue: [ total := total + (hdmi * 100) ].
	(tamanioPantalla > 46) ifTrue: [ total := total + (total*0.3) ].
	^total.
]

{ #category : #inicializadores }
Televisor >> inicializar [
	smart := false.
	hdmi := 1.
	resolucion := 'HD 1366x768Px'.
	tamanioPantalla := 32.
]
