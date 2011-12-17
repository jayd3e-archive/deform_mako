<select name="${field.name}"
        id="${field.oid}"
% if field.widget.size:
size="${field.widget.size}"
% endif
% if field.widget.css_class:
class="${field.widget.css_class}"
% endif
>
% for value,description in field.widget.values:
 <option 
% if field.widget.css_class:
class="${field.widget.css_class}"
% endif
% if cstruct == value:
selected="selected"
% endif
         value="${value}">${description}</option>
% endfor
</select>
