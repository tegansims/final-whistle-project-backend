class Board < ApplicationRecord
    belongs_to :team

   
    def find_index_in_array( el)
        self.coordinates.find_index{|e|e=='blue'}
    end

    def array_coordinates
        oneArray = self.coordinates.tr('[]', '').split(", ").map{|s| s === 'red' || s === 'blue' ? s : s.to_i }
        if oneArray.include?('blue') 
            indexOfBlue = oneArray.find_index{|e|e=='blue'}
            splitArray = oneArray.partition.with_index{|e, i| i < indexOfBlue}
            return splitArray
        else
            newArray = []
            newArray.push(oneArray)
            return newArray
        end

    end
end


# "[red, [72, 148, 165, 125]]" 
# Board.last.coordinates.tr('[]', '').split(", ").map{|s| s != 'red' ? s.to_i : s }
# ["red", 72, 148, 165, 125]  

# "[red, [72, 148, 165, 125], blue, [37, 48, 49, 393]]" 
# Board.last.coordinates.tr('[]', '').split(", ").map{|s| s === 'red' || s === 'blue' ? s : s.to_i }
# ["red", 72, 148, 165, 125, "blue", 37, 48, 49, 393] 

# coordinates: "{red, [72, 148, 165, 125]}, {blue, [85, 300, 499, 83}"
# Board.last.coordinates.tr('[]', '').split(",").map{|s| s == '{red' || s == ' {blue' ? s : s.to_i }
# ["{red", 72, 148, 165, 125, " {blue", 85, 300, 499, 83]


# array.partition.with_index{|e, i| i < 5}