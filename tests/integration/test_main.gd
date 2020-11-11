extends "res://addons/gut/test.gd"


func test_stub():
	var main_node = get_node('/root/Main')
	var main_node_script_path = 'res://Main.gd'
	var main_partial_double = partial_double(main_node_script_path, DOUBLE_STRATEGY.FULL).new()
	stub(main_partial_double, 'rpc_id').to_do_nothing()
	var main_partial_double_script = main_partial_double.get_script()
	main_node.set_script(main_partial_double_script)
	main_node.send_user_nickname()
	assert_call_count(main_partial_double, 'rpc_id', 1)
