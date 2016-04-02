.class public Lcom/alipay/mobile/chatsdk/util/MessageTypes;
.super Ljava/lang/Object;
.source "MessageTypes.java"


# static fields
.field public static final IMAGE_TEXT_TYPE:Ljava/lang/String; = "image-text"

.field public static final IMAGE_TYPE:Ljava/lang/String; = "img"

.field public static final IMAGE_TYPE_FOR_UP_FAIL:Ljava/lang/String; = "img_ext"

.field public static final TEXT_TYPE:Ljava/lang/String; = "text"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isImgMsgType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "img"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const-string/jumbo v0, "img_ext"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 31
    goto :goto_0
.end method

.method public static isImgTextMsgType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "image-text"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isTextMsgType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "text"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
