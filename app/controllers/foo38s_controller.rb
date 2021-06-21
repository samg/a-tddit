class Foo38sController < ApplicationController
  before_action :set_foo38, only: %i[ show edit update destroy ]

  # GET /foo38s or /foo38s.json
  def index
    @foo38s = Foo38.all
  end

  # GET /foo38s/1 or /foo38s/1.json
  def show
  end

  # GET /foo38s/new
  def new
    @foo38 = Foo38.new
  end

  # GET /foo38s/1/edit
  def edit
  end

  # POST /foo38s or /foo38s.json
  def create
    @foo38 = Foo38.new(foo38_params)

    respond_to do |format|
      if @foo38.save
        format.html { redirect_to @foo38, notice: "Foo38 was successfully created." }
        format.json { render :show, status: :created, location: @foo38 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo38.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo38s/1 or /foo38s/1.json
  def update
    respond_to do |format|
      if @foo38.update(foo38_params)
        format.html { redirect_to @foo38, notice: "Foo38 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo38 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo38.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo38s/1 or /foo38s/1.json
  def destroy
    @foo38.destroy
    respond_to do |format|
      format.html { redirect_to foo38s_url, notice: "Foo38 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo38
      @foo38 = Foo38.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo38_params
      params.require(:foo38).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
