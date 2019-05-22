class Topic < ApplicationRecord
  validate_presence_of :title

  has_many :blogs
end
