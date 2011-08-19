class Garota < ActiveRecord::Base
  acts_as_taggable

  self.per_page = 5
end
