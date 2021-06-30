class Baz53sController < ApplicationController
  before_action :set_baz53, only: %i[ show edit update destroy ]

  # GET /baz53s or /baz53s.json
  def index
    @baz53s = Baz53.all
  end

  # GET /baz53s/1 or /baz53s/1.json
  def show
  end

  # GET /baz53s/new
  def new
    @baz53 = Baz53.new
  end

  # GET /baz53s/1/edit
  def edit
  end

  # POST /baz53s or /baz53s.json
  def create
    @baz53 = Baz53.new(baz53_params)

    respond_to do |format|
      if @baz53.save
        format.html { redirect_to @baz53, notice: "Baz53 was successfully created." }
        format.json { render :show, status: :created, location: @baz53 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz53.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz53s/1 or /baz53s/1.json
  def update
    respond_to do |format|
      if @baz53.update(baz53_params)
        format.html { redirect_to @baz53, notice: "Baz53 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz53 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz53.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz53s/1 or /baz53s/1.json
  def destroy
    @baz53.destroy
    respond_to do |format|
      format.html { redirect_to baz53s_url, notice: "Baz53 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz53
      @baz53 = Baz53.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz53_params
      params.require(:baz53).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
