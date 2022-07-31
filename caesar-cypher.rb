def caesar_cipher (string, number)
  string = string.split("")
  anwser = string.map do |letter|
    code = letter.ord
    if code >= 97 && code <= 122
      code += number
      if code > 122 then code -= 26 end
    elsif code >= 65 && code <= 90
      code += number
      if code > 90 then code -= 26 end
    end
    letter = code.chr
  end

  return anwser.join()
end

