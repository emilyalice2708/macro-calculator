class Person
    attr_reader :name, :gender, :age, :height, :weight
    def initialize(name, gender, age, height, weight)
        @name = name
        @gender = gender
        @age = age
        @height = height
        @weight = weight
    end
end