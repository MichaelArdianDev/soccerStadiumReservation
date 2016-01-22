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
                              <label>Email Address</label>
                                {{ text_field('type', 'class': 'form-control input-sm','required':'required','placeholder':'Input Email Adrees') }}
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group col-sm-12">
                                <label>Password</label>
                                {{ text_field('type', 'class': 'form-control input-sm','required':'required','placeholder':'Input Password') }}
                            </div>
                        </div>
                      </li>
            
                      <li class="user-footer">
                        <div class="pull-left">
                          <a href="#" class="btn btn-default btn-flat">Login</a>
                        </div>
                        <div class="pull-right">
                          <a href="#" class="btn btn-default btn-flat">Register</a>
                        </div>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div><!-- /.navbar-custom-menu -->
