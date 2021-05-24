require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe "相談投稿機能" do
    context "相談が投稿できるとき" do
      it '必須情報があれば投稿できる' do
        expect(@post).to be_valid
      end

      it '画像がなくても投稿できる' do
        @post.image = nil
        expect(@post).to be_valid
      end
    end

    context "相談が投稿できないとき" do
      it 'タイトルが必須' do
        @post.title = nil
        @post.valid?
        expect(@post.errors.full_messages).to include "タイトルを入力してください"
      end
      it '内容が必須' do
        @post.text = nil
        @post.valid?
        expect(@post.errors.full_messages).to include "内容を入力してください"
      end
    end
  end
end
