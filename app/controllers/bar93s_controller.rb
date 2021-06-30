class Bar93sController < ApplicationController
  before_action :set_bar93, only: %i[ show edit update destroy ]

  # GET /bar93s or /bar93s.json
  def index
    @bar93s = Bar93.all
  end

  # GET /bar93s/1 or /bar93s/1.json
  def show
  end

  # GET /bar93s/new
  def new
    @bar93 = Bar93.new
  end

  # GET /bar93s/1/edit
  def edit
  end

  # POST /bar93s or /bar93s.json
  def create
    @bar93 = Bar93.new(bar93_params)

    respond_to do |format|
      if @bar93.save
        format.html { redirect_to @bar93, notice: "Bar93 was successfully created." }
        format.json { render :show, status: :created, location: @bar93 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar93.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar93s/1 or /bar93s/1.json
  def update
    respond_to do |format|
      if @bar93.update(bar93_params)
        format.html { redirect_to @bar93, notice: "Bar93 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar93 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar93.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar93s/1 or /bar93s/1.json
  def destroy
    @bar93.destroy
    respond_to do |format|
      format.html { redirect_to bar93s_url, notice: "Bar93 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar93
      @bar93 = Bar93.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar93_params
      params.require(:bar93).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
