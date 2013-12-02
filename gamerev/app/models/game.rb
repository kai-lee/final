class Game < ActiveRecord::Base
mount_uploader :picture, PictureUploader
has_many :reviews, :dependent => :destroy
end
