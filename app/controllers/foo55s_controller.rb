class Foo55sController < ApplicationController
  before_action :set_foo55, only: %i[ show edit update destroy ]

  # GET /foo55s or /foo55s.json
  def index
    @foo55s = Foo55.all
  end

  # GET /foo55s/1 or /foo55s/1.json
  def show
  end

  # GET /foo55s/new
  def new
    @foo55 = Foo55.new
  end

  # GET /foo55s/1/edit
  def edit
  end

  # POST /foo55s or /foo55s.json
  def create
    @foo55 = Foo55.new(foo55_params)

    respond_to do |format|
      if @foo55.save
        format.html { redirect_to @foo55, notice: "Foo55 was successfully created." }
        format.json { render :show, status: :created, location: @foo55 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo55.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo55s/1 or /foo55s/1.json
  def update
    respond_to do |format|
      if @foo55.update(foo55_params)
        format.html { redirect_to @foo55, notice: "Foo55 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo55 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo55.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo55s/1 or /foo55s/1.json
  def destroy
    @foo55.destroy
    respond_to do |format|
      format.html { redirect_to foo55s_url, notice: "Foo55 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo55
      @foo55 = Foo55.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo55_params
      params.require(:foo55).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
