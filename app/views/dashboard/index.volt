

{% extends 'template/index.volt' %}

{% block content %}

{{ content() }}

{{ content() }}



<div class="box panel-body" style="border-radius:0px">
    <div>
        <div class="row">
          <div class="col-xs-6">
{{ form("/dashboard", "method":"post","enctype":"multipart/form-data") }}
              <label>Select Date: </label>
              <input  name="date" type="text" id="datepicker" placeholder="Select Date on button" required>
              <input class="form-control btn-primary" type="submit" value="Select Date">
</form>
              <br/>
          </div>
          <div class="col-xs-6">
            <p align="center" style="font-size:1.3em"><u>Click book for reservation</u></p>
            <p align="center" style="font-size:1.7em">{{dateSelected}}</p>
            <span class="btn-xs btn-warning"></span> &nbsp; yours
            <span class="btn-xs btn-success"></span> &nbsp; avaible
            <span class="btn-xs btn-default"></span> &nbsp; booked
          </div>
        </div>
        <div class="row">
              <table id="stadiumTable" class="table table-bordered table-hover">
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
<script type="text/javascript">
    $('#datepicker').datepicker({
        dateFormat: 'yy-mm-dd',
        timePicker: true, timePickerIncrement: 30,showOn: 'button',
    });
</script>
{% endblock %}