# == Schema Information
#
# Table name: dev_home
#
#  id              :bigint           not null, primary key
#  singleton_guard :boolean          default(TRUE), not null
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_dev_home_on_singleton_guard  (singleton_guard) UNIQUE
#
require "test_helper"

class DevHomeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
