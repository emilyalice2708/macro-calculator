require_relative 'person'

class Calculator 
    attr_reader :tdee

    def initialize(person)
        @gender = person.gender
        @age = person.age
        @height = person.height
        @weight = person.weight
    end

    def tdee
        if @gender == 'female'
            bmr = 655.1 + (0.563 * @weight) + (1.85 * @height) - (4.676 * @age)
        else
            bmr = 66.47 + (13.75 * @weight) + (5.003 * @height) - (6.755 * @age)
        end
        @tdee = (bmr * 1.375).round
    end

    def carbs
        @carbs = (@tdee.to_f * (55.0 / 100.0) / 4).round
    end

    def protein
        @protein = (@tdee.to_f * (20.0 / 100.0) / 4).round
    end

    def fat
        @fat = (@tdee.to_f * (25.0 / 100.0) / 9).round
    end
end