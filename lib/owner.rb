class Owner
  # code goes here
  @@all = []
  
  def initialize
    
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
end