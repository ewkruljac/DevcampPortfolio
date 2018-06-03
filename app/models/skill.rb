class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults
  
  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
    # if self.main_image == nil
    #  self.main_image = "http://placehold.it/600x400"
    # so in the example: a == nil and b == 20.....
    # a ||= b......
    # if a is nil, then a is set to the value of b, so....
    # if a.nil?
    #   a = b
    # else
    #   a
  end
end
