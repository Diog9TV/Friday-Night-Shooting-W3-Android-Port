function onCreate()


	makeAnimatedLuaSprite('halloween2_bg', 'Piconjo/halloween_bg',-200, -100);

	addLuaSprite('halloween2_bg', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('halloween2_bg', 'idle', 'halloweem bg lightning strike', 6, true);

	
	
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end