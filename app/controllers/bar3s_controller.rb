class Bar3sController < ApplicationController
  before_action :set_bar3, only: %i[ show edit update destroy ]

  # GET /bar3s or /bar3s.json
  def index
    @bar3s = Bar3.all
  end

  # GET /bar3s/1 or /bar3s/1.json
  def show
  end

  # GET /bar3s/new
  def new
    @bar3 = Bar3.new
  end

  # GET /bar3s/1/edit
  def edit
  end

  # POST /bar3s or /bar3s.json
  def create
    @bar3 = Bar3.new(bar3_params)

    respond_to do |format|
      if @bar3.save
        format.html { redirect_to @bar3, notice: "Bar3 was successfully created." }
        format.json { render :show, status: :created, location: @bar3 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar3s/1 or /bar3s/1.json
  def update
    respond_to do |format|
      if @bar3.update(bar3_params)
        format.html { redirect_to @bar3, notice: "Bar3 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar3 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar3s/1 or /bar3s/1.json
  def destroy
    @bar3.destroy
    respond_to do |format|
      format.html { redirect_to bar3s_url, notice: "Bar3 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar3
      @bar3 = Bar3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar3_params
      params.require(:bar3).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
