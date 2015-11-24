class Course < ActiveRecord::Base
  # attributes:
  # - pin:string
  # - name:string
  belongs_to :challenge
  has_many :attempts, dependent: :destroy

  validates :pin, presence: true

  def to_s
    self.name
  end
end
