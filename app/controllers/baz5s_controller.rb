class Baz5sController < ApplicationController
  before_action :set_baz5, only: %i[ show edit update destroy ]

  # GET /baz5s or /baz5s.json
  def index
    @baz5s = Baz5.all
  end

  # GET /baz5s/1 or /baz5s/1.json
  def show
  end

  # GET /baz5s/new
  def new
    @baz5 = Baz5.new
  end

  # GET /baz5s/1/edit
  def edit
  end

  # POST /baz5s or /baz5s.json
  def create
    @baz5 = Baz5.new(baz5_params)

    respond_to do |format|
      if @baz5.save
        format.html { redirect_to @baz5, notice: "Baz5 was successfully created." }
        format.json { render :show, status: :created, location: @baz5 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz5s/1 or /baz5s/1.json
  def update
    respond_to do |format|
      if @baz5.update(baz5_params)
        format.html { redirect_to @baz5, notice: "Baz5 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz5 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz5s/1 or /baz5s/1.json
  def destroy
    @baz5.destroy
    respond_to do |format|
      format.html { redirect_to baz5s_url, notice: "Baz5 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz5
      @baz5 = Baz5.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz5_params
      params.require(:baz5).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
