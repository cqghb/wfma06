<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>register page</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>bootstarp/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/animate.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>FrontLibrary/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>FrontLibrary/bootstrapvalidator/css/bootstrapValidator.css""/>
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=basePath%>FrontLibrary/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
		<script type="text/javascript" src="<%=basePath%>FrontLibrary/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
		<script type="text/javascript" src="<%=basePath%>FrontLibrary/bootstrapvalidator/js/bootstrapValidator.js"></script>
		<script type="text/javascript" src="<%=basePath%>FrontLibrary/bootstrapvalidator/js/language/zh_CN.js"></script>
		<script type="text/javascript" src="<%=basePath%>FrontLibrary/moment/moment.js"></script>
		<style type="text/css">
			.register{
				margin:0 auto;
				width:50%;
				height:auto;
				border-radius: .8em;
				border:1px solid;
				padding: 1em;
			}
		</style>
	</head>
	<body>
		<div class="register">
			<h2>欢迎新用户</h2>
			<form  id="form-horizontal" class="form-horizontal" action="<%=basePath%>userManage/register.action" method="post">
				<div class="form-group">
					<label for="nickname" class="col-sm-2 control-label">昵称</label> 
					<div class="col-sm-10">
						<input type="text" 
							name="user.nickname"
							class="form-control" 
							id="nickname"
							placeholder="请输入昵称" />
					</div>
				</div>
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">姓名</label> 
					<div class="col-sm-10">
						<input type="text" 
							name="user.name"
							class="form-control" 
							id="name"
							placeholder="请输入姓名" />
					</div>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1" class="col-sm-2 control-label">密码</label> 
					<div class="col-sm-10">
						<input type="password" 
							class="form-control" 
							name="user.password"
							id="exampleInputPassword1"
							placeholder="请输入密码" />
					</div>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword2" class="col-sm-2 control-label">再次输入密码</label> 
					<div class="col-sm-10">
						<input type="password" 
							class="form-control" 
							name="user.password2"
							id="exampleInputPassword2"
							placeholder="请再次输入密码" />
					</div>
				</div>
				<div class="form-group">
					<label for="age" class="col-sm-2 control-label">年龄</label>
					<div class="col-sm-10">
						<input type="text" 
							name="user.age"
							class="form-control" 
							id="age"
							placeholder="请输入年龄" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">性别</label>
					<div class="col-sm-10">
						<div class="radio">
							<label class="radio-inline">
								<input type="radio" name="user.sex" value="男" checked />男
							</label>
							<label class="radio-inline">
								<input type="radio" name="user.sex" value="女" />女
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
	                <label for="dtp_input2" class="col-sm-2 control-label">生日</label>
	                <div class="input-group date form_date col-sm-10" data-date="1990-01-01">
	                    <input id="brithday" 
							name="user.brithday" 
							size="16" 
							type="text" 
							placeholder="请选择日期"
							class="form-control form_datetime"
							readonly />
	                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
	                </div>
	            </div>
				<div class="form-group">
					<label for="address" class="col-sm-2 control-label">住址</label>
					<div class="col-sm-10">
						<input type="text" 
							class="form-control" 
							name="user.address"
							id="address"
							placeholder="请输入家庭住址" />
					</div>
				</div>
				<div class="form-group">
					<label for="tell" class="col-sm-2 control-label">电话号码</label>
					<div class="col-sm-10">
						<input type="text" 
							class="form-control" 
							name="user.tell"
							id="tell"
							placeholder="请输入电话号码" />
					</div>
				</div>
				<div class="form-group">
					<label for="qq" class="col-sm-2 control-label">QQ</label>
					<div class="col-sm-10">
						<input type="text" 
							class="form-control" 
							name="user.qq"
							id="qq"
							placeholder="请输入qq号码" />
					</div>
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-2 control-label">邮箱</label>
					<div class="col-sm-10">
						<input type="email" 
							class="form-control" 
							name="user.email"
							id="email"
							placeholder="请输入邮箱" />
					</div> 
				</div>
				<div class="form-group">
					<label for="type" class="col-sm-2 control-label">类型</label>
					<div class="col-sm-10">
						<select class="form-control"
							name="user.type"
							class="form-control"
							id="type">
							<option>管理员</option>
							<option>学员</option>
							<option>教练</option>
						</select>
					</div>
					
				</div>
				<div class="form-group">
					<label for="briefintroduction" class="col-sm-2 control-label">个人说明</label> 
					<div class="col-sm-10">
						<textarea type="text" 
							rows="3" 
							cols="20"
							name="user.briefintroduction"
							class="form-control" 
							id="briefintroduction"
							placeholder="请输入昵称"></textarea>
					</div>
				</div>
				<!-- <div class="form-group">
					<label for="exampleInputFile">上传头像</label> 
					<input type="file"
						name="user."
						id="exampleInputFile" />
						<p class="help-block">Example block-level help text here.</p>
				</div> -->
				<button type="reset" class="btn btn-warning" id="resetBtn">重置</button>
				<button type="submit" class="btn btn-primary">注册</button>
			</form>
		</div>
		
		
			
		<script type="text/javascript">
		    $('.form_date').datetimepicker({
		        language:  'zh-CN',//语言
		       // format: "yyyy-mm-dd",//时间显示的格式
		        startDate: "1990-01-01",//开始日期
		        autoclose:true,//当选定一个日期后时间选择器关闭
		        startView: 4,//视图打开之后先选年
		        minView: 2,//精确到天
		        todayBtn: false,//不显示底部的今天按钮
		        todayHighlight: true//当前日期高亮
		    })
		    .on('hide',function(e){
		    	
		    	//e.date = moment(e.date).format('YYYY-MM-DD');
		    	console.log(e);
		    	$('#form-horizontal').data('bootstrapValidator')  
                .updateStatus('user.brithday', 'NOT_VALIDATED',null)  
                .validateField('user.brithday');
		    });
		    
		    $('#form-horizontal').bootstrapValidator({
				message: 'This value is not valid',
				feedbackIcons: {
				    valid: 'glyphicon glyphicon-ok',
				    invalid: 'glyphicon glyphicon-remove',
				    validating: 'glyphicon glyphicon-refresh'
				},
				fields:{
					'user.nickname':{
						validators:{
							notEmpty:{
								message:'不能为空'
							}
						}
					},
					'user.name':{
						validators:{
							notEmpty:{
								message:'不能为空'
							}
						}
					},
					'user.password':{
						validators:{
							notEmpty:{
								message:'不能为空'
							},
							stringLength: {
		                        min: 6,
		                        max: 30,
		                        message: '长度在6到30之间'
		                    },
		                    regexp: {
		                        regexp: /^[a-zA-Z0-9_\.]+$/,
		                        message: '用户名只能由字母、数字、点和下划线组成'
		                    },
		                    identical: {
		                        field: 'user.password2',
		                        message: '两次密码输入不一致'
		                    },
		                    different: {
		                        field: 'user.nickname',
		                        message: '密码不能喝昵称一样'
		                    }
						}
					},
					'user.password2':{
						validators:{
							notEmpty:{
								message:'不能为空'
							},
		                    identical: {
		                        field: 'user.password',
		                        message: '两次密码输入不一致'
		                    },
		                    different: {
		                        field: 'user.nickname',
		                        message: '密码不能喝昵称一样'
		                    }
						}
					},
					'user.age':{
						validators:{
							notEmpty:{
								message:'不能为空'
							},
							digits:{
								message:'只能输入数字'
							}
						}
					},
					'user.sex':{
						validators:{
							notEmpty:{
								message:'不能为空'
							}
						}
					},
					'user.brithday':{
						validators:{
							notEmpty:{message:'不能为空'},
							date: {
		                        format: 'MM/DD/YYYY h:m A',
		                        message: '日期格式不对'
		                    }
						}
					},
					'user.address':{
						validators:{
							notEmpty:{
								message:'不能为空'
							}
						}
					},
					'user.tell':{
						validators:{
							notEmpty:{
								message:'不能为空'
							},
							stringLength: {  
		                        min: 11,  
		                        max: 11,  
		                        message: '请输入11位手机号码'  
		                    },
		                    regexp: {  
		                        regexp: /^1[3|5|8]{1}[0-9]{9}$/,  
		                        message: '请输入正确的手机号码'  
		                    }
						}
					},
					'user.qq':{
						validators:{
							notEmpty:{
								message:'不能为空'
							}
						}
					},
					'user.email': {
		                validators: {
		                	notEmpty:{
								message:'不能为空'
							},
		                	emailAddress: {
		                        message: '邮箱格式不正确'
		                    }
		                }
		            },
		            'user.type': {
		                validators: {
		                	notEmpty: {
		                    	notEmpty:{message:'不能为空'}
		                    }
		                }
		            },
		            'user.briefintroduction': {
		                validators: {
		                	notEmpty:{
								message:'不能为空'
							}
		                }
		            }
				}
			}).on('status.field.bv',function(e,date){
				//console.log($(e.target));
				//console.log(date.bv);
				//date.bv.disableSubmitButtons(false);
			});
			$('#resetBtn').click(function() {//重置按钮点击之后移除验证信息
		        $('#form-horizontal').data('bootstrapValidator').resetForm(true);
		    });
		</script>
		<script type="text/javascript">
		
			/* $('#form-horizontal').bootstrapValidator({
				message: 'This value is not valid',
				feedbackIcons: {
				    valid: 'glyphicon glyphicon-ok',
				    invalid: 'glyphicon glyphicon-remove',
				    validating: 'glyphicon glyphicon-refresh'
				},
				fields:{
					'user.nickname':{
						validators:{
							notEmpty:{
								message:'不能为空'
							}
						}
					},
					'user.name':{
						validators:{
							notEmpty:{
								message:'不能为空'
							}
						}
					},
					'user.password':{
						validators:{
							notEmpty:{
								message:'不能为空'
							},
							stringLength: {
		                        min: 6,
		                        max: 30,
		                        message: '长度在6到30之间'
		                    },
		                    regexp: {
		                        regexp: /^[a-zA-Z0-9_\.]+$/,
		                        message: '用户名只能由字母、数字、点和下划线组成'
		                    },
		                    identical: {
		                        field: 'user.password2',
		                        message: '两次密码输入不一致'
		                    },
		                    different: {
		                        field: 'user.nickname',
		                        message: '密码不能喝昵称一样'
		                    }
						}
					},
					'user.password2':{
						validators:{
							notEmpty:{
								message:'不能为空'
							},
		                    identical: {
		                        field: 'user.password',
		                        message: '两次密码输入不一致'
		                    },
		                    different: {
		                        field: 'user.nickname',
		                        message: '密码不能喝昵称一样'
		                    }
						}
					},
					'user.age':{
						validators:{
							notEmpty:{
								message:'不能为空'
							},
							digits:{
								message:'只能输入数字'
							}
						}
					},
					'user.sex':{
						validators:{
							notEmpty:{
								message:'不能为空'
							}
						}
					},
					'user.brithday':{
						validators:{
							notEmpty:{message:'不能为空'},
							date: {
		                        format: 'yyyy-mm-dd',
		                        message: '日期格式不对'
		                    }
						}
					},
					'user.address':{
						validators:{
							notEmpty:{
								message:'不能为空'
							}
						}
					},
					'user.tell':{
						validators:{
							notEmpty:{
								message:'不能为空'
							},
							stringLength: {  
		                        min: 11,  
		                        max: 11,  
		                        message: '请输入11位手机号码'  
		                    },
		                    regexp: {  
		                        regexp: /^1[3|5|8]{1}[0-9]{9}$/,  
		                        message: '请输入正确的手机号码'  
		                    }
						}
					},
					'user.qq':{
						validators:{
							notEmpty:{
								message:'不能为空'
							}
						}
					},
					'user.email': {
		                validators: {
		                	notEmpty:{
								message:'不能为空'
							},
		                	emailAddress: {
		                        message: '邮箱格式不正确'
		                    }
		                }
		            },
		            'user.type': {
		                validators: {
		                	notEmpty: {
		                    	notEmpty:{message:'不能为空'}
		                    }
		                }
		            },
		            'user.briefintroduction': {
		                validators: {
		                	notEmpty:{
								message:'不能为空'
							}
		                }
		            }
				}
			}).on('status.field.bv',function(e,date){
				//console.log($(e.target));
				//console.log(date.bv);
				//date.bv.disableSubmitButtons(false);
			});
			$('#resetBtn').click(function() {//重置按钮点击之后移除验证信息
		        $('#form-horizontal').data('bootstrapValidator').resetForm(true);
		    }); */
		
			
			/* $(document).ready(function() {
				$('#form-horizontal').bootstrapValidator({
					message: 'This value is not valid',
					feedbackIcons: {
					    valid: 'glyphicon glyphicon-ok',
					    invalid: 'glyphicon glyphicon-remove',
					    validating: 'glyphicon glyphicon-refresh'
					},
					fields:{
						'user.nickname':{
							validators:{
								notEmpty:{
									message:'不能为空'
								}
							}
						},
						'user.name':{
							validators:{
								notEmpty:{
									message:'不能为空'
								}
							}
						},
						'user.password':{
							validators:{
								notEmpty:{
									message:'不能为空'
								},
								stringLength: {
			                        min: 6,
			                        max: 30,
			                        message: '长度在6到30之间'
			                    },
			                    regexp: {
			                        regexp: /^[a-zA-Z0-9_\.]+$/,
			                        message: '用户名只能由字母、数字、点和下划线组成'
			                    },
			                    identical: {
			                        field: 'user.password2',
			                        message: '两次密码输入不一致'
			                    },
			                    different: {
			                        field: 'user.nickname',
			                        message: '密码不能喝昵称一样'
			                    }
							}
						},
						'user.password2':{
							validators:{
								notEmpty:{
									message:'不能为空'
								},
			                    identical: {
			                        field: 'user.password',
			                        message: '两次密码输入不一致'
			                    },
			                    different: {
			                        field: 'user.nickname',
			                        message: '密码不能喝昵称一样'
			                    }
							}
						},
						'user.age':{
							validators:{
								notEmpty:{
									message:'不能为空'
								},
								digits:{
									message:'只能输入数字'
								}
							}
						},
						'user.sex':{
							validators:{
								notEmpty:{
									message:'不能为空'
								}
							}
						},
						'user.brithday':{
							validators:{
								notEmpty:{message:'不能为空'},
								date: {
			                        format: 'yyyy-MM-dd',
			                        message: 'The birthday is not valid'
			                    }
							}
						},
						'user.address':{
							validators:{
								notEmpty:{
									message:'不能为空'
								}
							}
						},
						'user.tell':{
							validators:{
								notEmpty:{
									message:'不能为空'
								}
							}
						},
						'user.qq':{
							validators:{
								notEmpty:{
									message:'不能为空'
								}
							}
						},
						'user.email': {
			                validators: {
			                	emailAddress: {
			                        message: '邮箱格式不正确'
			                    }
			                }
			            },
			            'user.type': {
			                validators: {
			                	notEmpty: {
			                    	notEmpty:{message:'不能为空'}
			                    }
			                }
			            },
			            'user.briefintroduction': {
			                validators: {
			                	notEmpty:{
									message:'不能为空'
								}
			                }
			            }
					}
				});
			}); */
			
		</script>
	</body>
	
</html>