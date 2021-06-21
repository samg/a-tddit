class Foo26sController < ApplicationController
  before_action :set_foo26, only: %i[ show edit update destroy ]

  # GET /foo26s or /foo26s.json
  def index
    @foo26s = Foo26.all
  end

  # GET /foo26s/1 or /foo26s/1.json
  def show
  end

  # GET /foo26s/new
  def new
    @foo26 = Foo26.new
  end

  # GET /foo26s/1/edit
  def edit
  end

  # POST /foo26s or /foo26s.json
  def create
    @foo26 = Foo26.new(foo26_params)

    respond_to do |format|
      if @foo26.save
        format.html { redirect_to @foo26, notice: "Foo26 was successfully created." }
        format.json { render :show, status: :created, location: @foo26 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo26.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo26s/1 or /foo26s/1.json
  def update
    respond_to do |format|
      if @foo26.update(foo26_params)
        format.html { redirect_to @foo26, notice: "Foo26 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo26 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo26.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo26s/1 or /foo26s/1.json
  def destroy
    @foo26.destroy
    respond_to do |format|
      format.html { redirect_to foo26s_url, notice: "Foo26 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo26
      @foo26 = Foo26.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo26_params
      params.require(:foo26).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
