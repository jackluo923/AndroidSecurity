package com.google.android.gms.plus.model.moments;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.internal.im;
import com.google.android.gms.internal.io;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashSet;
import java.util.Set;

public interface Moment extends Freezable {

    public static class Builder {
        private String Oc;
        private final Set RM;
        private im SH;
        private im SI;
        private String Sz;
        private String uS;

        public Builder() {
            this.RM = new HashSet();
        }

        public Moment build() {
            return new io(this.RM, this.uS, this.SH, this.Sz, this.SI, this.Oc);
        }

        public com.google.android.gms.plus.model.moments.Moment.Builder setId(String str) {
            this.uS = str;
            this.RM.add(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
            return this;
        }

        public com.google.android.gms.plus.model.moments.Moment.Builder setResult(ItemScope itemScope) {
            this.SH = (im) itemScope;
            this.RM.add(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
            return this;
        }

        public com.google.android.gms.plus.model.moments.Moment.Builder setStartDate(String str) {
            this.Sz = str;
            this.RM.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
            return this;
        }

        public com.google.android.gms.plus.model.moments.Moment.Builder setTarget(ItemScope itemScope) {
            this.SI = (im) itemScope;
            this.RM.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
            return this;
        }

        public com.google.android.gms.plus.model.moments.Moment.Builder setType(String str) {
            this.Oc = str;
            this.RM.add(Integer.valueOf(GoogleScorer.CLIENT_ALL));
            return this;
        }
    }

    String getId();

    ItemScope getResult();

    String getStartDate();

    ItemScope getTarget();

    String getType();

    boolean hasId();

    boolean hasResult();

    boolean hasStartDate();

    boolean hasTarget();

    boolean hasType();
}