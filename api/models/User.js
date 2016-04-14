/**
 * User.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */
var bcrypt = require('bcrypt');

module.exports = {

	schema: true,

	connection: 'MysqlServer',

	tableName: 'signup',

  	attributes: {

  		id:{
  			type:'integer',
  			autoIncrement: true
  		},

  		name: {
	  		type:'string',
	  		required:true
	  	},
	  	firmname:{
	  		type:'string',
	  		required:true
	  	},
	  	mobile:{
	  		type:'integer',
	  		required:true
	  	},
	  	telephone:{
	  		type:'integer',
	  		required:true
	  	},
	  	email: {
	  		type:'string',
	  		email:true,
	  		required:true,
	  		unique:true
	  	},
	  	password:{
	  		type:'string',
	  		required:true
	  	}
  	},

  	beforeCreate: function(user, cb) {
    bcrypt.genSalt(10, function(err, salt) {
      bcrypt.hash(user.password, salt, function(err, hash) {
        if (err)
          return cb(err);
        user.password = hash;
        cb();
      });
    });
  }

}; 

