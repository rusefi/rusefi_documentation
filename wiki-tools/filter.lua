files = PANDOC_STATE.input_files

local function escape_latex(str)
  local replacements = {
    ["\\"] = "\\textbackslash{}",
    ["&"]  = "\\&",
    ["%"]  = "\\%",
    ["$"]  = "\\$",
    ["#"]  = "\\#",
    ["_"]  = "\\_",
    ["{"]  = "\\{",
    ["}"]  = "\\}",
    ["~"]  = "\\textasciitilde{}",
    ["^"]  = "\\textasciicircum{}",
		["/"] = "\\slash{}"
  }
  return (str:gsub(".", replacements))
end


function Header(elem)
	 if elem.level == 1 then
			filename = string.match(files[1], "[^.]+")
			table.remove(files, 1)
			return {
				 pandoc.RawBlock("latex", "\\newpage"),
				 pandoc.Header(elem.level, elem.content),
				 pandoc.RawBlock("latex", "\\label{" .. filename .. "}")
			}		
	 end
	 return pandoc.Header(elem.level, elem.content, elem.attr)
end

function Link(elem)
	 if string.match(pandoc.utils.stringify(elem.target), "^http") then
			return pandoc.RawInline("latex", "\\href{" .. elem.target .. "}{" ..
															escape_latex(pandoc.utils.stringify(elem.content)) ..
															" (" .. escape_latex(elem.target) .. ")" .. "}")
	 end
	 
	 file,tag = string.match(elem.target, "([^#]+)#(.*)")
	 for x,i in ipairs(PANDOC_STATE.input_files) do
			if elem.target .. ".md" == i then
				 return pandoc.RawInline("latex", escape_latex(pandoc.utils.stringify(elem.content)) ..
																 " (See \\nameref{" .. pandoc.utils.stringify(elem.target) ..
																 "} on page \\pageref{" .. pandoc.utils.stringify(elem.target) .. "})")
			elseif tag and file .. ".md" == i then
				 return pandoc.RawInline("latex", escape_latex(pandoc.utils.stringify(elem.content)) ..
																 " (See \\nameref{" .. tag .. "} on page \\pageref{" .. tag .. "})")
			end
	 end

	 return pandoc.RawInline("latex", "\\href{https://wiki.rusefi.com/" .. elem.target .. "}{" ..
													 escape_latex(pandoc.utils.stringify(elem.content)) ..
													 " (https://wiki.rusefi.com\\slash{}" .. escape_latex(elem.target) .. ")" .. "}")
end

function Image(elem)
	 elem.attributes.width = 300;
	 return elem
end
