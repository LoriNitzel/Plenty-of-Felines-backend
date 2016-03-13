var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var Waterline = require('waterline');
var bodyParser = require('body-parser');
var cors = require('cors');
var methodOverride = require('method-override');
var lodash = require('lodash');

var routes = require('./app_server/routes/index');
var users = require('./app_server/routes/users');
var cats = require('./app_server/routes/cats');
var questions = require('./app_server/routes/questions');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'app_server','views'));
app.set('view engine', 'jade');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(methodOverride());
app.use(cors());

app.use('/', routes);
app.use('/users', users);
app.use('/cats', cats);
app.use('/questions', questions);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
  app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
      message: err.message,
      error: err
    });
  });
}

// production error handler
// no stacktraces leaked to user
app.use(function(err, req, res, next) {
  res.status(err.status || 500);
  res.render('error', {
    message: err.message,
    error: {}
  });
});

// Instantiate a new instance of the ORM
// var orm = new Waterline();
//
// // Start Waterline passing adapters in
// orm.initialize(config, function(err, models) {
//   if(err) throw err;
//
//   app.models = models.collections;
//   app.connections = models.connections;
//
//   // Start Server
//   app.listen(3000);
//
//   console.log("To see saved users, visit http://localhost:3000/users");
// });
//

module.exports = app;