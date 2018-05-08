require '../Examples/stringReverser'

RSpec.describe StringReverser do
    it 'reverses strings' do
        string_reverser = StringReverser.new

        rev_string = string_reverser.reverse_and_save('Hello World!')

        expect(rev_string).to eq '!dlroW olleH'
    end
end
