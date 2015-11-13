class Board < ActiveRecord::Base
    has_many :pins
    belongs_to :users
end
