# == Schema Information
#
# Table name: dev_resume
#
#  id              :bigint           not null, primary key
#  name            :string
#  singleton_guard :boolean          default(TRUE), not null
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_dev_resume_on_singleton_guard  (singleton_guard) UNIQUE
#
require "test_helper"

class DevResumeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
