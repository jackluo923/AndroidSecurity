package android.support.v4.net;

import android.os.Build.VERSION;
import java.net.Socket;

public class TrafficStatsCompat {
    private static final TrafficStatsCompatImpl IMPL;

    static interface TrafficStatsCompatImpl {
        void clearThreadStatsTag();

        int getThreadStatsTag();

        void incrementOperationCount(int i);

        void incrementOperationCount(int i, int i2);

        void setThreadStatsTag(int i);

        void tagSocket(Socket socket);

        void untagSocket(Socket socket);
    }

    static class BaseTrafficStatsCompatImpl implements TrafficStatsCompatImpl {
        private ThreadLocal mThreadSocketTags;

        private static class SocketTags {
            public int statsTag;

            private SocketTags() {
                this.statsTag = -1;
            }
        }

        BaseTrafficStatsCompatImpl() {
            this.mThreadSocketTags = new ThreadLocal() {
                protected SocketTags initialValue() {
                    return new SocketTags();
                }
            };
        }

        public void clearThreadStatsTag() {
            ((SocketTags) this.mThreadSocketTags.get()).statsTag = -1;
        }

        public int getThreadStatsTag() {
            return ((SocketTags) this.mThreadSocketTags.get()).statsTag;
        }

        public void incrementOperationCount(int i) {
        }

        public void incrementOperationCount(int i, int i2) {
        }

        public void setThreadStatsTag(int i) {
            ((SocketTags) this.mThreadSocketTags.get()).statsTag = i;
        }

        public void tagSocket(Socket socket) {
        }

        public void untagSocket(Socket socket) {
        }
    }

    static class IcsTrafficStatsCompatImpl implements TrafficStatsCompatImpl {
        IcsTrafficStatsCompatImpl() {
        }

        public void clearThreadStatsTag() {
            TrafficStatsCompatIcs.clearThreadStatsTag();
        }

        public int getThreadStatsTag() {
            return TrafficStatsCompatIcs.getThreadStatsTag();
        }

        public void incrementOperationCount(int i) {
            TrafficStatsCompatIcs.incrementOperationCount(i);
        }

        public void incrementOperationCount(int i, int i2) {
            TrafficStatsCompatIcs.incrementOperationCount(i, i2);
        }

        public void setThreadStatsTag(int i) {
            TrafficStatsCompatIcs.setThreadStatsTag(i);
        }

        public void tagSocket(Socket socket) {
            TrafficStatsCompatIcs.tagSocket(socket);
        }

        public void untagSocket(Socket socket) {
            TrafficStatsCompatIcs.untagSocket(socket);
        }
    }

    static {
        if (VERSION.SDK_INT >= 14) {
            IMPL = new IcsTrafficStatsCompatImpl();
        } else {
            IMPL = new BaseTrafficStatsCompatImpl();
        }
    }

    public static void clearThreadStatsTag() {
        IMPL.clearThreadStatsTag();
    }

    public static int getThreadStatsTag() {
        return IMPL.getThreadStatsTag();
    }

    public static void incrementOperationCount(int i) {
        IMPL.incrementOperationCount(i);
    }

    public static void incrementOperationCount(int i, int i2) {
        IMPL.incrementOperationCount(i, i2);
    }

    public static void setThreadStatsTag(int i) {
        IMPL.setThreadStatsTag(i);
    }

    public static void tagSocket(Socket socket) {
        IMPL.tagSocket(socket);
    }

    public static void untagSocket(Socket socket) {
        IMPL.untagSocket(socket);
    }
}