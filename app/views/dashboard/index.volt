
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
                <pre>
                    {%for i in data%}
                    <tr>
                        <td>{{i[1]['desc']}}</td>
                        <td>{{i[1]['userId']}}</td>
                        <td>{{i[2]['userId']}}</td>
                        <td>{{i[3]['userId']}}</td>
                        <td>{{i[4]['userId']}}</td>
                        <td>{{i[5]['userId']}}</td>
                        <td>{{i[6]['userId']}}</td>
                        <td>{{i[7]['userId']}}</td>
                        <td>{{i[8]['userId']}}</td>
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