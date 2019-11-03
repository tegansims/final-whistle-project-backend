class NotesController < ApplicationController

    def index
        render json: Note.all
    end

    def show
        render json: Note.find(params[:id])
    end

    def create
        
        note = Note.create(note_params)
        render json: note
    end
   
    private
    def note_params
        params.require(:note).permit(:comment, :user_id, :game_id, :public)
       
    end

end
