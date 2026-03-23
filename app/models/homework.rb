class Homework < ApplicationRecord
  belongs_to :lesson
  has_many :comments
end
