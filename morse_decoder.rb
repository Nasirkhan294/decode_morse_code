# frozen_string_literal: true

@dictionary = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def get_char(char)
  @current_char = @dictionary[char]
  @current_char
end

def decode_word(word)
  @characters = word.split
  @current_word = ''
  @characters.each do |char|
    get_char(char)
    @current_word += get_char(char)
  end
  print "#{@current_word} "
end

def decode_message(message)
  @words = message.split('   ')
  @words.each do |word|
    decode_word(word)
  end
end


decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
