function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'BF/stageback', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'BF/stagefront', -650, 560);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.5);

	addLuaSprite('stageback', false)
	addLuaSprite('stagefront', false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end