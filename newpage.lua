-- pagebreak-sections.lua
function Header(el)
  if el.level == 1 then
    return {
      pandoc.RawBlock('latex', '\\clearpage'),
      el
    }
  else
    return el
  end
end