class Foo88sController < ApplicationController
  before_action :set_foo88, only: %i[ show edit update destroy ]

  # GET /foo88s or /foo88s.json
  def index
    @foo88s = Foo88.all
  end

  # GET /foo88s/1 or /foo88s/1.json
  def show
  end

  # GET /foo88s/new
  def new
    @foo88 = Foo88.new
  end

  # GET /foo88s/1/edit
  def edit
  end

  # POST /foo88s or /foo88s.json
  def create
    @foo88 = Foo88.new(foo88_params)

    respond_to do |format|
      if @foo88.save
        format.html { redirect_to @foo88, notice: "Foo88 was successfully created." }
        format.json { render :show, status: :created, location: @foo88 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo88.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo88s/1 or /foo88s/1.json
  def update
    respond_to do |format|
      if @foo88.update(foo88_params)
        format.html { redirect_to @foo88, notice: "Foo88 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo88 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo88.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo88s/1 or /foo88s/1.json
  def destroy
    @foo88.destroy
    respond_to do |format|
      format.html { redirect_to foo88s_url, notice: "Foo88 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo88
      @foo88 = Foo88.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo88_params
      params.require(:foo88).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
