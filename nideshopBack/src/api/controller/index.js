const Base = require('./base.js');

module.exports = class extends Base {
  async indexAction() {
  	const banner= await this.model('ad').where({ad_position_id:1}).select();
    return this.success({
    	banner:banner
    });
  }
};
