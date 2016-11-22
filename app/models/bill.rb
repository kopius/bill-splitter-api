class Bill < ActiveRecord::Base
  belongs_to :user
  has_many :shares, dependent: :destroy
  accepts_nested_attributes_for :shares
end
