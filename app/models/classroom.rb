class Classroom < ApplicationRecord
  #RELATIONS
  belongs_to :promo
  has_many :students, dependent: :destroy


  #SLUG
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
      title_changed?
  end

end
