class TemplateMaker
    def add_template template_text
        @template = template_text
    end

    def get_words
        # look at the template_text
        # go over each letter and look for the left staple
        # then find the right staple
        # grab everything in between
        # grabbing = add everything in between to a string array that we'll return at the end

        left_staple = []
        right_staple = []
        words = []
        found_both = false

        @template.each_char.with_index do |character, index|
            # this should end up with knowing where left staple and right staple are
            if character == "["
                left_staple = index
            end
            if character == "]"
                right_staple = index
                found_both = true
            end
            if found_both
                words << @template.slice((left_staple+1)...right_staple)
                found_both = false
            end
        end
        # (0...left_staple.length).each do |i|
        #     words << @template.slice((left_staple[i]+1)...right_staple[i])
        #     # words << @template[(left_staple[i]+1)...right_staple]
        # end

        return words
    end
end
