{%set weeks=['monday','tuesday','wednesday','thursday','friday','saturday','sunday']%}

{%for i in weeks%}
{%if i=="thursday"%}
I love {{i}}
{%else%}
I hate {{i}}
{%endif%}

{%endfor%}