module ApplicationHelper
#first argument is an array of errors, the second is a block
   def form_group_tag(errors, &block)
     css_class = 'form-group'
     css_class << ' has-error' if errors.any?
#calls the content_tag helper method is called. It builds the HTML and CSS
     content_tag :div, capture(&block), class: css_class
   end
end
