class Foo22sController < ApplicationController
  before_action :set_foo22, only: %i[ show edit update destroy ]

  # GET /foo22s or /foo22s.json
  def index
    @foo22s = Foo22.all
  end

  # GET /foo22s/1 or /foo22s/1.json
  def show
  end

  # GET /foo22s/new
  def new
    @foo22 = Foo22.new
  end

  # GET /foo22s/1/edit
  def edit
  end

  # POST /foo22s or /foo22s.json
  def create
    @foo22 = Foo22.new(foo22_params)

    respond_to do |format|
      if @foo22.save
        format.html { redirect_to @foo22, notice: "Foo22 was successfully created." }
        format.json { render :show, status: :created, location: @foo22 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo22.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo22s/1 or /foo22s/1.json
  def update
    respond_to do |format|
      if @foo22.update(foo22_params)
        format.html { redirect_to @foo22, notice: "Foo22 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo22 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo22.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo22s/1 or /foo22s/1.json
  def destroy
    @foo22.destroy
    respond_to do |format|
      format.html { redirect_to foo22s_url, notice: "Foo22 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo22
      @foo22 = Foo22.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo22_params
      params.require(:foo22).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
