class Baz81sController < ApplicationController
  before_action :set_baz81, only: %i[ show edit update destroy ]

  # GET /baz81s or /baz81s.json
  def index
    @baz81s = Baz81.all
  end

  # GET /baz81s/1 or /baz81s/1.json
  def show
  end

  # GET /baz81s/new
  def new
    @baz81 = Baz81.new
  end

  # GET /baz81s/1/edit
  def edit
  end

  # POST /baz81s or /baz81s.json
  def create
    @baz81 = Baz81.new(baz81_params)

    respond_to do |format|
      if @baz81.save
        format.html { redirect_to @baz81, notice: "Baz81 was successfully created." }
        format.json { render :show, status: :created, location: @baz81 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz81.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz81s/1 or /baz81s/1.json
  def update
    respond_to do |format|
      if @baz81.update(baz81_params)
        format.html { redirect_to @baz81, notice: "Baz81 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz81 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz81.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz81s/1 or /baz81s/1.json
  def destroy
    @baz81.destroy
    respond_to do |format|
      format.html { redirect_to baz81s_url, notice: "Baz81 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz81
      @baz81 = Baz81.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz81_params
      params.require(:baz81).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
