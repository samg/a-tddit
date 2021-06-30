class Bar90sController < ApplicationController
  before_action :set_bar90, only: %i[ show edit update destroy ]

  # GET /bar90s or /bar90s.json
  def index
    @bar90s = Bar90.all
  end

  # GET /bar90s/1 or /bar90s/1.json
  def show
  end

  # GET /bar90s/new
  def new
    @bar90 = Bar90.new
  end

  # GET /bar90s/1/edit
  def edit
  end

  # POST /bar90s or /bar90s.json
  def create
    @bar90 = Bar90.new(bar90_params)

    respond_to do |format|
      if @bar90.save
        format.html { redirect_to @bar90, notice: "Bar90 was successfully created." }
        format.json { render :show, status: :created, location: @bar90 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar90.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar90s/1 or /bar90s/1.json
  def update
    respond_to do |format|
      if @bar90.update(bar90_params)
        format.html { redirect_to @bar90, notice: "Bar90 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar90 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar90.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar90s/1 or /bar90s/1.json
  def destroy
    @bar90.destroy
    respond_to do |format|
      format.html { redirect_to bar90s_url, notice: "Bar90 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar90
      @bar90 = Bar90.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar90_params
      params.require(:bar90).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
