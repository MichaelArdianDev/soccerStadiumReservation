
{% extends 'template/index.volt' %}

{% block content %}

{{ content() }}
{{ form("register", "method":"post","enctype":"multipart/form-data") }}

{{ content() }}

<div class="box panel-body">
    <div>
        <div class="row">
            <div class="col-lg-10">
                <div class="form-group">
                    <label for="input_date" class="col-sm-3">Email</label>
                    <div class="input-group col-sm-4">
                        {{ email_field('email', 'class': 'form-control input-sm','required':'required') }}
                    </div>
                </div>
                <div class="form-group">
                    <label for="input_date" class="col-sm-3">Password</label>
                    <div class="input-group col-sm-4">
                        {{ password_field('password', 'class': 'form-control input-sm','required':'required') }}
                    </div>
                </div>
                <div class="form-group">
                    <label for="input_date" class="col-sm-3">Name </label>
                    <div class="input-group col-sm-4">
                        {{ text_field('name', 'class': 'form-control input-sm','required':'required') }}
                    </div>
                </div>
                <div class="form-group">
                    <label for="input_date" class="col-sm-3">Phone Number </label>
                    <div class="input-group col-sm-4">
                        {{ text_field('phonenumber', 'class': 'form-control input-sm','required':'required') }}
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="input_date" class="col-sm-3"></label>
                    <div class="input-group col-xs-10">
                        {{ link_to("/", "Go Back", 'class' : 'btn btn-primary') }} &nbsp; 
                        {{ submit_button("Save", 'class' : 'btn btn-success') }}
                </div>
            </div>
            <div class="col-lg-6">
            </div>
        </div>
    </div>
</div>
</form>
{% endblock %}