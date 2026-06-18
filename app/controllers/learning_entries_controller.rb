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
        
        end
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