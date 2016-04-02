.class public Lcom/alipay/mobile/framework/LauncherApplicationAgent2;
.super Ljava/lang/Object;
.source "LauncherApplicationAgent2.java"


# instance fields
.field protected mContext:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public patternHost(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "com.vladium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.taobao.tcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.eg.android.AlipayGphone.wxapi.WXEntryActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "com.alipay.android.phone.automation.testui.MainTestActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preInit(Landroid/app/Application;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent2;->mContext:Landroid/app/Application;

    .line 20
    const/4 v0, 0x0

    return v0
.end method
