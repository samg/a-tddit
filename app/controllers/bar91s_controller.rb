class Bar91sController < ApplicationController
  before_action :set_bar91, only: %i[ show edit update destroy ]

  # GET /bar91s or /bar91s.json
  def index
    @bar91s = Bar91.all
  end

  # GET /bar91s/1 or /bar91s/1.json
  def show
  end

  # GET /bar91s/new
  def new
    @bar91 = Bar91.new
  end

  # GET /bar91s/1/edit
  def edit
  end

  # POST /bar91s or /bar91s.json
  def create
    @bar91 = Bar91.new(bar91_params)

    respond_to do |format|
      if @bar91.save
        format.html { redirect_to @bar91, notice: "Bar91 was successfully created." }
        format.json { render :show, status: :created, location: @bar91 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar91.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar91s/1 or /bar91s/1.json
  def update
    respond_to do |format|
      if @bar91.update(bar91_params)
        format.html { redirect_to @bar91, notice: "Bar91 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar91 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar91.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar91s/1 or /bar91s/1.json
  def destroy
    @bar91.destroy
    respond_to do |format|
      format.html { redirect_to bar91s_url, notice: "Bar91 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar91
      @bar91 = Bar91.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar91_params
      params.require(:bar91).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
