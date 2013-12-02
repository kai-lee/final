class Game < ActiveRecord::Base
mount_uploader :picture, PictureUploader
has_many :reviews, :dependent => :destroy
belongs_to :user
end
