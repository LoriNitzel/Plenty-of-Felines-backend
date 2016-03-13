var express = require('express');
var router = express.Router();
var ctrlUsers = require('../controllers/users');
var ctrlOthers = require('../controllers/others');
var ctrlMain = require('../controllers/main');
var ctrlCats = require('../controllers/cats');


/* GET home page. */
router.get('/', ctrlMain.index);


/* Users pages */
router.get('/users', ctrlUsers.joinPOF);
router.get('/users/:id', ctrlUsers.profilePOF);
router.get('/users/:id/settings', ctrlUsers.settingsPOF);


// /* Cats pages */
router.get('/cats', ctrlCats.results);
router.get('/cats/:id', ctrlCats.specificCats);

// /* Other pages */
router.get('/welcome', ctrlOthers.welcome);
router.get('/questions', ctrlOthers.questions);
router.get('/petfinder', ctrlOthers.petfinder);
router.get('/doppleCat', ctrlOthers.doppleCat);


module.exports = router;
