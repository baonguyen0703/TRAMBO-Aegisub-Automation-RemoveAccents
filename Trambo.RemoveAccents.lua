script_name="@TRAMBO: Remove Accents"
script_description="Remove accents of pinyin and Vietnamese characters"
script_author="TRAMBO"
script_version="1.0"

include ("Trambo.Library.lua")
--Main 
function main(sub, sel, act)
  remove_accents_v2(sub,sel)
  aegisub.set_undo_point(script_name)
  return sel
end

--send to Aegisub's automation list
aegisub.register_macro(script_name,script_description,main,macro_validation)