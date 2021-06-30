class Bar31sController < ApplicationController
  before_action :set_bar31, only: %i[ show edit update destroy ]

  # GET /bar31s or /bar31s.json
  def index
    @bar31s = Bar31.all
  end

  # GET /bar31s/1 or /bar31s/1.json
  def show
  end

  # GET /bar31s/new
  def new
    @bar31 = Bar31.new
  end

  # GET /bar31s/1/edit
  def edit
  end

  # POST /bar31s or /bar31s.json
  def create
    @bar31 = Bar31.new(bar31_params)

    respond_to do |format|
      if @bar31.save
        format.html { redirect_to @bar31, notice: "Bar31 was successfully created." }
        format.json { render :show, status: :created, location: @bar31 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar31.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar31s/1 or /bar31s/1.json
  def update
    respond_to do |format|
      if @bar31.update(bar31_params)
        format.html { redirect_to @bar31, notice: "Bar31 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar31 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar31.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar31s/1 or /bar31s/1.json
  def destroy
    @bar31.destroy
    respond_to do |format|
      format.html { redirect_to bar31s_url, notice: "Bar31 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar31
      @bar31 = Bar31.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar31_params
      params.require(:bar31).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
