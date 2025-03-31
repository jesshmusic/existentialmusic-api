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
class DevAbout < ApplicationRecord
  validates :singleton_guard, inclusion: { in: [true] }
  before_validation :ensure_singleton_guard

  has_rich_text :content
  has_many :technologies
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
