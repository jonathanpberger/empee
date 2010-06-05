# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  # Return a title on a per-page basis.
   def title
     base_title = "Empee"
     if @title.nil?
       base_title
     else
       "#{base_title} | #{@title}"
     end
   end

   def flash_helper
     flash.map do |level, message|
       content_tag(:div, message, :class => level) if message.present?
     end
   end
end
