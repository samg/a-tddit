class Foo4sController < ApplicationController
  before_action :set_foo4, only: %i[ show edit update destroy ]

  # GET /foo4s or /foo4s.json
  def index
    @foo4s = Foo4.all
  end

  # GET /foo4s/1 or /foo4s/1.json
  def show
  end

  # GET /foo4s/new
  def new
    @foo4 = Foo4.new
  end

  # GET /foo4s/1/edit
  def edit
  end

  # POST /foo4s or /foo4s.json
  def create
    @foo4 = Foo4.new(foo4_params)

    respond_to do |format|
      if @foo4.save
        format.html { redirect_to @foo4, notice: "Foo4 was successfully created." }
        format.json { render :show, status: :created, location: @foo4 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo4s/1 or /foo4s/1.json
  def update
    respond_to do |format|
      if @foo4.update(foo4_params)
        format.html { redirect_to @foo4, notice: "Foo4 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo4 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo4s/1 or /foo4s/1.json
  def destroy
    @foo4.destroy
    respond_to do |format|
      format.html { redirect_to foo4s_url, notice: "Foo4 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo4
      @foo4 = Foo4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo4_params
      params.require(:foo4).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
