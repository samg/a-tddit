class Foo32sController < ApplicationController
  before_action :set_foo32, only: %i[ show edit update destroy ]

  # GET /foo32s or /foo32s.json
  def index
    @foo32s = Foo32.all
  end

  # GET /foo32s/1 or /foo32s/1.json
  def show
  end

  # GET /foo32s/new
  def new
    @foo32 = Foo32.new
  end

  # GET /foo32s/1/edit
  def edit
  end

  # POST /foo32s or /foo32s.json
  def create
    @foo32 = Foo32.new(foo32_params)

    respond_to do |format|
      if @foo32.save
        format.html { redirect_to @foo32, notice: "Foo32 was successfully created." }
        format.json { render :show, status: :created, location: @foo32 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo32.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo32s/1 or /foo32s/1.json
  def update
    respond_to do |format|
      if @foo32.update(foo32_params)
        format.html { redirect_to @foo32, notice: "Foo32 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo32 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo32.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo32s/1 or /foo32s/1.json
  def destroy
    @foo32.destroy
    respond_to do |format|
      format.html { redirect_to foo32s_url, notice: "Foo32 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo32
      @foo32 = Foo32.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo32_params
      params.require(:foo32).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
