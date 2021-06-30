class Baz41sController < ApplicationController
  before_action :set_baz41, only: %i[ show edit update destroy ]

  # GET /baz41s or /baz41s.json
  def index
    @baz41s = Baz41.all
  end

  # GET /baz41s/1 or /baz41s/1.json
  def show
  end

  # GET /baz41s/new
  def new
    @baz41 = Baz41.new
  end

  # GET /baz41s/1/edit
  def edit
  end

  # POST /baz41s or /baz41s.json
  def create
    @baz41 = Baz41.new(baz41_params)

    respond_to do |format|
      if @baz41.save
        format.html { redirect_to @baz41, notice: "Baz41 was successfully created." }
        format.json { render :show, status: :created, location: @baz41 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz41.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz41s/1 or /baz41s/1.json
  def update
    respond_to do |format|
      if @baz41.update(baz41_params)
        format.html { redirect_to @baz41, notice: "Baz41 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz41 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz41.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz41s/1 or /baz41s/1.json
  def destroy
    @baz41.destroy
    respond_to do |format|
      format.html { redirect_to baz41s_url, notice: "Baz41 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz41
      @baz41 = Baz41.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz41_params
      params.require(:baz41).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
