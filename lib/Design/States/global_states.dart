class GlobalStatesController{
  List registeredStates=[];
  addState(key,state){
    if(state is! Map)return;
    registeredStates.add({
      'key':key,
      'state':state,
      'renderAll':{}
    });
  }
  setState(key,map){
    if(map is! Map)return;
    for (var state in registeredStates) {
      if(key!=state['key'])continue;
      for(var mapKey in map.keys){
        if(state['state'].keys.contains(mapKey))state['state'][mapKey]=map[mapKey];
      }
      var renderAll=state['renderAll'];
      for(var render in renderAll.values){
        if(render is Function)render();
      }
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
  linkToState(stateKey,renderKey,render){
    for (var state in registeredStates) {
      if(stateKey!=state['key'])continue;
      if(render is Function)state['renderAll'].addAll({
        renderKey:render
      });
      break;
    }
  }
  unlinkToState(stateKey,renderKey){
    for (var state in registeredStates) {
      if(stateKey!=state['key'])continue;
      state['renderAll'].removeWhere((key,value)=>key==renderKey);
      /*var renderAll=state['renderAll'];
      for (var key in renderAll.keys) {
        if(renderKey!=key)continue;
        var render=renderAll[renderKey];
        if(render is Function)render();
        break;
      }*/
      break;
    }
  }
}