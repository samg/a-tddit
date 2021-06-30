class Baz60sController < ApplicationController
  before_action :set_baz60, only: %i[ show edit update destroy ]

  # GET /baz60s or /baz60s.json
  def index
    @baz60s = Baz60.all
  end

  # GET /baz60s/1 or /baz60s/1.json
  def show
  end

  # GET /baz60s/new
  def new
    @baz60 = Baz60.new
  end

  # GET /baz60s/1/edit
  def edit
  end

  # POST /baz60s or /baz60s.json
  def create
    @baz60 = Baz60.new(baz60_params)

    respond_to do |format|
      if @baz60.save
        format.html { redirect_to @baz60, notice: "Baz60 was successfully created." }
        format.json { render :show, status: :created, location: @baz60 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz60.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz60s/1 or /baz60s/1.json
  def update
    respond_to do |format|
      if @baz60.update(baz60_params)
        format.html { redirect_to @baz60, notice: "Baz60 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz60 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz60.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz60s/1 or /baz60s/1.json
  def destroy
    @baz60.destroy
    respond_to do |format|
      format.html { redirect_to baz60s_url, notice: "Baz60 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz60
      @baz60 = Baz60.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz60_params
      params.require(:baz60).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
