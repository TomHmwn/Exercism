=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
    COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"].freeze

    def self.value(colors)
         p colors.take(2).map { |color| COLORS.index(color) }.join.to_i
        # if colors[0] == "brown" && colors[1] == "black"
        #     10
        # elsif colors[0] == "blue" && colors[1] == "grey"
        #     68
        # elsif colors[0] == "yellow" && colors[1] == "violet"
        #     47
        # elsif colors[0] == "white" && colors[1] == "red"
        #     92
        # elsif colors[0] == "orange" && colors[1] == "orange"
        #     33
        # elsif colors [0] == "green" && colors[1] == "brown" && colors[2] == "orange"
        #     51
        # elsif colors[0] == "black" && colors[1] == "brown"
        #     1
        # end
    end
end
