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