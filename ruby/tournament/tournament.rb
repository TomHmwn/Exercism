require 'ostruct'
class Tournament
    @score = {}

    def self.tally(input)
    team_result = input.split(/\n/).each_with_object(Hash.new) do |row, hash|
        home, away, result = row.split(";")

        hash[home] ||= Hash.new(0)
        hash[away] ||= Hash.new(0)

        case result
        when "win"
            hash[home][:mp] += 1
            hash[home][:w] += 1
            hash[away][:mp] += 1
            hash[away][:l] += 1
        when  "loss"
            hash[home][:mp] += 1
            hash[home][:l] += 1
            hash[away][:mp] += 1
            hash[away][:w] += 1
        when "draw"
            hash[away][:mp] += 1
            hash[away][:d] += 1
            hash[home][:mp] += 1
            hash[home][:d] += 1
        end
        hash[home][:p] = hash[home][:w] * 3 + hash[home][:d]
        hash[away][:p] = hash[away][:w] * 3 + hash[away][:d]
    end
        str = "Team                           | MP |  W |  D |  L |  P\n"
        team_struct = OpenStruct.new(team_result)
        tuple_team = team_result.map {|team,values| [team,values[:p]]}
        sort_tuple = tuple_team.sort_by{|team| [-team[0], team[1]]}
        p sort_tuple
        sort_tuple.each do |team|
            str += "#{team[0]}             |  #{team_result[team[0]][:mp]} |  #{team_result[team[0]][:w]} |  #{team_result[team[0]][:d]} |  #{team_result[team[0]][:l]} |  #{team_result[team[0]][:p]}\n"
        end
        str
    end
end