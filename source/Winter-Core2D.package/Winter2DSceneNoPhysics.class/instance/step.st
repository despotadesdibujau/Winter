Stepping
step
	super step.
	self surface drawDuring: [ :aCanvas |  
		self eventQueue takeObjects do: [ :eachEvent |  
			eachEvent canvas: aCanvas.
			self handleEvent: eachEvent.
			self players do: [ :eachPlayer | eachPlayer handleEvent: eachEvent ].
			self components do: [ :eachShape | eachShape handleEvent: eachEvent ] ] ].