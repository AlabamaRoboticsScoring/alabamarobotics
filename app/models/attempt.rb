class Attempt < ActiveRecord::Base
  belongs_to :team
  belongs_to :course

  validates :points, inclusion: 0..100
  validates :judge_name, presence: true

end
