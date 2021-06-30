class Baz29sController < ApplicationController
  before_action :set_baz29, only: %i[ show edit update destroy ]

  # GET /baz29s or /baz29s.json
  def index
    @baz29s = Baz29.all
  end

  # GET /baz29s/1 or /baz29s/1.json
  def show
  end

  # GET /baz29s/new
  def new
    @baz29 = Baz29.new
  end

  # GET /baz29s/1/edit
  def edit
  end

  # POST /baz29s or /baz29s.json
  def create
    @baz29 = Baz29.new(baz29_params)

    respond_to do |format|
      if @baz29.save
        format.html { redirect_to @baz29, notice: "Baz29 was successfully created." }
        format.json { render :show, status: :created, location: @baz29 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz29.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz29s/1 or /baz29s/1.json
  def update
    respond_to do |format|
      if @baz29.update(baz29_params)
        format.html { redirect_to @baz29, notice: "Baz29 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz29 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz29.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz29s/1 or /baz29s/1.json
  def destroy
    @baz29.destroy
    respond_to do |format|
      format.html { redirect_to baz29s_url, notice: "Baz29 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz29
      @baz29 = Baz29.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz29_params
      params.require(:baz29).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
