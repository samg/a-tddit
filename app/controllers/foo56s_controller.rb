class Foo56sController < ApplicationController
  before_action :set_foo56, only: %i[ show edit update destroy ]

  # GET /foo56s or /foo56s.json
  def index
    @foo56s = Foo56.all
  end

  # GET /foo56s/1 or /foo56s/1.json
  def show
  end

  # GET /foo56s/new
  def new
    @foo56 = Foo56.new
  end

  # GET /foo56s/1/edit
  def edit
  end

  # POST /foo56s or /foo56s.json
  def create
    @foo56 = Foo56.new(foo56_params)

    respond_to do |format|
      if @foo56.save
        format.html { redirect_to @foo56, notice: "Foo56 was successfully created." }
        format.json { render :show, status: :created, location: @foo56 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo56.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo56s/1 or /foo56s/1.json
  def update
    respond_to do |format|
      if @foo56.update(foo56_params)
        format.html { redirect_to @foo56, notice: "Foo56 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo56 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo56.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo56s/1 or /foo56s/1.json
  def destroy
    @foo56.destroy
    respond_to do |format|
      format.html { redirect_to foo56s_url, notice: "Foo56 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo56
      @foo56 = Foo56.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo56_params
      params.require(:foo56).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
