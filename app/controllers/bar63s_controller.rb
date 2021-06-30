class Bar63sController < ApplicationController
  before_action :set_bar63, only: %i[ show edit update destroy ]

  # GET /bar63s or /bar63s.json
  def index
    @bar63s = Bar63.all
  end

  # GET /bar63s/1 or /bar63s/1.json
  def show
  end

  # GET /bar63s/new
  def new
    @bar63 = Bar63.new
  end

  # GET /bar63s/1/edit
  def edit
  end

  # POST /bar63s or /bar63s.json
  def create
    @bar63 = Bar63.new(bar63_params)

    respond_to do |format|
      if @bar63.save
        format.html { redirect_to @bar63, notice: "Bar63 was successfully created." }
        format.json { render :show, status: :created, location: @bar63 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar63.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar63s/1 or /bar63s/1.json
  def update
    respond_to do |format|
      if @bar63.update(bar63_params)
        format.html { redirect_to @bar63, notice: "Bar63 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar63 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar63.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar63s/1 or /bar63s/1.json
  def destroy
    @bar63.destroy
    respond_to do |format|
      format.html { redirect_to bar63s_url, notice: "Bar63 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar63
      @bar63 = Bar63.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar63_params
      params.require(:bar63).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
