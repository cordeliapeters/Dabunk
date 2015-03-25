class Photo < ActiveRecord::Base
  belongs_to :undergrad
  belongs_to :college
end
