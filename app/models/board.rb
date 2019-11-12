class Board < ApplicationRecord
    belongs_to :team

    def manipulate_coords
        
    end

    def array_coordinates
        self.coordinates.tr('[]', '').split(",").map { |s| s.to_i }
    end
end
