class Bar47sController < ApplicationController
  before_action :set_bar47, only: %i[ show edit update destroy ]

  # GET /bar47s or /bar47s.json
  def index
    @bar47s = Bar47.all
  end

  # GET /bar47s/1 or /bar47s/1.json
  def show
  end

  # GET /bar47s/new
  def new
    @bar47 = Bar47.new
  end

  # GET /bar47s/1/edit
  def edit
  end

  # POST /bar47s or /bar47s.json
  def create
    @bar47 = Bar47.new(bar47_params)

    respond_to do |format|
      if @bar47.save
        format.html { redirect_to @bar47, notice: "Bar47 was successfully created." }
        format.json { render :show, status: :created, location: @bar47 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar47.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar47s/1 or /bar47s/1.json
  def update
    respond_to do |format|
      if @bar47.update(bar47_params)
        format.html { redirect_to @bar47, notice: "Bar47 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar47 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar47.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar47s/1 or /bar47s/1.json
  def destroy
    @bar47.destroy
    respond_to do |format|
      format.html { redirect_to bar47s_url, notice: "Bar47 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar47
      @bar47 = Bar47.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar47_params
      params.require(:bar47).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
