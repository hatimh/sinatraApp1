require 'uri'
class Message <  ActiveRecord::Base
  validates :content, presence: true
  validates :author, presence: true
  validate :check_url, if: :url

  def check_url
    unless url.match(URI::regexp)
      errors.add(:url, "Invalid url")
    end  
  end
end