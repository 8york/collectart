class Work < ApplicationRecord
    belongs_to :user, :optional => false
    has_many :likes


end
