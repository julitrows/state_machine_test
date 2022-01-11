class Car < ApplicationRecord
  belongs_to :user, optional: true

  state_machine :state, initial: :parked do
    event :ignite do
      transition parked: :idling
    end
  end

  def ignite(user:)
    self.update(user: user)
    super()
  end
end
