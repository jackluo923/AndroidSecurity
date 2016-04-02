.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/c;
.super Ljava/lang/Object;
.source "CommonSearchActivity.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/c;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMoreItemClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "onMoreItemClick , switch fragment"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/c;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/c;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Ljava/lang/String;)V

    .line 111
    return-void
.end method
