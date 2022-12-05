class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power

    validates :strength, inclusion: { in: %w(Strong Weak Average), message: "%{value} is invalid! Strength can only be strong, weak or average."}
end
