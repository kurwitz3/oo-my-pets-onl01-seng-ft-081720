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
  new = []
  Cat.all.each do |z|
 if  z.name == name
   z.owner == self
       
end
end
new
end  
  


end