class Foo3sController < ApplicationController
  before_action :set_foo3, only: %i[ show edit update destroy ]

  # GET /foo3s or /foo3s.json
  def index
    @foo3s = Foo3.all
  end

  # GET /foo3s/1 or /foo3s/1.json
  def show
  end

  # GET /foo3s/new
  def new
    @foo3 = Foo3.new
  end

  # GET /foo3s/1/edit
  def edit
  end

  # POST /foo3s or /foo3s.json
  def create
    @foo3 = Foo3.new(foo3_params)

    respond_to do |format|
      if @foo3.save
        format.html { redirect_to @foo3, notice: "Foo3 was successfully created." }
        format.json { render :show, status: :created, location: @foo3 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo3s/1 or /foo3s/1.json
  def update
    respond_to do |format|
      if @foo3.update(foo3_params)
        format.html { redirect_to @foo3, notice: "Foo3 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo3 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo3s/1 or /foo3s/1.json
  def destroy
    @foo3.destroy
    respond_to do |format|
      format.html { redirect_to foo3s_url, notice: "Foo3 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo3
      @foo3 = Foo3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo3_params
      params.require(:foo3).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
