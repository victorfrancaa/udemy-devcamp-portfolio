class Skill < ApplicationRecord
  include PlaceHolder

  after_initialize :set_defaults

  def set_defaults
    self.badge  ||= PlaceHolder.image_generator(height: 250, width: 250)
  end
end
