# cipher
class Solution
  def to_ascii(char, shift)
    return to_ascii_lower(char, shift) if /[a-z]/.match?(char)

    return to_ascii_upper(char, shift) if /[A-Z]/.match?(char)

    char
  end

  def to_ascii_upper(char, shift)
    tmp = char.ord - "A".ord + shift
    (tmp % 26) + "A".ord
  end

  def to_ascii_lower(char, shift)
    tmp = char.ord - "a".ord + shift
    (tmp % 26) + "a".ord
  end

  def caesar_cipher(str, shift)
    str.split("").map { |char| to_ascii(char, shift) }.map(&:chr).join("")
  end
end
# p caesar_cipher("What a string!", 5) # "Bmfy f xywnsl!"
