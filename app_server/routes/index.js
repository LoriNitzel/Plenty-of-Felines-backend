var express = require('express');
var router = express.Router();
var ctrlUsers = require('../controllers/users');
var ctrlOthers = require('../controllers/others');
var ctrlMain = require('../controllers/main');
var ctrlCats = require('../controllers/cats');


/* GET home page. */
router.get('/', ctrlMain.index);



/* Users pages (put id routes at the bottom!!!) */
router.post('/login', ctrlUsers.loginPOF);
router.post('/users', ctrlUsers.joinPOF);
router.get('/users/matches', ctrlUsers.matchesPOF);
router.get('/users/:id', ctrlUsers.profilePOF);
router.put('/users/:id', ctrlUsers.profileUpdate);
router.delete('/users/:id', ctrlUsers.profileDestroy);
router.get('/users/:id/edit', ctrlUsers.editProfile);



 /* Cats pages */
router.get('/cats', ctrlCats.results);
router.get('/cats/admin', ctrlCats.admin);
router.post('/cats/admin/create', ctrlCats.createCats);
router.delete('/cats/admin/delete/:id', ctrlCats.catDelete);
router.put('/cats/admin/:id', ctrlCats.catUpdate);
router.get('/cats/:id', ctrlCats.specificCats);



 /* Other pages */
router.get('/welcome', ctrlOthers.welcome);
router.put('/questions', ctrlOthers.questions);
// router.get('/doppleCat', ctrlOthers.doppleCat);


module.exports = router;
