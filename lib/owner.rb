class Owner

  @@owners = []

  attr_reader :species

  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {fishes:[], dogs:[], cats:[]}
  end

  def self.all
     @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish) # @pets
  end

  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |type, pets|
      pets.each { |pet| pet.mood = "nervous"}
    end
    pets.clear
  end


  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end



end
