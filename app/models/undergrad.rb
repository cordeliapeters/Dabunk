class Undergrad < User
  has_many :photos
  belongs_to :college

end
