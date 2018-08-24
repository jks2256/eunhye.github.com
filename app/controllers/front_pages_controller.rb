class FrontPagesController < ApplicationController
  def home
  end

  def day
    #Note모델의 개수는 10개임 / 1~10 사이의 정수(명언note의 id) 랜덤으로 고르고, 그 id의 content가져오기
    num=Random.new.rand(1..10) 
    #하루 한줄을 뷰페이지에서 보여줄 변수 day_note
    @day_note=Note.find(num)
  end

  def service
  end
  
  def coun
  end
  
  def result
  end
  
  def shop
  end
  
  def child
  end
  def adult
  end
  def not_login
  end
  def buy
  end
end
