class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: 'を半角英数字で入力してください' } 
        
         with_options presence: true do
          validates :nickname
         validates :birthday
        end

        with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: '全角（漢字・ひらがな・カタカナ）で入力してください' } do
          validates :last_name
          validates :first_name
        end
        
        with_options presence: true, format: { with: /\A[ァ-ヶ一]+\z/, message: '全角（カタカナ）で入力してください' } do
          validates :last_name_canat
          validates :first_name_canat
        end

    
         has_many :items
         has_many :records

end
