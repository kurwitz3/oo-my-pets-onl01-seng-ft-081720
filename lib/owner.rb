require 'pry'
class Owner
  attr_accessor   :say_species
attr_reader :name, :species 
@@all = []

def initialize(name)
  @name = name
  @species = "human"
  @say_species = "I am a human."
  @@all << self 
end 

def self.all 
  @@all 
end 

def self.count 
  x = self.all.count
  x
end 

def self.reset_all
   self.all.clear
end 

def cats 
   new = []
   Cat.all.collect do |a|
     if a.owner == self 
       new << a 
      end 
     end
    new
end

def dogs 
  new = [] 
  Dog.all.collect do |a|
    if a.owner == self 
      new << a
end
end
new
end

def buy_cat(name)
  Cat.new(name,self)
end 

def buy_dog(name) 
  Dog.new(name,self)
end 
 def walk_dogs 
   dogs.each do |a|
     a.mood = "happy"
 end 
 end
 def feed_cats 
   cats.each do |a|
     a.mood = "happy"
   end
 end
 def sell_pets 
  cats.each do |a|
    a.mood = "nervous"
    
    dogs.each do |b|
      b.mood = "nervous"
    end 
  end 
  self.reset_all 
 end
   
  


end