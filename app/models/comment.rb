class Comment < ApplicationRecord
  belongs_to :homework
  broadcasts_to :homework
end
