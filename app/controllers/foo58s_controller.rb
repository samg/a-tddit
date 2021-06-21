class Foo58sController < ApplicationController
  before_action :set_foo58, only: %i[ show edit update destroy ]

  # GET /foo58s or /foo58s.json
  def index
    @foo58s = Foo58.all
  end

  # GET /foo58s/1 or /foo58s/1.json
  def show
  end

  # GET /foo58s/new
  def new
    @foo58 = Foo58.new
  end

  # GET /foo58s/1/edit
  def edit
  end

  # POST /foo58s or /foo58s.json
  def create
    @foo58 = Foo58.new(foo58_params)

    respond_to do |format|
      if @foo58.save
        format.html { redirect_to @foo58, notice: "Foo58 was successfully created." }
        format.json { render :show, status: :created, location: @foo58 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo58.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo58s/1 or /foo58s/1.json
  def update
    respond_to do |format|
      if @foo58.update(foo58_params)
        format.html { redirect_to @foo58, notice: "Foo58 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo58 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo58.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo58s/1 or /foo58s/1.json
  def destroy
    @foo58.destroy
    respond_to do |format|
      format.html { redirect_to foo58s_url, notice: "Foo58 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo58
      @foo58 = Foo58.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo58_params
      params.require(:foo58).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
