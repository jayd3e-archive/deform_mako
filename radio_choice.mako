<ul class="deformSet"> 
    <input type="hidden" name="__start__" value="${field.name}:rename"/>
    % for index,choice in enumerate(field.widget.values):
        <li class="deformSet-item">
          <input 
% if field.widget.css_class:
class="${field.widget.css_class}"
% endif
% if cstruct == choice[0]:
checked
% endif
                 type="radio"
                 name="${field.oid}"
                 value="${choice[0]}"
                 id="${field.oid}-${index}"/>
          <label for="${field.oid}-${index}">${choice[1]}</label>
        </li>
    % endfor
    <input type="hidden" name="__end__"/>
</ul>
