test=ARGV.first
promp='>'
p "hey,#{$0},here's the file:#{test}"
txt=File.open(test)
p txt.read()

p "let's add sth into test.txt"
print promp
add=STDIN.gets.chomp()

txt_again=File.open(add)
p File.read(txt_again)
