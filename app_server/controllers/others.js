/* GET 'welcome' page */

module.exports.welcome = function(req, res){
  res.render('index', { title: 'Welcome'});
};

/* GET 'questions' page */

module.exports.questions = function(req, res) {
   // Don't pass ID to update
  delete req.body.id;
  console.log(req.user);
  req.models.users.update({ id: req.user.id }, req.body, function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};



/* GET 'doppleCat' page */

// module.exports.doppleCat = function(req, res){
//   res.render('index', { title: 'DoppleCat'});
// };