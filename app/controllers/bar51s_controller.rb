class Bar51sController < ApplicationController
  before_action :set_bar51, only: %i[ show edit update destroy ]

  # GET /bar51s or /bar51s.json
  def index
    @bar51s = Bar51.all
  end

  # GET /bar51s/1 or /bar51s/1.json
  def show
  end

  # GET /bar51s/new
  def new
    @bar51 = Bar51.new
  end

  # GET /bar51s/1/edit
  def edit
  end

  # POST /bar51s or /bar51s.json
  def create
    @bar51 = Bar51.new(bar51_params)

    respond_to do |format|
      if @bar51.save
        format.html { redirect_to @bar51, notice: "Bar51 was successfully created." }
        format.json { render :show, status: :created, location: @bar51 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar51.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar51s/1 or /bar51s/1.json
  def update
    respond_to do |format|
      if @bar51.update(bar51_params)
        format.html { redirect_to @bar51, notice: "Bar51 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar51 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar51.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar51s/1 or /bar51s/1.json
  def destroy
    @bar51.destroy
    respond_to do |format|
      format.html { redirect_to bar51s_url, notice: "Bar51 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar51
      @bar51 = Bar51.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar51_params
      params.require(:bar51).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
