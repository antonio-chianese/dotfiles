local ls = require('luasnip')
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta
local rep = require('luasnip.extras').rep
local line_begin = require('luasnip.extras.expand_conditions').line_begin

local get_visual = function(args, parent)
	if #parent.snippet.env.LS_SELECT_RAW > 0 then
		return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
	else -- If LS_SELECT_RAW is empty, return a blank insert node
		return sn(nil, i(1))
	end
end

local tex_utils = {}

tex_utils.in_mathzone = function()
	return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

tex_utils.in_text = function()
	return not tex_utils.in_mathzone()
end

tex_utils.in_comment = function()
	return vim.fn['vimtex#syntax#in_comment']() == 1
end

tex_utils.in_env = function(name)
	local is_inside = vim.fn['vimtex#env#is_inside'](name)
	return (is_inside[1] > 0 and is_inside[2] > 0)
end

tex_utils.in_equation = function()
	return tex_utils.in_env('equation')
end

tex_utils.in_itemize = function()
	return tex_utils.in_env('itemize') or tex_utils.in_env('enumerate')
end

tex_utils.in_tikz = function()
	return tex_utils.in_env('tikzpicture')
end

return {

	s({
		trig = ';a',
		snippetType = 'autosnippet',
	}, {
		t('\\alpha'),
	}),

	s(
		{
			trig = 'eq',
			dscr = 'Equation environment',
			wordTrig = true,
		},
		fmta(
			[[
			\begin{equation}
				<>
			\end{equation}
			]],
			{ i(1) }
		)
	),

	s(
		{
			trig = 'item',
			dscr = 'Itemize environment',
			snippetType = 'autosnippet',
			wordTrig = true,
			condition = line_begin,
		},
		fmta(
			[[
			\begin{itemize}
				<>
			\end{itemize}
			]],
			{ i(1) }
		)
	),

	s(
		{
			trig = 'enum',
			dscr = 'Enumerate environment',
			snippetType = 'autosnippet',
			wordTrig = true,
			condition = line_begin,
		},
		fmta(
			[[
			\begin{enumerate}
				<>
			\end{enumerate}
			]],
			{ i(1) }
		)
	),

	s({
		trig = 'tii',
		dscr = 'Expands highlighted text within textit{} command',
		snippetType = 'autosnippet',
	}, fmta('\\textit{<>}', { d(1, get_visual) })),

	s({
		trig = 'col',
		dscr = 'Expands highlighted text within colit{} command',
		snippetType = 'autosnippet',
	}, fmta('\\colit{<>}', { d(1, get_visual) })),

	s({
		trig = "E'",
		dscr = 'Accented E',
	}, {
		t('\\`E'),
	}),

	s({
		trig = "e''",
		dscr = 'Accented e',
	}, {
		t("\\'e"),
	}),

	s({
		trig = "a'",
		dscr = 'Accented a',
	}, {
		t('\\`a'),
	}),

	s({
		trig = "e'",
		dscr = 'Accented e',
	}, {
		t('\\`e'),
	}),

	s({
		trig = "o''",
		dscr = 'Accented o',
	}, {
		t("\\'o"),
	}),

	s({
		trig = "o'",
		dscr = 'Accented o',
	}, {
		t('\\`o'),
	}),

	s({
		trig = "i''",
		dscr = 'Accented i',
	}, {
		t("\\'i"),
	}),

	s({
		trig = "i'",
		dscr = 'Accented i',
	}, {
		t('\\`i'),
	}),

	s({
		trig = "u''",
		dscr = 'Accented u',
	}, {
		t("\\'u"),
	}),

	s({
		trig = "u'",
		dscr = 'Accented u',
	}, {
		t('\\`u'),
	}),

	s(
		{
			trig = 'ff',
			dscr = 'Expands ff into \frac{}{}',
			condition = tex_utils.in_mathzone,
		},
		fmta('\\frac{<>}{<>}', {
			i(1),
			i(2),
		})
	),

	s({
		trig = 'i',
		dscr = 'Expands i into \\item',
		condition = tex_utils.in_itemize,
	}, {
		t({ '\\item ' }),
	}),
}
