/**
 * Job.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {

  	schema: true,

	connection: 'MysqlServer',

	tableName: 'customerJob',

	attributes: {

  		id:{
  			type:'integer',
  			autoIncrement: true
  		},

  		JobName: {
	  		type:'string',
	  		required:true
	  	},
	  	description:{
	  		type:'string'
	  	},
	  	quantity:{
	  		type: 'integer'
	  	},
	  	size:{
	  		type: 'geometry'
	  	},
	  	weight:{
	  		type: 'integer'
	  	},
	  	vat:{
	  		type: 'integer'
	  	},
	  	tax:{
	  		type: 'integer'
	  	},
	  	amount:{
	  		type: 'integer',
	  		required:true
	  	},
	  	discount:{
	  		type: 'integer'
	  	},
	  	totalAmount:{
	  		type: 'integer',
	  		required:true
	  	},
	  	advancePay:{
	  		type: 'integer',
	  		required:true
	  	},
	  	duePay:{
	  		type: 'integer',
	  		required:true
	  	}
  }
};

