class Foo37sController < ApplicationController
  before_action :set_foo37, only: %i[ show edit update destroy ]

  # GET /foo37s or /foo37s.json
  def index
    @foo37s = Foo37.all
  end

  # GET /foo37s/1 or /foo37s/1.json
  def show
  end

  # GET /foo37s/new
  def new
    @foo37 = Foo37.new
  end

  # GET /foo37s/1/edit
  def edit
  end

  # POST /foo37s or /foo37s.json
  def create
    @foo37 = Foo37.new(foo37_params)

    respond_to do |format|
      if @foo37.save
        format.html { redirect_to @foo37, notice: "Foo37 was successfully created." }
        format.json { render :show, status: :created, location: @foo37 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo37.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo37s/1 or /foo37s/1.json
  def update
    respond_to do |format|
      if @foo37.update(foo37_params)
        format.html { redirect_to @foo37, notice: "Foo37 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo37 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo37.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo37s/1 or /foo37s/1.json
  def destroy
    @foo37.destroy
    respond_to do |format|
      format.html { redirect_to foo37s_url, notice: "Foo37 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo37
      @foo37 = Foo37.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo37_params
      params.require(:foo37).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
