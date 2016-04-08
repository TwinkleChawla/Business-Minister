/**
 * User.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

 var bcrypt = require('bcrypt');

module.exports = {

  attributes: {

  		 name: {
	  		type:'string',
	  		required:true
	  	},
	  	firm_name:{
	  		type:'string',
	  		required:true
	  	}
	  	email: {
	  		type:'string',
	  		email:true,
	  		required:true,
	  		unique:true
	  	},
	  	password:{
	  		type:'string',
	  		required:true,
	  		columnName: 'encryptedPassword'
	  	},
	  	toJSON: function() {
            var obj = this.toObject();
            delete obj.password;
            return obj;
        }
  	},

  	beforeCreate: function (values,next) {
	  	if (!values.password || values.password != values.confirmation) {
	  		return next({err: ["Password doesn't match password confirmation."]});
	  	}
	  	require('bcrypt').hash(values.password, 10, function passwordEncrypted(err, encryptedPassword){
	  		if (err) return next(err);
	  		values.password = encryptedPassword;
	  		next();
	  	});
  	}

};

