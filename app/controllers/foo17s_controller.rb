class Foo17sController < ApplicationController
  before_action :set_foo17, only: %i[ show edit update destroy ]

  # GET /foo17s or /foo17s.json
  def index
    @foo17s = Foo17.all
  end

  # GET /foo17s/1 or /foo17s/1.json
  def show
  end

  # GET /foo17s/new
  def new
    @foo17 = Foo17.new
  end

  # GET /foo17s/1/edit
  def edit
  end

  # POST /foo17s or /foo17s.json
  def create
    @foo17 = Foo17.new(foo17_params)

    respond_to do |format|
      if @foo17.save
        format.html { redirect_to @foo17, notice: "Foo17 was successfully created." }
        format.json { render :show, status: :created, location: @foo17 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo17.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo17s/1 or /foo17s/1.json
  def update
    respond_to do |format|
      if @foo17.update(foo17_params)
        format.html { redirect_to @foo17, notice: "Foo17 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo17 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo17.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo17s/1 or /foo17s/1.json
  def destroy
    @foo17.destroy
    respond_to do |format|
      format.html { redirect_to foo17s_url, notice: "Foo17 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo17
      @foo17 = Foo17.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo17_params
      params.require(:foo17).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
