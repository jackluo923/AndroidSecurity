package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Map;

class MraidCommandRegistry {
    private static Map a;

    private static interface MraidCommandFactory {
        MraidCommand create(Map map, MraidView mraidView);
    }

    static {
        a = new HashMap();
        a.put("close", new MraidCommandFactory() {
            public MraidCommand create(Map map, MraidView mraidView) {
                return new MraidCommandClose(map, mraidView);
            }
        });
        a.put("expand", new MraidCommandFactory() {
            public MraidCommand create(Map map, MraidView mraidView) {
                return new MraidCommandExpand(map, mraidView);
            }
        });
        a.put("usecustomclose", new MraidCommandFactory() {
            public MraidCommand create(Map map, MraidView mraidView) {
                return new MraidCommandUseCustomClose(map, mraidView);
            }
        });
        a.put("open", new MraidCommandFactory() {
            public MraidCommand create(Map map, MraidView mraidView) {
                return new MraidCommandOpen(map, mraidView);
            }
        });
        a.put("playVideo", new MraidCommandFactory() {
            public MraidCommand create(Map map, MraidView mraidView) {
                return new MraidCommandPlayVideo(map, mraidView);
            }
        });
        a.put("log", new MraidCommandFactory() {
            public MraidCommand create(Map map, MraidView mraidView) {
                return new MraidCommandLogCat(map, mraidView);
            }
        });
    }

    MraidCommandRegistry() {
    }

    static MraidCommand a(String str, Map map, MraidView mraidView) {
        MraidCommandFactory mraidCommandFactory = (MraidCommandFactory) a.get(str);
        return mraidCommandFactory != null ? mraidCommandFactory.create(map, mraidView) : null;
    }
}