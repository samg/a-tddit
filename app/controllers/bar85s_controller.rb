class Bar85sController < ApplicationController
  before_action :set_bar85, only: %i[ show edit update destroy ]

  # GET /bar85s or /bar85s.json
  def index
    @bar85s = Bar85.all
  end

  # GET /bar85s/1 or /bar85s/1.json
  def show
  end

  # GET /bar85s/new
  def new
    @bar85 = Bar85.new
  end

  # GET /bar85s/1/edit
  def edit
  end

  # POST /bar85s or /bar85s.json
  def create
    @bar85 = Bar85.new(bar85_params)

    respond_to do |format|
      if @bar85.save
        format.html { redirect_to @bar85, notice: "Bar85 was successfully created." }
        format.json { render :show, status: :created, location: @bar85 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar85.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar85s/1 or /bar85s/1.json
  def update
    respond_to do |format|
      if @bar85.update(bar85_params)
        format.html { redirect_to @bar85, notice: "Bar85 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar85 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar85.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar85s/1 or /bar85s/1.json
  def destroy
    @bar85.destroy
    respond_to do |format|
      format.html { redirect_to bar85s_url, notice: "Bar85 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar85
      @bar85 = Bar85.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar85_params
      params.require(:bar85).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
