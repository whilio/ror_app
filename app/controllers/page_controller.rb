class PageController < ApplicationController
  def home
  end

  def index
  end

  def about
  end

  def info
  end

  def test
    a, b = params[:a].to_i, params[:b].to_i
    @result = (a > b ? (b..a) : (a..b)).map(&:fizzBuzz)
  end
end
