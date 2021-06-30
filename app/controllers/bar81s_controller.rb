class Bar81sController < ApplicationController
  before_action :set_bar81, only: %i[ show edit update destroy ]

  # GET /bar81s or /bar81s.json
  def index
    @bar81s = Bar81.all
  end

  # GET /bar81s/1 or /bar81s/1.json
  def show
  end

  # GET /bar81s/new
  def new
    @bar81 = Bar81.new
  end

  # GET /bar81s/1/edit
  def edit
  end

  # POST /bar81s or /bar81s.json
  def create
    @bar81 = Bar81.new(bar81_params)

    respond_to do |format|
      if @bar81.save
        format.html { redirect_to @bar81, notice: "Bar81 was successfully created." }
        format.json { render :show, status: :created, location: @bar81 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar81.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar81s/1 or /bar81s/1.json
  def update
    respond_to do |format|
      if @bar81.update(bar81_params)
        format.html { redirect_to @bar81, notice: "Bar81 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar81 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar81.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar81s/1 or /bar81s/1.json
  def destroy
    @bar81.destroy
    respond_to do |format|
      format.html { redirect_to bar81s_url, notice: "Bar81 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar81
      @bar81 = Bar81.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar81_params
      params.require(:bar81).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
