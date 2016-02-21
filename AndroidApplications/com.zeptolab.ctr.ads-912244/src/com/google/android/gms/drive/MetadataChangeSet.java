package com.google.android.gms.drive;

import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.ft;
import java.util.Date;

public final class MetadataChangeSet {
    private final MetadataBundle Dj;

    public static class Builder {
        private final MetadataBundle Dj;

        public Builder() {
            this.Dj = MetadataBundle.fh();
        }

        public MetadataChangeSet build() {
            return new MetadataChangeSet(null);
        }

        public com.google.android.gms.drive.MetadataChangeSet.Builder setIndexableText(String str) {
            this.Dj.b(fs.EC, str);
            return this;
        }

        public com.google.android.gms.drive.MetadataChangeSet.Builder setLastViewedByMeDate(Date date) {
            this.Dj.b(ft.LAST_VIEWED_BY_ME, date);
            return this;
        }

        public com.google.android.gms.drive.MetadataChangeSet.Builder setMimeType(String str) {
            this.Dj.b(fs.MIME_TYPE, str);
            return this;
        }

        public com.google.android.gms.drive.MetadataChangeSet.Builder setPinned(boolean z) {
            this.Dj.b(fs.IS_PINNED, Boolean.valueOf(z));
            return this;
        }

        public com.google.android.gms.drive.MetadataChangeSet.Builder setStarred(boolean z) {
            this.Dj.b(fs.STARRED, Boolean.valueOf(z));
            return this;
        }

        public com.google.android.gms.drive.MetadataChangeSet.Builder setTitle(String str) {
            this.Dj.b(fs.TITLE, str);
            return this;
        }

        public com.google.android.gms.drive.MetadataChangeSet.Builder setViewed(boolean z) {
            this.Dj.b(fs.Ew, Boolean.valueOf(z));
            return this;
        }
    }

    private MetadataChangeSet(MetadataBundle metadataBundle) {
        this.Dj = MetadataBundle.a(metadataBundle);
    }

    public MetadataBundle eS() {
        return this.Dj;
    }

    public String getIndexableText() {
        return (String) this.Dj.a(fs.EC);
    }

    public Date getLastViewedByMeDate() {
        return (Date) this.Dj.a(ft.LAST_VIEWED_BY_ME);
    }

    public String getMimeType() {
        return (String) this.Dj.a(fs.MIME_TYPE);
    }

    public String getTitle() {
        return (String) this.Dj.a(fs.TITLE);
    }

    public Boolean isPinned() {
        return (Boolean) this.Dj.a(fs.IS_PINNED);
    }

    public Boolean isStarred() {
        return (Boolean) this.Dj.a(fs.STARRED);
    }

    public Boolean isViewed() {
        return (Boolean) this.Dj.a(fs.Ew);
    }
}