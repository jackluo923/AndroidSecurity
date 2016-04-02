.class public interface abstract Lfi/iki/elonen/NanoHTTPD$TempFileManager;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TempFileManager"
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract createTempFile()Lfi/iki/elonen/NanoHTTPD$TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
