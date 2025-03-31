# == Schema Information
#
# Table name: positions
#
#  id            :bigint           not null, primary key
#  company       :string
#  description   :text
#  end_date      :date
#  role          :string
#  start_date    :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  dev_resume_id :bigint           not null
#
# Indexes
#
#  index_positions_on_dev_resume_id  (dev_resume_id)
#
# Foreign Keys
#
#  fk_rails_...  (dev_resume_id => dev_resume.id)
#
class Position < ApplicationRecord
  belongs_to :dev_resume
end
