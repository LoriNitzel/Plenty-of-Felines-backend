

/* JOIN POF - post 'users' page */

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

/* GET 'users/:id/edit' page (don't think I'm going to use this one!) */

module.exports.editProfile = function(req, res){
  res.render('index', { title: 'Edit Your Profile'});
};
