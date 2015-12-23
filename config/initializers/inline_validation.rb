ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  if html_tag =~ /^<input/
    %{
<div class="field_with_errors">#{html_tag}<span class="message" for="#{instance.send(:tag_id)}">#{instance.error_message.first}</span></div>}.html_safe
	elsif html_tag =~ /^<select/
		%{#{html_tag}</div><div class="field_with_errors"><span class="message" for="#{instance.send(:tag_id)}">#{instance.error_message.first}</span>}.html_safe
  else
    %{#{html_tag}}.html_safe
  end
end
