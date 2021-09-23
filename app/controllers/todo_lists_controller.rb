class TodoListsController < ApplicationController
  before_action :require_login
  before_action :set_todo_list, only: [:show, :edit, :update, :destroy]

  # GET /todo_lists
  # GET /todo_lists.json
  def index
    @todo_lists = current_user.todo_lists
  end

  # GET /todo_lists/1
  # GET /todo_lists/1.json
  def show
    
  end

  # GET /todo_lists/new
  def new
     @todo_list = current_user.todo_lists.build 
  end

  # GET /todo_lists/1/edit
  def edit
  end

  # POST /todo_lists
  # POST /todo_lists.json
  def create
   @todo_list = current_user.todo_lists.build(todo_list_params)
   @todo_list.user_id = current_user.id
    respond_to do |format|
      if @todo_list.save
        format.html { redirect_to todo_lists_url, notice: 'Todo item was successfully created.' }
        format.json { render :show, status: :created, location: @todo_list }
      else
        format.html { render :new }
        format.json { render json: @todo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_lists/1
  # PATCH/PUT /todo_lists/1.json
  def update
    respond_to do |format|
      if @todo_list.update(todo_list_params)
        format.html { redirect_to @todo_list, notice: 'Todo item was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_list }
      else
        format.html { render :edit }
        format.json { render json: @todo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_lists/1
  # DELETE /todo_lists/1.json
  def destroy
    @todo_list= current_user.todo_lists.find(params[:id])
    @todo_list.todo_items.clear
    @todo_list.destroy
    respond_to do |format|
      format.html { redirect_to todo_lists_url, notice: 'Todo item was successfully deleted.' }
      format.json { head :no_content }
     # redirect_to todo_lists_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_list
       @todo_list = current_user.todo_lists.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_list_params
      params.require(:todo_list).permit(:title, :description,:duedate, :status, :category)
    end
  end

