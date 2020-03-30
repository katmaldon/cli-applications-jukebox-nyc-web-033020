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

def say_hello(name)
  "Hi #{name}!"
end
 

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end	

def list(songs)
  songs.each_with_index {|k,v| puts "#{v+1}. #{k}"}
end

def play(songs_array)
  puts "Please enter a song name or number:"
  song_name_array = songs_array.collect {|k| k.upcase}
  answer = gets.chomp

  if answer.to_i.between?(1,9)
    song_index = answer.to_i - 1
    puts "Playing #{songs_array[song_index]}"

  elsif song_name_array.include?(answer.upcase)
    puts "Playing #{answer}"

  else puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  help
  puts "Please enter a command:"
  answer = gets.chomp

  while answer.downcase != "exit" do

    case answer.downcase
      when "help"
        help
        puts "Please enter a command:"
        answer = gets.chomp
      when "list"
        list(songs_array)
        puts "Please enter a command:"
        answer = gets.chomp
      when "play"
        play(songs_array)
        puts "Please enter a command:"
        answer = gets.chomp
    end
  end
  if answer == "exit"
  exit_jukebox
end
