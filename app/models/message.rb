require 'uri'
class Message <  ActiveRecord::Base
  validates :content, presence: true
  validates :author, presence: true
  validate :check_url, if: :url
  def check_url
    unless url.match(URI.regexp)
      errors.add(:url, "invalid url, make sure you have http:// or https:// in your link")
    end
  end
end