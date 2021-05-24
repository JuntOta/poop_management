require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  
  describe "ユーザー新規登録" do
    context "新規登録できるとき" do
      it "全てが揃っている場合は登録できること" do
        expect(@user).to be_valid
      end

      it "パスワードは、6文字が入力されていれば、登録が可能なこと" do
        @user.password = 'aaa111'
        @user.password_confirmation = 'aaa111'
        expect(@user).to be_valid
      end

      it "パスワードは、半角英数字が混合されていれば、登録が可能なこと" do
       @user.password = 'aaa111'
       @user.password_confirmation = 'aaa111'
       expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
      it "ニックネームが必須であること" do
         @user.nickname = ''
         @user.valid?
         expect(@user.errors.full_messages).to include "ニックネームを入力してください"
       end

       it "動物の種類が必須であること" do
        @user.animal = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "動物の種類を入力してください"
      end
 
       it "メールアドレスが必須であること" do
         @user.email = ''
         @user.valid?
        expect(@user.errors.full_messages).to include "Eメールを入力してください"
       end
 
      it "メールアドレスは、@を含む必要があること" do
         @user.email = 'a'
         @user.valid?
         expect(@user.errors.full_messages).to include "Eメールは不正な値です"
      end
 
      it "重複したメールアドレスは登録できないこと" do
         @user.save
         another_user = FactoryBot.build(:user)
         another_user.email = @user.email
         another_user.valid?
         expect(another_user.errors.full_messages).to include "Eメールはすでに存在します"
      end
     
       it "パスワードが必須であること" do
         @user.password = ''
         @user.valid?
        expect(@user.errors.full_messages).to include "パスワードを入力してください"
      end
 
       it "パスワードは、6文字以上での入力が必須であること" do
         @user.password = 'aa11'
        @user.valid?
        expect(@user.errors.full_messages).to include "パスワードは6文字以上で入力してください"
      end
 
       it "パスワードは、英語のみでは登録できないこと" do
        @user.password = 'aaaaaa'
         @user.valid?
        expect(@user.errors.full_messages).to include "パスワードは不正な値です"
      end
 
      it "パスワードは、数字のみでは登録できないこと" do
       @user.password = '111111'
        @user.valid?
       expect(@user.errors.full_messages).to include "パスワードは不正な値です"
     end
 
     it "パスワードは、全角では登録できないこと" do
       @user.password = 'ａａａ１１１'
        @user.valid?
       expect(@user.errors.full_messages).to include "パスワードは不正な値です"
     end
 
      it "パスワードは、確認用を含めて2回入力すること" do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "パスワード（確認用）とパスワードの入力が一致しません"
      end
 
      it "パスワードとパスワード（確認用）は、値の一致が必須であること" do
        @user.password_confirmation = 'aa11'
        @user.valid?
        expect(@user.errors.full_messages).to include "パスワード（確認用）とパスワードの入力が一致しません"
      end

      it "生年月日が必須であること" do
        @user.birthday = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "生年月日を入力してください"
      end
    end
  end
end
