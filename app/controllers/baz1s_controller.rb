class Baz1sController < ApplicationController
  before_action :set_baz1, only: %i[ show edit update destroy ]

  # GET /baz1s or /baz1s.json
  def index
    @baz1s = Baz1.all
  end

  # GET /baz1s/1 or /baz1s/1.json
  def show
  end

  # GET /baz1s/new
  def new
    @baz1 = Baz1.new
  end

  # GET /baz1s/1/edit
  def edit
  end

  # POST /baz1s or /baz1s.json
  def create
    @baz1 = Baz1.new(baz1_params)

    respond_to do |format|
      if @baz1.save
        format.html { redirect_to @baz1, notice: "Baz1 was successfully created." }
        format.json { render :show, status: :created, location: @baz1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz1s/1 or /baz1s/1.json
  def update
    respond_to do |format|
      if @baz1.update(baz1_params)
        format.html { redirect_to @baz1, notice: "Baz1 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz1s/1 or /baz1s/1.json
  def destroy
    @baz1.destroy
    respond_to do |format|
      format.html { redirect_to baz1s_url, notice: "Baz1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz1
      @baz1 = Baz1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz1_params
      params.require(:baz1).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
