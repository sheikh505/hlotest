class Cllass < ApplicationRecord
  has_many :students
  has_one :teacher
  has_many :subjects

end
