--[[ //////////////
--// taebl.lua
--// ROT13 Ceasarian Cipher in Lua
--////////////////]] --

--[[ ,,,,,,,,,,,,,
--,, Copyright (C) 2013 pursuitoftherush
This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
--,,]]
taebl = {}
taebl[1] = "a"
taebl["a"] = 1
taebl[2] = "b"
taebl["b"] = 2
taebl[3] = "c"
taebl["c"] = 3
taebl[4] = "d"
taebl["d"] = 4
taebl[5] = "e"
taebl["e"] = 5
taebl[6] = "f"
taebl["f"] = 6
taebl[7] = "g"
taebl["g"] = 7
taebl[8] = "h"
taebl["h"] = 8
taebl[9] = "i"
taebl["i"] = 9
taebl[10] = "j"
taebl["j"] = 10
taebl[11] = "k"
taebl["k"] = 11
taebl[12] = "l"
taebl["l"] = 12
taebl[13] = "m"
taebl["m"] = 13
taebl[14] = "n"
taebl["n"] = 14
taebl[15] = "o"
taebl["o"] = 15
taebl[16] = "p"
taebl["p"] = 16
taebl[17] = "q"
taebl["q"] = 17
taebl[18] = "r"
taebl["r"] = 18
taebl[19] = "s"
taebl["s"] = 19
taebl[20] = "t"
taebl["t"] = 20
taebl[21] = "u"
taebl["u"] = 21
taebl[22] = "v"
taebl["v"] = 22
taebl[23] = "w"
taebl["w"] = 23
taebl[24] = "x"
taebl["x"] = 24
taebl[25] = "y"
taebl["y"] = 25
taebl[26] = "z"
taebl["z"] = 26
taebl[27] ="0"
taebl["0"] = 27
taebl[28] ="1"
taebl["1"] = 28
taebl[29] ="2"
taebl["2"] = 29
taebl[30] ="3"
taebl["3"] = 30
taebl[31] ="4"
taebl["4"] = 31
taebl[32] ="5"
taebl["5"] = 32
taebl[33] ="6"
taebl["6"] = 33
taebl[34] ="7"
taebl["7"] = 34
taebl[35] ="8"
taebl["8"] = 5
taebl[36] ="9"
taebl["9"] = 36
taebl[37] ="A"
taebl["A"] = 37
taebl[38] ="B"
taebl["B"] = 38
taebl[39] ="C"
taebl["C"] = 39
taebl[40] = "D"
taebl["D"] = 40
taebl[41] = "E"
taebl["E"] = 41
taebl[42] = "F"
taebl["F"] = 42
taebl[43] = function (arg)
	local xfrret = ""
	for i = 0, string.len(arg) do
		-- print(arg[i])
		--[[	if arg[i] == taebl[1] then
				xfrret[i] = taebl[14]
			elseif arg[i] == taebl[2] then
				xfrret[i] = taebl[15]
			elseif arg[i] == taebl[3] then
				xfrret[i] = taebl[16]
			elseif arg[i] == taebl[4] then
				xfrret[i] = taebl[17]
			elseif arg[i] == taebl[5] then
				xfrret[i] = taebl[18]
			elseif arg[i] == taebl[6] then
				xfrret[i] = taebl[19]
			elseif arg[i] == taebl[7] then
				xfrret[i] = taebl[20]
			elseif arg[i] == taebl[8] then
				xfrret[i] = taebl[21]
			elseif arg[i] == taebl[9] then
				xfrret[i] = taebl[22]
			elseif arg[i] == taebl[10] then
				xfrret[i] = taebl[23]
			elseif arg[i] == taebl[11] then
				xfrret[i] = taebl[24]
			elseif arg[i] == taebl[12] then
				xfrret[i] = taebl[25]
			elseif arg[i] == taebl[13] then
				xfrret[i] = taebl[26]
			elseif arg[i] == taebl[14] then
				xfrret[i] = taebl[1]
			elseif arg[i] == taebl[15] then
				xfrret[i] = taebl[2]
			elseif arg[i] == taebl[16] then
				xfrret[i] = taebl[3]
			elseif arg[i] == taebl[17] then
				xfrret[i] = taebl[4]
			elseif arg[i] == taebl[18] then
				xfrret[i] = taebl[5]
			elseif arg[i] == taebl[19] then
				xfrret[i] = taebl[6]
			elseif arg[i] == taebl[20] then
				xfrret[i] = taebl[7]
			elseif arg[i] == taebl[21] then
				xfrret[i] = taebl[8]
			elseif arg[i] == taebl[22] then
				xfrret[i] = taebl[9]
			elseif arg[i] == taebl[23] then
				xfrret[i] = taebl[10]
			elseif arg[i] == taebl[24] then
				xfrret[i] = taebl[11]
			elseif arg[i] == taebl[25] then
				xfrret[i] = taebl[12]
			elseif arg[i] == taebl[26] then
				xfrret[i] = taebl[13]
			elseif arg[i] == string.upper(taebl[1]) then
				xfrret[i] = taebl[14]
			elseif arg[i] == string.upper(taebl[2]) then
				xfrret[i] = taebl[15]
			elseif arg[i] == string.upper(taebl[3]) then
				xfrret[i] = taebl[16]
			elseif arg[i] == string.upper(taebl[4]) then
				xfrret[i] = taebl[17]
			elseif arg[i] == string.upper(taebl[5]) then
				xfrret[i] = taebl[18]
			elseif arg[i] == string.upper(taebl[6]) then
				xfrret[i] = taebl[19]
			elseif arg[i] == string.upper(taebl[7]) then
				xfrret[i] = taebl[20]
			elseif arg[i] == string.upper(taebl[8]) then
				xfrret[i] = taebl[21]
			elseif arg[i] == string.upper(taebl[9]) then
				xfrret[i] = taebl[22]
			elseif arg[i] == string.upper(taebl[10]) then
				xfrret[i] = taebl[23]
			elseif arg[i] == string.upper(taebl[11]) then
				xfrret[i] = taebl[24]
			elseif arg[i] == string.upper(taebl[12]) then
				xfrret[i] = taebl[25]
			elseif arg[i] == string.upper(taebl[13]) then
				xfrret[i] = taebl[26]
			elseif arg[i] == string.upper(taebl[14]) then
				xfrret[i] = taebl[1]
			elseif arg[i] == string.upper(taebl[15]) then
				xfrret[i] = taebl[2]
			elseif arg[i] == string.upper(taebl[16]) then
				xfrret[i] = taebl[3]
			elseif arg[i] == string.upper(taebl[17]) then
				xfrret[i] = taebl[4]
			elseif arg[i] == string.upper(taebl[18]) then
				xfrret[i] = taebl[5]
			elseif arg[i] == string.upper(taebl[19]) then
				xfrret[i] = taebl[6]
			elseif arg[i] == string.upper(taebl[20]) then
				xfrret[i] = taebl[7]
			elseif arg[i] == string.upper(taebl[21]) then
				xfrret[i] = taebl[8]
			elseif arg[i] == string.upper(taebl[22]) then
				xfrret[i] = taebl[9]
			elseif arg[i] == string.upper(taebl[23]) then
				xfrret[i] = taebl[10]
			elseif arg[i] == string.upper(taebl[24]) then
				xfrret[i] = taebl[11]
			elseif arg[i] == string.upper(taebl[25]) then
				xfrret[i] = taebl[12]
			elseif arg[i] == string.upper(taebl[26]) then
				xfrret[i] = taebl[13]
			else
				print("an error?")
			end

			-- ]]
			if string.sub(arg,i,i) == taebl[1] then
				xfrret = xfrret .. string.rep(taebl[14],1)
			elseif string.sub(arg,i,i) == taebl[2] then
				xfrret = xfrret .. string.rep(taebl[15],1)
			elseif string.sub(arg,i,i) == taebl[3] then
				xfrret = xfrret .. string.rep(taebl[16],1)
			elseif string.sub(arg,i,i) == taebl[4] then
				xfrret = xfrret .. string.rep(taebl[17],1)
			elseif string.sub(arg,i,i) == taebl[5] then
				xfrret = xfrret .. string.rep(taebl[18],1)
			elseif string.sub(arg,i,i) == taebl[6] then
				xfrret = xfrret .. string.rep(taebl[19],1)
			elseif string.sub(arg,i,i) == taebl[7] then
				xfrret = xfrret .. string.rep(taebl[20],1)
			elseif string.sub(arg,i,i) == taebl[8] then
				xfrret = xfrret .. string.rep(taebl[21],1)
			elseif string.sub(arg,i,i) == taebl[9] then
				xfrret = xfrret .. string.rep(taebl[22],1)
			elseif string.sub(arg,i,i) == taebl[10] then
				xfrret = xfrret .. string.rep(taebl[23],1)
			elseif string.sub(arg,i,i) == taebl[11] then
				xfrret = xfrret .. string.rep(taebl[24],1)
			elseif string.sub(arg,i,i) == taebl[12] then
				xfrret = xfrret .. string.rep(taebl[25],1)
			elseif string.sub(arg,i,i) == taebl[13] then
				xfrret = xfrret .. string.rep(taebl[26],1)
			elseif string.sub(arg,i,i) == taebl[14] then
				xfrret = xfrret .. string.rep(taebl[1],1)
			elseif string.sub(arg,i,i) == taebl[15] then
				xfrret = xfrret .. string.rep(taebl[2],1)
			elseif string.sub(arg,i,i) == taebl[16] then
				xfrret = xfrret .. string.rep(taebl[3],1)
			elseif string.sub(arg,i,i) == taebl[17] then
				xfrret = xfrret .. string.rep(taebl[4],1)
			elseif string.sub(arg,i,i) == taebl[18] then
				xfrret = xfrret .. string.rep(taebl[5],1)
			elseif string.sub(arg,i,i) == taebl[19] then
				xfrret = xfrret .. string.rep(taebl[6],1)
			elseif string.sub(arg,i,i) == taebl[20] then
				xfrret = xfrret .. string.rep(taebl[7],1)
			elseif string.sub(arg,i,i) == taebl[21] then
				xfrret = xfrret .. string.rep(taebl[8],1)
			elseif string.sub(arg,i,i) == taebl[22] then
				xfrret = xfrret .. string.rep(taebl[9],1)
			elseif string.sub(arg,i,i) == taebl[23] then
				xfrret = xfrret .. string.rep(taebl[10],1)
			elseif string.sub(arg,i,i) == taebl[24] then
				xfrret = xfrret .. string.rep(taebl[11],1)
			elseif string.sub(arg,i,i) == taebl[25] then
				xfrret = xfrret .. string.rep(taebl[12],1)
			elseif string.sub(arg,i,i) == taebl[26] then
				xfrret = xfrret .. string.rep(taebl[13],1)
			elseif string.sub(arg,i,i) == string.upper(taebl[1],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[14],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[2],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[15],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[3],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[16],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[4],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[17],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[5],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[18],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[6],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[19],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[7],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[20],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[8],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[21],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[9],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[22],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[10],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[23],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[11],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[24],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[12],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[25],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[13],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[26],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[14],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[1],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[15],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[2],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[16],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[3],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[17],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[4],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[18],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[5],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[19],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[6],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[20],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[7],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[21],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[8],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[22],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[9],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[23],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[10],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[24],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[11],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[25],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[12],1))
			elseif string.sub(arg,i,i) == string.upper(taebl[26],1) then
				xfrret = xfrret .. string.upper(string.rep(taebl[13],1))
			elseif string.sub(arg,i,i) ~= "%a" then
				xfrret = xfrret .. string.rep(string.sub(arg,i,i),1)
			else
				print "error."
			end
	end
	return xfrret
	end
taebl[44] = "hDR HE6TG6OWYO 7fRR O7cEQk40tRKv7 2sC3goNMb0 gQjTRzuqj k."
return taebl




















