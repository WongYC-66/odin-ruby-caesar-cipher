def to_ASCII(c, i)

  if c.match(/[a-z]/)
    tmp = c.ord - 'a'.ord + i
    return (tmp % 26) + 'a'.ord
  elsif c.match(/[A-Z]/)
    tmp = c.ord - 'A'.ord + i
    return (tmp % 26) + 'A'.ord
  else
    return c
  end

end



def caesar_cipher (str, i)

  cipherStr = str.split('')
    .map { |c| to_ASCII(c, i) }
    .map(&:chr)
    .join('')

end

p caesar_cipher("What a string!", 5)  # "Bmfy f xywnsl!"
