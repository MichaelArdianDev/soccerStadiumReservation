              <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                  <li class="dropdown user user-menu" class="">
                    <a href="#" class="dropdown-toggle label label-warning" data-toggle="dropdown">
                      <span class="hidden-xs">BOOK NOW</span>
                    </a>
                    <ul class="dropdown-menu">
                      <li class="user-header">
                         <div class="form-group">
                            <div class="input-group col-sm-12">
                            {{ form("/login", "method":"post","enctype":"multipart/form-data") }}
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
                  </li>
                </ul>
              </div><!-- /.navbar-custom-menu -->
