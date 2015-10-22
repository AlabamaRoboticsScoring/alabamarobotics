class Course < ActiveRecord::Base
  belongs_to :challenge
  has_many :attempts, dependent: :destroy
end
