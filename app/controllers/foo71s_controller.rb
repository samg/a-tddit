class Foo71sController < ApplicationController
  before_action :set_foo71, only: %i[ show edit update destroy ]

  # GET /foo71s or /foo71s.json
  def index
    @foo71s = Foo71.all
  end

  # GET /foo71s/1 or /foo71s/1.json
  def show
  end

  # GET /foo71s/new
  def new
    @foo71 = Foo71.new
  end

  # GET /foo71s/1/edit
  def edit
  end

  # POST /foo71s or /foo71s.json
  def create
    @foo71 = Foo71.new(foo71_params)

    respond_to do |format|
      if @foo71.save
        format.html { redirect_to @foo71, notice: "Foo71 was successfully created." }
        format.json { render :show, status: :created, location: @foo71 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo71.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo71s/1 or /foo71s/1.json
  def update
    respond_to do |format|
      if @foo71.update(foo71_params)
        format.html { redirect_to @foo71, notice: "Foo71 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo71 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo71.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo71s/1 or /foo71s/1.json
  def destroy
    @foo71.destroy
    respond_to do |format|
      format.html { redirect_to foo71s_url, notice: "Foo71 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo71
      @foo71 = Foo71.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo71_params
      params.require(:foo71).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
