class Bar43sController < ApplicationController
  before_action :set_bar43, only: %i[ show edit update destroy ]

  # GET /bar43s or /bar43s.json
  def index
    @bar43s = Bar43.all
  end

  # GET /bar43s/1 or /bar43s/1.json
  def show
  end

  # GET /bar43s/new
  def new
    @bar43 = Bar43.new
  end

  # GET /bar43s/1/edit
  def edit
  end

  # POST /bar43s or /bar43s.json
  def create
    @bar43 = Bar43.new(bar43_params)

    respond_to do |format|
      if @bar43.save
        format.html { redirect_to @bar43, notice: "Bar43 was successfully created." }
        format.json { render :show, status: :created, location: @bar43 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar43.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar43s/1 or /bar43s/1.json
  def update
    respond_to do |format|
      if @bar43.update(bar43_params)
        format.html { redirect_to @bar43, notice: "Bar43 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar43 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar43.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar43s/1 or /bar43s/1.json
  def destroy
    @bar43.destroy
    respond_to do |format|
      format.html { redirect_to bar43s_url, notice: "Bar43 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar43
      @bar43 = Bar43.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar43_params
      params.require(:bar43).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
