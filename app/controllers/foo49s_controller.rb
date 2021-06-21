class Foo49sController < ApplicationController
  before_action :set_foo49, only: %i[ show edit update destroy ]

  # GET /foo49s or /foo49s.json
  def index
    @foo49s = Foo49.all
  end

  # GET /foo49s/1 or /foo49s/1.json
  def show
  end

  # GET /foo49s/new
  def new
    @foo49 = Foo49.new
  end

  # GET /foo49s/1/edit
  def edit
  end

  # POST /foo49s or /foo49s.json
  def create
    @foo49 = Foo49.new(foo49_params)

    respond_to do |format|
      if @foo49.save
        format.html { redirect_to @foo49, notice: "Foo49 was successfully created." }
        format.json { render :show, status: :created, location: @foo49 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo49.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo49s/1 or /foo49s/1.json
  def update
    respond_to do |format|
      if @foo49.update(foo49_params)
        format.html { redirect_to @foo49, notice: "Foo49 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo49 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo49.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo49s/1 or /foo49s/1.json
  def destroy
    @foo49.destroy
    respond_to do |format|
      format.html { redirect_to foo49s_url, notice: "Foo49 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo49
      @foo49 = Foo49.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo49_params
      params.require(:foo49).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
