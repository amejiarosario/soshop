module ErrorMessagesHelper
 
  def error_messages_for(*objects)
    options = objects.extract_options!
    options[:header_message] ||= I18n.t(:"activerecord.errors.header", :default => "Invalid Fields")
    options[:message] ||= I18n.t(:"activerecord.errors.message", :default => "Please correct the following problems and try again")
    messages = objects.compact.map { |o| o.errors.full_messages }.flatten
    unless messages.empty?
      content_tag(:div, id: 'error_explanation') do
        list_items = messages.map { |msg| content_tag(:li, msg) }
        content_tag(:div, options[:message], :class=>"alert alert-error") +
        content_tag(:ul, list_items.join.html_safe)
      end
    end
  end
 
  module FormBuilderAdditions
    def error_messages(options = {})
      @template.error_messages_for(@object, options)
    end
  end
 
end
 
ActionView::Helpers::FormBuilder.send(:include, ErrorMessagesHelper::FormBuilderAdditions)