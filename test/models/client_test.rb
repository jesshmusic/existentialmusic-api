# == Schema Information
#
# Table name: clients
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  website     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  dev_home_id :bigint           not null
#
# Indexes
#
#  index_clients_on_dev_home_id  (dev_home_id)
#
# Foreign Keys
#
#  fk_rails_...  (dev_home_id => dev_home.id)
#
require "test_helper"

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
