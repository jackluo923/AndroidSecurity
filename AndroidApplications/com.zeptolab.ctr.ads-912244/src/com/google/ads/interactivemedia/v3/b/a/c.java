package com.google.ads.interactivemedia.v3.b.a;

public final class c {
    public String clickThroughUrl;
    public String companionId;
    public String size;
    public String src;
    public a type;

    public enum a {
        Html,
        Static,
        IFrame
    }

    public final boolean equals(c cVar) {
        if (this == cVar) {
            return true;
        }
        if (cVar == null) {
            return false;
        }
        if (getClass() != cVar.getClass()) {
            return false;
        }
        cVar = cVar;
        if (this.clickThroughUrl == null) {
            if (cVar.clickThroughUrl != null) {
                return false;
            }
        } else if (!this.clickThroughUrl.equals(cVar.clickThroughUrl)) {
            return false;
        }
        if (this.companionId != null && cVar.companionId != null && !this.companionId.equals(cVar.companionId)) {
            return false;
        }
        if (this.size == null) {
            if (cVar.size != null) {
                return false;
            }
        } else if (!this.size.equals(cVar.size)) {
            return false;
        }
        if (this.src == null) {
            return cVar.src == null;
        } else if (this.src.equals(cVar.src)) {
            return true;
        } else {
            return false;
        }
    }

    public final String toString() {
        return new StringBuilder("CompanionData [companionId=").append(this.companionId).append(", size=").append(this.size).append(", src=").append(this.src).append(", clickThroughUrl=").append(this.clickThroughUrl).append("]").toString();
    }
}