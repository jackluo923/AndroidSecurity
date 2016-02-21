package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.internal.gv;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class LoadMatchesResponse {
    private final InvitationBuffer JV;
    private final TurnBasedMatchBuffer JW;
    private final TurnBasedMatchBuffer JX;
    private final TurnBasedMatchBuffer JY;

    public LoadMatchesResponse(Bundle bundle) {
        DataHolder a = a(bundle, 0);
        if (a != null) {
            this.JV = new InvitationBuffer(a);
        } else {
            this.JV = null;
        }
        a = a(bundle, 1);
        if (a != null) {
            this.JW = new TurnBasedMatchBuffer(a);
        } else {
            this.JW = null;
        }
        a = a(bundle, GoogleScorer.CLIENT_PLUS);
        if (a != null) {
            this.JX = new TurnBasedMatchBuffer(a);
        } else {
            this.JX = null;
        }
        a = a(bundle, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        if (a != null) {
            this.JY = new TurnBasedMatchBuffer(a);
        } else {
            this.JY = null;
        }
    }

    private static DataHolder a(Bundle bundle, int i) {
        String aW = gv.aW(i);
        return bundle.containsKey(aW) ? (DataHolder) bundle.getParcelable(aW) : null;
    }

    public void close() {
        if (this.JV != null) {
            this.JV.close();
        }
        if (this.JW != null) {
            this.JW.close();
        }
        if (this.JX != null) {
            this.JX.close();
        }
        if (this.JY != null) {
            this.JY.close();
        }
    }

    public TurnBasedMatchBuffer getCompletedMatches() {
        return this.JY;
    }

    public InvitationBuffer getInvitations() {
        return this.JV;
    }

    public TurnBasedMatchBuffer getMyTurnMatches() {
        return this.JW;
    }

    public TurnBasedMatchBuffer getTheirTurnMatches() {
        return this.JX;
    }

    public boolean hasData() {
        if (this.JV != null && this.JV.getCount() > 0) {
            return true;
        }
        if (this.JW != null && this.JW.getCount() > 0) {
            return true;
        }
        if (this.JX != null && this.JX.getCount() > 0) {
            return true;
        }
        return this.JY != null && this.JY.getCount() > 0;
    }
}