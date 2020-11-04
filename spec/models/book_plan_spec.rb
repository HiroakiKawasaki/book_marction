require 'rails_helper'

RSpec.describe BookPlan, type: :model do
  describe '読み終わった本の投稿' do
    before do
      @book_plan = FactoryBot.build(:book_plan)
    end

    context '読み終えた本とアクションプランの投稿がうまくいくとき' do
      it '全ての値を正しく入力すれば投稿できる' do
        expect(@book_plan).to be_valid
      end
      it 'timeが空欄でも投稿できる' do
        @book_plan.time = ""
        expect(@book_plan).to be_valid
      end
      it 'placeが空欄でも投稿できる' do
        @book_plan.place = ""
        expect(@book_plan).to be_valid
      end
      it 'partnerが空欄でも投稿できる' do
        @book_plan.partner = ""
        expect(@book_plan).to be_valid
      end
      it 'achivement_idが空欄でも投稿できる' do
        @book_plan.achievement_id = ""
        expect(@book_plan).to be_valid
      end
    end

    context '読み終えた本とアクションプランの投稿がうまくいかないとき' do
      it 'titleが空だと投稿できない' do
        @book_plan.title = ''
        @book_plan.valid?
        expect(@book_plan.errors.full_messages).to include("Title can't be blank")
      end
      it 'explanationが空だと投稿できない' do
        @book_plan.explanation = ''
        @book_plan.valid?
        expect(@book_plan.errors.full_messages).to include("Explanation can't be blank")
      end
      it 'reasonが空だと投稿できない' do
        @book_plan.reason = ''
        @book_plan.valid?
        expect(@book_plan.errors.full_messages).to include("Reason can't be blank")
      end
      it 'thingが空だと投稿できない' do
        @book_plan.thing = ''
        @book_plan.valid?
        expect(@book_plan.errors.full_messages).to include("Thing can't be blank")
      end
      it 'todoが空だと投稿できない' do
        @book_plan.todo = ''
        @book_plan.valid?
        expect(@book_plan.errors.full_messages).to include("Todo can't be blank")
      end
      it 'genre_idの値が0だと投稿できない' do
        @book_plan.genre_id = 0
        @book_plan.valid?
        expect(@book_plan.errors.full_messages).to include("Genre must be greater than 0")
      end
    end
  end
end