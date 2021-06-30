class Bar83sController < ApplicationController
  before_action :set_bar83, only: %i[ show edit update destroy ]

  # GET /bar83s or /bar83s.json
  def index
    @bar83s = Bar83.all
  end

  # GET /bar83s/1 or /bar83s/1.json
  def show
  end

  # GET /bar83s/new
  def new
    @bar83 = Bar83.new
  end

  # GET /bar83s/1/edit
  def edit
  end

  # POST /bar83s or /bar83s.json
  def create
    @bar83 = Bar83.new(bar83_params)

    respond_to do |format|
      if @bar83.save
        format.html { redirect_to @bar83, notice: "Bar83 was successfully created." }
        format.json { render :show, status: :created, location: @bar83 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar83.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar83s/1 or /bar83s/1.json
  def update
    respond_to do |format|
      if @bar83.update(bar83_params)
        format.html { redirect_to @bar83, notice: "Bar83 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar83 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar83.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar83s/1 or /bar83s/1.json
  def destroy
    @bar83.destroy
    respond_to do |format|
      format.html { redirect_to bar83s_url, notice: "Bar83 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar83
      @bar83 = Bar83.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar83_params
      params.require(:bar83).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
