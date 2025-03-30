# == Schema Information
#
# Table name: dev_homes
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class DevHome < ApplicationRecord
  has_rich_text :description
  has_many :techs
  has_many :clients
  has_many :dev_projects
end
