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
class DevHome < ApplicationRecord
  validates :singleton_guard, inclusion: { in: [true] }
  before_validation :ensure_singleton_guard

  has_rich_text :description
  has_many :technologies
  has_many :clients
  has_many :dev_projects

  def self.singleton
    first_or_create!
  end

  private

  def ensure_singleton_guard
    self.singleton_guard = true
  end
end
