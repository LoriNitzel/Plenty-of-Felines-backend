var bcrypt = require('bcrypt');

/* JOIN POF - post 'users' page */



// function newUserHandler(req, res, next) {
//   var newUser = {
//     name: req.body.name,
//     email: req.body.email
//   };

//   bcrypt.hash(req.body.password, 10, function(err, hash) {
//     newUser.password = hash;
//     addUser();
//   });

module.exports.joinPOF = function(req, res) {
  req.models.users.create(req.body, function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};

/* GET 'users/:id' page (User's Profile Page)*/

module.exports.profilePOF = function(req, res) {
  req.models.users.findOne({ id: req.params.id }, function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};
/* GET 'users/:id/settings' page (don't think I'm going to use this one!) */

module.exports.settingsPOF = function(req, res){
  res.render('index', { title: 'Users Settings'});
};


/* GET 'users/:id/matches' page (Cat results page!) */

module.exports.matchesPOF = function(req, res){
   req.models.cats.find().exec(function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};

/* GET 'users/:id/matches/:id' page (Individual Cat info page) */

module.exports.catPOF = function(req, res){
  req.models.cats.findOne({ id: req.params.id }, function(err, model){
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};