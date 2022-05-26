/// @function scr_find_target
/// @description 
/// @param _x real | x position
/// @param _y real | y position
/// @return Target | id of target instance
function scr_find_target(){
	//Find target based on target type
	if target_type == NEAREST{
		var shortest_distance = 5000
		for (var i=0; i<instance_number(par_unit); i++){
			var Inst = instance_find(par_unit, i)
			//Target enemies of current team
			if target_team == ENEMY{
				if Inst.team != team{
					var dist = point_distance(x, y, Inst.x, Inst.y)
					if dist < shortest_distance{
						Target = Inst
						shortest_distance = dist
					}
				}
			}
			//Target friends
			else{
				if Inst.team == team{
					var dist = point_distance(x, y, Inst.x, Inst.y)
					if dist < shortest_distance{
						Target = Inst
						shortest_distance = dist
					}
				}
			}
		}
	}
	return Target
}