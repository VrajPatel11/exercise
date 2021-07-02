=begin p("Hello World")
#puts ("Hey")
puts ("Subtraciton is#{11%3}" )

a = "%{first} %{sec}"

puts a % {first: 1 , sec: 2}
puts a % {first: "one", sec: "sec"}
puts a % {first: a, sec: a}



puts "there is more #{"snow"}"
puts "."*10


fat_cat = '''
Ill do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
'''

puts fat_cat 
=end

 
=begin puts "How old are you"
age = $stdin.gets.chomp
puts "I am #{age} years old"

puts "How old are you"
age1 = $stdin.gets.chomp.to_f
puts "I am #{age1} years old" 

=end

 #first, second = ARGV
 #puts "Your first var is : #{first}" 
 #puts "Your sec var is : #{second}"
=begin 
 first, second = ARGV
 ds= ARGV
us = ARGV

 prompt = '>'
puts prompt 

puts us 
puts ds

puts "Hi #{us}"
puts "How are you" 
puts prompt
likes = $stdin.gets.chomp
puts likes 
=end


=begin fn = ARGV.first
txt = open(fn,'w')

puts "Here is file #{fn}"
txt.truncate(0)


print "line 1: "
line1 = $stdin.gets.chomp
txt.write(line1)
txt.close 
=end

=begin ff= ARGV
puts "Copying from #{ff}"
fin = open(ff,"w+")
din = fin.read
puts "the file is #{din.length} long"

#puts "Does #{File.exist?(ff)} exists"
=end
=begin 
def abc(*arg)
    a1, a2 = arg
    puts "#{a1} , #{a2}"
end

def abc(arg1, arg2, arg3)
    puts "#{arg1} , #{arg2} , #{arg3}"
end

abc("Vraj","Patel")
abc("Vraj","A","Patel")
=end
=begin 
a =7
 b=9
if(a>b)
    puts "A"
    puts "AAA"
elsif a<b 
    puts "b"
else
    puts "same"
end 
=end


=begin a = [1,2,3,4,5]
b= ["blue","black"]

puts a
puts b

a.each do |a|
    puts "This is count #{a}"
end

b.each do |b|
    puts "This is count #{b}"
end

el = []
(0..10).each do |i|
    puts "Adding #{i} to list"
    el << i
end

a.each {|i| puts " i got #{i}"}
for num in b
    puts "#{num}"
end 

=end


=begin i = 1
n =[]
while i <= 4
    puts "#{i}"
    n.push(i)
    i += 1
end
n.each {|j| puts j} 
=end

=begin def gold_room
    puts "This room is full of gold.  How much do you take?"
  
    print "> "
    choice = $stdin.gets.chomp
  
    # this line has a bug, so fix it
    if choice.include?("0") || choice.include?("1")
      how_much = choice.to_i
    else
      dead("Man, learn to type a number.")
    end
  
    if how_much < 50
      puts "Nice, you're not greedy, you win!"
      exit(0)
    else
      dead("You greedy bastard!")
    end
  end
  
  
  def bear_room
    puts "There is a bear here."
    puts "The bear has a bunch of honey."
    puts "The fat bear is in front of another door."
    puts "How are you going to move the bear?"
    bear_moved = false
  
    while true
      print "> "
      choice = $stdin.gets.chomp
  
      if choice == "take honey"
        dead("The bear looks at you then slaps your face off.")
      elsif choice == "taunt bear" && !bear_moved
        puts "The bear has moved from the door. You can go through it now."
        bear_moved = true
      elsif choice == "taunt bear" && bear_moved
        dead("The bear gets pissed off and chews your leg off.")
      elsif choice == "open door" && bear_moved
        gold_room
      else
        puts "I got no idea what that means."
      end
    end
  end
  
  
  def cthulhu_room
    puts "Here you see the great evil Cthulhu."
    puts "He, it, whatever stares at you and you go insane."
    puts "Do you flee for your life or eat your head?"
  
    print "> "
    choice = $stdin.gets.chomp
  
    if choice.include? "flee"
      start
    elsif choice.include? "head"
      dead("Well that was tasty!")
    else
      cthulhu_room
    end
  end
  
  
  def dead(why)
    puts why, "Good job!"
    exit(0)
  end
  
  def start
    puts "You are in a dark room."
    puts "There is a door to your right and left."
    puts "Which one do you take?"
  
    print "> "
    choice = $stdin.gets.chomp
  
    if choice == "left"
      bear_room
    elsif choice == "right"
      cthulhu_room
    else
      dead("You stumble around the room until you starve.")
    end
  end
  
  start 
=end

=begin 
class SayHello
    def self.from_the_class
     puts "Hello, from a class method"
    end
    
  
    def from_an_instance
     puts "Hello, from an instance method"
    end
end

undef from_an_instance

SayHello.from_the_class
hello = SayHello.new
hello.from_an_instance 
=end


=begin a = [1,3,4]
b= [5,6,7]
while a.length != 5
    c = b.pop
    puts "Adding #{c}"
    a.push(c)
end 
=end

=begin a = {
    'name' => 'vraj', 
    'age' => '21' 
}
puts a['name']
a['city'] = 'Amd'
puts a['city']
a.delete('city')
a.each do |n, v|
    puts "#{n} is #{v}"
end
=end
=begin 
module My
  def My.app()
    puts "Hii app"
  end
  
  Cc = "Hii cc"

end

My.app()
puts My::Cc
=end
#a = rand(0..10)
#puts a


=begin class Abc 
  def func()
    puts "Parent"
  end
end
class Bcd < Abc
end
a = Abc.new()
b=Bcd.new()
a.func()
b.func() 
=end

module Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def Other.altered()
    puts "OTHER altered()"
  end
end

class Child
  include Other

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    Other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()
