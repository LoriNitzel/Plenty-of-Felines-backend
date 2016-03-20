/* GET 'cats' page */

module.exports.results = function(req, res) {
  req.models.cats.find().exec(function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};

/* GET 'cats:id' page */

module.exports.specificCats = function(req, res) {
  req.models.cats.findOne({ id: req.params.id }, function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};
