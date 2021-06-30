class Baz62sController < ApplicationController
  before_action :set_baz62, only: %i[ show edit update destroy ]

  # GET /baz62s or /baz62s.json
  def index
    @baz62s = Baz62.all
  end

  # GET /baz62s/1 or /baz62s/1.json
  def show
  end

  # GET /baz62s/new
  def new
    @baz62 = Baz62.new
  end

  # GET /baz62s/1/edit
  def edit
  end

  # POST /baz62s or /baz62s.json
  def create
    @baz62 = Baz62.new(baz62_params)

    respond_to do |format|
      if @baz62.save
        format.html { redirect_to @baz62, notice: "Baz62 was successfully created." }
        format.json { render :show, status: :created, location: @baz62 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz62.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz62s/1 or /baz62s/1.json
  def update
    respond_to do |format|
      if @baz62.update(baz62_params)
        format.html { redirect_to @baz62, notice: "Baz62 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz62 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz62.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz62s/1 or /baz62s/1.json
  def destroy
    @baz62.destroy
    respond_to do |format|
      format.html { redirect_to baz62s_url, notice: "Baz62 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz62
      @baz62 = Baz62.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz62_params
      params.require(:baz62).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
