class Track < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :upvotes

  validates :title, presence: true
  validates :url, presence: true if: :url_upload?
  validates :audio_file, presence: true if: :audio_file_upload?

  def url_upload?
    upload_choice == url
  end

  def audio_file_upload?
    upload_choice == audio_file
  end
end
