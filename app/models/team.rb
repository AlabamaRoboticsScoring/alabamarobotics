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

  def score
    # in: list of attempts, out: hash of challenges => [attempts]
    challenges = attempts.group_by {|a| a.course.challenge}
    # in: challenges => [attempts], out: challenges => attempt
    maxes = challenges.map{ |challenge, attempts|
      attempts.sort_by{ |a| [-a.points, a.completion_time] }.first
    }
    {total: maxes.reduce(0){ |t,a| t + a.points }, maxes: maxes}
  end

  def to_s 
    self.name
  end
end
