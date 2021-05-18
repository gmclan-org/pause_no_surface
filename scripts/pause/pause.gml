globalvar PAUSE, __PAUSE_INST_LIST;

PAUSE = false;
__PAUSE_INST_LIST = [];


/// pauses game instances
/// 
function pause(stop) {
	
	PAUSE = !!stop;
	
	if (stop) {
		__PAUSE_INST_LIST = [];
		
		var _obj_definition_list = pause_obj_indexes();
		var _obj_arr_len = array_length(_obj_definition_list);
		
		for(var i = 0; i < _obj_arr_len; i++) {
			with(_obj_definition_list[i]) {
				array_push(__PAUSE_INST_LIST, new pause_data(id));
			}
		}
	} else {
		var _obj_arr_len = array_length(__PAUSE_INST_LIST);
		for(var i = 0; i < _obj_arr_len; i++) {
			__PAUSE_INST_LIST[i].unpause();
		}
	}
}

// return object indexes which should be paused
function pause_obj_indexes() {
	return [obj_circle_random];
}

function pause_data(_i) constructor {
	instance = _i;
	speed = _i.speed;
	image_speed = _i.image_speed;
	
	_i.speed = 0;
	_i.image_speed = 0;
	
	static unpause = function() {
		self.instance.speed = self.speed;
		self.instance.image_speed = self.image_speed;
	}
	
	// you can add alarms, or obj_index dependency here if you wish
}