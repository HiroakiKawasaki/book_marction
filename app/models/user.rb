class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :books
  has_many :comments
  belongs_to_active_hash :sex

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :family_name
    validates :first_name
    validates :family_name_kana
    validates :first_name_kana
    validates :birthday
    validates :sex_id
  end

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[\w-]{6,100}+\z/i, message: '英字と数字の両方を含めて設定してください' }
  validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' }
  validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' }
  validates :family_name_kana, format: { with: /\A[ァ-ン]+\z/, message: 'カタカナを使用してください' }
  validates :first_name_kana, format: { with: /\A[ァ-ン]+\z/, message: 'カタカナを使用してください' }
  validates :sex_id, numericality: { greater_than: 0 }
end
