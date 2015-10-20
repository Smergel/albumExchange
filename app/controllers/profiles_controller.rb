class ProfilesController < ApplicationController
  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id

    respond_to do |format|
      if @profile.save
        format.html { redirect_to '/', notice: "Welcome" }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private
  def profile_params
    params.require(:profile).permit(:name, :avatar)
  end
end