class OptionsController < ApplicationController
    def create
        @option = current_user.options.build(option_params)
        if @option.save
          redirect_to root_path, notice: 'Option created successfully.'
        else
          render :new
        end
      end
      def new
        @option = Option.new
      end
      
    
      private
    
      def option_params
        params.require(:option).permit(:name, :description)
      end
end
