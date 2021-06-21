class Foo69sController < ApplicationController
  before_action :set_foo69, only: %i[ show edit update destroy ]

  # GET /foo69s or /foo69s.json
  def index
    @foo69s = Foo69.all
  end

  # GET /foo69s/1 or /foo69s/1.json
  def show
  end

  # GET /foo69s/new
  def new
    @foo69 = Foo69.new
  end

  # GET /foo69s/1/edit
  def edit
  end

  # POST /foo69s or /foo69s.json
  def create
    @foo69 = Foo69.new(foo69_params)

    respond_to do |format|
      if @foo69.save
        format.html { redirect_to @foo69, notice: "Foo69 was successfully created." }
        format.json { render :show, status: :created, location: @foo69 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo69.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo69s/1 or /foo69s/1.json
  def update
    respond_to do |format|
      if @foo69.update(foo69_params)
        format.html { redirect_to @foo69, notice: "Foo69 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo69 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo69.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo69s/1 or /foo69s/1.json
  def destroy
    @foo69.destroy
    respond_to do |format|
      format.html { redirect_to foo69s_url, notice: "Foo69 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo69
      @foo69 = Foo69.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo69_params
      params.require(:foo69).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
