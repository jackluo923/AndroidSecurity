.class Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1$1;
.super Ljava/lang/Object;
.source "FlybirdDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1$1;->a:Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 78
    new-instance v3, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1$1$1;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1$1$1;-><init>(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1$1;)V

    .line 96
    const-string/jumbo v0, "/sdcard/pfq.html"

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;->extractTplIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1$1;->a:Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;->a(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;)Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;->a(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v0

    .line 99
    iget-object v4, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1$1;->a:Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;

    invoke-static {v4}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;->a(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;)Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;

    move-result-object v5

    move-object v4, v2

    move-object v6, v2

    .line 97
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1$1;->a:Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;->a(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;)Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;->b(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 101
    return-void
.end method
