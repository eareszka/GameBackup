// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CopyStruct(struct)
{
    var key, value;
    var newCopy = {};
    var keys = variable_struct_get_names(struct);
    for (var i = array_length(keys)-1; i >= 0; --i) {
            key = keys[i];
            value = struct[$ key];
            variable_struct_get(struct, key);
            variable_struct_set(newCopy, key, value)
    }
    return newCopy;
}