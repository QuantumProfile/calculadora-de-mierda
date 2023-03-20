import 'package:flutter/material.dart';
class IndividualStatesController{
  List registeredStates=[];
  addState(key,state,render){
    if(state is! Map)return;
    registeredStates.add({
      'key':key,
      'state':state,
      'render':render
    });
  }
  setState(key,map){
    if(map is! Map)return;
    for (var state in registeredStates) {
      if(key!=state['key'])continue;
      for(var mapKey in map.keys){
        if(state['state'].keys.contains(mapKey))state['state'][mapKey]=map[mapKey];
      }
      var render=state['render'];
      if(render is Function)render();
      break;
    }
    return;
  }
  getState(key){
    for(var state in registeredStates){
      if(key!=state['key'])continue;
      return Map.of(state['state']);
    }
  }
}