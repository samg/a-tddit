class Bar25sController < ApplicationController
  before_action :set_bar25, only: %i[ show edit update destroy ]

  # GET /bar25s or /bar25s.json
  def index
    @bar25s = Bar25.all
  end

  # GET /bar25s/1 or /bar25s/1.json
  def show
  end

  # GET /bar25s/new
  def new
    @bar25 = Bar25.new
  end

  # GET /bar25s/1/edit
  def edit
  end

  # POST /bar25s or /bar25s.json
  def create
    @bar25 = Bar25.new(bar25_params)

    respond_to do |format|
      if @bar25.save
        format.html { redirect_to @bar25, notice: "Bar25 was successfully created." }
        format.json { render :show, status: :created, location: @bar25 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar25.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar25s/1 or /bar25s/1.json
  def update
    respond_to do |format|
      if @bar25.update(bar25_params)
        format.html { redirect_to @bar25, notice: "Bar25 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar25 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar25.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar25s/1 or /bar25s/1.json
  def destroy
    @bar25.destroy
    respond_to do |format|
      format.html { redirect_to bar25s_url, notice: "Bar25 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar25
      @bar25 = Bar25.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar25_params
      params.require(:bar25).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
