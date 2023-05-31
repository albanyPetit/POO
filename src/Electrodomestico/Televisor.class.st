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
Televisor >> calcularAdicional: resp [
	|adicional|
	adicional := 0.
	(hdmi >1) ifTrue:[adicional := hdmi * 100].
	(tamanioPantalla > 46) ifTrue: [ adicional := adicional + (resp *0.3) ].
	^adicional .
]

{ #category : #inicializadores }
Televisor >> inicializar [
	smart := false.
	hdmi := 1.
	resolucion := 'HD 1366x768Px'.
	tamanioPantalla := 32.
]
