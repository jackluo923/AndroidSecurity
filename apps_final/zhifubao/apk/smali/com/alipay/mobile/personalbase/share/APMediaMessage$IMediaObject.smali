.class public interface abstract Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;
.super Ljava/lang/Object;
.source "APMediaMessage.java"


# static fields
.field public static final TYPE_IMAGE:I = 0xe

.field public static final TYPE_STOCK:I = 0x78

.field public static final TYPE_TAOBAO_GOODS:I = 0x3f2

.field public static final TYPE_TEXT:I = 0xb

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_URL:I = 0x3e9


# virtual methods
.method public abstract checkArgs()Z
.end method

.method public abstract serialize(Landroid/os/Bundle;)V
.end method

.method public abstract type()I
.end method

.method public abstract unserialize(Landroid/os/Bundle;)V
.end method
