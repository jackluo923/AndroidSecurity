package android.support.v4.text;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.cache.ProductCacheConfig;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Locale;

public class TextUtilsCompat {
    private static String ARAB_SCRIPT_SUBTAG;
    private static String HEBR_SCRIPT_SUBTAG;
    public static final Locale ROOT;

    static {
        ROOT = new Locale(AdTrackerConstants.BLANK, AdTrackerConstants.BLANK);
        ARAB_SCRIPT_SUBTAG = "Arab";
        HEBR_SCRIPT_SUBTAG = "Hebr";
    }

    private static int getLayoutDirectionFromFirstChar(Locale locale) {
        switch (Character.getDirectionality(locale.getDisplayName(locale).charAt(0))) {
            case GoogleScorer.CLIENT_GAMES:
            case GoogleScorer.CLIENT_PLUS:
                return 1;
            default:
                return 0;
        }
    }

    public static int getLayoutDirectionFromLocale(Locale locale) {
        if (!(locale == null || locale.equals(ROOT))) {
            String script = ICUCompat.getScript(ICUCompat.addLikelySubtags(locale.toString()));
            if (script == null) {
                return getLayoutDirectionFromFirstChar(locale);
            }
            if (script.equalsIgnoreCase(ARAB_SCRIPT_SUBTAG) || script.equalsIgnoreCase(HEBR_SCRIPT_SUBTAG)) {
                return 1;
            }
        }
        return 0;
    }

    public static String htmlEncode(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                    stringBuilder.append("&quot;");
                    break;
                case ApiEventType.API_MRAID_SEEK_AUDIO:
                    stringBuilder.append("&amp;");
                    break;
                case ApiEventType.API_MRAID_PAUSE_AUDIO:
                    stringBuilder.append("&#39;");
                    break;
                case ProductCacheConfig.DEFAULT_INTERVAL:
                    stringBuilder.append("&lt;");
                    break;
                case '>':
                    stringBuilder.append("&gt;");
                    break;
                default:
                    stringBuilder.append(charAt);
                    break;
            }
            i++;
        }
        return stringBuilder.toString();
    }
}