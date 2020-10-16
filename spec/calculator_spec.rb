require 'views/calculator'

describe Calculator do
    let(:person) { double :person, name: "name", gender: 'female', age: 30, height: 160, weight: 50 }
    subject(:calculator) { described_class.new(person) }
    
    describe '#tdee' do
        it 'calculates and returns tdee value' do
            expect(calculator.tdee).to eq 1154
        end
    end

    describe '#carbs' do
        it 'calculates and returns recommended carbs' do
            calculator.tdee
            expect(calculator.carbs).to eq 159
        end
    end

    describe '#protein' do
        it 'calculates and returns recommended protein' do
            calculator.tdee
            expect(calculator.protein).to eq 58
        end
    end

    describe '#fat' do
        it 'calculates and returns recommended fat' do
            calculator.tdee
            expect(calculator.fat).to eq 32
        end
    end
end