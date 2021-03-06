var express = require('express');
var dotenv = require('dotenv').config();
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var Waterline = require('waterline');
var bodyParser = require('body-parser');
var cors = require('cors');
var methodOverride = require('method-override');
var debug = require('debug')('POF-backend:server');
var http = require('http');
var jwt = require('express-jwt');

// Waterline stuff
var dbConfig = require('./app_server/config/db');
var Cats = require('./app_server/models/cats');
var Users = require('./app_server/models/users');

// Routes
var routes = require('./app_server/routes/index');
var users = require('./app_server/routes/users');
var cats = require('./app_server/routes/cats');
var questions = require('./app_server/routes/questions');

var app = express();
app.use(cors());

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
app.use(jwt({ secret: process.env.JWT_SECRET }).unless({ path: ['/cats/admin', '/cats/admin/create', '/cats/admin/delete', '/users', '/login', '/welcome', '/cats', '/cats/:id', '/cats/admin/:id']}));

app.use(function(req, res, next){
  req.models = app.models;
  next();
})

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


/**
 * Get port from environment and store in Express.
 */

var port = normalizePort(process.env.PORT || '3000');
app.set('port', port);

/**
 * Create HTTP server.
 */

var server = http.createServer(app);

/**
 * Listen on provided port, on all network interfaces.
 */

// Instantiate a new instance of the ORM
var orm = new Waterline();


// Load the Models into the ORM
orm.loadCollection(Users);
orm.loadCollection(Cats);

// Start Waterline passing adapters in
orm.initialize(dbConfig, function(err, models) {
  if(err) throw err;

  app.models = models.collections;
  app.connections = models.connections;

  // Start Server
  server.listen(port);
  server.on('error', onError);
  server.on('listening', onListening);

  console.log("To see saved users, visit http://localhost:3000/users");
});


/**
 * Normalize a port into a number, string, or false.
 */

function normalizePort(val) {
  var port = parseInt(val, 10);

  if (isNaN(port)) {
    // named pipe
    return val;
  }

  if (port >= 0) {
    // port number
    return port;
  }

  return false;
}

/**
 * Event listener for HTTP server "error" event.
 */

function onError(error) {
  if (error.syscall !== 'listen') {
    throw error;
  }

  var bind = typeof port === 'string'
    ? 'Pipe ' + port
    : 'Port ' + port;

  // handle specific listen errors with friendly messages
  switch (error.code) {
    case 'EACCES':
      console.error(bind + ' requires elevated privileges');
      process.exit(1);
      break;
    case 'EADDRINUSE':
      console.error(bind + ' is already in use');
      process.exit(1);
      break;
    default:
      throw error;
  }
}

/**
 * Event listener for HTTP server "listening" event.
 */

function onListening() {
  var addr = server.address();
  var bind = typeof addr === 'string'
    ? 'pipe ' + addr
    : 'port ' + addr.port;
  debug('Listening on ' + bind);
}
