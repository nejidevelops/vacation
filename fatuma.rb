class Decryption
  CHARACTERS = {
    "A" => ". _", "B" => "_ . . .", "C" => " _ . _ .", "D" => "_ . .", "E" => ".",
    "F" => ". . _ .", "G" => " _ _ .", "H" => ". . . .", "I" => " . .",
    "J" => " . _ _ _", "K" => "_ . _", "L" => ". _ . .", "M" => "_ _", "N" => " _ .",
    "P" => ". _ _ .", "Q" => "_ _ . _", "R" => ". _ .", "S" => ". . .",
    "T" => "_", "U" => ". . _", "V" => ". . . _", "W" => ". _ _",
    "X" => "_ . . _", "Y" => " _ . _ _", "Z" => "_ _ . ."
  }

  def self.character(jina)
    morse_chars = jina.split(' ')
    CHARACTERS.key(morse_chars.join(' '))
  end
end

jina = "_._ _ ... _ _ . _ ._. _ . . _"
moha = Decryption.character(jina)
puts moha