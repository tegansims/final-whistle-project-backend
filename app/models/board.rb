class Board < ApplicationRecord
    belongs_to :team

    def array_coordinates
        self.coordinates.tr('[]', '').split(",").map { |s| s.to_i }
    end
end
