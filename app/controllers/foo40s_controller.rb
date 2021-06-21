class Foo40sController < ApplicationController
  before_action :set_foo40, only: %i[ show edit update destroy ]

  # GET /foo40s or /foo40s.json
  def index
    @foo40s = Foo40.all
  end

  # GET /foo40s/1 or /foo40s/1.json
  def show
  end

  # GET /foo40s/new
  def new
    @foo40 = Foo40.new
  end

  # GET /foo40s/1/edit
  def edit
  end

  # POST /foo40s or /foo40s.json
  def create
    @foo40 = Foo40.new(foo40_params)

    respond_to do |format|
      if @foo40.save
        format.html { redirect_to @foo40, notice: "Foo40 was successfully created." }
        format.json { render :show, status: :created, location: @foo40 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo40.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo40s/1 or /foo40s/1.json
  def update
    respond_to do |format|
      if @foo40.update(foo40_params)
        format.html { redirect_to @foo40, notice: "Foo40 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo40 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo40.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo40s/1 or /foo40s/1.json
  def destroy
    @foo40.destroy
    respond_to do |format|
      format.html { redirect_to foo40s_url, notice: "Foo40 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo40
      @foo40 = Foo40.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo40_params
      params.require(:foo40).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
