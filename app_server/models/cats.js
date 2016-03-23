var Waterline = require('waterline');

var Cats = Waterline.Collection.extend({

  identity: 'cats',
  connection: 'myLocalPostgres',

  attributes: {
    id: {
    type: 'integer',
    unique: true,
    autoIncrement: true
    },
    FCCRSNC_id: 'string',
    name: 'string',
    photo: 'string',
    photo2: 'string',
    photo3: 'string',
    color: 'string',
    hair: 'string',
    age: 'string',
    medical_issue: 'string', 
    gender: 'string',
    good_with_cats: 'string',
    good_with_dogs: 'string',
    good_with_kids: 'string',
    good_with_other: 'string',
    atmosphere_needed: 'string',
    general_characteristics: 'string',
    summary: 'string'

  //   owners: {
  //     collection: 'user',
  //     via: 'cats'
  // }

  }
});

module.exports = Cats;