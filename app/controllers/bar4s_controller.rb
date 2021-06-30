class Bar4sController < ApplicationController
  before_action :set_bar4, only: %i[ show edit update destroy ]

  # GET /bar4s or /bar4s.json
  def index
    @bar4s = Bar4.all
  end

  # GET /bar4s/1 or /bar4s/1.json
  def show
  end

  # GET /bar4s/new
  def new
    @bar4 = Bar4.new
  end

  # GET /bar4s/1/edit
  def edit
  end

  # POST /bar4s or /bar4s.json
  def create
    @bar4 = Bar4.new(bar4_params)

    respond_to do |format|
      if @bar4.save
        format.html { redirect_to @bar4, notice: "Bar4 was successfully created." }
        format.json { render :show, status: :created, location: @bar4 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar4s/1 or /bar4s/1.json
  def update
    respond_to do |format|
      if @bar4.update(bar4_params)
        format.html { redirect_to @bar4, notice: "Bar4 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar4 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar4s/1 or /bar4s/1.json
  def destroy
    @bar4.destroy
    respond_to do |format|
      format.html { redirect_to bar4s_url, notice: "Bar4 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar4
      @bar4 = Bar4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar4_params
      params.require(:bar4).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
