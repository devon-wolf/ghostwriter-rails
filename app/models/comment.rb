class Comment < ApplicationRecord
  include Visible
  belongs_to :document
end
