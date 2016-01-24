              <div class="navbar-custom-menu">
                {% if(session.get('user_name')) %}
                  <ul class="nav navbar-nav">
                      <li><a href="/dashboard">Dashboard</a></li>
                      <li><a href="/process">Your Order</a></li>
                      <li class="dropdown user user-menu" class="">
                        <a href="#" class="dropdown-toggle label label-success" data-toggle="dropdown">
                          <p class="hidden-xs" style="font-size: 1.3em;">Welcome {{session.get('user_name')}}</p>
                        </a>
                        <ul class="dropdown-menu">
                
                          <li class="user-footer">
                            <div class="pull-left">
                              <a href="/login/out" class="btn btn-danger btn-flat">Log Out</a>
                            </div>
                          </li>
                      </ul>
<!-- is not login -->
                    {%else%}
                    <ul class="nav navbar-nav">
                      <li class="dropdown user user-menu" class="">
                        <a href="#" class="dropdown-toggle label label-warning" data-toggle="dropdown">
                          <span class="hidden-xs">BOOK NOW</span>
                        </a>
                        <ul class="dropdown-menu">
                          <li class="user-header">
                             <div class="form-group">
                                <div class="input-group col-sm-12">
                                {{ form("login", "method":"post","enctype":"multipart/form-data") }}
                              
                                  <label>Email Address</label>
                                    {{ email_field('email', 'class': 'form-control input-sm','required':'required','placeholder':'Input Email Adrees') }}
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group col-sm-12">
                                    <label>Password</label>
                                    {{ password_field('password', 'class': 'form-control input-sm','required':'required','placeholder':'Input Password') }}
                                </div>
                            </div>
                          </li>
                
                          <li class="user-footer">
                            <div class="pull-left">
                            {{ submit_button("Login", 'class' : 'btn btn-success') }}
                          </form>
                            </div>
                            <div class="pull-right">
                              <a href="/register" class="btn btn-primary btn-flat">Register</a>
                            </div>
                          </li>
                      </ul>

                    {%endif%}
                  </li>
                </ul>
              </div><!-- /.navbar-custom-menu -->
