class Bar24sController < ApplicationController
  before_action :set_bar24, only: %i[ show edit update destroy ]

  # GET /bar24s or /bar24s.json
  def index
    @bar24s = Bar24.all
  end

  # GET /bar24s/1 or /bar24s/1.json
  def show
  end

  # GET /bar24s/new
  def new
    @bar24 = Bar24.new
  end

  # GET /bar24s/1/edit
  def edit
  end

  # POST /bar24s or /bar24s.json
  def create
    @bar24 = Bar24.new(bar24_params)

    respond_to do |format|
      if @bar24.save
        format.html { redirect_to @bar24, notice: "Bar24 was successfully created." }
        format.json { render :show, status: :created, location: @bar24 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar24.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar24s/1 or /bar24s/1.json
  def update
    respond_to do |format|
      if @bar24.update(bar24_params)
        format.html { redirect_to @bar24, notice: "Bar24 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar24 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar24.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar24s/1 or /bar24s/1.json
  def destroy
    @bar24.destroy
    respond_to do |format|
      format.html { redirect_to bar24s_url, notice: "Bar24 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar24
      @bar24 = Bar24.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar24_params
      params.require(:bar24).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
