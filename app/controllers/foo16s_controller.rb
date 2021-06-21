class Foo16sController < ApplicationController
  before_action :set_foo16, only: %i[ show edit update destroy ]

  # GET /foo16s or /foo16s.json
  def index
    @foo16s = Foo16.all
  end

  # GET /foo16s/1 or /foo16s/1.json
  def show
  end

  # GET /foo16s/new
  def new
    @foo16 = Foo16.new
  end

  # GET /foo16s/1/edit
  def edit
  end

  # POST /foo16s or /foo16s.json
  def create
    @foo16 = Foo16.new(foo16_params)

    respond_to do |format|
      if @foo16.save
        format.html { redirect_to @foo16, notice: "Foo16 was successfully created." }
        format.json { render :show, status: :created, location: @foo16 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo16.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo16s/1 or /foo16s/1.json
  def update
    respond_to do |format|
      if @foo16.update(foo16_params)
        format.html { redirect_to @foo16, notice: "Foo16 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo16 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo16.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo16s/1 or /foo16s/1.json
  def destroy
    @foo16.destroy
    respond_to do |format|
      format.html { redirect_to foo16s_url, notice: "Foo16 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo16
      @foo16 = Foo16.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo16_params
      params.require(:foo16).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
