class Link < ApplicationRecord
  belongs_to :topic, foreign_key: "topic_id"
  has_many :comments

  validates :url,
            presence: true,
            uniqueness: { case_sensitive: false }
end