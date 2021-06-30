class Baz75sController < ApplicationController
  before_action :set_baz75, only: %i[ show edit update destroy ]

  # GET /baz75s or /baz75s.json
  def index
    @baz75s = Baz75.all
  end

  # GET /baz75s/1 or /baz75s/1.json
  def show
  end

  # GET /baz75s/new
  def new
    @baz75 = Baz75.new
  end

  # GET /baz75s/1/edit
  def edit
  end

  # POST /baz75s or /baz75s.json
  def create
    @baz75 = Baz75.new(baz75_params)

    respond_to do |format|
      if @baz75.save
        format.html { redirect_to @baz75, notice: "Baz75 was successfully created." }
        format.json { render :show, status: :created, location: @baz75 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz75.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz75s/1 or /baz75s/1.json
  def update
    respond_to do |format|
      if @baz75.update(baz75_params)
        format.html { redirect_to @baz75, notice: "Baz75 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz75 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz75.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz75s/1 or /baz75s/1.json
  def destroy
    @baz75.destroy
    respond_to do |format|
      format.html { redirect_to baz75s_url, notice: "Baz75 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz75
      @baz75 = Baz75.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz75_params
      params.require(:baz75).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
