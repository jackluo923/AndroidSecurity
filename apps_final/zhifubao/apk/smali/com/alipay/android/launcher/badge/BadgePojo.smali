.class public Lcom/alipay/android/launcher/badge/BadgePojo;
.super Ljava/lang/Object;
.source "BadgePojo.java"


# instance fields
.field private badgePath:Ljava/lang/String;

.field private count:I

.field private style:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadgePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/android/launcher/badge/BadgePojo;->badgePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alipay/android/launcher/badge/BadgePojo;->count:I

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/launcher/badge/BadgePojo;->style:Ljava/lang/String;

    return-object v0
.end method

.method public setBadgePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/alipay/android/launcher/badge/BadgePojo;->badgePath:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/alipay/android/launcher/badge/BadgePojo;->count:I

    .line 18
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/android/launcher/badge/BadgePojo;->style:Ljava/lang/String;

    .line 24
    return-void
.end method
