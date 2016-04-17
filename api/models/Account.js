/**
 * Account.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {

  	schema: true,

	connection: 'MysqlServer',

	tableName: 'customerAccount',

	attributes: {

  		id:{
  			type:'integer',
  			autoIncrement: true
  		},

  		firstName: {
	  		type:'string',
	  		required:true
	  	},
	  	secondName:{
	  		type:'string',
	  		required:true
	  	},
	  	email: {
	  		type:'string',
	  		email:true,
	  		required:true,
	  		unique:true
	  	},
	  	mobileNo:{
	  		type:'integer',
	  		required:true
	  	},
	  	telephoneNo:{
	  		type:'integer',
	  		required:true
	  	}
  }
};

