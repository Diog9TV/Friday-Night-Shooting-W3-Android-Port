function onCreate()

		makeLuaSprite('sky','Nene/Afternoon/sky', -100, 00);
		setLuaSpriteScrollFactor('sky', 0.1, 0.1);
		
		makeLuaSprite('city','Nene/Afternoon/city', -10, 0);
		setLuaSpriteScrollFactor('city', 0.3, 0.3);
		scaleObject('city', 0.85, 0.85);
	
		makeLuaSprite('behindTrain','Nene/Afternoon/behindTrain', -40, 50);
		makeLuaSprite('street','Nene/Afternoon/street', -40, 50);
		makeLuaSprite('train','Nene/Afternoon/train',  2000, 360);
        
		makeLuaSprite('blue', 'Nene/Afternoon/win0',-10, 0);
        setLuaSpriteScrollFactor('blue', 0.3, 0.3);		
	    scaleObject('blue',0.85, 0.85)
		
		makeLuaSprite('green', 'Nene/Afternoon/win1',-10, 0);
        setLuaSpriteScrollFactor('green', 0.3, 0.3);		
	    scaleObject('green',0.85, 0.85)
		makeLuaSprite('pink', 'Nene/Afternoon/win2',-10, 0);
        setLuaSpriteScrollFactor('pink', 0.3, 0.3);		
	    scaleObject('pink',0.85, 0.85)
		
		makeLuaSprite('red', 'Nene/Afternoon/win3',-10, 0);
        setLuaSpriteScrollFactor('red', 0.3, 0.3);		
	    scaleObject('red',0.85, 0.85)
	    
		makeLuaSprite('yellow', 'Nene/Afternoon/win4',-10, 0);
        setLuaSpriteScrollFactor('yellow', 0.3, 0.3);		
	    scaleObject('yellow',0.85, 0.85)
	
	addLuaSprite('sky', false);
	addLuaSprite('city', false);
	addLuaSprite('blue', false);
	addLuaSprite('green', false);
	addLuaSprite('pink', false);
	addLuaSprite('red', false);
	addLuaSprite('yellow', false);
	addLuaSprite('behindTrain', false);
	addLuaSprite('train', false);
	addLuaSprite('street', false);
	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
	runTimer('trainsound',4)
	runTimer('blueAppear',2)
end
function onTimerCompleted(t,l,ll)
	if t == 'blueAppear' then
    setProperty('blue.visible', true);
    doTweenAlpha('blueAppearEventTween', 'blue', 1, 0.5, 'linear');
    runTimer('blueFade',0.7)
    end
	if t == 'blueFade' then
    doTweenAlpha('blueFadeEventTween', 'blue', 0, 0.5, 'linear');
     runTimer('greenAppear',0.8)
end
	if t == 'greenAppear' then
    setProperty('green.visible', true);
    doTweenAlpha('greenAppearEventTween', 'green', 1, 0.5, 'linear');
    runTimer('greenFade',0.7)
    end
	if t == 'greenFade' then
    doTweenAlpha('greenFadeEventTween', 'green', 0, 0.5, 'linear');
     runTimer('pinkAppear',0.8)
end
	if t == 'pinkAppear' then
    setProperty('pink.visible', true);
    doTweenAlpha('pinkAppearEventTween', 'pink', 1, 0.5, 'linear');
    runTimer('pinkFade',0.7)
    end
	if t == 'pinkFade' then
    doTweenAlpha('pinkFadeEventTween', 'pink', 0, 0.5, 'linear');
     runTimer('redAppear',0.8)
end
	if t == 'redAppear' then
    setProperty('red.visible', true);
    doTweenAlpha('redAppearEventTween', 'red', 1, 0.5, 'linear');
    runTimer('redFade',0.7)
    end
	if t == 'redFade' then
    doTweenAlpha('redFadeEventTween', 'red', 0, 0.5, 'linear');
     runTimer('yellowAppear',0.8)
end
	if t == 'yellowAppear' then
    setProperty('yellow.visible', true);
    doTweenAlpha('yellowAppearEventTween', 'yellow', 1, 0.5, 'linear');
    runTimer('yellowFade',0.7)
    end
	if t == 'yellowFade' then
    doTweenAlpha('yellowFadeEventTween', 'yellow', 0, 0.5, 'linear');
     runTimer('blueAppear',0.8)
end
end


function onEvent(name,value1,value2)
	if name == 'Blammed Lights' then 
    if value1 == '1' then	   
	setProperty('blue.visible', true);
	  doTweenAlpha('blueAppearEventTween', 'blue', 1, 0.1, 'linear');
	setObjectOrder('blue', 10);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
	setObjectOrder('yellow', 7);
	setObjectOrder('green', 4);
	setObjectOrder('pink', 5);
	setObjectOrder('red', 6);
	end
	
   if value1 == '2' then
		   
	setProperty('blue.visible', false);
	setProperty('green.visible', true);
	 doTweenAlpha('greenAppearEventTween', 'green', 1, 0.1, 'linear');
	setObjectOrder('green', 10);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
	setObjectOrder('blue', 3);
	setObjectOrder('yellow', 7);
	setObjectOrder('pink', 5);
	setObjectOrder('red', 6);
	end

    if value1 == '3' then
		   
	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', true);
	 doTweenAlpha('pinkAppearEventTween', 'pink', 1, 0.1, 'linear');
	setObjectOrder('pink', 10);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
		setObjectOrder('blue', 3);
	setObjectOrder('yellow', 7);
	setObjectOrder('green', 4);
	setObjectOrder('red', 6);
	end
	    if value1 == '4' then
	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', true);
	setObjectOrder('red', 10);
 doTweenAlpha('redAppearEventTween', 'red', 1, 0.1, 'linear');
	setProperty('yellow.visible', false);
		setObjectOrder('blue', 3);
	setObjectOrder('yellow', 7);
	setObjectOrder('green', 4);
	setObjectOrder('pink', 5);

	end
	if value1 == '5' then
		   
	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', true);
 doTweenAlpha('yellowAppearEventTween', 'yellow', 1, 0.1, 'linear');
	setObjectOrder('blue', 3);
	setObjectOrder('yellow', 10);
	setObjectOrder('green', 4);
	setObjectOrder('pink', 5);
	setObjectOrder('red', 6);
	end
	if value1 == '0' then   
	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
	setObjectOrder('blue', 3);
	setObjectOrder('yellow', 7);
	setObjectOrder('green', 4);
	setObjectOrder('pink', 5);
	setObjectOrder('red', 6);
	setObjectOrder('behindTrain', 8);
	setObjectOrder('train', 9);
	setObjectOrder('street', 10);
	end
	end
	end
