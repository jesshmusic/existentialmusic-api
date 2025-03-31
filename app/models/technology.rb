# == Schema Information
#
# Table name: technologies
#
#  id            :bigint           not null, primary key
#  description   :string
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  dev_about_id  :bigint
#  dev_home_id   :bigint
#  dev_resume_id :bigint
#
# Indexes
#
#  index_technologies_on_dev_about_id   (dev_about_id)
#  index_technologies_on_dev_home_id    (dev_home_id)
#  index_technologies_on_dev_resume_id  (dev_resume_id)
#
# Foreign Keys
#
#  fk_rails_...  (dev_about_id => dev_about.id)
#  fk_rails_...  (dev_home_id => dev_home.id)
#  fk_rails_...  (dev_resume_id => dev_resume.id)
#
class Technology < ApplicationRecord
  belongs_to :dev_home, optional: true
  belongs_to :dev_about, optional: true
  belongs_to :dev_resume, optional: true
end
