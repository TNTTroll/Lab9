class NewtonController < ApplicationController
  def find_sqrt(a)
    x = (a + 1.0) / 2.0
    loop do
      break if (x*x - a) / a < 0.001
      x = (x + a/x) / 2.0
    end
    x
  end

  def page
    @number = params[:num].to_i
    @result = find_sqrt(@number)

    respond_to do |format|
      format.html
      format.json do
        render json:
                 {type: @result.class.to_s, value: @result}
      end
    end
  end



end
