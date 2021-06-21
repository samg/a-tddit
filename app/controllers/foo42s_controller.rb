class Foo42sController < ApplicationController
  before_action :set_foo42, only: %i[ show edit update destroy ]

  # GET /foo42s or /foo42s.json
  def index
    @foo42s = Foo42.all
  end

  # GET /foo42s/1 or /foo42s/1.json
  def show
  end

  # GET /foo42s/new
  def new
    @foo42 = Foo42.new
  end

  # GET /foo42s/1/edit
  def edit
  end

  # POST /foo42s or /foo42s.json
  def create
    @foo42 = Foo42.new(foo42_params)

    respond_to do |format|
      if @foo42.save
        format.html { redirect_to @foo42, notice: "Foo42 was successfully created." }
        format.json { render :show, status: :created, location: @foo42 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo42.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo42s/1 or /foo42s/1.json
  def update
    respond_to do |format|
      if @foo42.update(foo42_params)
        format.html { redirect_to @foo42, notice: "Foo42 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo42 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo42.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo42s/1 or /foo42s/1.json
  def destroy
    @foo42.destroy
    respond_to do |format|
      format.html { redirect_to foo42s_url, notice: "Foo42 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo42
      @foo42 = Foo42.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo42_params
      params.require(:foo42).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
