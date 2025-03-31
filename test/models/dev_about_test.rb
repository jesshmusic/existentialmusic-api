# == Schema Information
#
# Table name: dev_about
#
#  id              :bigint           not null, primary key
#  singleton_guard :boolean          default(TRUE), not null
#  subtitle        :string
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_dev_about_on_singleton_guard  (singleton_guard) UNIQUE
#
require "test_helper"

class DevAboutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
