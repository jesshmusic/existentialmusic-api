# == Schema Information
#
# Table name: posts
#
#  id           :bigint           not null, primary key
#  anchor_url   :string
#  excerpt      :text
#  published_at :datetime
#  spotify_url  :string
#  subtitle     :string
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
