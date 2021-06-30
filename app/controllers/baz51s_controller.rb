class Baz51sController < ApplicationController
  before_action :set_baz51, only: %i[ show edit update destroy ]

  # GET /baz51s or /baz51s.json
  def index
    @baz51s = Baz51.all
  end

  # GET /baz51s/1 or /baz51s/1.json
  def show
  end

  # GET /baz51s/new
  def new
    @baz51 = Baz51.new
  end

  # GET /baz51s/1/edit
  def edit
  end

  # POST /baz51s or /baz51s.json
  def create
    @baz51 = Baz51.new(baz51_params)

    respond_to do |format|
      if @baz51.save
        format.html { redirect_to @baz51, notice: "Baz51 was successfully created." }
        format.json { render :show, status: :created, location: @baz51 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz51.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz51s/1 or /baz51s/1.json
  def update
    respond_to do |format|
      if @baz51.update(baz51_params)
        format.html { redirect_to @baz51, notice: "Baz51 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz51 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz51.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz51s/1 or /baz51s/1.json
  def destroy
    @baz51.destroy
    respond_to do |format|
      format.html { redirect_to baz51s_url, notice: "Baz51 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz51
      @baz51 = Baz51.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz51_params
      params.require(:baz51).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
