class Baz66sController < ApplicationController
  before_action :set_baz66, only: %i[ show edit update destroy ]

  # GET /baz66s or /baz66s.json
  def index
    @baz66s = Baz66.all
  end

  # GET /baz66s/1 or /baz66s/1.json
  def show
  end

  # GET /baz66s/new
  def new
    @baz66 = Baz66.new
  end

  # GET /baz66s/1/edit
  def edit
  end

  # POST /baz66s or /baz66s.json
  def create
    @baz66 = Baz66.new(baz66_params)

    respond_to do |format|
      if @baz66.save
        format.html { redirect_to @baz66, notice: "Baz66 was successfully created." }
        format.json { render :show, status: :created, location: @baz66 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz66.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz66s/1 or /baz66s/1.json
  def update
    respond_to do |format|
      if @baz66.update(baz66_params)
        format.html { redirect_to @baz66, notice: "Baz66 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz66 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz66.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz66s/1 or /baz66s/1.json
  def destroy
    @baz66.destroy
    respond_to do |format|
      format.html { redirect_to baz66s_url, notice: "Baz66 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz66
      @baz66 = Baz66.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz66_params
      params.require(:baz66).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
