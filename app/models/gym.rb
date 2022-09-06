class Gym < ApplicationRecord
    has_many :clients, dependent: :destroy
    has_many :memberships, dependent: :destroy
end
