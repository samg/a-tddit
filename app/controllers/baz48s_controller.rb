class Baz48sController < ApplicationController
  before_action :set_baz48, only: %i[ show edit update destroy ]

  # GET /baz48s or /baz48s.json
  def index
    @baz48s = Baz48.all
  end

  # GET /baz48s/1 or /baz48s/1.json
  def show
  end

  # GET /baz48s/new
  def new
    @baz48 = Baz48.new
  end

  # GET /baz48s/1/edit
  def edit
  end

  # POST /baz48s or /baz48s.json
  def create
    @baz48 = Baz48.new(baz48_params)

    respond_to do |format|
      if @baz48.save
        format.html { redirect_to @baz48, notice: "Baz48 was successfully created." }
        format.json { render :show, status: :created, location: @baz48 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz48.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz48s/1 or /baz48s/1.json
  def update
    respond_to do |format|
      if @baz48.update(baz48_params)
        format.html { redirect_to @baz48, notice: "Baz48 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz48 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz48.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz48s/1 or /baz48s/1.json
  def destroy
    @baz48.destroy
    respond_to do |format|
      format.html { redirect_to baz48s_url, notice: "Baz48 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz48
      @baz48 = Baz48.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz48_params
      params.require(:baz48).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
