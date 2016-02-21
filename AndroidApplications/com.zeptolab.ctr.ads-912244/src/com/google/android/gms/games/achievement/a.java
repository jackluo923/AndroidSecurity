package com.google.android.gms.games.achievement;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.b;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.d;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ep;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;

public final class a extends b implements Achievement {
    a(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    public String getAchievementId() {
        return getString("external_achievement_id");
    }

    public int getCurrentSteps() {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        ed.v(z);
        return getInteger("current_steps");
    }

    public String getDescription() {
        return getString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION);
    }

    public void getDescription(CharArrayBuffer charArrayBuffer) {
        a(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, charArrayBuffer);
    }

    public String getFormattedCurrentSteps() {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        ed.v(z);
        return getString("formatted_current_steps");
    }

    public void getFormattedCurrentSteps(CharArrayBuffer charArrayBuffer) {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        ed.v(z);
        a("formatted_current_steps", charArrayBuffer);
    }

    public String getFormattedTotalSteps() {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        ed.v(z);
        return getString("formatted_total_steps");
    }

    public void getFormattedTotalSteps(CharArrayBuffer charArrayBuffer) {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        ed.v(z);
        a("formatted_total_steps", charArrayBuffer);
    }

    public long getLastUpdatedTimestamp() {
        return getLong("last_updated_timestamp");
    }

    public String getName() {
        return getString(Fields.NAME);
    }

    public void getName(CharArrayBuffer charArrayBuffer) {
        a(Fields.NAME, charArrayBuffer);
    }

    public Player getPlayer() {
        return new d(this.zU, this.zW);
    }

    public Uri getRevealedImageUri() {
        return aa("revealed_icon_image_uri");
    }

    public int getState() {
        return getInteger("state");
    }

    public int getTotalSteps() {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        ed.v(z);
        return getInteger("total_steps");
    }

    public int getType() {
        return getInteger(AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
    }

    public Uri getUnlockedImageUri() {
        return aa("unlocked_icon_image_uri");
    }

    public String toString() {
        com.google.android.gms.internal.ep.a a = ep.e(this).a(AnalyticsEvent.EVENT_ID, getAchievementId()).a(Fields.NAME, getName()).a("state", Integer.valueOf(getState())).a(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, Integer.valueOf(getType()));
        if (getType() == 1) {
            a.a("steps", getCurrentSteps() + "/" + getTotalSteps());
        }
        return a.toString();
    }
}