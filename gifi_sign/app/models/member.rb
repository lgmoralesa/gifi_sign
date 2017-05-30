class Member < ApplicationRecord
  belongs_to :group, optional: true
  has_and_belongs_to_many :resumees

  attr_reader :resumees

  def resumees=(resumees)
    raise resumees.to_yaml
  end
end
