-- Build script for bearwear
packageversion="0.2"
packagedate="2020-04-21"

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
docfiles = {"tartan3.jpg","baer.png","montblanc.jpg","ulrike.pdf","flag.pdf","latex-project-logo.pdf"}
textfiles= {"ctanreadme.md"}
ctanreadme= "ctanreadme.md"

function docinit_hook()
  return cp("bearwear-doc.tex",unpackdir,typesetdir)
end

packtdszip   = false

-- doc
unpackfiles      = {"bearwear.ins"}
typesetexe = "lualatex-dev"
typesetruns = 2

-- kpse.set_program_name ("kpsewhich")
-- if not release_date then
-- dofile ( kpse.lookup ("l3build.lua"))
-- end
