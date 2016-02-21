package com.inmobi.re.controller.util;

public enum TransitionStringEnum {
    DEFAULT("default"),
    DISSOLVE("dissolve"),
    FADE("fade"),
    ROLL("roll"),
    SLIDE("slide"),
    ZOOM("zoom"),
    NONE("none");
    private String a;

    static {
        String str = "default";
        DEFAULT = new TransitionStringEnum("DEFAULT", 0, "default");
        str = "dissolve";
        DISSOLVE = new TransitionStringEnum("DISSOLVE", 1, "dissolve");
        str = "fade";
        FADE = new TransitionStringEnum("FADE", 2, "fade");
        str = "roll";
        ROLL = new TransitionStringEnum("ROLL", 3, "roll");
        str = "slide";
        SLIDE = new TransitionStringEnum("SLIDE", 4, "slide");
        String str2 = "zoom";
        ZOOM = new TransitionStringEnum("ZOOM", 5, "zoom");
        str2 = "none";
        NONE = new TransitionStringEnum("NONE", 6, "none");
        b = new TransitionStringEnum[]{DEFAULT, DISSOLVE, FADE, ROLL, SLIDE, ZOOM, NONE};
    }

    private TransitionStringEnum(String str) {
        this.a = str;
    }

    public static TransitionStringEnum fromString(String str) {
        if (str != null) {
            TransitionStringEnum[] values = values();
            int length = values.length;
            int i = 0;
            while (i < length) {
                TransitionStringEnum transitionStringEnum = values[i];
                if (str.equalsIgnoreCase(transitionStringEnum.a)) {
                    return transitionStringEnum;
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