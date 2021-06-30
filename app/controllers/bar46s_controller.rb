class Bar46sController < ApplicationController
  before_action :set_bar46, only: %i[ show edit update destroy ]

  # GET /bar46s or /bar46s.json
  def index
    @bar46s = Bar46.all
  end

  # GET /bar46s/1 or /bar46s/1.json
  def show
  end

  # GET /bar46s/new
  def new
    @bar46 = Bar46.new
  end

  # GET /bar46s/1/edit
  def edit
  end

  # POST /bar46s or /bar46s.json
  def create
    @bar46 = Bar46.new(bar46_params)

    respond_to do |format|
      if @bar46.save
        format.html { redirect_to @bar46, notice: "Bar46 was successfully created." }
        format.json { render :show, status: :created, location: @bar46 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar46.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar46s/1 or /bar46s/1.json
  def update
    respond_to do |format|
      if @bar46.update(bar46_params)
        format.html { redirect_to @bar46, notice: "Bar46 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar46 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar46.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar46s/1 or /bar46s/1.json
  def destroy
    @bar46.destroy
    respond_to do |format|
      format.html { redirect_to bar46s_url, notice: "Bar46 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar46
      @bar46 = Bar46.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar46_params
      params.require(:bar46).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
