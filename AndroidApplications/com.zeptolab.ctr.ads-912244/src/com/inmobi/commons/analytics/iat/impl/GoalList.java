package com.inmobi.commons.analytics.iat.impl;

import com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.Iterator;
import java.util.Vector;

public class GoalList extends Vector {
    public static GoalList getLoggedGoals() {
        GoalList goalList = null;
        if (FileOperations.isFileExist(InternalSDKUtil.getContext(), AdTrackerConstants.IMGOAL_FILE)) {
            goalList = (GoalList) FileOperations.readFromFile(InternalSDKUtil.getContext(), AdTrackerConstants.IMGOAL_FILE);
        }
        return goalList == null ? new GoalList() : goalList;
    }

    public boolean addGoal(String str, int i, long j, int i2, boolean z) {
        AdTrackerNetworkInterface.setSynced(false);
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "GoalName is null");
            return false;
        } else if (i < 1 || j < 0) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "GoalCount cant be 0 or RetryTime cannot be negative");
            return false;
        } else {
            try {
                boolean z2;
                Iterator it = iterator();
                while (it.hasNext()) {
                    Goal goal = (Goal) it.next();
                    if (goal.getGoalName().equals(str)) {
                        if (!AdTrackerConstants.GOAL_DOWNLOAD.equals(str)) {
                            goal.setGoalCount(goal.getGoalCount() + i);
                        }
                        goal.setRetryCount(i2);
                        goal.setRetryTime(j);
                        goal.setDuplicateGoal(z);
                        z2 = true;
                        break;
                    }
                }
                z2 = false;
                if (i == 0) {
                    add(new Goal(str, i, j, i2, z));
                }
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }

    public Goal getGoal(String str) {
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "GoalName is null");
            return null;
        } else {
            try {
                Iterator it = iterator();
                while (it.hasNext()) {
                    Goal goal = (Goal) it.next();
                    if (goal.getGoalName().equals(str)) {
                        return goal;
                    }
                }
                return null;
            } catch (Exception e) {
                return null;
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean increaseRetryTime(java.lang.String r11, int r12, boolean r13) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.analytics.iat.impl.GoalList.increaseRetryTime(java.lang.String, int, boolean):boolean");
        /*
        r10 = this;
        r7 = 0;
        if (r11 == 0) goto L_0x000f;
    L_0x0003:
        r0 = "";
        r1 = r11.trim();	 Catch:{ Exception -> 0x006c }
        r0 = r0.equals(r1);	 Catch:{ Exception -> 0x006c }
        if (r0 == 0) goto L_0x0018;
    L_0x000f:
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = "GoalName cannot be null";
        com.inmobi.commons.internal.Log.internal(r0, r1);	 Catch:{ Exception -> 0x006c }
        r0 = r7;
    L_0x0017:
        return r0;
    L_0x0018:
        r1 = r10.getGoal(r11);	 Catch:{ Exception -> 0x006c }
        r0 = com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer.getConfigParams();	 Catch:{ Exception -> 0x006c }
        r0 = r0.getRetryParams();	 Catch:{ Exception -> 0x006c }
        r0 = r0.getMaxWaitTime();	 Catch:{ Exception -> 0x006c }
        r2 = com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer.getConfigParams();	 Catch:{ Exception -> 0x006c }
        r2 = r2.getRetryParams();	 Catch:{ Exception -> 0x006c }
        r2 = r2.getMaxRetry();	 Catch:{ Exception -> 0x006c }
        if (r1 == 0) goto L_0x0074;
    L_0x0036:
        r3 = r1.getRetryTime();	 Catch:{ Exception -> 0x006c }
        r5 = r1.getRetryCount();	 Catch:{ Exception -> 0x006c }
        r8 = (long) r0;	 Catch:{ Exception -> 0x006c }
        r6 = (r3 > r8 ? 1 : (r3 == r8? 0 : -1));
        if (r6 >= 0) goto L_0x005f;
    L_0x0043:
        r8 = 2;
        r3 = r3 * r8;
        r8 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
        r3 = r3 + r8;
        r8 = (long) r0;	 Catch:{ Exception -> 0x006c }
        r6 = (r3 > r8 ? 1 : (r3 == r8? 0 : -1));
        if (r6 <= 0) goto L_0x004f;
    L_0x004e:
        r3 = (long) r0;	 Catch:{ Exception -> 0x006c }
    L_0x004f:
        r10.removeGoal(r11, r12);	 Catch:{ Exception -> 0x006c }
        r5 = r5 + 1;
        if (r5 >= r2) goto L_0x0061;
    L_0x0056:
        r0 = r10;
        r1 = r11;
        r2 = r12;
        r6 = r13;
        r0.addGoal(r1, r2, r3, r5, r6);	 Catch:{ Exception -> 0x006c }
    L_0x005d:
        r0 = 1;
        goto L_0x0017;
    L_0x005f:
        r3 = (long) r0;	 Catch:{ Exception -> 0x006c }
        goto L_0x004f;
    L_0x0061:
        r0 = com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType.GOAL_DUMPED;	 Catch:{ Exception -> 0x006c }
        r2 = 0;
        r3 = 0;
        r5 = 0;
        r6 = 0;
        com.inmobi.commons.analytics.iat.impl.AdTrackerUtils.reportMetric(r0, r1, r2, r3, r5, r6);	 Catch:{ Exception -> 0x006c }
        goto L_0x005d;
    L_0x006c:
        r0 = move-exception;
        r1 = "[InMobi]-[AdTracker]-4.4.1";
        r2 = "Cant increase retry time";
        com.inmobi.commons.internal.Log.internal(r1, r2, r0);
    L_0x0074:
        r0 = r7;
        goto L_0x0017;
        */
    }

    public boolean removeGoal(String str, int i) {
        AdTrackerNetworkInterface.setSynced(false);
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "GoalName is null");
            return false;
        } else if (i < 1) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "GoalCount cannot be 0 or negative");
            return false;
        } else {
            Iterator it = iterator();
            while (it.hasNext()) {
                Goal goal = (Goal) it.next();
                if (goal.getGoalName().equals(str)) {
                    int goalCount = goal.getGoalCount() - i;
                    if (str.equals(AdTrackerConstants.GOAL_DOWNLOAD)) {
                        remove(goal);
                        break;
                    } else if (goalCount <= 0) {
                        remove(goal);
                    } else {
                        goal.setGoalCount(goalCount);
                    }
                }
            }
            return true;
        }
    }

    public void saveGoals() {
        FileOperations.saveToFile(InternalSDKUtil.getContext(), AdTrackerConstants.IMGOAL_FILE, this);
    }
}