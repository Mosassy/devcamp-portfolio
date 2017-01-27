class Portfolio < ApplicationRecord
  has_many :technologies
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular' )
  end

  after_initialize :set_defaults
# originally had this. created a concern helper Placeholder
  # def set_defaults
  #   self.main_image ||= "http://placehold.it/600x400" 
  #   self.thumb_image ||= "http://placehold.it/350x200" 
  # end
  # new code becomes

   def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width:'400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width:'200') 
  end
end
