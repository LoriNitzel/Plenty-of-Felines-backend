var Waterline = require('waterline');

var Users = Waterline.Collection.extend({

  identity: 'users',
  connection: 'myLocalPostgres',

  attributes: {
    id: 'string',
    first_name: 'string',
    last_name: 'string',
    email: 'string',
    password: 'string',
    photo: 'string',
    desired_gender: 'string',
    desired_age: 'string',
    desired_color: 'string',
    desired_hair: 'string',
    dogs_in_home: 'string', 
    cats_in_home: 'string',
    other_in_home: 'string',
    kids_in_home: 'string',
    atmosphere_in_home: 'string',
    medical_acceptable: 'string'

  //   pets: {
  //     collection: 'pet',
  //     via: 'owners',
  //     dominant: true
  // }
  }
});

module.exports = Users;