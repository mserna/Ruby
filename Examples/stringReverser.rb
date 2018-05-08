class StringReverser
    def reverse(string_to_reverse)
        return rev_str = string_to_reverse.reverse
    end
    def reverse_and_save(string_to_reverse_and_save)
        File.write('example_file', string_to_reverse_and_save.reverse)
    end
end