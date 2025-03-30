# == Schema Information
#
# Table name: posts
#
#  id           :bigint           not null, primary key
#  anchor_url   :string
#  excerpt      :text
#  published_at :datetime
#  spotify_url  :string
#  subtitle     :string
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Post < ApplicationRecord
  has_rich_text :content
  has_many :videos
  has_one_attached :featured_image
end
