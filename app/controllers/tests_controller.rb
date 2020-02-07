class TestsController < ApplicationController
  def index
    render json: { tests:  Test.all }
  end

end
