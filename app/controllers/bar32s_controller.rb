class Bar32sController < ApplicationController
  before_action :set_bar32, only: %i[ show edit update destroy ]

  # GET /bar32s or /bar32s.json
  def index
    @bar32s = Bar32.all
  end

  # GET /bar32s/1 or /bar32s/1.json
  def show
  end

  # GET /bar32s/new
  def new
    @bar32 = Bar32.new
  end

  # GET /bar32s/1/edit
  def edit
  end

  # POST /bar32s or /bar32s.json
  def create
    @bar32 = Bar32.new(bar32_params)

    respond_to do |format|
      if @bar32.save
        format.html { redirect_to @bar32, notice: "Bar32 was successfully created." }
        format.json { render :show, status: :created, location: @bar32 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar32.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar32s/1 or /bar32s/1.json
  def update
    respond_to do |format|
      if @bar32.update(bar32_params)
        format.html { redirect_to @bar32, notice: "Bar32 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar32 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar32.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar32s/1 or /bar32s/1.json
  def destroy
    @bar32.destroy
    respond_to do |format|
      format.html { redirect_to bar32s_url, notice: "Bar32 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar32
      @bar32 = Bar32.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar32_params
      params.require(:bar32).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
