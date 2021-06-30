class Bar19sController < ApplicationController
  before_action :set_bar19, only: %i[ show edit update destroy ]

  # GET /bar19s or /bar19s.json
  def index
    @bar19s = Bar19.all
  end

  # GET /bar19s/1 or /bar19s/1.json
  def show
  end

  # GET /bar19s/new
  def new
    @bar19 = Bar19.new
  end

  # GET /bar19s/1/edit
  def edit
  end

  # POST /bar19s or /bar19s.json
  def create
    @bar19 = Bar19.new(bar19_params)

    respond_to do |format|
      if @bar19.save
        format.html { redirect_to @bar19, notice: "Bar19 was successfully created." }
        format.json { render :show, status: :created, location: @bar19 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar19.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar19s/1 or /bar19s/1.json
  def update
    respond_to do |format|
      if @bar19.update(bar19_params)
        format.html { redirect_to @bar19, notice: "Bar19 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar19 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar19.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar19s/1 or /bar19s/1.json
  def destroy
    @bar19.destroy
    respond_to do |format|
      format.html { redirect_to bar19s_url, notice: "Bar19 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar19
      @bar19 = Bar19.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar19_params
      params.require(:bar19).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
