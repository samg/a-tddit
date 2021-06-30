class Baz74sController < ApplicationController
  before_action :set_baz74, only: %i[ show edit update destroy ]

  # GET /baz74s or /baz74s.json
  def index
    @baz74s = Baz74.all
  end

  # GET /baz74s/1 or /baz74s/1.json
  def show
  end

  # GET /baz74s/new
  def new
    @baz74 = Baz74.new
  end

  # GET /baz74s/1/edit
  def edit
  end

  # POST /baz74s or /baz74s.json
  def create
    @baz74 = Baz74.new(baz74_params)

    respond_to do |format|
      if @baz74.save
        format.html { redirect_to @baz74, notice: "Baz74 was successfully created." }
        format.json { render :show, status: :created, location: @baz74 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz74.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz74s/1 or /baz74s/1.json
  def update
    respond_to do |format|
      if @baz74.update(baz74_params)
        format.html { redirect_to @baz74, notice: "Baz74 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz74 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz74.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz74s/1 or /baz74s/1.json
  def destroy
    @baz74.destroy
    respond_to do |format|
      format.html { redirect_to baz74s_url, notice: "Baz74 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz74
      @baz74 = Baz74.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz74_params
      params.require(:baz74).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
