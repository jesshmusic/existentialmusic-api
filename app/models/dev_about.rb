# == Schema Information
#
# Table name: dev_abouts
#
#  id         :bigint           not null, primary key
#  subtitle   :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class DevAbout < ApplicationRecord
  has_rich_text :content
  has_many :techs
  has_many_attached :gallery
  has_one_attached :thumbnail
end
