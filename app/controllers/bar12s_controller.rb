class Bar12sController < ApplicationController
  before_action :set_bar12, only: %i[ show edit update destroy ]

  # GET /bar12s or /bar12s.json
  def index
    @bar12s = Bar12.all
  end

  # GET /bar12s/1 or /bar12s/1.json
  def show
  end

  # GET /bar12s/new
  def new
    @bar12 = Bar12.new
  end

  # GET /bar12s/1/edit
  def edit
  end

  # POST /bar12s or /bar12s.json
  def create
    @bar12 = Bar12.new(bar12_params)

    respond_to do |format|
      if @bar12.save
        format.html { redirect_to @bar12, notice: "Bar12 was successfully created." }
        format.json { render :show, status: :created, location: @bar12 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar12.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar12s/1 or /bar12s/1.json
  def update
    respond_to do |format|
      if @bar12.update(bar12_params)
        format.html { redirect_to @bar12, notice: "Bar12 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar12 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar12.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar12s/1 or /bar12s/1.json
  def destroy
    @bar12.destroy
    respond_to do |format|
      format.html { redirect_to bar12s_url, notice: "Bar12 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar12
      @bar12 = Bar12.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar12_params
      params.require(:bar12).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
