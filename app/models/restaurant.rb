class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, case_sensitive: false, presence: true, inclusion: { in: ["chinese","italian","french", "japanese", "belgian"], allow_nil: false }
end
