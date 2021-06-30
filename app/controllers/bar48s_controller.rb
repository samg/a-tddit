class Bar48sController < ApplicationController
  before_action :set_bar48, only: %i[ show edit update destroy ]

  # GET /bar48s or /bar48s.json
  def index
    @bar48s = Bar48.all
  end

  # GET /bar48s/1 or /bar48s/1.json
  def show
  end

  # GET /bar48s/new
  def new
    @bar48 = Bar48.new
  end

  # GET /bar48s/1/edit
  def edit
  end

  # POST /bar48s or /bar48s.json
  def create
    @bar48 = Bar48.new(bar48_params)

    respond_to do |format|
      if @bar48.save
        format.html { redirect_to @bar48, notice: "Bar48 was successfully created." }
        format.json { render :show, status: :created, location: @bar48 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar48.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar48s/1 or /bar48s/1.json
  def update
    respond_to do |format|
      if @bar48.update(bar48_params)
        format.html { redirect_to @bar48, notice: "Bar48 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar48 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar48.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar48s/1 or /bar48s/1.json
  def destroy
    @bar48.destroy
    respond_to do |format|
      format.html { redirect_to bar48s_url, notice: "Bar48 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar48
      @bar48 = Bar48.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar48_params
      params.require(:bar48).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
