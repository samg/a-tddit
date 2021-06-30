class Bar54sController < ApplicationController
  before_action :set_bar54, only: %i[ show edit update destroy ]

  # GET /bar54s or /bar54s.json
  def index
    @bar54s = Bar54.all
  end

  # GET /bar54s/1 or /bar54s/1.json
  def show
  end

  # GET /bar54s/new
  def new
    @bar54 = Bar54.new
  end

  # GET /bar54s/1/edit
  def edit
  end

  # POST /bar54s or /bar54s.json
  def create
    @bar54 = Bar54.new(bar54_params)

    respond_to do |format|
      if @bar54.save
        format.html { redirect_to @bar54, notice: "Bar54 was successfully created." }
        format.json { render :show, status: :created, location: @bar54 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar54.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar54s/1 or /bar54s/1.json
  def update
    respond_to do |format|
      if @bar54.update(bar54_params)
        format.html { redirect_to @bar54, notice: "Bar54 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar54 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar54.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar54s/1 or /bar54s/1.json
  def destroy
    @bar54.destroy
    respond_to do |format|
      format.html { redirect_to bar54s_url, notice: "Bar54 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar54
      @bar54 = Bar54.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar54_params
      params.require(:bar54).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
