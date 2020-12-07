@SubscribeEvent public void setupPlayerRotations(PlayerModelEvent.SetupAngles.Post event){
	Entity entity = event.getEntity();
  PlayerModel playerModel = event.getModelPlayer();
	Map<String, Object> dependencies = new HashMap<>();
	dependencies.put("entity", entity);
	dependencies.put("playerModel", playerModel);
	dependencies.put("event", event);
	this.executeProcedure(dependencies);
}
