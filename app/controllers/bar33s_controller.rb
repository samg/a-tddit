class Bar33sController < ApplicationController
  before_action :set_bar33, only: %i[ show edit update destroy ]

  # GET /bar33s or /bar33s.json
  def index
    @bar33s = Bar33.all
  end

  # GET /bar33s/1 or /bar33s/1.json
  def show
  end

  # GET /bar33s/new
  def new
    @bar33 = Bar33.new
  end

  # GET /bar33s/1/edit
  def edit
  end

  # POST /bar33s or /bar33s.json
  def create
    @bar33 = Bar33.new(bar33_params)

    respond_to do |format|
      if @bar33.save
        format.html { redirect_to @bar33, notice: "Bar33 was successfully created." }
        format.json { render :show, status: :created, location: @bar33 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar33.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar33s/1 or /bar33s/1.json
  def update
    respond_to do |format|
      if @bar33.update(bar33_params)
        format.html { redirect_to @bar33, notice: "Bar33 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar33 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar33.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar33s/1 or /bar33s/1.json
  def destroy
    @bar33.destroy
    respond_to do |format|
      format.html { redirect_to bar33s_url, notice: "Bar33 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar33
      @bar33 = Bar33.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar33_params
      params.require(:bar33).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
