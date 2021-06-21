class Foo6sController < ApplicationController
  before_action :set_foo6, only: %i[ show edit update destroy ]

  # GET /foo6s or /foo6s.json
  def index
    @foo6s = Foo6.all
  end

  # GET /foo6s/1 or /foo6s/1.json
  def show
  end

  # GET /foo6s/new
  def new
    @foo6 = Foo6.new
  end

  # GET /foo6s/1/edit
  def edit
  end

  # POST /foo6s or /foo6s.json
  def create
    @foo6 = Foo6.new(foo6_params)

    respond_to do |format|
      if @foo6.save
        format.html { redirect_to @foo6, notice: "Foo6 was successfully created." }
        format.json { render :show, status: :created, location: @foo6 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo6s/1 or /foo6s/1.json
  def update
    respond_to do |format|
      if @foo6.update(foo6_params)
        format.html { redirect_to @foo6, notice: "Foo6 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo6 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo6s/1 or /foo6s/1.json
  def destroy
    @foo6.destroy
    respond_to do |format|
      format.html { redirect_to foo6s_url, notice: "Foo6 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo6
      @foo6 = Foo6.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo6_params
      params.require(:foo6).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
