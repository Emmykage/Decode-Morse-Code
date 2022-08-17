LETTERS = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
            '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
            '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
            '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }.freeze

def convert_word(word)
  arr = []
  m_word = word.split
  m_word.each { |w| arr.push(LETTERS[w]) }
  arr = arr.join
end

def convert_string(string)
  arr = []
  words = string.split('   ')
  words.each { |word| arr.push(convert_word(word)) }
  arr = arr.join(' ')
end

puts convert_string('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
