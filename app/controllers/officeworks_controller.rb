class OfficeworksController < ApplicationController
  before_action :set_officework, only: %i[ show edit update destroy ]

  # GET /officeworks or /officeworks.json
  def index
    @officeworks = Officework.all
  end

  # GET /officeworks/1 or /officeworks/1.json
  def show
  end

  # GET /officeworks/new
  def new
    @officework = Officework.new
  end

  # GET /officeworks/1/edit
  def edit
  end

  # POST /officeworks or /officeworks.json
  def create
    @officework = Officework.new(officework_params)

    respond_to do |format|
      if @officework.save
        format.html { redirect_to officework_url(@officework), notice: "Officework was successfully created." }
        format.json { render :show, status: :created, location: @officework }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @officework.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /officeworks/1 or /officeworks/1.json
  def update
    respond_to do |format|
      if @officework.update(officework_params)
        format.html { redirect_to officework_url(@officework), notice: "Officework was successfully updated." }
        format.json { render :show, status: :ok, location: @officework }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @officework.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /officeworks/1 or /officeworks/1.json
  def destroy
    @officework.destroy

    respond_to do |format|
      format.html { redirect_to officeworks_url, notice: "Officework was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_officework
      @officework = Officework.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def officework_params
      params.require(:officework).permit(:name, :age, :gender, :designation)
    end
end
