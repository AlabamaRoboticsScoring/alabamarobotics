class Team < ActiveRecord::Base
  # attributes:
  # - name:string
  # - members:string
  # - age_group:integer
  # - school:string
  has_many :attempts , dependent: :destroy
  enum age_group: [:Elementary, :Middle, :High]

  validates :name, presence: true
  validates :school, presence: true
  validates :age_group, inclusion: { in: age_groups }

  def to_s 
    self.name
  end
end
