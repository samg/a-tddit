class Bar35sController < ApplicationController
  before_action :set_bar35, only: %i[ show edit update destroy ]

  # GET /bar35s or /bar35s.json
  def index
    @bar35s = Bar35.all
  end

  # GET /bar35s/1 or /bar35s/1.json
  def show
  end

  # GET /bar35s/new
  def new
    @bar35 = Bar35.new
  end

  # GET /bar35s/1/edit
  def edit
  end

  # POST /bar35s or /bar35s.json
  def create
    @bar35 = Bar35.new(bar35_params)

    respond_to do |format|
      if @bar35.save
        format.html { redirect_to @bar35, notice: "Bar35 was successfully created." }
        format.json { render :show, status: :created, location: @bar35 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar35.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar35s/1 or /bar35s/1.json
  def update
    respond_to do |format|
      if @bar35.update(bar35_params)
        format.html { redirect_to @bar35, notice: "Bar35 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar35 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar35.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar35s/1 or /bar35s/1.json
  def destroy
    @bar35.destroy
    respond_to do |format|
      format.html { redirect_to bar35s_url, notice: "Bar35 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar35
      @bar35 = Bar35.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar35_params
      params.require(:bar35).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
