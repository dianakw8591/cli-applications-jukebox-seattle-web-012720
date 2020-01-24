songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(array)
  puts "Please enter a song name or number:"
  response = gets.strip
  song_with_nums = array.each_with_index.map {|song, i| [(i+1).to_s, song]}.flatten
  choice = song_with_nums.find {|item| item == response}
  if choice.nil?
    puts "Invalid input, please try again."
    play(array)
  elsif choice.to_i == 0 #selection was made by songname
    puts "Playing #{choice}"
  else
    index = choice.to_i - 1
    song = array[index]
    puts "Playing #{song}"
    

end

def list(array)
  array.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
end

def exit_jukebox
  
end

def run
  
end