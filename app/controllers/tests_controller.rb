class TestsController < ApplicationController
  def index
    render plain: 'All tests'
  end
end
