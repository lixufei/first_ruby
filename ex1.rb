puts "Hello Ruby!"
p 'I will make it!'
p 'what\'s this:', 3-2 < 1+3
my_eyes='Blue'
my_hair='Brown'
my_height=160
my_weight=48.8
p 'He\'s got %s eyes and %s hair'%[my_eyes,my_hair]
p 'He\'s got %d eyes and %4.2f hair.'%[my_height,my_weight]
x="there are #{10} types of cups"
p 'He\'s got #{my_eyes} eyes and #{my_hair} hair'
p x
p "."*10
puts <<PARAGRAPH
There's something going on here.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
PARAGRAPH
print "How old are you? "
age = gets.chomp()
print "How tall are you? "
height = gets()      #gets()和gets.chomp() 的区别，换行
print "How much do you weigh? "
weight = gets.chomp()
puts "So, you're #{age} old, #{height} tall and #{weight} heavy."
