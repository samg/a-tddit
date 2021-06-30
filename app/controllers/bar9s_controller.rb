class Bar9sController < ApplicationController
  before_action :set_bar9, only: %i[ show edit update destroy ]

  # GET /bar9s or /bar9s.json
  def index
    @bar9s = Bar9.all
  end

  # GET /bar9s/1 or /bar9s/1.json
  def show
  end

  # GET /bar9s/new
  def new
    @bar9 = Bar9.new
  end

  # GET /bar9s/1/edit
  def edit
  end

  # POST /bar9s or /bar9s.json
  def create
    @bar9 = Bar9.new(bar9_params)

    respond_to do |format|
      if @bar9.save
        format.html { redirect_to @bar9, notice: "Bar9 was successfully created." }
        format.json { render :show, status: :created, location: @bar9 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar9s/1 or /bar9s/1.json
  def update
    respond_to do |format|
      if @bar9.update(bar9_params)
        format.html { redirect_to @bar9, notice: "Bar9 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar9 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar9s/1 or /bar9s/1.json
  def destroy
    @bar9.destroy
    respond_to do |format|
      format.html { redirect_to bar9s_url, notice: "Bar9 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar9
      @bar9 = Bar9.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar9_params
      params.require(:bar9).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
