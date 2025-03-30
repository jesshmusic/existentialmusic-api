# == Schema Information
#
# Table name: dev_about
#
#  id         :bigint           not null, primary key
#  subtitle   :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class DevAbout < ApplicationRecord
  validates :singleton_guard, inclusion: { in: [true] }
  before_validation :ensure_singleton_guard

  has_rich_text :content
  has_many :techs
  has_many_attached :gallery
  has_one_attached :thumbnail

  def self.singleton
    first_or_create!
  end

  private

  def ensure_singleton_guard
    self.singleton_guard = true
  end
end
