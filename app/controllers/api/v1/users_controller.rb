class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jbuilder"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      image: params[:image],
      image_slug: params[:image_slug],
      motto: params[:motto]
    )
    render "show.json.jbuilder"
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.update(
      first_name: params[:first_name] || @user.first_name, 
      last_name: params[:last_name] || @user.last_name, 
      email: params[:email] || @user.email, 
      image: params[:image] || @user.image, 
      image_slug: params[:image_slug] || @user.image_slug, 
      motto: params[:motto] || @user.motto
    )
      render "show.json.jbuilder"
    else
      render "/users"
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to "/users"
  end
end
