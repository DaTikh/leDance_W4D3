class Video < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :category, optional: true
end