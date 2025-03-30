# == Schema Information
#
# Table name: positions
#
#  id          :bigint           not null, primary key
#  company     :string
#  description :text
#  end_date    :date
#  role        :string
#  start_date  :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Work < ApplicationRecord
end
