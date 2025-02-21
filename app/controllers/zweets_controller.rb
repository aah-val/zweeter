class ZweetsController < ApplicationController
  before_action :set_zweet, only: %i[ show edit update destroy ]

  # GET /zweets or /zweets.json
  def index
    @zweets = Zweet.all
  end

  # GET /zweets/1 or /zweets/1.json
  def show
  end

  # GET /zweets/new
  def new
    @zweet = Zweet.new
  end

  # GET /zweets/1/edit
  def edit
  end

  # POST /zweets or /zweets.json
  def create
    @zweet = Zweet.new(zweet_params)

    respond_to do |format|
      if @zweet.save
        format.html { redirect_to @zweet, notice: "Zweet was successfully created." }
        format.json { render :show, status: :created, location: @zweet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @zweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zweets/1 or /zweets/1.json
  def update
    respond_to do |format|
      if @zweet.update(zweet_params)
        format.html { redirect_to @zweet, notice: "Zweet was successfully updated." }
        format.json { render :show, status: :ok, location: @zweet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @zweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zweets/1 or /zweets/1.json
  def destroy
    @zweet.destroy!

    respond_to do |format|
      format.html { redirect_to zweets_path, status: :see_other, notice: "Zweet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zweet
      @zweet = Zweet.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def zweet_params
      params.expect(zweet: [ :content, :image, :user_id ])
    end
end
