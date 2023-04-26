class Work < ApplicationRecord
    belongs_to :user, :optional => false
    has_many :likes

    def like_count
        likes.size
    end

end
