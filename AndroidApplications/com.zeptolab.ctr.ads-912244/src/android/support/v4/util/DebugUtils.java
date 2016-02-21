package android.support.v4.util;

import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;

public class DebugUtils {
    public static void buildShortClassTag(Object obj, StringBuilder stringBuilder) {
        if (obj == null) {
            stringBuilder.append("null");
        } else {
            String simpleName = obj.getClass().getSimpleName();
            if (simpleName == null || simpleName.length() <= 0) {
                simpleName = obj.getClass().getName();
                int lastIndexOf = simpleName.lastIndexOf(ApiEventType.API_MRAID_SEEK_VIDEO);
                if (lastIndexOf > 0) {
                    simpleName = simpleName.substring(lastIndexOf + 1);
                }
            }
            stringBuilder.append(simpleName);
            stringBuilder.append('{');
            stringBuilder.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }
}