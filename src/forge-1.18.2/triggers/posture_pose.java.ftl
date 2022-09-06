<#include "procedures.java.ftl">
@Mod.EventBusSubscriber public class ${name}Procedure {
    @OnlyIn(Dist.CLIENT)@SubscribeEvent public static void onPlayerPose(PlayerModelEvent.Pose.Post event){
		<#assign dependenciesCode><#compress>
			<@procedureDependenciesCode dependencies, {
			"playerModel": "event.getPlayerModel()",
			"entity": "event.getPlayer()",
			"deltaTicks": "event.getDeltaTicks()",
			"limbSwing": "event.getLimbSwing()",
			"limbSwingAmount": "event.getLimbSwingAmount()",
			"ageInTicks": "event.getAgeInTicks()",
			"headYaw": "event.getHeadYaw()",
			"headPitch": "event.getHeadPitch()"
			}/>
		</#compress></#assign>
		execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }