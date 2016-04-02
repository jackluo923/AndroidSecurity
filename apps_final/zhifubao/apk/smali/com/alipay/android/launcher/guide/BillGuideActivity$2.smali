.class Lcom/alipay/android/launcher/guide/BillGuideActivity$2;
.super Ljava/lang/Object;
.source "BillGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/guide/BillGuideActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/guide/BillGuideActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity$2;->this$0:Lcom/alipay/android/launcher/guide/BillGuideActivity;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 50
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 52
    const-string/jumbo v1, "alipays://platformapi/startapp?appId=20000067&url=https%3A%2F%2Fzd.alipay.com%2Febill%2Fannual10.htm"

    .line 51
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    .line 54
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity$2;->this$0:Lcom/alipay/android/launcher/guide/BillGuideActivity;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->finish()V

    .line 55
    return-void
.end method
