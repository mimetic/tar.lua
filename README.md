tar.lua
=======

A native Lua module that can unpack an uncompressed TAR file, based on the LuaRocks Tar.

I have adapted the version written by Danny at CoronaLabs, for Corona SDK.
- It will unpack subdirectories of TAR
- It can handle space-packed numbers in the header, which was the problem when you used the OS X tar command to create files.

To Use:

OS X:
Open a terminal window and create a tar file without compression:
   tar -cvf mytarfile.tar myfolder


Sample Lua Code for Corona SDK:

local tarfilepath = "my/tarfiles/mytarfile.tar"
local sourcePath = system.DocumentsDirectory
local targetDirectory = "mydir/ishere"
local targetPath = system.pathForFile(targetDirectory, system.DocumentsDirectory )
-- or, simply use either system.CachesDirectory or system.DocumentsDirectory for targetPath:
-- local targetPath = system.CachesDirectory

-- function to run when tar has completed
-- This example deletes the tar file, now that it has been expanded.
local function onComplete()
    os.remove(system.pathForFile(tarfilepath, sourcePath) )
    print ("Tar file deleted after expansion!")
end

local tar.untar(tarfilepath, sourcePath, targetPath, onComplete)




### ENDIT
