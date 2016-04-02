.class public final Lcom/alipay/android/phone/globalsearch/a/j;
.super Lcom/alipay/android/phone/globalsearch/a/b;
.source "PublicPlatformDataSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/globalsearch/a/b;-><init>(Ljava/lang/String;)V

    .line 9
    iput-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/j;->d:Z

    .line 10
    iput-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/j;->f:Z

    .line 11
    const-string/jumbo v0, "publicplatformclient"

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/j;->n:Ljava/lang/String;

    .line 12
    return-void
.end method
