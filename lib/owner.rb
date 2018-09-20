require 'pry'


class Owner
  # code goes here
  OWNERS = []
  attr_accessor :pets, :name
  attr_reader :species

  def self.all
    OWNERS
  end

  def initialize(species)
    @species = species
    @pets = {
      :fishes => [],
      :cats => [],
      :dogs => []
    }
    OWNERS << self
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.count
    OWNERS.length
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    self.pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    self.pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    self.pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, moods|
      moods.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
   "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


end
