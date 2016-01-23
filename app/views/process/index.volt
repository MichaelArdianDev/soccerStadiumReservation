
{% extends 'template/index.volt' %}

{% block content %}

{{ content() }}
{{ form("/register", "method":"post","enctype":"multipart/form-data") }}

{{ content() }}

<div class="box panel-body" style="border-radius:0px">
    <div>
        <div class="row">
            <table id="table" class="table table-bordered table-hover">
                <thead>
                    <tr>
                      <th>Stadium</th>
                      <th>Hours</th>
                      <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                <pre>
                    {%for i in data%}
                    <tr>
                        <td>Stadium {{i.stadium}}</td>
                        <td>{{i.start_hour}}:00 - {{i.end_hour}}:00</td>
                        <td>{{i.hour}}</td>
                    </tr>
                    {%endfor%}
                </tbody>
            </table>
        </div>
    </div>
</div>
</form>
<script>
    $(function () {
        $('#table').DataTable({});
    });
</script>

{% endblock %}