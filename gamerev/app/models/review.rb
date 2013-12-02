class Review < ActiveRecord::Base
belongs_to :game

validates :comment, length: { in: 10..300 }
end
