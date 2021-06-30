class Baz32sController < ApplicationController
  before_action :set_baz32, only: %i[ show edit update destroy ]

  # GET /baz32s or /baz32s.json
  def index
    @baz32s = Baz32.all
  end

  # GET /baz32s/1 or /baz32s/1.json
  def show
  end

  # GET /baz32s/new
  def new
    @baz32 = Baz32.new
  end

  # GET /baz32s/1/edit
  def edit
  end

  # POST /baz32s or /baz32s.json
  def create
    @baz32 = Baz32.new(baz32_params)

    respond_to do |format|
      if @baz32.save
        format.html { redirect_to @baz32, notice: "Baz32 was successfully created." }
        format.json { render :show, status: :created, location: @baz32 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz32.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz32s/1 or /baz32s/1.json
  def update
    respond_to do |format|
      if @baz32.update(baz32_params)
        format.html { redirect_to @baz32, notice: "Baz32 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz32 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz32.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz32s/1 or /baz32s/1.json
  def destroy
    @baz32.destroy
    respond_to do |format|
      format.html { redirect_to baz32s_url, notice: "Baz32 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz32
      @baz32 = Baz32.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz32_params
      params.require(:baz32).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
