class Foo93sController < ApplicationController
  before_action :set_foo93, only: %i[ show edit update destroy ]

  # GET /foo93s or /foo93s.json
  def index
    @foo93s = Foo93.all
  end

  # GET /foo93s/1 or /foo93s/1.json
  def show
  end

  # GET /foo93s/new
  def new
    @foo93 = Foo93.new
  end

  # GET /foo93s/1/edit
  def edit
  end

  # POST /foo93s or /foo93s.json
  def create
    @foo93 = Foo93.new(foo93_params)

    respond_to do |format|
      if @foo93.save
        format.html { redirect_to @foo93, notice: "Foo93 was successfully created." }
        format.json { render :show, status: :created, location: @foo93 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo93.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo93s/1 or /foo93s/1.json
  def update
    respond_to do |format|
      if @foo93.update(foo93_params)
        format.html { redirect_to @foo93, notice: "Foo93 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo93 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo93.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo93s/1 or /foo93s/1.json
  def destroy
    @foo93.destroy
    respond_to do |format|
      format.html { redirect_to foo93s_url, notice: "Foo93 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo93
      @foo93 = Foo93.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo93_params
      params.require(:foo93).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
