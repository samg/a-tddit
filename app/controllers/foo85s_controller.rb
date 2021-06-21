class Foo85sController < ApplicationController
  before_action :set_foo85, only: %i[ show edit update destroy ]

  # GET /foo85s or /foo85s.json
  def index
    @foo85s = Foo85.all
  end

  # GET /foo85s/1 or /foo85s/1.json
  def show
  end

  # GET /foo85s/new
  def new
    @foo85 = Foo85.new
  end

  # GET /foo85s/1/edit
  def edit
  end

  # POST /foo85s or /foo85s.json
  def create
    @foo85 = Foo85.new(foo85_params)

    respond_to do |format|
      if @foo85.save
        format.html { redirect_to @foo85, notice: "Foo85 was successfully created." }
        format.json { render :show, status: :created, location: @foo85 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo85.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo85s/1 or /foo85s/1.json
  def update
    respond_to do |format|
      if @foo85.update(foo85_params)
        format.html { redirect_to @foo85, notice: "Foo85 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo85 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo85.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo85s/1 or /foo85s/1.json
  def destroy
    @foo85.destroy
    respond_to do |format|
      format.html { redirect_to foo85s_url, notice: "Foo85 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo85
      @foo85 = Foo85.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo85_params
      params.require(:foo85).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
