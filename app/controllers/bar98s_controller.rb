class Bar98sController < ApplicationController
  before_action :set_bar98, only: %i[ show edit update destroy ]

  # GET /bar98s or /bar98s.json
  def index
    @bar98s = Bar98.all
  end

  # GET /bar98s/1 or /bar98s/1.json
  def show
  end

  # GET /bar98s/new
  def new
    @bar98 = Bar98.new
  end

  # GET /bar98s/1/edit
  def edit
  end

  # POST /bar98s or /bar98s.json
  def create
    @bar98 = Bar98.new(bar98_params)

    respond_to do |format|
      if @bar98.save
        format.html { redirect_to @bar98, notice: "Bar98 was successfully created." }
        format.json { render :show, status: :created, location: @bar98 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar98.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar98s/1 or /bar98s/1.json
  def update
    respond_to do |format|
      if @bar98.update(bar98_params)
        format.html { redirect_to @bar98, notice: "Bar98 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar98 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar98.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar98s/1 or /bar98s/1.json
  def destroy
    @bar98.destroy
    respond_to do |format|
      format.html { redirect_to bar98s_url, notice: "Bar98 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar98
      @bar98 = Bar98.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar98_params
      params.require(:bar98).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
