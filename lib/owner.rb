class Owner
  # code goes here
  @@all = []
  
  attr_accessor :name
  attr_reader :species
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      :fishes = [],
      :dogs = [],
      :cats = []
    }
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  
  def walk_dog
    
  end
  
  def say_species
    "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
end