class Foo13sController < ApplicationController
  before_action :set_foo13, only: %i[ show edit update destroy ]

  # GET /foo13s or /foo13s.json
  def index
    @foo13s = Foo13.all
  end

  # GET /foo13s/1 or /foo13s/1.json
  def show
  end

  # GET /foo13s/new
  def new
    @foo13 = Foo13.new
  end

  # GET /foo13s/1/edit
  def edit
  end

  # POST /foo13s or /foo13s.json
  def create
    @foo13 = Foo13.new(foo13_params)

    respond_to do |format|
      if @foo13.save
        format.html { redirect_to @foo13, notice: "Foo13 was successfully created." }
        format.json { render :show, status: :created, location: @foo13 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo13.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo13s/1 or /foo13s/1.json
  def update
    respond_to do |format|
      if @foo13.update(foo13_params)
        format.html { redirect_to @foo13, notice: "Foo13 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo13 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo13.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo13s/1 or /foo13s/1.json
  def destroy
    @foo13.destroy
    respond_to do |format|
      format.html { redirect_to foo13s_url, notice: "Foo13 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo13
      @foo13 = Foo13.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo13_params
      params.require(:foo13).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
