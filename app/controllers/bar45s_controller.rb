class Bar45sController < ApplicationController
  before_action :set_bar45, only: %i[ show edit update destroy ]

  # GET /bar45s or /bar45s.json
  def index
    @bar45s = Bar45.all
  end

  # GET /bar45s/1 or /bar45s/1.json
  def show
  end

  # GET /bar45s/new
  def new
    @bar45 = Bar45.new
  end

  # GET /bar45s/1/edit
  def edit
  end

  # POST /bar45s or /bar45s.json
  def create
    @bar45 = Bar45.new(bar45_params)

    respond_to do |format|
      if @bar45.save
        format.html { redirect_to @bar45, notice: "Bar45 was successfully created." }
        format.json { render :show, status: :created, location: @bar45 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar45.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar45s/1 or /bar45s/1.json
  def update
    respond_to do |format|
      if @bar45.update(bar45_params)
        format.html { redirect_to @bar45, notice: "Bar45 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar45 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar45.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar45s/1 or /bar45s/1.json
  def destroy
    @bar45.destroy
    respond_to do |format|
      format.html { redirect_to bar45s_url, notice: "Bar45 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar45
      @bar45 = Bar45.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar45_params
      params.require(:bar45).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
