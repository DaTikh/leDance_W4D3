class Stroll < ApplicationRecord
  belongs_to :dogs, optional: true
  belongs_to :dogsitters, optional: true
end
