class Foo79sController < ApplicationController
  before_action :set_foo79, only: %i[ show edit update destroy ]

  # GET /foo79s or /foo79s.json
  def index
    @foo79s = Foo79.all
  end

  # GET /foo79s/1 or /foo79s/1.json
  def show
  end

  # GET /foo79s/new
  def new
    @foo79 = Foo79.new
  end

  # GET /foo79s/1/edit
  def edit
  end

  # POST /foo79s or /foo79s.json
  def create
    @foo79 = Foo79.new(foo79_params)

    respond_to do |format|
      if @foo79.save
        format.html { redirect_to @foo79, notice: "Foo79 was successfully created." }
        format.json { render :show, status: :created, location: @foo79 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo79.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo79s/1 or /foo79s/1.json
  def update
    respond_to do |format|
      if @foo79.update(foo79_params)
        format.html { redirect_to @foo79, notice: "Foo79 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo79 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo79.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo79s/1 or /foo79s/1.json
  def destroy
    @foo79.destroy
    respond_to do |format|
      format.html { redirect_to foo79s_url, notice: "Foo79 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo79
      @foo79 = Foo79.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo79_params
      params.require(:foo79).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
