class Schedule < ApplicationRecord
    # タイトルが存在し、最大20文字であることを確認するバリデーション
  validates :title, presence: true, length: { maximum: 20 }

   # 開始日と終了日の存在を確認
   validates :start_date, :end_date, presence: true

   # 終了日が開始日以降であることを確認するカスタムバリデーション
   validate :end_date_is_after_start_date
 
   private
 
   def end_date_is_after_start_date
     return if end_date.blank? || start_date.blank?
 
     if end_date < start_date
       errors.add(:end_date, 'は開始日以降の日付を選択してください。')
     end
   end

   validates :schedule_memo, length: { maximum: 500 }
 end


