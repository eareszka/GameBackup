section = 0
row = 0
column = 0
pos1 = 0
subimg = -1

op_length = array_length(global.quest)

right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));

select_key = keyboard_check(vk_space) || keyboard_check(vk_enter);