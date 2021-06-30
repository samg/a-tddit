class Bar50sController < ApplicationController
  before_action :set_bar50, only: %i[ show edit update destroy ]

  # GET /bar50s or /bar50s.json
  def index
    @bar50s = Bar50.all
  end

  # GET /bar50s/1 or /bar50s/1.json
  def show
  end

  # GET /bar50s/new
  def new
    @bar50 = Bar50.new
  end

  # GET /bar50s/1/edit
  def edit
  end

  # POST /bar50s or /bar50s.json
  def create
    @bar50 = Bar50.new(bar50_params)

    respond_to do |format|
      if @bar50.save
        format.html { redirect_to @bar50, notice: "Bar50 was successfully created." }
        format.json { render :show, status: :created, location: @bar50 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar50.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar50s/1 or /bar50s/1.json
  def update
    respond_to do |format|
      if @bar50.update(bar50_params)
        format.html { redirect_to @bar50, notice: "Bar50 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar50 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar50.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar50s/1 or /bar50s/1.json
  def destroy
    @bar50.destroy
    respond_to do |format|
      format.html { redirect_to bar50s_url, notice: "Bar50 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar50
      @bar50 = Bar50.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar50_params
      params.require(:bar50).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
