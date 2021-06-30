class Bar29sController < ApplicationController
  before_action :set_bar29, only: %i[ show edit update destroy ]

  # GET /bar29s or /bar29s.json
  def index
    @bar29s = Bar29.all
  end

  # GET /bar29s/1 or /bar29s/1.json
  def show
  end

  # GET /bar29s/new
  def new
    @bar29 = Bar29.new
  end

  # GET /bar29s/1/edit
  def edit
  end

  # POST /bar29s or /bar29s.json
  def create
    @bar29 = Bar29.new(bar29_params)

    respond_to do |format|
      if @bar29.save
        format.html { redirect_to @bar29, notice: "Bar29 was successfully created." }
        format.json { render :show, status: :created, location: @bar29 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar29.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar29s/1 or /bar29s/1.json
  def update
    respond_to do |format|
      if @bar29.update(bar29_params)
        format.html { redirect_to @bar29, notice: "Bar29 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar29 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar29.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar29s/1 or /bar29s/1.json
  def destroy
    @bar29.destroy
    respond_to do |format|
      format.html { redirect_to bar29s_url, notice: "Bar29 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar29
      @bar29 = Bar29.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar29_params
      params.require(:bar29).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
