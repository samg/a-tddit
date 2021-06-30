class Baz95sController < ApplicationController
  before_action :set_baz95, only: %i[ show edit update destroy ]

  # GET /baz95s or /baz95s.json
  def index
    @baz95s = Baz95.all
  end

  # GET /baz95s/1 or /baz95s/1.json
  def show
  end

  # GET /baz95s/new
  def new
    @baz95 = Baz95.new
  end

  # GET /baz95s/1/edit
  def edit
  end

  # POST /baz95s or /baz95s.json
  def create
    @baz95 = Baz95.new(baz95_params)

    respond_to do |format|
      if @baz95.save
        format.html { redirect_to @baz95, notice: "Baz95 was successfully created." }
        format.json { render :show, status: :created, location: @baz95 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz95.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz95s/1 or /baz95s/1.json
  def update
    respond_to do |format|
      if @baz95.update(baz95_params)
        format.html { redirect_to @baz95, notice: "Baz95 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz95 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz95.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz95s/1 or /baz95s/1.json
  def destroy
    @baz95.destroy
    respond_to do |format|
      format.html { redirect_to baz95s_url, notice: "Baz95 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz95
      @baz95 = Baz95.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz95_params
      params.require(:baz95).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
