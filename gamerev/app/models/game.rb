class Game < ActiveRecord::Base
mount_uploader :picture, PictureUploader
has_many :reviews, :dependent => :destroy
belongs_to :user

validates :rating, :inclusion => 1..10
validates_presence_of :name
validates_uniqueness_of :name
validates_presence_of :user_id
validates_presence_of :description


def self.search(search)
find(:all, :conditions => ['name LIKE :search OR rating LIKE :search OR gtype LIKE :search',{:search => "%#{search}%"}])
end


end
