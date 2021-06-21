class Foo72sController < ApplicationController
  before_action :set_foo72, only: %i[ show edit update destroy ]

  # GET /foo72s or /foo72s.json
  def index
    @foo72s = Foo72.all
  end

  # GET /foo72s/1 or /foo72s/1.json
  def show
  end

  # GET /foo72s/new
  def new
    @foo72 = Foo72.new
  end

  # GET /foo72s/1/edit
  def edit
  end

  # POST /foo72s or /foo72s.json
  def create
    @foo72 = Foo72.new(foo72_params)

    respond_to do |format|
      if @foo72.save
        format.html { redirect_to @foo72, notice: "Foo72 was successfully created." }
        format.json { render :show, status: :created, location: @foo72 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo72.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo72s/1 or /foo72s/1.json
  def update
    respond_to do |format|
      if @foo72.update(foo72_params)
        format.html { redirect_to @foo72, notice: "Foo72 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo72 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo72.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo72s/1 or /foo72s/1.json
  def destroy
    @foo72.destroy
    respond_to do |format|
      format.html { redirect_to foo72s_url, notice: "Foo72 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo72
      @foo72 = Foo72.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo72_params
      params.require(:foo72).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
