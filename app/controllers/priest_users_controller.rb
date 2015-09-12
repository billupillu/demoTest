class PriestUsersController < ApplicationController
  before_action :set_priest_user, only: [:show, :edit, :update, :destroy]

  # GET /priest_users
  # GET /priest_users.json
  def index
    # @priest_users = PriestUser.all
    area = Area.doareaid(params['area'].to_s)
    religion = params['religion'].to_s
    area.each do |ar|
      @areaid = ar.id
    end
    @results = PriestUser.where(area_id: @areaid,religion: religion).soting
  end

  # GET /priest_users/1
  # GET /priest_users/1.json
  def show
  end

  # GET /priest_users/new
  def new
    @priest_user = PriestUser.new
  end

  # GET /priest_users/1/edit
  def edit
  end

  # POST /priest_users
  # POST /priest_users.json
  def create
    @priest_user = PriestUser.new(priest_user_params)

    respond_to do |format|
      if @priest_user.save
        format.html { redirect_to @priest_user, notice: 'Priest user was successfully created.' }
        format.json { render :show, status: :created, location: @priest_user }
      else
        format.html { render :new }
        format.json { render json: @priest_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /priest_users/1
  # PATCH/PUT /priest_users/1.json
  def update
    respond_to do |format|
      if @priest_user.update(priest_user_params)
        format.html { redirect_to @priest_user, notice: 'Priest user was successfully updated.' }
        format.json { render :show, status: :ok, location: @priest_user }
      else
        format.html { render :edit }
        format.json { render json: @priest_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /priest_users/1
  # DELETE /priest_users/1.json
  def destroy
    @priest_user.destroy
    respond_to do |format|
      format.html { redirect_to priest_users_url, notice: 'Priest user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_priest_user
      @priest_user = PriestUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def priest_user_params
      params.require(:priest_user).permit(:area_id, :circles, :name, :religion, :phone, :brief, :description, :icon)
    end
end
