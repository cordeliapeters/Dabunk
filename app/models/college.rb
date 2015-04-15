class College < ActiveRecord::Base
  include PgSearch

  has_many :bookmarks
  has_many :undergrads
  has_many :photos


  pg_search_scope :search_by_school_name,
  :against => [
    [:name, "A"],
    [:city, "B"]
    ],
    :using => {
      :tsearch => {:prefix => true},
    }


  end
