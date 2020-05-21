class Critic < ApplicationRecord
  belongs_to :game
  validates :username, presence: true, length: { in: 2..12 }, format: { with: /[a-zA-Z\d]+/,
    message: "only allows letters and numbers" }
  validates :body, presence: true,exclusion: {in: [nil],message:"Please write something!"}
  validates :title, presence: true, exclusion: {in: [nil],message:"Please write something!"}
end
