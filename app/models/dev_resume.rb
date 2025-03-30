# == Schema Information
#
# Table name: dev_resumes
#
#  id         :bigint           not null, primary key
#  name       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class DevResume < ApplicationRecord
  has_rich_text :summary
  has_many :techs
  has_many :works
end
