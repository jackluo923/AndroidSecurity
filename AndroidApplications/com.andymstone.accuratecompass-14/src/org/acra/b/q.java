package org.acra.b;

public class q {
    public static String a(Thread thread) {
        StringBuilder stringBuilder = new StringBuilder();
        if (thread != null) {
            stringBuilder.append("id=").append(thread.getId()).append("\n");
            stringBuilder.append("name=").append(thread.getName()).append("\n");
            stringBuilder.append("priority=").append(thread.getPriority()).append("\n");
            if (thread.getThreadGroup() != null) {
                stringBuilder.append("groupName=").append(thread.getThreadGroup().getName()).append("\n");
            }
        } else {
            stringBuilder.append("No broken thread, this might be a silent exception.");
        }
        return stringBuilder.toString();
    }
}