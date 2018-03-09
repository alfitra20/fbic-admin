module ActiveAdmin
  module Views
    class Footer < Component

      def build
        super :id => "footer"                                                    
        super :style => "text-align: left;"                                     

        div do                                                                   
          small " #{Date.today.year} Hearfeels All Rights Reserved"                                       
        end
      end

    end
  end
end