class Car < ApplicationRecord
  belongs_to :user, optional: true

  state_machine(:state, initial: :parked) do
    event(:ignite) { transition(parked: :idling) }
    event(:park)   { transition(idling: :parked) }
  end

  def ignite(user:)
    self.update(user: user)
    super()
  end

  def park(position, parasol:)
    super()
  end
end
