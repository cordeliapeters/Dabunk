class College < ActiveRecord::Base
  has_many :bookmarks
  has_many :undergrads
  has_many :photos
end
