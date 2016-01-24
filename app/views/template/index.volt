<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>HomePage</title>

    <script>
      var baseUri = '{{url()}}';
    </script>

      {{ assets.outputCss('cssHeader') }}
      {{ assets.outputCss('jsHeader') }}

<style type="text/css">.content-wrapper {
    background: url('../../img/stadium/wallpaper.jpg') !important;
  }
</style>

    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body class="skin-blue layout-top-nav">
    <div class="wrapper">

      <header class="main-header">
        <nav class="navbar navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <a href="/" class="navbar-brand"><b>StadiumSample</b></a>
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                <i class="fa fa-bars"></i>
              </button>
            </div>
            {{partial('template/header')}}
          </div><!-- /.container-fluid -->
        </nav>
      </header> 
      <!-- Full Width Column -->

      <div class="content-wrapper" style="min-height: 582px; background: url('img/stadium/wallpaper2.jpg') no-repeat !important; background-size: 100% !important;">
        <div class="container">
          <!-- Main content -->
          <section class="content">
            {{ flash.output() }}
            {% block content %}{% endblock %}
          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="container">
          <div class="pull-right hidden-xs">
            <b>Version</b> 2.2.0
          </div>
          <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
        </div><!-- /.container -->
      </footer>
    </div><!-- ./wrapper -->


    <!-- jQuery 2.1.4 -->
    <script src="../../js/plugins/jQuery/jQuery-2.1.4.min.js" type="text/javascript"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
    <!-- SlimScroll -->
    <script src="../../js/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src="../../js/plugins/fastclick/fastclick.min.js" type="text/javascript"></script>
    <!-- AdminLTE App -->
    <script src="../../js/AdminLTE/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../js/AdminLTE/demo.js" type="text/javascript"></script>
      {{assets.outputJs('jsFooter')}}
  </body>
</html>
