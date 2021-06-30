class Baz92sController < ApplicationController
  before_action :set_baz92, only: %i[ show edit update destroy ]

  # GET /baz92s or /baz92s.json
  def index
    @baz92s = Baz92.all
  end

  # GET /baz92s/1 or /baz92s/1.json
  def show
  end

  # GET /baz92s/new
  def new
    @baz92 = Baz92.new
  end

  # GET /baz92s/1/edit
  def edit
  end

  # POST /baz92s or /baz92s.json
  def create
    @baz92 = Baz92.new(baz92_params)

    respond_to do |format|
      if @baz92.save
        format.html { redirect_to @baz92, notice: "Baz92 was successfully created." }
        format.json { render :show, status: :created, location: @baz92 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz92.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz92s/1 or /baz92s/1.json
  def update
    respond_to do |format|
      if @baz92.update(baz92_params)
        format.html { redirect_to @baz92, notice: "Baz92 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz92 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz92.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz92s/1 or /baz92s/1.json
  def destroy
    @baz92.destroy
    respond_to do |format|
      format.html { redirect_to baz92s_url, notice: "Baz92 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz92
      @baz92 = Baz92.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz92_params
      params.require(:baz92).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
