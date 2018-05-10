class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.python
    where(subtitle: "Python")
  end

  scope :ruby_on_rails, -> {where(subtitle: 'Ruby on Rails')}
end
