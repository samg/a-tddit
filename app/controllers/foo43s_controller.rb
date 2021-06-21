class Foo43sController < ApplicationController
  before_action :set_foo43, only: %i[ show edit update destroy ]

  # GET /foo43s or /foo43s.json
  def index
    @foo43s = Foo43.all
  end

  # GET /foo43s/1 or /foo43s/1.json
  def show
  end

  # GET /foo43s/new
  def new
    @foo43 = Foo43.new
  end

  # GET /foo43s/1/edit
  def edit
  end

  # POST /foo43s or /foo43s.json
  def create
    @foo43 = Foo43.new(foo43_params)

    respond_to do |format|
      if @foo43.save
        format.html { redirect_to @foo43, notice: "Foo43 was successfully created." }
        format.json { render :show, status: :created, location: @foo43 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo43.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo43s/1 or /foo43s/1.json
  def update
    respond_to do |format|
      if @foo43.update(foo43_params)
        format.html { redirect_to @foo43, notice: "Foo43 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo43 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo43.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo43s/1 or /foo43s/1.json
  def destroy
    @foo43.destroy
    respond_to do |format|
      format.html { redirect_to foo43s_url, notice: "Foo43 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo43
      @foo43 = Foo43.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo43_params
      params.require(:foo43).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
