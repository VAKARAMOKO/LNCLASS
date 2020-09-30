class Promo < ApplicationRecord
  belongs_to :user

 #slug
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
      title_changed?
  end
end
