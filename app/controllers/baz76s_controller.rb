class Baz76sController < ApplicationController
  before_action :set_baz76, only: %i[ show edit update destroy ]

  # GET /baz76s or /baz76s.json
  def index
    @baz76s = Baz76.all
  end

  # GET /baz76s/1 or /baz76s/1.json
  def show
  end

  # GET /baz76s/new
  def new
    @baz76 = Baz76.new
  end

  # GET /baz76s/1/edit
  def edit
  end

  # POST /baz76s or /baz76s.json
  def create
    @baz76 = Baz76.new(baz76_params)

    respond_to do |format|
      if @baz76.save
        format.html { redirect_to @baz76, notice: "Baz76 was successfully created." }
        format.json { render :show, status: :created, location: @baz76 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz76.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz76s/1 or /baz76s/1.json
  def update
    respond_to do |format|
      if @baz76.update(baz76_params)
        format.html { redirect_to @baz76, notice: "Baz76 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz76 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz76.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz76s/1 or /baz76s/1.json
  def destroy
    @baz76.destroy
    respond_to do |format|
      format.html { redirect_to baz76s_url, notice: "Baz76 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz76
      @baz76 = Baz76.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz76_params
      params.require(:baz76).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
