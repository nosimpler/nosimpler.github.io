-- Emit math as $$...$$, which kramdown turns into MathJax \( \) and \[ \].
function Math(el)
  if el.mathtype == "DisplayMath" then
    return pandoc.RawInline("markdown", "\n\n$$" .. el.text .. "$$\n\n")
  end
  return pandoc.RawInline("markdown", "$$" .. el.text .. "$$")
end
