class CalculationsController < ApplicationController
  def instructions
  end

  def square
    @number = params[:number].to_f
  end

  def square_root
    @number = params[:number].to_f
  end

  def random
    @max = params[:max].to_i
    @min = params[:min].to_i
  end

  def payment
    @interest = (params[:interest].to_f)/100
    @r = @interest/1200
    @year = params[:year].to_i
    @n = @year*12
    @principal = params[:principal].to_f
    @monthly_payment = (((@r*(@r+1)**@n)/((1+@r)**@n - 1))*@principal)
  end
end
