/* GET 'users' page */

module.exports.joinPOF = function(req, res){
  res.render('index', { title: 'Users'});
};

/* GET 'users/:id' page */

module.exports.profilePOF = function(req, res){
  res.render('index', { title: 'Users Profile'});
};

/* GET 'users/:id/settings' page */

module.exports.settingsPOF = function(req, res){
  res.render('index', { title: 'Users Settings'});
};

