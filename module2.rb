user=ARGV.first
prompt='>'
p "hello,#{user},#{$0}"
print prompt
likes=STDIN.gets.chomp()

p "where do u live #{user}"
print prompt
lives=STDIN.gets.chomp()

p "what sport do u like best,#{user}"
print prompt
sport=STDIN.gets.chomp()

p <<MESSAGES
SO,U LIKE #{likes},LIVE #{lives},AND LOVE #{sport} SPORT.
MESSAGES
