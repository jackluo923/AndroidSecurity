package android.support.v4.text;

import com.millennialmedia.android.MMException;
import com.zeptolab.zbuild.ZBuildConfig;
import java.nio.CharBuffer;
import java.util.Locale;

public class TextDirectionHeuristicsCompat {
    public static final TextDirectionHeuristicCompat ANYRTL_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_RTL;
    public static final TextDirectionHeuristicCompat LOCALE;
    public static final TextDirectionHeuristicCompat LTR;
    public static final TextDirectionHeuristicCompat RTL;
    private static final int STATE_FALSE = 1;
    private static final int STATE_TRUE = 0;
    private static final int STATE_UNKNOWN = 2;

    private static interface TextDirectionAlgorithm {
        int checkRtl(CharSequence charSequence, int i, int i2);
    }

    private static class AnyStrong implements TextDirectionAlgorithm {
        public static final AnyStrong INSTANCE_LTR;
        public static final AnyStrong INSTANCE_RTL;
        private final boolean mLookForRtl;

        static {
            INSTANCE_RTL = new AnyStrong(true);
            INSTANCE_LTR = new AnyStrong(false);
        }

        private AnyStrong(boolean z) {
            this.mLookForRtl = z;
        }

        public int checkRtl(CharSequence charSequence, int i, int i2) {
            int i3 = i + i2;
            boolean z = false;
            while (i < i3) {
                switch (TextDirectionHeuristicsCompat.isRtlText(Character.getDirectionality(charSequence.charAt(i)))) {
                    case STATE_TRUE:
                        if (this.mLookForRtl) {
                            return 0;
                        }
                        z = true;
                        break;
                    case STATE_FALSE:
                        if (!this.mLookForRtl) {
                            return STATE_FALSE;
                        }
                        z = true;
                        break;
                }
                i++;
            }
            if (i == 0) {
                return STATE_UNKNOWN;
            }
            return this.mLookForRtl ? STATE_FALSE : 0;
        }
    }

    private static class FirstStrong implements TextDirectionAlgorithm {
        public static final FirstStrong INSTANCE;

        static {
            INSTANCE = new FirstStrong();
        }

        private FirstStrong() {
        }

        public int checkRtl(CharSequence charSequence, int i, int i2) {
            int i3 = i + i2;
            int i4 = 2;
            while (i < i3 && i4 == 2) {
                i4 = TextDirectionHeuristicsCompat.isRtlTextOrFormat(Character.getDirectionality(charSequence.charAt(i)));
                i++;
            }
            return i4;
        }
    }

    private static abstract class TextDirectionHeuristicImpl implements TextDirectionHeuristicCompat {
        private final TextDirectionAlgorithm mAlgorithm;

        public TextDirectionHeuristicImpl(TextDirectionAlgorithm textDirectionAlgorithm) {
            this.mAlgorithm = textDirectionAlgorithm;
        }

        private boolean doCheck(CharSequence charSequence, int i, int i2) {
            switch (this.mAlgorithm.checkRtl(charSequence, i, i2)) {
                case STATE_TRUE:
                    return true;
                case STATE_FALSE:
                    return false;
                default:
                    return defaultIsRtl();
            }
        }

        protected abstract boolean defaultIsRtl();

        public boolean isRtl(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            } else if (this.mAlgorithm == null) {
                return defaultIsRtl();
            } else {
                return doCheck(charSequence, i, i2);
            }
        }

        public boolean isRtl(char[] cArr, int i, int i2) {
            return isRtl(CharBuffer.wrap(cArr), i, i2);
        }
    }

    private static class TextDirectionHeuristicInternal extends TextDirectionHeuristicImpl {
        private final boolean mDefaultIsRtl;

        private TextDirectionHeuristicInternal(TextDirectionAlgorithm textDirectionAlgorithm, boolean z) {
            super(textDirectionAlgorithm);
            this.mDefaultIsRtl = z;
        }

        protected boolean defaultIsRtl() {
            return this.mDefaultIsRtl;
        }
    }

    private static class TextDirectionHeuristicLocale extends TextDirectionHeuristicImpl {
        public static final TextDirectionHeuristicLocale INSTANCE;

        static {
            INSTANCE = new TextDirectionHeuristicLocale();
        }

        public TextDirectionHeuristicLocale() {
            super(null);
        }

        protected boolean defaultIsRtl() {
            return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        }
    }

    static {
        LTR = new TextDirectionHeuristicInternal(false, null);
        RTL = new TextDirectionHeuristicInternal(true, null);
        FIRSTSTRONG_LTR = new TextDirectionHeuristicInternal(false, null);
        FIRSTSTRONG_RTL = new TextDirectionHeuristicInternal(true, null);
        ANYRTL_LTR = new TextDirectionHeuristicInternal(false, null);
        LOCALE = TextDirectionHeuristicLocale.INSTANCE;
    }

    private static int isRtlText(int i) {
        switch (i) {
            case STATE_TRUE:
                return STATE_FALSE;
            case STATE_FALSE:
            case STATE_UNKNOWN:
                return STATE_TRUE;
            default:
                return STATE_UNKNOWN;
        }
    }

    private static int isRtlTextOrFormat(int i) {
        switch (i) {
            case STATE_TRUE:
            case MMException.REQUEST_NOT_FILLED:
            case MMException.REQUEST_BAD_RESPONSE:
                return STATE_FALSE;
            case STATE_FALSE:
            case STATE_UNKNOWN:
            case MMException.REQUEST_NOT_PERMITTED:
            case ZBuildConfig.$targetsdk:
                return STATE_TRUE;
            default:
                return STATE_UNKNOWN;
        }
    }
}