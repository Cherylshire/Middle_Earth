class GondorController < ApplicationController
  def index
    @city_guard = CityGuard.all
    render 'index.json.jb'
  end

  def create
    city_guard = CityGuard.new(
                    name: params[:name],
                    experience: params[:experience],
                    level: params[:level],
                    email: params[:email],
                    pssword: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )
  end
  
  def show
    @city_guard = CityGuard.find(params[:id])
    render 'show.json.jb' 
  end

  def update
    @city_guard.name = params[:name] || @city_guard.name
    @city_guard.experience = params[:experience] || @city_guard.experience  
    @city_guard.level = params[:level] || @city_guard.level            
    @city_guard.email = params[:email] || @city_guard.email
    @city_guard.password = params[:password] || city_guard.password
    @city_guard.password_confirmation = params[:password_confirmation] || city_guard.password_confirmation

    if @city_guard.save
      render 'show.json.jb'
    else
      render json: {error: @city_guard.errors.full_messages}, status: :unprocessable_entry
    end  
  end

  def destroy
    @city_guard = CityGuard.find(params[:id])
    @city_guard.destroy
    render json:{message: "Successfully Destroy! RIP!"}
  end
end
