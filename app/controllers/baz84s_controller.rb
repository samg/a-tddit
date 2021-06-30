class Baz84sController < ApplicationController
  before_action :set_baz84, only: %i[ show edit update destroy ]

  # GET /baz84s or /baz84s.json
  def index
    @baz84s = Baz84.all
  end

  # GET /baz84s/1 or /baz84s/1.json
  def show
  end

  # GET /baz84s/new
  def new
    @baz84 = Baz84.new
  end

  # GET /baz84s/1/edit
  def edit
  end

  # POST /baz84s or /baz84s.json
  def create
    @baz84 = Baz84.new(baz84_params)

    respond_to do |format|
      if @baz84.save
        format.html { redirect_to @baz84, notice: "Baz84 was successfully created." }
        format.json { render :show, status: :created, location: @baz84 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz84.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz84s/1 or /baz84s/1.json
  def update
    respond_to do |format|
      if @baz84.update(baz84_params)
        format.html { redirect_to @baz84, notice: "Baz84 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz84 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz84.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz84s/1 or /baz84s/1.json
  def destroy
    @baz84.destroy
    respond_to do |format|
      format.html { redirect_to baz84s_url, notice: "Baz84 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz84
      @baz84 = Baz84.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz84_params
      params.require(:baz84).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
