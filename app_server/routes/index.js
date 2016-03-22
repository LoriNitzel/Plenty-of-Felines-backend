var express = require('express');
var router = express.Router();
var ctrlUsers = require('../controllers/users');
var ctrlOthers = require('../controllers/others');
var ctrlMain = require('../controllers/main');
var ctrlCats = require('../controllers/cats');


/* GET home page. */
router.get('/', ctrlMain.index);


/* Users pages */
router.post('/login', ctrlUsers.loginPOF);
router.post('/users', ctrlUsers.joinPOF);
router.get('/users/:id', ctrlUsers.profilePOF);
router.get('/users/:id/matches', ctrlUsers.matchesPOF);
router.get('/users/:id/matches/:id', ctrlUsers.catPOF);
router.put('/users/:id', ctrlUsers.profileUpdate);
router.delete('/users/:id', ctrlUsers.profileDestroy);
router.get('/users/:id/edit', ctrlUsers.editProfile);

// /* Cats pages */
router.get('/cats', ctrlCats.results);
router.get('/cats/:id', ctrlCats.specificCats);
router.put('/cats/admin/:id', ctrlCats.catUpdate);
router.delete('/cats/delete/:id', ctrlCats.catDelete);


// /* Other pages */
router.get('/welcome', ctrlOthers.welcome);

router.post('/questions', ctrlOthers.questions);

router.get('/admin', ctrlOthers.adminPOF);


// router.get('/doppleCat', ctrlOthers.doppleCat);





module.exports = router;
