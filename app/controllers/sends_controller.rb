class SendsController < ApplicationController
  def index
      @clue = params[:email]
      ZamsMailer.sending(@clue).deliver
      redirect_to root_path, success: 'Подписка оформлена!'
  end
end
