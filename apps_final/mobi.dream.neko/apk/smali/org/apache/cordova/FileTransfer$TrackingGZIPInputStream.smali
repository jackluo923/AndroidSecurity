.class Lorg/apache/cordova/FileTransfer$TrackingGZIPInputStream;
.super Lorg/apache/cordova/FileTransfer$TrackingInputStream;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackingGZIPInputStream"
.end annotation


# instance fields
.field private gzin:Lorg/apache/cordova/FileTransfer$ExposedGZIPInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/FileTransfer$ExposedGZIPInputStream;)V
    .locals 0
    .param p1, "gzin"    # Lorg/apache/cordova/FileTransfer$ExposedGZIPInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lorg/apache/cordova/FileTransfer$TrackingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 131
    iput-object p1, p0, Lorg/apache/cordova/FileTransfer$TrackingGZIPInputStream;->gzin:Lorg/apache/cordova/FileTransfer$ExposedGZIPInputStream;

    .line 132
    return-void
.end method


# virtual methods
.method public getTotalRawBytesRead()J
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/cordova/FileTransfer$TrackingGZIPInputStream;->gzin:Lorg/apache/cordova/FileTransfer$ExposedGZIPInputStream;

    invoke-virtual {v0}, Lorg/apache/cordova/FileTransfer$ExposedGZIPInputStream;->getInflater()Ljava/util/zip/Inflater;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method
