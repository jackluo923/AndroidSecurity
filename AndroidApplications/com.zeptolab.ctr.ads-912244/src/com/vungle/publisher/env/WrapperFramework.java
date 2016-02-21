package com.vungle.publisher.env;

public enum WrapperFramework {
    air,
    corona,
    marmalade,
    unity;

    static {
        air = new WrapperFramework("air", 0);
        corona = new WrapperFramework("corona", 1);
        marmalade = new WrapperFramework("marmalade", 2);
        unity = new WrapperFramework("unity", 3);
        a = new WrapperFramework[]{air, corona, marmalade, unity};
    }
}