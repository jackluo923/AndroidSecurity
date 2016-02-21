package com.zeptolab.ctr.scorer;

import com.zeptolab.zbuild.ZBuildConfig;
import java.util.TreeMap;

public class CtrScoreloopAchievementMap extends TreeMap {
    public CtrScoreloopAchievementMap() {
        if (ZBuildConfig.profiles.contains("lite")) {
            put("acGoldenScissors", "1770518343");
            put("acRopeCutter", "1473164032");
            put("acWeightLoser", "745928714");
            put("acQuickFinger", "1483298675");
            put("acMasterFinger", "1472320214");
            put("acBubblePopper", "1483214688");
            put("acTummyTeaser", "961428478");
            put("acSpiderBuster", "1192449005");
        } else {
            put("acBronzeScissors", "677900534");
            put("acSilverScissors", "681508185");
            put("acGoldenScissors", "681473653");
            put("acRopeCutter", "681461850");
            put("acRopeCutterManiac", "681457931");
            put("acUltimateRopeCutter", "1058248892");
            put("acQuickFinger", "681464917");
            put("acMasterFinger", "681508316");
            put("acBubblePopper", "681513183");
            put("acBubbleMaster", "1058345234");
            put("acSpiderBuster", "681486608");
            put("acSpiderTamer", "1058341284");
            put("acWeightLoser", "681497443");
            put("acCalorieMinimizer", "1058341297");
            put("acTummyTeaser", "1058281905");
            put("acRomanticSoul", "1432722351");
            put("acMagician", "1515796440");
            put("acCardboardBox", "681486798");
            put("acCardboardPerfect", "1058364368");
            put("acFabricBox", "681462993");
            put("acFabricPerfect", "1058328727");
            put("acFoilBox", "681520253");
            put("acFoilPerfect", "1058324751");
            put("acGiftBox", "681512374");
            put("acGiftPerfect", "1058327768");
            put("acCosmicBox", "1058310903");
            put("acCosmicPerfect", "1058407145");
            put("acValentineBox", "1432721430");
            put("acValentinePerfect", "1432760157");
            put("acMagicBox", "1515813296");
            put("acMagicPerfect", "1515793567");
            put("acToyBox", "1991474812");
            put("acToyPerfect", "1991641832");
            put("acToolBox", "1321820679");
            put("acToolPerfect", "1335599628");
            put("acBuzzBox", "23523272771");
            put("acBuzzPerfect", "99928734496");
            put("acDJBox", "com.zeptolab.ctr.djboxcompleted");
            put("acDJPerfect", "com.zeptolab.ctr.djboxperfect");
            put("acSpookyBox", "com.zeptolab.ctr.spookyboxcompleted");
            put("acSpookyPerfect", "com.zeptolab.ctr.spookyboxperfect");
            put("acSteamBox", "com.zeptolab.ctr.steamboxcompleted");
            put("acSteamPerfect", "com.zeptolab.ctr.steamboxperfect");
            put("acLanternBox", "com.zeptolab.ctr.lanternboxcompleted");
            put("acLanternPerfect", "com.zeptolab.ctr.lanternboxperfect");
            put("acCheeseBox", "com.zeptolab.ctr.cheeseboxcompleted");
            put("acCheesePerfect", "com.zeptolab.ctr.cheeseboxperfect");
            put("acPillowBox", "com.zeptolab.ctr.pillowboxcompleted");
            put("acPillowPerfect", "com.zeptolab.ctr.pillowboxperfect");
        }
    }
}