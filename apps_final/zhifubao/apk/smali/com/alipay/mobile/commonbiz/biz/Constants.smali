.class public Lcom/alipay/mobile/commonbiz/biz/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "PACKAGE_NAME"

.field public static final SCHEME_ACTION:Ljava/lang/String; = "com.alipay.mobile.commonbiz.biz.SET_SCHEME"

.field public static final schemeActivitys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    const-string/jumbo v2, "com.alipay.mobile.quinox.LauncherActivity.alias"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 14
    const-string/jumbo v2, "com.alipay.mobile.command.trigger.WebViewTrigger"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 15
    const-string/jumbo v2, "com.alipay.android.app.pay.PageForBrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 16
    const-string/jumbo v2, "com.alipay.mobile.alipassapp.ui.AlipassSchemeTransferActivity"

    aput-object v2, v0, v1

    .line 12
    sput-object v0, Lcom/alipay/mobile/commonbiz/biz/Constants;->schemeActivitys:[Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
