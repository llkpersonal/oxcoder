$(document).ready(
		function() {
			//设置scrollpastend
			editor.setOption("scrollPastEnd", true);
			// 点击保存按钮
			$("#btn_save").click(function() {

				/*
				 * $('#waiting-save').modal({ keyboard: false });
				 */
				$.post("saveChallengeAndroid.action", {
					"content" : editor.getValue(),
					"path" : $("#input-code-path").val(),
					"filename" : $("#input-filename").val(),
					"fullpath" : $("#input-code-path2").val(),
					"savetype" : $("#input-save-type").val()
				}, function(data) {
					// 显示等待的模态框

					$('#info-note').modal({
						keyboard : false
					});
					if ("success" == data) {
						$("#info-div").html("保存成功");
					} else {
						$("#info-div").html("保存失败");
					}

				}, "json");
			});
			// 关闭提示框
			$("#btn-info-close").click(function() {

				$('#info-note').modal('hide');
			});

			// 视频
			var myVideo = document.getElementsByTagName('video')[0];

			$(".video").click(
					function() {
						myVideo.src = myVideo.src = "temp/"
								+ $("#input-uid").val() + "/"
								+ $("#input-filename").val() + "/video/"
								+ $(this).attr("videoName");
						$('#videoModal').modal({

							keyboard : false,
							backdrop : true
						});
					});
			// 进入Android学习页面，默认加载代码
			// /alert($("#input-projectpath").attr("value")+"/src/android/example/biaobai/Diaosi.java");
			$.post("hr-load-challenge-code.action", {
				"reid" : $("#input-reid").val(),
				"uid" : $("#input-uid").val(),
				"pid" : $("#input-pid").val()
			}, function(data) {
				console.log($("#input-filename").attr("value")+"#"+$("#input-code-path").val());
				editor.setValue("\n" + data);
			}, "json");

			// 视频框消失后触发的事件，关闭视频
			$('#videoModal').on('hidden.bs.modal', function(e) {
				myVideo.pause();
			});
			$("#editor").css("font-size", "13px");

			// log框的状态
			var stateOfLog = 0;

			$("#fontsize").change(
					function() {
						// alert($("#fontsize").val());
						document.getElementById('editor').style.fontSize = $(
								"#fontsize").val();
					});

			$("#theme").change(function() {
				if (1 == $("#theme").val()) {
					editor.setTheme("ace/theme/xcode");
				} else if (2 == $("#theme").val()) {
					editor.setTheme("ace/theme/twilight");
				}
			});

			setSize(stateOfLog);
			$(window).resize(function() {
				setSize(stateOfLog);
			});

			$("#div-maxsize").click(function() {
				stateOfLog = 3;
				setSize(stateOfLog);
			});
			$("#div-minisize").click(function() {
				stateOfLog = 2;
				setSize(stateOfLog);
			});
			// 鼠标移动事件
			$(".top-bar").mousedown(function(e)// e鼠标事件
			{
				$(this).css("cursor", "move");// 改变鼠标指针的形状

				var offset = $(this).offset();// DIV在页面的位置
				var x = e.pageX - offset.left;// 获得鼠标指针离DIV元素左边界的距离
				var y = e.pageY - offset.top;// 获得鼠标指针离DIV元素上边界的距离
				$(document).bind("mousemove", function(ev)// 绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件
				{
					$(".top-bar").stop();// 加上这个之后

					var _x = ev.pageX - x;// 获得X轴方向移动的值
					var _y = ev.pageY - y;// 获得Y轴方向移动的值

					$(".top-bar").animate({
						left : _x + "px",
						top : _y + "px"
					}, 1);
				});

			});

			$(document).mouseup(function() {
				$(".top-bar").css("cursor", "default");
				$(this).unbind("mousemove");
			});

			// 点击步骤对应的按钮
			$(".a-filepath").click(function() {
				//把保存类型设为1
				$("#input-save-type").val(1);
				//把隐藏表单的值设为该该链接的filepath值
				$("#input-code-path").val($(this).attr("filepath"));
				$.post("noteChallengeAndroid.action", {
					"step" : $(this).attr("step"),
					"filename" : $(this).attr("filepath"),
					"projectname" : $("#input-filename").val()
				}, function(data) {
					editor.setValue(data);
				}, "json");
			});

		});

// 根据情况调整log的尺寸
function setSize(flag) {
	$(".text-log").css({
		"position" : 'absolute',
		"right" : '0',
		"bottom" : '0'
	});
	if (0 == flag) { // 初始状态
		$("#editor").css("bottom", 0);
		$(".text-log").width(60);
		$(".text-log").height("20px");
		$(".minisize-log").show();
		$(".maxsize-log").hide();
	} else if (1 == flag) { // 显示结果时
		$(".minisize-log").hide();
		$(".text-log").height("150px");
		$(".text-log").width($(".div-right").width());
		$("#editor").css("bottom", $(".text-log").height() + 15);
		$(".maxsize-log").show();
		$(".maxsize-log").css("bottom", $(".text-log").height() + 15);
	} else if (2 == flag) { // 点击最小化的时候
		$(".maxsize-log").hide();
		$(".text-log").animate({
			height : '0px',
			width : '0'
		}, 500, function() {
			$("#editor").css("bottom", 0);
			$(".minisize-log").show();
		});
	} else if (3 == flag) { // log框还原
		$(".minisize-log").hide();
		$(".text-log").animate({
			height : '150px',
			width : $(".div-right").width()
		}, 500, function() {

			$("#editor").css("bottom", $(".text-log").height() + 15);
			$(".maxsize-log").show();
			$(".maxsize-log").css("bottom", $(".text-log").height() + 15);
		});
	}

	$(".text-log").css("max-height", $(window).height() / 3);
}