class Bar86sController < ApplicationController
  before_action :set_bar86, only: %i[ show edit update destroy ]

  # GET /bar86s or /bar86s.json
  def index
    @bar86s = Bar86.all
  end

  # GET /bar86s/1 or /bar86s/1.json
  def show
  end

  # GET /bar86s/new
  def new
    @bar86 = Bar86.new
  end

  # GET /bar86s/1/edit
  def edit
  end

  # POST /bar86s or /bar86s.json
  def create
    @bar86 = Bar86.new(bar86_params)

    respond_to do |format|
      if @bar86.save
        format.html { redirect_to @bar86, notice: "Bar86 was successfully created." }
        format.json { render :show, status: :created, location: @bar86 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar86.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar86s/1 or /bar86s/1.json
  def update
    respond_to do |format|
      if @bar86.update(bar86_params)
        format.html { redirect_to @bar86, notice: "Bar86 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar86 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar86.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar86s/1 or /bar86s/1.json
  def destroy
    @bar86.destroy
    respond_to do |format|
      format.html { redirect_to bar86s_url, notice: "Bar86 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar86
      @bar86 = Bar86.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar86_params
      params.require(:bar86).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
