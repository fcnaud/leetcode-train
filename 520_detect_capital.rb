def detect_capital_use(word)
  if /^[a-z]*$/=~word or /^[A-Z][a-z]*$/=~word or /^[A-Z]*$/=~word
    return true
  else
    return false
  end
end