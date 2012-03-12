<input type="hidden" name="__start__" value="${field.name}:mapping"/>
<ul>
  <li>
    <label for="${field.oid}" i18n:translate="">Password</label>
    <input type="password" name="${field.name}" value="${cstruct}"
% if field.widget.size:
size="${field.widget.size}"
% endif
    id="${field.oid}"/>
  </li>
  <li>
    <label for="${field.oid}-confirm" i18n:translate="">Confirm Password</label>
    <input type="password" name="${field.name}-confirm" value="${confirm}"
% if field.widget.size:
size="${field.widget.size}"
% endif
% if field.widget.css_class:
class="${field.widget.css_class}"
% endif
           id="${field.oid}-confirm"/>
  </li>
</ul>
<input type="hidden" name="__end__" value="${field.name}:mapping"/>
