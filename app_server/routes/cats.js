var express = require('express');
var router = express.Router();

///////// Build Express Routes (CRUD routes for /cats)

router.get('/cats', function(req, res) {
  app.models.cat.find().exec(function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
});

router.post('/cats', function(req, res) {
  app.models.cat.create(req.body, function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
});

router.get('/cats/:id', function(req, res) {
  app.models.cat.findOne({ id: req.params.id }, function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
});

router.delete('/cats/:id', function(req, res) {
  app.models.cat.destroy({ id: req.params.id }, function(err) {
    if(err) return res.json({ err: err }, 500);
    res.json({ status: 'ok' });
  });
});

router.put('/cats/:id', function(req, res) {
  // Don't pass ID to update
  delete req.body.id;

  app.models.cat.update({ id: req.params.id }, req.body, function(err, model) {
    if(err) return res.json({ err: err }, 500);
    res.json(model);
  });
});

router.get('/connect_cats', function(req, res){
  app.models.user.findOne(1).exec(function(err, model){
    console.log(user);
    if(err) return res.json({ err: err }, 500);
    user.cats.add(1);
    user.cats.add(2);
    user.save(function(err) {});
  });
  app.models.user.findOne(2).exec(function(err, user){
    if(err) return res.json({ err: err }, 500);
    user.cats.add(2);
  });
  res.json({status: 'success'}, 200);
});


module.exports = router;
