package com.inmobi.re.controller.util;

public enum NavigationStringEnum {
    NONE("none"),
    CLOSE("close"),
    BACK("back"),
    FORWARD("forward"),
    REFRESH("refresh");
    private String a;

    static {
        String str = "none";
        NONE = new NavigationStringEnum("NONE", 0, "none");
        str = "close";
        CLOSE = new NavigationStringEnum("CLOSE", 1, "close");
        str = "back";
        BACK = new NavigationStringEnum("BACK", 2, "back");
        str = "forward";
        FORWARD = new NavigationStringEnum("FORWARD", 3, "forward");
        str = "refresh";
        REFRESH = new NavigationStringEnum("REFRESH", 4, "refresh");
        b = new NavigationStringEnum[]{NONE, CLOSE, BACK, FORWARD, REFRESH};
    }

    private NavigationStringEnum(String str) {
        this.a = str;
    }

    public static NavigationStringEnum fromString(String str) {
        if (str != null) {
            NavigationStringEnum[] values = values();
            int length = values.length;
            int i = 0;
            while (i < length) {
                NavigationStringEnum navigationStringEnum = values[i];
                if (str.equalsIgnoreCase(navigationStringEnum.a)) {
                    return navigationStringEnum;
                }
                i++;
            }
        }
        return null;
    }

    public String getText() {
        return this.a;
    }
}