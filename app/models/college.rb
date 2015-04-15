class College < ActiveRecord::Base
  has_many :bookmarks
  has_many :undergrads
  has_many :photos

  # include PgSearch

  # pg_search_scope :search_by_school_info,
  # :against => [
  #   [:name, "A"],
  #   [:city, "B"]
  #   ],
  #   :using => {
  #     :tsearch => {:prefix => true},
  #   }


  end
