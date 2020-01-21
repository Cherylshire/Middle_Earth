class RivendellController < ApplicationController

  def index
    @high_elves = HighElves.all
    render 'index.json.jb'
  end

  def create
    high_elves = HighElves.new(
                    name: params[:name],
                    birthdate: params[:birthdate],
                    mellon: params[:mellon],
                    archer_skill: params[:archer_skill],
                    email: params[:email],
                    pssword: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )
  end
  
  def show
    @high_elves = HighElves.find(params[:id])
    render 'show.json.jb' 
  end

  def update
    @high_elves.name = params[:name] || @high_elves.name
    @high_elves.birthdate = params[:birthdate] || @high_elves.birthdate  
    @high_elves.mellon = params[:mellon] || @high_elves.mellon            
    @high_elves.archer_skill = params[:archer_skill] || @high_elves.archer_skill
    @high_elves.email = params[:email] || high_elves.email
    @high_elves.password = params[:password] || high_elves.password
    @high_elves.password_confirmation = params[:password_confirmation] || high_elves.password_confirmation

    if @high_elves.save
      render 'show.json.jb'
    else
      render json: {error: @high_elves.errors.full_messages}, status: :unprocessable_entry
    end  
  end

  def destroy
    @high_elves = HighElves.find(params[:id])
    @high_elves.destroy
    render json:{message: "Successfully Destroy! RIP!"}
  end
end
