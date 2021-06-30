class Bar77sController < ApplicationController
  before_action :set_bar77, only: %i[ show edit update destroy ]

  # GET /bar77s or /bar77s.json
  def index
    @bar77s = Bar77.all
  end

  # GET /bar77s/1 or /bar77s/1.json
  def show
  end

  # GET /bar77s/new
  def new
    @bar77 = Bar77.new
  end

  # GET /bar77s/1/edit
  def edit
  end

  # POST /bar77s or /bar77s.json
  def create
    @bar77 = Bar77.new(bar77_params)

    respond_to do |format|
      if @bar77.save
        format.html { redirect_to @bar77, notice: "Bar77 was successfully created." }
        format.json { render :show, status: :created, location: @bar77 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar77.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar77s/1 or /bar77s/1.json
  def update
    respond_to do |format|
      if @bar77.update(bar77_params)
        format.html { redirect_to @bar77, notice: "Bar77 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar77 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar77.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar77s/1 or /bar77s/1.json
  def destroy
    @bar77.destroy
    respond_to do |format|
      format.html { redirect_to bar77s_url, notice: "Bar77 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar77
      @bar77 = Bar77.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar77_params
      params.require(:bar77).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
