--Sample usage for tar module
--By Danny @ anscamobile

-- Sample code is MIT licensed -- Copyright (C) 2011 InfusedDreams. All Rights Reserved.

--Require the tar library
local tar = require("tar")

--[[
Syntax :

TarFile = .tar file to extract
tarFileDirectory = the directory the tar file resides in
extractionDirectory = the directory to extract the tar to
functionToExecuteOnComplete = the function you want to execute on successful tar extraction (Optional)

tar.untar(tarFile, tarFile Directory, extractionDirectory, functionToExecuteOnComplete)
--]]

local fileToUntar = "test.tar"

local txt = display.newText("", 150, 100, nil, 48)
txt.x = display.contentWidth * 0.5
txt.y = display.contentHeight * 0.5

--Execute function on extraction completion (optional)
local function onExtractComplete()
	txt.text = fileToUntar .. " extracted in :" .. system.getTimer() .. " ms"
end

--Extract the file
tar.untar(fileToUntar, system.ResourceDirectory, system.DocumentsDirectory, onExtractComplete)
