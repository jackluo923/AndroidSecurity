.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/e;
.super Ljava/lang/Object;
.source "CommonSearchActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/e;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetLBSInfoFailed(I)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public final onLBSInfoChanged(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V
    .locals 3

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method
