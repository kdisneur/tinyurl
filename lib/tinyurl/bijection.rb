module Tinyurl
  module Bijection
    ALPHABET = "abcdefghijklmnopqrstuvwxyz0123456789".split(//)
    def self.encode(number)
      return ALPHABET[0] if number == 0

      encoded_result = ''

      base = ALPHABET.length
      while number > 0
        encoded_result << ALPHABET[number.modulo(base)]
        number /= base
      end

      encoded_result.reverse
    end

    def self.decode(encoded_string)
      number = 0
      base   = ALPHABET.length

      encoded_string.each_char { |character| number = number * base + ALPHABET.index(character) }

      number
    end
  end
end
