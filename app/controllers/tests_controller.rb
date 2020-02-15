class TestsController < ApplicationController

  def index
    @tests = Test.all
  end

  def show
    @test = Test.find(params[:id])
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(params[:test])
    if @test.save
      redirect_to @test
    else
      render :new
    end
  end

end
