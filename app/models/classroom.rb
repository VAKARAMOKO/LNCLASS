class Classroom < ApplicationRecord
  belongs_to :promo

  #slug
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
      title_changed?
  end

end
