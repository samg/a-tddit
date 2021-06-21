class Foo35sController < ApplicationController
  before_action :set_foo35, only: %i[ show edit update destroy ]

  # GET /foo35s or /foo35s.json
  def index
    @foo35s = Foo35.all
  end

  # GET /foo35s/1 or /foo35s/1.json
  def show
  end

  # GET /foo35s/new
  def new
    @foo35 = Foo35.new
  end

  # GET /foo35s/1/edit
  def edit
  end

  # POST /foo35s or /foo35s.json
  def create
    @foo35 = Foo35.new(foo35_params)

    respond_to do |format|
      if @foo35.save
        format.html { redirect_to @foo35, notice: "Foo35 was successfully created." }
        format.json { render :show, status: :created, location: @foo35 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo35.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo35s/1 or /foo35s/1.json
  def update
    respond_to do |format|
      if @foo35.update(foo35_params)
        format.html { redirect_to @foo35, notice: "Foo35 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo35 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo35.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo35s/1 or /foo35s/1.json
  def destroy
    @foo35.destroy
    respond_to do |format|
      format.html { redirect_to foo35s_url, notice: "Foo35 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo35
      @foo35 = Foo35.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo35_params
      params.require(:foo35).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
