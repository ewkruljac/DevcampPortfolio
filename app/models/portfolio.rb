class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Two ways to set scopes
  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  # Set default values in the model (automatically is happens new method is called).
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    # if self.main_image == nil
    #  self.main_image = "http://placehold.it/600x400"
    # so in the example: a == nil and b == 20.....
    # a ||= b......
    # if a is nil, then a is set to the value of b, so....
    # if a.nil?
    #   a = b
    # else
    #   a
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
