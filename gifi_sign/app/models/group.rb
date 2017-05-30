class Group < ApplicationRecord
  has_and_belongs_to_many :lines
  has_many :members
  belongs_to :member
  

end
