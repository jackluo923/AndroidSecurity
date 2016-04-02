.class Lcom/alipay/android/launcher/guide/HbGuideActivity$1;
.super Ljava/lang/Object;
.source "HbGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/guide/HbGuideActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$1;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 72
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 74
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 75
    const-string/jumbo v1, "alipays://platformapi/startapp?appId=88886666"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    .line 77
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$1;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->finish()V

    .line 78
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$1;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    const-string/jumbo v1, "UC-FFC-150108-08"

    const-string/jumbo v2, "09999971"

    const-string/jumbo v3, "hbjoinCoupon"

    const/4 v4, 0x1

    # invokes: Lcom/alipay/android/launcher/guide/HbGuideActivity;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->access$4(Lcom/alipay/android/launcher/guide/HbGuideActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    return-void
.end method
