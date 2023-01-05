class Estimate < ApplicationRecord
  attr_accessor :user_name
  attr_accessor :user_password
  belongs_to :user, optional: true

  validates :name, presence: true
  validates :kana, {presence: true}  #ふりがな
  validates :tel, {presence: true} #電話番号
  validates :email, {presence: true}
  validates :address, {presence: true} #住所
  validates :estimate, presence: true
  validates :select, {presence: true}  #ふりがな
  validates :period, {presence: true} #電話番号
  validates :price, {presence: true}
end
