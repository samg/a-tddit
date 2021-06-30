class Baz3sController < ApplicationController
  before_action :set_baz3, only: %i[ show edit update destroy ]

  # GET /baz3s or /baz3s.json
  def index
    @baz3s = Baz3.all
  end

  # GET /baz3s/1 or /baz3s/1.json
  def show
  end

  # GET /baz3s/new
  def new
    @baz3 = Baz3.new
  end

  # GET /baz3s/1/edit
  def edit
  end

  # POST /baz3s or /baz3s.json
  def create
    @baz3 = Baz3.new(baz3_params)

    respond_to do |format|
      if @baz3.save
        format.html { redirect_to @baz3, notice: "Baz3 was successfully created." }
        format.json { render :show, status: :created, location: @baz3 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz3s/1 or /baz3s/1.json
  def update
    respond_to do |format|
      if @baz3.update(baz3_params)
        format.html { redirect_to @baz3, notice: "Baz3 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz3 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz3s/1 or /baz3s/1.json
  def destroy
    @baz3.destroy
    respond_to do |format|
      format.html { redirect_to baz3s_url, notice: "Baz3 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz3
      @baz3 = Baz3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz3_params
      params.require(:baz3).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
