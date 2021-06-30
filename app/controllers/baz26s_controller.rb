class Baz26sController < ApplicationController
  before_action :set_baz26, only: %i[ show edit update destroy ]

  # GET /baz26s or /baz26s.json
  def index
    @baz26s = Baz26.all
  end

  # GET /baz26s/1 or /baz26s/1.json
  def show
  end

  # GET /baz26s/new
  def new
    @baz26 = Baz26.new
  end

  # GET /baz26s/1/edit
  def edit
  end

  # POST /baz26s or /baz26s.json
  def create
    @baz26 = Baz26.new(baz26_params)

    respond_to do |format|
      if @baz26.save
        format.html { redirect_to @baz26, notice: "Baz26 was successfully created." }
        format.json { render :show, status: :created, location: @baz26 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz26.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz26s/1 or /baz26s/1.json
  def update
    respond_to do |format|
      if @baz26.update(baz26_params)
        format.html { redirect_to @baz26, notice: "Baz26 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz26 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz26.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz26s/1 or /baz26s/1.json
  def destroy
    @baz26.destroy
    respond_to do |format|
      format.html { redirect_to baz26s_url, notice: "Baz26 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz26
      @baz26 = Baz26.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz26_params
      params.require(:baz26).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
