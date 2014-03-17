/*
 * Fold
 * @author GISApe
 * @date 2014/1/13
 */
$(function() {
	$('#menuarrow').click(function() {
		var d = $(this).children('i');
		if (d.hasClass('icon-arrow-left')) {
			// 改样式
			$('#normalmenu').addClass('mini-menu');
			$('#content').addClass('mini-content');
			d.removeClass('icon-arrow-left').addClass('icon-arrow-right');
			$('span.slb-menu-word').addClass('hide');
			// 修改子 菜单(未处理中文)
			/* 
			 * escape("你好xxx").indexOf("%u") 
			 */
			$('span.slb-submenu').each(function(i, d) {
				$(this).text($(this).attr('slb-word').slice(0, 3) + "..");
				$(this).addClass('show');
			});

		} else {
			$('#normalmenu').removeClass('mini-menu');
			$('#content').removeClass('mini-content');
			d.removeClass('icon-arrow-right').addClass('icon-arrow-left');
			$('span.slb-menu-word').removeClass('hide');

			$('span.slb-submenu').each(function(i, d) {
				$(this).text($(this).attr('slb-word'));
				$(this).removeClass('show');
			});
		}
		// 禁止页面跳转, 调整
		return false;
	});

});