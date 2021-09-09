--place into unit.tick(write)
showDB(db, screen)

--place the below in 'unit.start'
clearDB = true --export will clear database on start by default, set to false to preserve DB contents
function showDB(db, screen)
	html = [[<div style="
            height:100%;
            width:100%;
            position:absolute;
            top:0%;
            left:0%;">
            <svg height="100%" width="100%">               
            <g fill="white" stroke-width="0.5%" font-weight="bold" font-size="25" >
            <rect x="0" y="0" width="100%" height="100%" fill="black" stroke="blue" />]]
	kys=db.getNbKeys()
	if kys > 0 then
		html = html..[[
        <text x="50%" y="5%"  font-size="45" text-anchor="middle">Number of Keys: ]]..kys..[[</text>]]
        keynames = json.decode(db.getKeys())
        table.sort(keynames)
        for i,v in ipairs(keynames) do
        	html=html..[[
        	<text x="2%" y="]]..((i*5)+5)..[[%"  text-anchor="start">]]..v..[[</text>
        	<text x="50%" y="]]..((i*5)+5)..[[%"  text-anchor="start">]]..db.getStringValue(v)..[[</text>
        	]]
        end
        html=html..[[</g></svg></div>]]
    else
    	html = html..[[
        <text x="50%" y="50%"  text-anchor="middle">Empty DB</text>
        </g></svg></div>]]
	end
	screen.setHTML(html)
end

if clearDB==true then db.clear() end
unit.setTimer("write", 1)
