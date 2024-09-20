local open = io.open

local function read_file(path)
    local file = open(path, "rb") -- r read mode and b binary mode
    if not file then return nil end
    local content = file:read "*a" -- *a or *all reads the whole file
    file:close()
    return content
end

local c = read_file("source.lua");
local t = "[[ \n"..c.."\n ]]"

local A_="--// Protected By CuckSec V1 \n"
local B_={"ZXhvRxJqMEhGWZRNeydPKdpWgJ","HIlCGBCNJuvWykrsOoXLRjdTwj","ufdZVjacwmPIPhhVgjaOyigGPS","QhsiiHPUMSjuDkkYuPKFTfiqwK","ffSBhlArpkrewBRFdTACqTDLKb","KcOJzShncYJMKBPNeiFNlwMzyg","vcpZEtyFVDZuGznHLkptpjewNQ","jeygqsnzVqnzYdheoULdtUIULb","fGvKTGNDtbIRkdfxiAAxYXfASO","HtLStydBISpYYRzLLEfmNTpDpr","LOMFSnRxQIiFhilcYDRwTiqhcV","VQvAzTyUPVfDFZlOBrfpfqYxuC","njeRWxsthMvvxrLeoZAzzvHkKU","NrlAtnwKTdYoMGylcHgrBENZlK","oMjULAGeZXVIpGEoNpssXZaZLW","hNirNGwHPiMkPvfcgbknpQnDtp","tUOfsOwNgqCNfePtcsdyyESTFx","gHjfGVkYkDlQGmwNqPFplrwvPS","HgUiXYqxZdPFEWwIhqFEpOBkaq","GGKsTUoeUlOxmDFraDXwRRPZLG"}
local C_="local "..B_[math.random(1,#B_)].." = (5*3-2/8+9*2/9+8*3)".." "
local D_="function OLCFytZpIhBdQkoJrXlKQovFYd("..B_[math.random(1,#B_)]..")"..C_.."end".." "
local E_="function OLCFytZpIhBdQkoJrXlKQovFYd("..B_[math.random(1,#B_)]..")"..C_.."end".." "
local F_=A_..D_..E_..C_
local G_ = t:gsub(".", function(H_) return "\\" .. H_:byte() end) or t .. "\""
file = io.open("protected.lua", "a")
file:write(A_..D_..C_..'load("'..G_..'")() '..C_..E_..C_)
print('Finished')