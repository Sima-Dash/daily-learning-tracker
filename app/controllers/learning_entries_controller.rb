class LearningEntriesController < ApplicationController
    def index
        @entries = LearningEntry.all
    end
    
    def new
        @entry = LearningEntry.new
    end

    def create
        @entry= LearningEntry.new(entry_params)
        
        if @entry.save
            redirect_to learning_entries_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @entry = LearningEntry.find(params[:id])
    end

    def update
        @entry = LearningEntry.find(params[:id])

        if @entry.update(entry_params)
            redirect_to learning_entries_path
        else
            render :edit
        end
    end

    def destroy
        @entry = LearningEntry.find(params[:id])
        @entry.destroy
        redirect_to learning_entries_path
    end

    private

    def entry_params
        params
            .required(:learning_entry)
            .permit(
                :date,
                :topic,
                :hours,
                :notes
            )
    end

end