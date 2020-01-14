-- Build script for bearwear
packageversion="0.1"
packagedate="2020-01-13"

module   = "bearwear"
ctanpkg  = "bearwear"

local ok, mydata = pcall(require, "ulrikefischerdata.lua")
if not ok then
  mydata= {email="XXX",github="XXX",name="XXX"}
end

uploadconfig = {
  pkg     = ctanpkg,
  version = "v"..packageversion.." "..packagedate,
  author  = mydata.name,
  license = "lppl1.3c",
  summary = "shirts to dress tikzbears",
  ctanPath = "/macros/latex/contrib/bearwear",
  repository = mydata.github .. "bearwear",
  bugtracker = mydata.github .. "bearwear/issues",
  support    = mydata.github .. "bearwear/issues",
  uploader = mydata.name,
  email    = mydata.email,
  update   = true ,
  topic=    "amusements",
  description=[[The package offers tools to create shirts for tikzbears from the tikzlings package.]],
  announcement_file="ctan.ann"              
}




-- ctan setup
docfiles = {"tartan3.png"}
textfiles= {"ctanreadme.md"}
ctanreadme= "ctanreadme.md"

typesetexe = "lualatex"
packtdszip   = false
installfiles = {
                "**/*.sty",
               }  
               
sourcefiles  = {
                "**/*.dtx",
                "**/*.ins",
               }
                            
typesetruns = 2



-- kpse.set_program_name ("kpsewhich")
-- if not release_date then
-- dofile ( kpse.lookup ("l3build.lua"))
-- end
