-- pandoc -L wiki-tools/features.lua Home.md -o out.html

local function is_http(url)
	 return url:match("^https?://") ~= nil
end

local function icon_for(text)
	 if text == "✓" then
			return '<i class="fa fa-check-circle-o fa-2x" aria-hidden="true"></i>'
	 elseif text == "✗" then
			return '<i class="fa fa-times-circle-o fa-2x" aria-hidden="true"></i>'
	 end
	 return text
end

local function stringify_inlines(inlines)
	 return pandoc.utils.stringify(inlines)
end

local function render_cell(cell, row_class)
	 local content = cell.contents[1].content

	 if #content == 1 and content[1].t == "Link" then
			local link = content[1]
			local text = stringify_inlines(link.content)
			local target = link.target

			if not is_http(target) then
				 target = "https://wiki.rusefi.com/" .. target
			end

			return string.format(
				 '<td class="%s"><a href="%s">%s</a></td>',
				 row_class,
				 target,
				 text
			)
	 end

	 local text = stringify_inlines(content)
	 local icon = icon_for(text)

	 return string.format(
			'<td class="%s">%s</td>',
			row_class,
			icon
	 )
end

function Table(tbl)
	 local rows = {}
	 local row_index = 0
	 for _, body in ipairs(tbl.bodies) do
			for _, row in ipairs(body.body) do
				 row_index = row_index + 1
				 local row_class = (row_index % 2 == 1) and "oddrow" or "evenrow"

				 local cells = {}
				 for _, cell in ipairs(row.cells) do
						table.insert(cells, render_cell(cell, row_class))
				 end

				 table.insert(
						rows,
						string.format("<tr>\n  %s\n</tr>", table.concat(cells, "\n  "))
				 )
			end
	 end

	 return pandoc.RawBlock("html", table.concat(rows, "\n"))
end
