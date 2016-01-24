
{% extends 'template/index.volt' %}

{% block content %}

{{ content() }}

{{ form("process/checkout", "method":"post","enctype":"multipart/form-data") }}
<div class="box panel-body" style="border-radius:0px">
    <div>
        <div class="row">
            <div class="col-xs-6 ">
                <table id="stadium" class="table table-striped">
                    <thead>
                        <tr>
                          <th>Stadium</th>
                          <th>Hours</th>
                          <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        {%for i in data%}
                        <tr>
                            <td>Stadium {{i.stadium}}</td>
                            <td>{{i.start_hour}}:00 - {{i.end_hour}}:00</td>
                            <td><a href="/process/del/{{i.id}}">Delete</a></td>
                        </tr>
                        {%endfor%}
                    </tbody>
                </table>
            </div>
            <div class="col-xs-6 ">
                <pre> Click Check out to confirm your booking .</pre>
                <div class="form-group">
                    <label for="input_date" class="col-sm-3"></label>
                    <div class="input-group col-xs-10">
                        <a href="/dashboard" class="btn btn-warning"> <i class="fa fa-backward"></i> Add More Book</a> &nbsp; 
                        {{ submit_button("checkout", 'class' : 'btn btn-danger') }}
                </div>

            </div>
        </div>
    </div>
</div>
</form>
<script>
    $(function () {
        $('#stadium').DataTable({});
    });
</script>

{% endblock %}