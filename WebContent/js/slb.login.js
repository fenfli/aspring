/* -> login.jsp
 * @author GISApe
 * @date 2014/1/14
 */

$(function(){
	$('#verifycc').click(function() {
		$('#verifycodeimage')[0].src = webRoot + "common/getverifycodeimage.do" + "?random=" + Math.random() * 1000;
	});
});
