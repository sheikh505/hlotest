class HomeController < ApplicationController
  def index

    cllass =Cllass.where(name: "9th" ).first

    @students=Student.where(cllass_id: cllass.id)













    @teachers=Teacher.all
    @cllass=Cllass.all

    @subjects=Subject.all







  end





end
