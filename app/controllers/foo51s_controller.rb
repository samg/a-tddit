class Foo51sController < ApplicationController
  before_action :set_foo51, only: %i[ show edit update destroy ]

  # GET /foo51s or /foo51s.json
  def index
    @foo51s = Foo51.all
  end

  # GET /foo51s/1 or /foo51s/1.json
  def show
  end

  # GET /foo51s/new
  def new
    @foo51 = Foo51.new
  end

  # GET /foo51s/1/edit
  def edit
  end

  # POST /foo51s or /foo51s.json
  def create
    @foo51 = Foo51.new(foo51_params)

    respond_to do |format|
      if @foo51.save
        format.html { redirect_to @foo51, notice: "Foo51 was successfully created." }
        format.json { render :show, status: :created, location: @foo51 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo51.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo51s/1 or /foo51s/1.json
  def update
    respond_to do |format|
      if @foo51.update(foo51_params)
        format.html { redirect_to @foo51, notice: "Foo51 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo51 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo51.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo51s/1 or /foo51s/1.json
  def destroy
    @foo51.destroy
    respond_to do |format|
      format.html { redirect_to foo51s_url, notice: "Foo51 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo51
      @foo51 = Foo51.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo51_params
      params.require(:foo51).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
