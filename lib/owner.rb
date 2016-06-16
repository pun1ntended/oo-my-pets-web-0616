require 'pry'
class Owner

	attr_accessor :owners, :name, :pets, :mood
	attr_reader :species
	@@owners = []

	def initialize(name)
		@name = name
		@@owners << self
		@species = "human"
		@pets = {:fishes => [], :dogs => [], :cats => []}
	end

	def self.all
		@@owners
	end

	def say_species
		"I am a #{@species}."
	end

	def pets
		@pets
	end

	def self.count
		@@owners.length
	end

	def buy_fish(name)
		@pets[:fishes] << Fish.new(name)
	end

	def buy_cat(name)
		@pets[:cats] << Cat.new(name)
	end

	def buy_dog(name)
		@pets[:dogs] << Dog.new(name)
	end

	def walk_dogs
		@pets[:dogs].each do |dog|
			dog.mood = "happy"
		end
	end

	def play_with_cats
		@pets[:cats].each do |cat|
			cat.mood = "happy"
		end
	end

	def feed_fish
		@pets[:fishes].each do |fish|
			fish.mood = "happy"
		end
	end

	def sell_pets
		@pets.values.each do |pets|
			pets.each do |pet|
				pet.mood = "nervous"
			end

		end
		@pets = {:fishes =>[], :dogs => [], :cats => []}
	end


	def self.reset_all
		@@owners = []
	end

	def list_pets
		@pets = pets

		"I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
	end

end