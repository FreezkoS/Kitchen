class ZamsController < ApplicationController
  def index
      @clue = params[:name] + "." + params[:city] + "." + params[:phone1] + "." + params[:email]
      ZamsMailer.zayavka(@clue).deliver
      redirect_to root_path
  end
end
