var jsonwebtoken = require('jsonwebtoken');
var bcrypt = require('bcrypt');

/* JOIN POF - post new users' data on '/users' page to database */

module.exports.joinPOF = function(req, res) {
  req.models.users.create(req.body, function(err, model) {
    if(err) return res.json({ err: err }, 500);
    var token = jsonwebtoken.sign({ id: model.id }, process.env.JWT_SECRET);
    res.json({'token': token, 'id': model.id});
    // res.json(token);
  });
};

/* LOGIN POF - user login page '/login' - user's data to database with password check */

module.exports.loginPOF = function(req, res){
  req.models.users.findOne({ email: req.body.email }, function(err, model){
    if(err) return res.json({ err: err }, 500);
    console.log(req.body.email);
    console.log(model);
    bcrypt.compare(req.body.password, model.password, function(err, result){
      if(result == true){
        console.log("passwords match");
        var token = jsonwebtoken.sign({ id: model.id }, process.env.JWT_SECRET);
        res.json({'token': token, 'id': model.id});
      }
    });
  })
};

/* GET 'users/:id' page (User's Profile Page)*/

module.exports.profilePOF = function(req, res) {
  req.models.users.findOne({ id: req.params.id }, function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};


/* UPDATE User Profile */

module.exports.profileUpdate = function(req, res) {
  // Don't pass ID to update
  delete req.body.id;

  req.models.user.update({ id: req.params.id }, req.body, function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};


/* DELETE user */

module.exports.profileDestroy = function(req, res) {
  req.models.users.destroy({ id: req.params.id }, function(err) {
    if(err) return res.json({ err: err }, 500);
    res.json({ status: 'ok' });
  });
};


/* GET 'users/matches' page (Cat Matches page!) */

module.exports.matchesPOF = function(req, res){
   req.models.matches.find().exec(function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};

/* GET 'users/matches/:id' page (Individual Cat info page - from Matches page) */
//will need to grab this data by cat_id linked to Cats table!!//


module.exports.catPOF = function(req, res){
  res.render('index', { title: 'ind cats from match page'});
};

// module.exports.catPOF = function(req, res){
//   req.models.cats.findOne({ id: req.params.id }, function(err, model){
//     if(err) return res.json({ err: err }, 500);
//     res.json(model);
//   });
// };

/* GET 'users/:id/edit' page (don't think I'm going to use this one!) */

module.exports.editProfile = function(req, res){
  res.render('index', { title: 'Edit Your Profile'});
};
