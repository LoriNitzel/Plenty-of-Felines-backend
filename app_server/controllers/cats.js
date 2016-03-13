/* GET 'cats' page */

module.exports.results = function(req, res){
  res.render('index', { title: 'Cat Results'});
};

/* GET 'cats:id' page */

module.exports.specificCats = function(req, res){
  res.render('index', { title: 'Individual Cat'});
};

