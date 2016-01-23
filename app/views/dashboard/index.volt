
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
                      <th>Hours </th>
                      <th>Stadium 1</th>
                      <th>Stadium 2</th>
                      <th>Stadium 3</th>
                      <th>Stadium 4</th>
                      <th>Stadium 5</th>
                      <th>Stadium 6</th>
                      <th>Stadium 7</th>
                      <th>Stadium 8</th>
                    </tr>
                </thead>
                <tbody>
                    {%for i in data%}
                    <tr>
                        <td>{{i[1]['desc']}}</td>
                        <td>{{i[1]['name']}}</td>
                        <td>{{i[2]['name']}}</td>
                        <td>{{i[3]['name']}}</td>
                        <td>{{i[4]['name']}}</td>
                        <td>{{i[5]['name']}}</td>
                        <td>{{i[6]['name']}}</td>
                        <td>{{i[7]['name']}}</td>
                        <td>{{i[8]['name']}}</td>
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