class Foo1sController < ApplicationController
  before_action :set_foo1, only: %i[ show edit update destroy ]

  # GET /foo1s or /foo1s.json
  def index
    @foo1s = Foo1.all
  end

  # GET /foo1s/1 or /foo1s/1.json
  def show
  end

  # GET /foo1s/new
  def new
    @foo1 = Foo1.new
  end

  # GET /foo1s/1/edit
  def edit
  end

  # POST /foo1s or /foo1s.json
  def create
    @foo1 = Foo1.new(foo1_params)

    respond_to do |format|
      if @foo1.save
        format.html { redirect_to @foo1, notice: "Foo1 was successfully created." }
        format.json { render :show, status: :created, location: @foo1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo1s/1 or /foo1s/1.json
  def update
    respond_to do |format|
      if @foo1.update(foo1_params)
        format.html { redirect_to @foo1, notice: "Foo1 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo1s/1 or /foo1s/1.json
  def destroy
    @foo1.destroy
    respond_to do |format|
      format.html { redirect_to foo1s_url, notice: "Foo1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo1
      @foo1 = Foo1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo1_params
      params.require(:foo1).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
