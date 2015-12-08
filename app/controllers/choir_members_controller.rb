class ChoirMembersController < ApplicationController
  before_action :set_choir_member, only: [:show, :edit, :update, :destroy]

  # GET /choir_members
  # GET /choir_members.json
  def index
    @choir_members = ChoirMember.all
  end

  # GET /choir_members/1
  # GET /choir_members/1.json
  def show
  end

  # GET /choir_members/new
  def new
    @choir_member = ChoirMember.new
  end

  # GET /choir_members/1/edit
  def edit
  end

  # POST /choir_members
  # POST /choir_members.json
  def create
    @choir_member = ChoirMember.new(choir_member_params)

    respond_to do |format|
      if @choir_member.save
        format.html { redirect_to @choir_member, notice: 'Choir member was successfully created.' }
        format.json { render :show, status: :created, location: @choir_member }
      else
        format.html { render :new }
        format.json { render json: @choir_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choir_members/1
  # PATCH/PUT /choir_members/1.json
  def update
    respond_to do |format|
      if @choir_member.update(choir_member_params)
        format.html { redirect_to @choir_member, notice: 'Choir member was successfully updated.' }
        format.json { render :show, status: :ok, location: @choir_member }
      else
        format.html { render :edit }
        format.json { render json: @choir_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choir_members/1
  # DELETE /choir_members/1.json
  def destroy
    @choir_member.destroy
    respond_to do |format|
      format.html { redirect_to choir_members_url, notice: 'Choir member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choir_member
      @choir_member = ChoirMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choir_member_params
      params.require(:choir_member).permit(:first_name, :last_name, :voice, :side)
    end
end
