class Game < ApplicationRecord
    validates :name, presence: true
    validates :genre, presence: true, inclusion: {in: ["Simulator", "Adventure", "Strategy", "Role-playing (RPG)", "Shooter", "Fighting", "Sport"],
        message: "%{value} is not a valid genre" }
    validates :price, presence: true
    validates :release_date, presence: true
    validates :company_id, presence: true
end