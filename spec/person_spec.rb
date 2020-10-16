require 'views/person'

describe Person do
    subject(:person) { described_class.new("name", "female", 30, 160, 50) }

    describe '#name' do
        it 'returns a name' do
            expect(person.name).to eq "name"
        end
    end

    describe '#gender' do
        it 'returns a gender' do
            expect(person.gender).to eq 'female'
        end
    end

    describe '#age' do
        it 'returns an age' do
            expect(person.age).to eq 30
        end
    end

    describe '#height' do
        it 'returns a height' do
            expect(person.height).to eq 160
        end
    end

    describe '#weight' do
        it 'returns a weight' do
            expect(person.weight).to eq 50
        end
    end
end