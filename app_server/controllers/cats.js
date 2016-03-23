/* GET 'cats' page */

module.exports.results = function(req, res) {
  req.models.cats.find().exec(function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};

/* GET 'cats:id' (Individual Cat's) page */

module.exports.specificCats = function(req, res) {
  req.models.cats.findOne({ id: req.params.id }, function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};

/* UPDATE a Cat */

module.exports.catUpdate = function(req, res) {
  // Don't pass ID to update
  delete req.body.id;

  req.models.cats.update({ id: req.params.id }, req.body, function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
};

/* DELETE a Cat */

module.exports.catDelete = function(req, res) {
  req.models.cat.destroy({ id: req.params.id }, function(err) {
    if(err) return res.json({ err: err }, 500);
    res.json({ status: 'ok' });
  });
};


