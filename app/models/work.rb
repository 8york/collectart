class Work < ApplicationRecord
    belongs_to :user, :optional => true
    # belongs_to :likes, :optional => true
end
