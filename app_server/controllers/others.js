/* GET 'welcome' page */

module.exports.welcome = function(req, res){
  res.render('index', { title: 'Welcome'});
};

/* GET 'questions' page */

module.exports.questions = function(req, res){
  res.render('index', { title: 'Questions!'});
};

/* GET 'petfinder' page */

module.exports.petfinder = function(req, res){
  res.render('index', { title: 'PetFinder'});
};

/* GET 'doppleCat' page */

module.exports.doppleCat = function(req, res){
  res.render('index', { title: 'DoppleCat'});
};