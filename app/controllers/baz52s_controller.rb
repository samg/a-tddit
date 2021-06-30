class Baz52sController < ApplicationController
  before_action :set_baz52, only: %i[ show edit update destroy ]

  # GET /baz52s or /baz52s.json
  def index
    @baz52s = Baz52.all
  end

  # GET /baz52s/1 or /baz52s/1.json
  def show
  end

  # GET /baz52s/new
  def new
    @baz52 = Baz52.new
  end

  # GET /baz52s/1/edit
  def edit
  end

  # POST /baz52s or /baz52s.json
  def create
    @baz52 = Baz52.new(baz52_params)

    respond_to do |format|
      if @baz52.save
        format.html { redirect_to @baz52, notice: "Baz52 was successfully created." }
        format.json { render :show, status: :created, location: @baz52 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz52.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz52s/1 or /baz52s/1.json
  def update
    respond_to do |format|
      if @baz52.update(baz52_params)
        format.html { redirect_to @baz52, notice: "Baz52 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz52 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz52.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz52s/1 or /baz52s/1.json
  def destroy
    @baz52.destroy
    respond_to do |format|
      format.html { redirect_to baz52s_url, notice: "Baz52 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz52
      @baz52 = Baz52.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz52_params
      params.require(:baz52).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
