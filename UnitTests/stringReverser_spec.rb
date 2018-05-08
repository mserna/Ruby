require '../Examples/stringReverser'

RSpec.describe StringReverser do
    it 'reverses string only' do
        string_reverser = StringReverser.new

        rev_string = string_reverser.reverse('Hello World!')

        expect(rev_string).to eq '!dlroW olleH'
    end

    it 'saves string to the file system' do
        string_reverser = StringReverser.new
        File.stub(:write)

        string_reverser.reverse_and_save('Hello World!')
        expect(File).
            to have_received(:write).
            with('example_file', '!dlroW olleH').
            once
    end
end
