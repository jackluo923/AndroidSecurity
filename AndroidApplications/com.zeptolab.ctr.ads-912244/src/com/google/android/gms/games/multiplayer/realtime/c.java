package com.google.android.gms.games.multiplayer.realtime;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.b;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.d;
import com.google.android.gms.plus.PlusShare;
import java.util.ArrayList;

public final class c extends b implements Room {
    private final int IN;

    c(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.IN = i2;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return RoomEntity.a(this, obj);
    }

    public Room freeze() {
        return new RoomEntity(this);
    }

    public Bundle getAutoMatchCriteria() {
        return getBoolean("has_automatch_criteria") ? RoomConfig.createAutoMatchCriteria(getInteger("automatch_min_players"), getInteger("automatch_max_players"), getLong("automatch_bit_mask")) : null;
    }

    public int getAutoMatchWaitEstimateSeconds() {
        return getInteger("automatch_wait_estimate_sec");
    }

    public long getCreationTimestamp() {
        return getLong("creation_timestamp");
    }

    public String getCreatorId() {
        return getString("creator_external");
    }

    public String getDescription() {
        return getString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION);
    }

    public void getDescription(CharArrayBuffer charArrayBuffer) {
        a(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, charArrayBuffer);
    }

    public Participant getParticipant(String str) {
        return RoomEntity.c(this, str);
    }

    public String getParticipantId(String str) {
        return RoomEntity.b(this, str);
    }

    public ArrayList getParticipantIds() {
        return RoomEntity.c(this);
    }

    public int getParticipantStatus(String str) {
        return RoomEntity.a(this, str);
    }

    public ArrayList getParticipants() {
        ArrayList arrayList = new ArrayList(this.IN);
        int i = 0;
        while (i < this.IN) {
            arrayList.add(new d(this.zU, this.zW + i));
            i++;
        }
        return arrayList;
    }

    public String getRoomId() {
        return getString("external_match_id");
    }

    public int getStatus() {
        return getInteger("status");
    }

    public int getVariant() {
        return getInteger("variant");
    }

    public int hashCode() {
        return RoomEntity.a(this);
    }

    public String toString() {
        return RoomEntity.b(this);
    }

    public void writeToParcel(Parcel parcel, int i) {
        ((RoomEntity) freeze()).writeToParcel(parcel, i);
    }
}