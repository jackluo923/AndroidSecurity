package android.support.v4.text;

import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.Locale;

public final class BidiFormatter {
    private static final int DEFAULT_FLAGS = 2;
    private static final BidiFormatter DEFAULT_LTR_INSTANCE;
    private static final BidiFormatter DEFAULT_RTL_INSTANCE;
    private static TextDirectionHeuristicCompat DEFAULT_TEXT_DIRECTION_HEURISTIC = null;
    private static final int DIR_LTR = -1;
    private static final int DIR_RTL = 1;
    private static final int DIR_UNKNOWN = 0;
    private static final String EMPTY_STRING = "";
    private static final int FLAG_STEREO_RESET = 2;
    private static final char LRE = '\u202a';
    private static final char LRM = '\u200e';
    private static final String LRM_STRING;
    private static final char PDF = '\u202c';
    private static final char RLE = '\u202b';
    private static final char RLM = '\u200f';
    private static final String RLM_STRING;
    private final TextDirectionHeuristicCompat mDefaultTextDirectionHeuristicCompat;
    private final int mFlags;
    private final boolean mIsRtlContext;

    public static final class Builder {
        private int mFlags;
        private boolean mIsRtlContext;
        private TextDirectionHeuristicCompat mTextDirectionHeuristicCompat;

        public Builder() {
            initialize(BidiFormatter.isRtlLocale(Locale.getDefault()));
        }

        public Builder(Locale locale) {
            initialize(BidiFormatter.isRtlLocale(locale));
        }

        public Builder(boolean z) {
            initialize(z);
        }

        private static BidiFormatter getDefaultInstanceFromContext(boolean z) {
            return z ? DEFAULT_RTL_INSTANCE : DEFAULT_LTR_INSTANCE;
        }

        private void initialize(boolean z) {
            this.mIsRtlContext = z;
            this.mTextDirectionHeuristicCompat = DEFAULT_TEXT_DIRECTION_HEURISTIC;
            this.mFlags = 2;
        }

        public BidiFormatter build() {
            return (this.mFlags == 2 && this.mTextDirectionHeuristicCompat == DEFAULT_TEXT_DIRECTION_HEURISTIC) ? getDefaultInstanceFromContext(this.mIsRtlContext) : new BidiFormatter(this.mFlags, this.mTextDirectionHeuristicCompat, null);
        }

        public android.support.v4.text.BidiFormatter.Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
            this.mTextDirectionHeuristicCompat = textDirectionHeuristicCompat;
            return this;
        }

        public android.support.v4.text.BidiFormatter.Builder stereoReset(boolean z) {
            if (z) {
                this.mFlags |= 2;
            } else {
                this.mFlags &= -3;
            }
            return this;
        }
    }

    private static class DirectionalityEstimator {
        private static final byte[] DIR_TYPE_CACHE;
        private static final int DIR_TYPE_CACHE_SIZE = 1792;
        private int charIndex;
        private final boolean isHtml;
        private char lastChar;
        private final int length;
        private final String text;

        static {
            DIR_TYPE_CACHE = new byte[1792];
            int i = DIR_UNKNOWN;
            while (i < 1792) {
                DIR_TYPE_CACHE[i] = Character.getDirectionality(i);
                i++;
            }
        }

        DirectionalityEstimator(String str, boolean z) {
            this.text = str;
            this.isHtml = z;
            this.length = str.length();
        }

        private static byte getCachedDirectionality(char c) {
            return c < '\u0700' ? DIR_TYPE_CACHE[c] : Character.getDirectionality(c);
        }

        private byte skipEntityBackward() {
            int i = this.charIndex;
            while (this.charIndex > 0) {
                String str = this.text;
                int i2 = this.charIndex - 1;
                this.charIndex = i2;
                this.lastChar = str.charAt(i2);
                if (this.lastChar != '&') {
                    if (this.lastChar == ';') {
                        break;
                    }
                } else {
                    return (byte) 12;
                }
            }
            this.charIndex = i;
            this.lastChar = ';';
            return (byte) 13;
        }

        private byte skipEntityForward() {
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.text.BidiFormatter.DirectionalityEstimator.skipEntityForward():byte");
            /* JADX: method processing error */
/*
            Error: jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:42)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:62)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:29)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:16)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:13)
	at jadx.core.ProcessClass.process(ProcessClass.java:22)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:209)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:133)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
*/
            /*
            r3 = this;
        L_0x0000:
            r0 = r3.charIndex;
            r1 = r3.length;
            if (r0 >= r1) goto L_0x0018;
        L_0x0006:
            r0 = r3.text;
            r1 = r3.charIndex;
            r2 = r1 + 1;
            r3.charIndex = r2;
            r0 = r0.charAt(r1);
            r3.lastChar = r0;
            r1 = 59;
            if (r0 != r1) goto L_0x0000;
        L_0x0018:
            r0 = 12;
            return r0;
            */
        }

        private byte skipTagBackward() {
            int i = this.charIndex;
            while (this.charIndex > 0) {
                String str = this.text;
                int i2 = this.charIndex - 1;
                this.charIndex = i2;
                this.lastChar = str.charAt(i2);
                if (this.lastChar == '<') {
                    return (byte) 12;
                }
                if (this.lastChar == '>') {
                    break;
                } else if (this.lastChar == '\"' || this.lastChar == '\'') {
                    char c = this.lastChar;
                    while (this.charIndex > 0) {
                        String str2 = this.text;
                        int i3 = this.charIndex - 1;
                        this.charIndex = i3;
                        char charAt = str2.charAt(i3);
                        this.lastChar = charAt;
                        if (charAt != c) {
                        }
                    }
                }
            }
            this.charIndex = i;
            this.lastChar = '>';
            return (byte) 13;
        }

        private byte skipTagForward() {
            int i = this.charIndex;
            while (this.charIndex < this.length) {
                String str = this.text;
                int i2 = this.charIndex;
                this.charIndex = i2 + 1;
                this.lastChar = str.charAt(i2);
                if (this.lastChar == '>') {
                    return (byte) 12;
                }
                if (this.lastChar == '\"' || this.lastChar == '\'') {
                    char c = this.lastChar;
                    while (this.charIndex < this.length) {
                        String str2 = this.text;
                        int i3 = this.charIndex;
                        this.charIndex = i3 + 1;
                        char charAt = str2.charAt(i3);
                        this.lastChar = charAt;
                        if (charAt != c) {
                        }
                    }
                }
            }
            this.charIndex = i;
            this.lastChar = '<';
            return (byte) 13;
        }

        byte dirTypeBackward() {
            this.lastChar = this.text.charAt(this.charIndex - 1);
            if (Character.isLowSurrogate(this.lastChar)) {
                int codePointBefore = Character.codePointBefore(this.text, this.charIndex);
                this.charIndex -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            } else {
                this.charIndex--;
                byte cachedDirectionality = getCachedDirectionality(this.lastChar);
                if (!this.isHtml) {
                    return cachedDirectionality;
                }
                if (this.lastChar == '>') {
                    return skipTagBackward();
                }
                return this.lastChar == ';' ? skipEntityBackward() : cachedDirectionality;
            }
        }

        byte dirTypeForward() {
            this.lastChar = this.text.charAt(this.charIndex);
            if (Character.isHighSurrogate(this.lastChar)) {
                int codePointAt = Character.codePointAt(this.text, this.charIndex);
                this.charIndex += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            } else {
                this.charIndex++;
                byte cachedDirectionality = getCachedDirectionality(this.lastChar);
                if (!this.isHtml) {
                    return cachedDirectionality;
                }
                if (this.lastChar == '<') {
                    return skipTagForward();
                }
                return this.lastChar == '&' ? skipEntityForward() : cachedDirectionality;
            }
        }

        int getEntryDir() {
            int i;
            this.charIndex = 0;
            boolean z = false;
            boolean z2 = false;
            int i2 = 0;
            while (this.charIndex < this.length && i == 0) {
                switch (dirTypeForward()) {
                    case DIR_UNKNOWN:
                        if (i2 == 0) {
                            return DIR_LTR;
                        }
                        i = i2;
                        break;
                    case DIR_RTL:
                    case FLAG_STEREO_RESET:
                        if (i2 == 0) {
                            return 1;
                        }
                        i = i2;
                        break;
                    case ZBuildConfig.$minsdk:
                        break;
                    case MMException.REQUEST_NOT_FILLED:
                    case MMException.REQUEST_BAD_RESPONSE:
                        i2++;
                        z2 = true;
                        break;
                    case MMException.REQUEST_NOT_PERMITTED:
                    case ZBuildConfig.$targetsdk:
                        i2++;
                        z2 = true;
                        break;
                    case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                        i2--;
                        z2 = false;
                        break;
                    default:
                        i = i2;
                        break;
                }
            }
            if (i == 0) {
                return 0;
            }
            if (i != 0) {
                return i;
            }
            while (this.charIndex > 0) {
                switch (dirTypeBackward()) {
                    case MMException.REQUEST_NOT_FILLED:
                    case MMException.REQUEST_BAD_RESPONSE:
                        if (i == i2) {
                            return DIR_LTR;
                        }
                        i2--;
                        break;
                    case MMException.REQUEST_NOT_PERMITTED:
                    case ZBuildConfig.$targetsdk:
                        if (i == i2) {
                            return 1;
                        }
                        i2--;
                        break;
                    case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                        i2++;
                        break;
                    default:
                        break;
                }
            }
            return 0;
        }

        int getExitDir() {
            this.charIndex = this.length;
            boolean z = false;
            int i = 0;
            while (this.charIndex > 0) {
                int i2;
                switch (dirTypeBackward()) {
                    case DIR_UNKNOWN:
                        if (i == 0) {
                            return -1;
                        }
                        if (i2 == 0) {
                            i2 = i;
                        }
                        break;
                    case DIR_RTL:
                    case FLAG_STEREO_RESET:
                        if (i == 0) {
                            return 1;
                        }
                        if (i2 == 0) {
                            i2 = i;
                        }
                        break;
                    case ZBuildConfig.$minsdk:
                        break;
                    case MMException.REQUEST_NOT_FILLED:
                    case MMException.REQUEST_BAD_RESPONSE:
                        if (i2 == i) {
                            return -1;
                        }
                        i--;
                        break;
                    case MMException.REQUEST_NOT_PERMITTED:
                    case ZBuildConfig.$targetsdk:
                        if (i2 == i) {
                            return 1;
                        }
                        i--;
                        break;
                    case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                        i++;
                        break;
                    default:
                        if (i2 == 0) {
                            i2 = i;
                        }
                        break;
                }
            }
            return DIR_UNKNOWN;
        }
    }

    static {
        DEFAULT_TEXT_DIRECTION_HEURISTIC = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        LRM_STRING = Character.toString(LRM);
        RLM_STRING = Character.toString(RLM);
        DEFAULT_LTR_INSTANCE = new BidiFormatter(false, 2, DEFAULT_TEXT_DIRECTION_HEURISTIC);
        DEFAULT_RTL_INSTANCE = new BidiFormatter(true, 2, DEFAULT_TEXT_DIRECTION_HEURISTIC);
    }

    private BidiFormatter(boolean z, int i, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.mIsRtlContext = z;
        this.mFlags = i;
        this.mDefaultTextDirectionHeuristicCompat = textDirectionHeuristicCompat;
    }

    private static int getEntryDir(String str) {
        return new DirectionalityEstimator(str, false).getEntryDir();
    }

    private static int getExitDir(String str) {
        return new DirectionalityEstimator(str, false).getExitDir();
    }

    public static BidiFormatter getInstance() {
        return new Builder().build();
    }

    public static BidiFormatter getInstance(Locale locale) {
        return new Builder(locale).build();
    }

    public static BidiFormatter getInstance(boolean z) {
        return new Builder(z).build();
    }

    private static boolean isRtlLocale(Locale locale) {
        return TextUtilsCompat.getLayoutDirectionFromLocale(locale) == 1;
    }

    private String markAfter(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, (int)DIR_UNKNOWN, charSequence.length());
        if (!this.mIsRtlContext && (isRtl || getExitDir(charSequence) == 1)) {
            return LRM_STRING;
        }
        return (!this.mIsRtlContext || (isRtl && getExitDir(charSequence) != -1)) ? EMPTY_STRING : RLM_STRING;
    }

    private String markBefore(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, (int)DIR_UNKNOWN, charSequence.length());
        if (!this.mIsRtlContext && (isRtl || getEntryDir(charSequence) == 1)) {
            return LRM_STRING;
        }
        return (!this.mIsRtlContext || (isRtl && getEntryDir(charSequence) != -1)) ? EMPTY_STRING : RLM_STRING;
    }

    public boolean getStereoReset() {
        return (this.mFlags & 2) != 0;
    }

    public boolean isRtl(CharSequence charSequence) {
        return this.mDefaultTextDirectionHeuristicCompat.isRtl(charSequence, (int)DIR_UNKNOWN, charSequence.length());
    }

    public boolean isRtlContext() {
        return this.mIsRtlContext;
    }

    public String unicodeWrap(String str) {
        return unicodeWrap(str, this.mDefaultTextDirectionHeuristicCompat, true);
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        return unicodeWrap(str, textDirectionHeuristicCompat, true);
    }

    public String unicodeWrap(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z) {
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, (int)DIR_UNKNOWN, charSequence.length());
        StringBuilder stringBuilder = new StringBuilder();
        if (getStereoReset() && z) {
            stringBuilder.append(markBefore(charSequence, isRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        if (isRtl != this.mIsRtlContext) {
            stringBuilder.append(isRtl ? RLE : LRE);
            stringBuilder.append(charSequence);
            stringBuilder.append(PDF);
        } else {
            stringBuilder.append(charSequence);
        }
        if (z) {
            stringBuilder.append(markAfter(charSequence, isRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        return stringBuilder.toString();
    }

    public String unicodeWrap(String str, boolean z) {
        return unicodeWrap(str, this.mDefaultTextDirectionHeuristicCompat, z);
    }
}