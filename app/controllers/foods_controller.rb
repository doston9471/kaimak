require "rubygems"
require "nokogiri"
require "open-uri"
require "json"
require "date"
class FoodsController < ApplicationController
  def index

    @foods = Food.all

    month = Time.now.strftime("%m").to_i
   
    if @foods.empty? || month!=Food.first.created_at.strftime("%m").to_i

      page = open("http://ihale.manas.edu.kg/kki.php/")
      doc = Nokogiri::HTML(page)
      myArr = Array.new
      newarr = Array.new
      trs= doc.css('tr')
      trs.each do |f|
        tdata = f.css('td')
        arr = Array.new
        tdata.each do |td|
          arr.push(td.text)
        end
        myArr.push(arr)
      end

      newarr = myArr.reject(&:empty?)
      newarr.each do |f|
        Food.create!(
          :date => f[0], 
          :firstCourse => f[1], 
          :firstCourseCalorie => f[2], 
          :secondCourse => f[3], 
          :secondCourseCalorie => f[4], 
          :sideDish => f[5], 
          :sideDishCalorie => f[6], 
          :dessert => f[7], 
          :dessertCalorie => f[8], 
          :bread => f[9], 
          :breadCalorie => f[10], 
          :total => f[11])
      end
    end

    def days_of_month(month, year)
      Date.new(year, month, -1).day
    end

    n = days_of_month(Time.now.month, Time.now.year)
    @qwer = Food.order('created_at DESC').limit(n).reverse
    respond_to do |format|
      format.html
      format.json { render json: @qwer }
    end
  end

  def month
    x = Time.now.strftime("%m/%Y")
    mon = Array.new
    mon.push(
    month: x
    )
    render json: mon[0]
  end
end
