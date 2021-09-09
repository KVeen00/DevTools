--insert anywhere you need a time string for display. You can easily modify to pull hours, minutes or seconds as an INT.
function makeTime(offset)
	tick = system.getTime()
	tick = tick%86400
	h = math.floor(tick/3600)+offset
     if timemode12==true and h>12 then h=h-12 end
	tick = tick%3600
	m = math.floor(tick/60)
	tick = tick%60
	s = math.floor(tick)
	if m < 10 then m="0"..m end
	if s < 10 then s="0"..s end
	returnTime = h..":"..m..":"..s
	return returnTime
end
