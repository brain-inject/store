class Image < ActiveRecord::Base

  validates :url, presence: true
  validates :novelty_id, presence: true

  belongs_to :novelty
end
