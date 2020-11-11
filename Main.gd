extends Node2D


func send_user_nickname():
	rpc_id(1, '_init_user_nickname', 'Player')
