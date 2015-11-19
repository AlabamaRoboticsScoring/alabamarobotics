class Challenge < ActiveRecord::Base
  has_many :courses, dependent: :destroy

  def to_s
    return self.name
  end
end
