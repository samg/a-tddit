class Foo61sController < ApplicationController
  before_action :set_foo61, only: %i[ show edit update destroy ]

  # GET /foo61s or /foo61s.json
  def index
    @foo61s = Foo61.all
  end

  # GET /foo61s/1 or /foo61s/1.json
  def show
  end

  # GET /foo61s/new
  def new
    @foo61 = Foo61.new
  end

  # GET /foo61s/1/edit
  def edit
  end

  # POST /foo61s or /foo61s.json
  def create
    @foo61 = Foo61.new(foo61_params)

    respond_to do |format|
      if @foo61.save
        format.html { redirect_to @foo61, notice: "Foo61 was successfully created." }
        format.json { render :show, status: :created, location: @foo61 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo61.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo61s/1 or /foo61s/1.json
  def update
    respond_to do |format|
      if @foo61.update(foo61_params)
        format.html { redirect_to @foo61, notice: "Foo61 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo61 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo61.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo61s/1 or /foo61s/1.json
  def destroy
    @foo61.destroy
    respond_to do |format|
      format.html { redirect_to foo61s_url, notice: "Foo61 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo61
      @foo61 = Foo61.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo61_params
      params.require(:foo61).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
