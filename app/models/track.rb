class Track < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :upvotes

  validates :title, presence: true
  validates :url, presence: true if: :upload?
    def upload?
      if audio_file.empty?
    end
  end
end
