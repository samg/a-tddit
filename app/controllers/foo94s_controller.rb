class Foo94sController < ApplicationController
  before_action :set_foo94, only: %i[ show edit update destroy ]

  # GET /foo94s or /foo94s.json
  def index
    @foo94s = Foo94.all
  end

  # GET /foo94s/1 or /foo94s/1.json
  def show
  end

  # GET /foo94s/new
  def new
    @foo94 = Foo94.new
  end

  # GET /foo94s/1/edit
  def edit
  end

  # POST /foo94s or /foo94s.json
  def create
    @foo94 = Foo94.new(foo94_params)

    respond_to do |format|
      if @foo94.save
        format.html { redirect_to @foo94, notice: "Foo94 was successfully created." }
        format.json { render :show, status: :created, location: @foo94 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo94.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo94s/1 or /foo94s/1.json
  def update
    respond_to do |format|
      if @foo94.update(foo94_params)
        format.html { redirect_to @foo94, notice: "Foo94 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo94 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo94.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo94s/1 or /foo94s/1.json
  def destroy
    @foo94.destroy
    respond_to do |format|
      format.html { redirect_to foo94s_url, notice: "Foo94 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo94
      @foo94 = Foo94.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo94_params
      params.require(:foo94).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
