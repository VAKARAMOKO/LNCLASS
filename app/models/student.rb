class Student < ApplicationRecord
  belongs_to :classroom

  #slug
  extend FriendlyId
    friendly_id :username, use: :slugged

  def should_generate_new_friendly_id?
      username_changed?
  end
end
