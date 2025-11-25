-- Make a copy of the input files to be used for linking the main headers as the filename,
--   so that links to "other pages" will work.
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
	 -- If this is a top level header, it's the start of a new file,
	 --   assuming the files are written in a way that markdownlint approves of.
	 if elem.level == 1 then
			-- We are assuming that the files are processed in the same order as they are in input_files
			-- This is not explicit in Pandoc's docs, but it seems like a safe assumption.
			-- Use the first file in the list (before the first period, i.e. without extension),
			--   then remove it from the list.
			filename = string.match(files[1], "[^.]+")
			table.remove(files, 1)
			-- Page break, the header, then make the header linkable using the filename.
			return {
				 pandoc.RawBlock("latex", "\\newpage"),
				 pandoc.Header(elem.level, elem.content),
				 pandoc.RawBlock("latex", "\\label{" .. filename .. "}")
			}		
	 end
	 return pandoc.Header(elem.level, elem.content, elem.attr)
end

function Link(elem)
	 -- Web links: http*
	 if string.match(pandoc.utils.stringify(elem.target), "^http") then
			return pandoc.RawInline("latex", "\\href{" .. elem.target .. "}{" ..
															escape_latex(pandoc.utils.stringify(elem.content)) ..
															" (" .. escape_latex(elem.target) .. ")" .. "}")
	 end

	 -- Links with tag: File#tag
	 file,tag = string.match(elem.target, "([^#]+)#(.*)")
	 for x,i in ipairs(PANDOC_STATE.input_files) do
			-- File matches target (with extension) exactly
			if elem.target .. ".md" == i then
				 return pandoc.RawInline("latex", escape_latex(pandoc.utils.stringify(elem.content)) ..
																 " (See \\nameref{" .. pandoc.utils.stringify(elem.target) ..
																 "} on page \\pageref{" .. pandoc.utils.stringify(elem.target) .. "})")
		 -- Found a tag, check if file matches
		 -- Don't ensure the tag matches
			elseif tag and file .. ".md" == i then
				 return pandoc.RawInline("latex", escape_latex(pandoc.utils.stringify(elem.content)) ..
																 " (See \\nameref{" .. tag .. "} on page \\pageref{" .. tag .. "})")
			end
	 end

	 -- Assume any other links are to the wiki, but not included in the manual
	 -- This would break for non-http(s) web links, e.g. mailto:, ftp:
	 return pandoc.RawInline("latex", "\\href{https://wiki.rusefi.com/" .. elem.target .. "}{" ..
													 escape_latex(pandoc.utils.stringify(elem.content)) ..
													 " (https://wiki.rusefi.com\\slash{}" .. escape_latex(elem.target) .. ")" .. "}")
end

function Image(elem)
	 elem.attributes.width = 300;
	 return elem
end
