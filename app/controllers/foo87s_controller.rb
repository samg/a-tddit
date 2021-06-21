class Foo87sController < ApplicationController
  before_action :set_foo87, only: %i[ show edit update destroy ]

  # GET /foo87s or /foo87s.json
  def index
    @foo87s = Foo87.all
  end

  # GET /foo87s/1 or /foo87s/1.json
  def show
  end

  # GET /foo87s/new
  def new
    @foo87 = Foo87.new
  end

  # GET /foo87s/1/edit
  def edit
  end

  # POST /foo87s or /foo87s.json
  def create
    @foo87 = Foo87.new(foo87_params)

    respond_to do |format|
      if @foo87.save
        format.html { redirect_to @foo87, notice: "Foo87 was successfully created." }
        format.json { render :show, status: :created, location: @foo87 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo87.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo87s/1 or /foo87s/1.json
  def update
    respond_to do |format|
      if @foo87.update(foo87_params)
        format.html { redirect_to @foo87, notice: "Foo87 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo87 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo87.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo87s/1 or /foo87s/1.json
  def destroy
    @foo87.destroy
    respond_to do |format|
      format.html { redirect_to foo87s_url, notice: "Foo87 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo87
      @foo87 = Foo87.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo87_params
      params.require(:foo87).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
