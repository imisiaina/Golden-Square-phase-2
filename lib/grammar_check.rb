def grammar_check(text)
    capital_l = text.chr
    if capital_l != capital_l.upcase && text[-1, 1] != "."
        return "No capital letter and no punctuation!"
    elsif capital_l != capital_l.upcase && text[-1, 1] == "."
        return "No capital letter!"
    elsif capital_l == capital_l.upcase && text[-1, 1] != "."
        return "No punctuation!"
    else 
        return "Correct Grammar"
    end
end


