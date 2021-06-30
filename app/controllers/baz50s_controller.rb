class Baz50sController < ApplicationController
  before_action :set_baz50, only: %i[ show edit update destroy ]

  # GET /baz50s or /baz50s.json
  def index
    @baz50s = Baz50.all
  end

  # GET /baz50s/1 or /baz50s/1.json
  def show
  end

  # GET /baz50s/new
  def new
    @baz50 = Baz50.new
  end

  # GET /baz50s/1/edit
  def edit
  end

  # POST /baz50s or /baz50s.json
  def create
    @baz50 = Baz50.new(baz50_params)

    respond_to do |format|
      if @baz50.save
        format.html { redirect_to @baz50, notice: "Baz50 was successfully created." }
        format.json { render :show, status: :created, location: @baz50 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz50.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz50s/1 or /baz50s/1.json
  def update
    respond_to do |format|
      if @baz50.update(baz50_params)
        format.html { redirect_to @baz50, notice: "Baz50 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz50 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz50.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz50s/1 or /baz50s/1.json
  def destroy
    @baz50.destroy
    respond_to do |format|
      format.html { redirect_to baz50s_url, notice: "Baz50 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz50
      @baz50 = Baz50.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz50_params
      params.require(:baz50).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
