require 'pry'
class Owner

  @@all = []

  attr_accessor :cats, :dogs
  attr_reader :name
    def initialize (name)
      @name = name
      @species = "human"
      @@all << self

    end
  # def self
  #   raise NoMethodError if nothing was raised
  # end
    def species
      @species = "human"
    end

    def say_species
      @say_species = "I am a human."
    end
   def self.all
     @@all
   end

   def self.count
     self.all.count
   end

   def self.reset_all
     self.all.clear
     end

     def cats
       Cat.all.select {|owner|
         owner.self}
       end


  end

end
