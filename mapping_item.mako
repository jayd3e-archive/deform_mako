% if field.widget.hidden:
<li 
	% if not field.error:
	    class=${field.error}
	% else:
	    class=${field.widget.error_class}
	% endif
    title="${field.description}"
    id="item-${field.oid}" i18n:domain="deform">
% endif

	<!-- mapping_item -->
	% if not (field.widget.hidden or field.widget.category == 'structural'):
	  	<label class="desc"
	  		title="${field.description}"
	        for="${field.oid}"
	        >${field.title}
	    
			%if field.required:
			    <span class="req"
			    	id="req-${field.oid}">*</span>
			% endif
	
		</label>
	% endif

	${field.serialize(cstruct)}
	  
	% if field.error and not field.widget.hidden:
		<%
		errstr = 'error-%s' % field.oid
		%>
		% for msg in field.error.messages():
			<p
			% if msg.index==0:
				id="${errstr}"
			% else:
				id=${'%s-%s' % (errstr, msg.index)}
			% endif
			class="${field.widget.error_class}" i18n:translate="">${msg}</p>
		% endfor
	% endif

    <!-- /mapping_item -->
    
% if field.widget.hidden:
</li>
% endif