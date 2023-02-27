class Lease < ApplicationRecord
    belongs_to :aparment
    belongs_to :tenant
end
