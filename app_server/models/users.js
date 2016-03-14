var Waterline = require('waterline');

var Users = Waterline.Collection.extend({

  identity: 'user',
  connection: 'myLocalPostgres',

  attributes: {
    first_name: 'string',
    last_name: 'string'

  //   pets: {
  //     collection: 'pet',
  //     via: 'owners',
  //     dominant: true
  // }
  }
};

module.exports = Users;