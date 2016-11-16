class Movie < ApplicationRecord
  # Direct associations

  has_many   :characters,
             :foreign_key => "movies_id",
             :dependent => :destroy

  belongs_to :director,
             :counter_cache => :filmography_count

  # Indirect associations

  # Validations

  validates :director_id, :presence => true

  validates :duration, :numericality => { :less_than_or_equal_to => 2764800, :greater_than_or_equal_to => 0 }

  validates :title, :uniqueness => { :scope => [:year] }

  validates :title, :presence => true

  validates :year, :numericality => { :less_than_or_equal_to => 2050, :greater_than_or_equal_to => 1870 }

end
