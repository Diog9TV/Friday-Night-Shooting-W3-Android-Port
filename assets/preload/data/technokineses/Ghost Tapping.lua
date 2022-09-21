function onCreate()
	setPropertyFromClass('ClientPrefs', 'ghostTapping', false);
	setPropertyFromClass('ClientPrefs', 'middleScroll', false);
end

function onDestroy()
	setPropertyFromClass('ClientPrefs', 'ghostTapping', true);
	setPropertyFromClass('ClientPrefs', 'middleScroll', true);
end
