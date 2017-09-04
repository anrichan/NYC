class SexesController < ApplicationController
   def create
      @sex = Sex.create(set_sex)
   end
   def show
     @sex = Sex.find(params[:id])
     @sex = Profile.where(sex_id: @sex.id)
     # whereは検索の条件が追加できる青の(テーブルの中のカラムの紫を探すという表記)
    end
end


