# == Schema Information
#
# Table name: dev_projects
#
#  id          :bigint           not null, primary key
#  excerpt     :text
#  link        :string
#  slug        :string
#  subtitle    :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  dev_home_id :bigint
#
# Indexes
#
#  index_dev_projects_on_dev_home_id  (dev_home_id)
#
# Foreign Keys
#
#  fk_rails_...  (dev_home_id => dev_home.id)
#
class DevProject < ApplicationRecord
  belongs_to :dev_home
  has_rich_text :content
  has_many :technologies
  has_many_attached :gallery
  has_one_attached :thumbnail
end
