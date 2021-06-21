class Foo24sController < ApplicationController
  before_action :set_foo24, only: %i[ show edit update destroy ]

  # GET /foo24s or /foo24s.json
  def index
    @foo24s = Foo24.all
  end

  # GET /foo24s/1 or /foo24s/1.json
  def show
  end

  # GET /foo24s/new
  def new
    @foo24 = Foo24.new
  end

  # GET /foo24s/1/edit
  def edit
  end

  # POST /foo24s or /foo24s.json
  def create
    @foo24 = Foo24.new(foo24_params)

    respond_to do |format|
      if @foo24.save
        format.html { redirect_to @foo24, notice: "Foo24 was successfully created." }
        format.json { render :show, status: :created, location: @foo24 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo24.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo24s/1 or /foo24s/1.json
  def update
    respond_to do |format|
      if @foo24.update(foo24_params)
        format.html { redirect_to @foo24, notice: "Foo24 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo24 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo24.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo24s/1 or /foo24s/1.json
  def destroy
    @foo24.destroy
    respond_to do |format|
      format.html { redirect_to foo24s_url, notice: "Foo24 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo24
      @foo24 = Foo24.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo24_params
      params.require(:foo24).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
