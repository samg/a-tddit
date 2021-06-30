class Bar71sController < ApplicationController
  before_action :set_bar71, only: %i[ show edit update destroy ]

  # GET /bar71s or /bar71s.json
  def index
    @bar71s = Bar71.all
  end

  # GET /bar71s/1 or /bar71s/1.json
  def show
  end

  # GET /bar71s/new
  def new
    @bar71 = Bar71.new
  end

  # GET /bar71s/1/edit
  def edit
  end

  # POST /bar71s or /bar71s.json
  def create
    @bar71 = Bar71.new(bar71_params)

    respond_to do |format|
      if @bar71.save
        format.html { redirect_to @bar71, notice: "Bar71 was successfully created." }
        format.json { render :show, status: :created, location: @bar71 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar71.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar71s/1 or /bar71s/1.json
  def update
    respond_to do |format|
      if @bar71.update(bar71_params)
        format.html { redirect_to @bar71, notice: "Bar71 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar71 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar71.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar71s/1 or /bar71s/1.json
  def destroy
    @bar71.destroy
    respond_to do |format|
      format.html { redirect_to bar71s_url, notice: "Bar71 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar71
      @bar71 = Bar71.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar71_params
      params.require(:bar71).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
