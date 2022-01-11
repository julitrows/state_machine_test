class Car < ApplicationRecord
  belongs_to :user, optional: true
end
