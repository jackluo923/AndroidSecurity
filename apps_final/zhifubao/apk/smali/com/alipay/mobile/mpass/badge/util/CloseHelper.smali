.class public Lcom/alipay/mobile/mpass/badge/util/CloseHelper;
.super Ljava/lang/Object;
.source "CloseHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 10
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_0
    return-void
.end method
