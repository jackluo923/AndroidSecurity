.class final Lcom/alipay/android/widgets/asset/d;
.super Ljava/lang/Object;
.source "AssetAnalyzeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/c;

.field private final synthetic b:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/c;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/d;->a:Lcom/alipay/android/widgets/asset/c;

    iput-object p2, p0, Lcom/alipay/android/widgets/asset/d;->b:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    iput-boolean p3, p0, Lcom/alipay/android/widgets/asset/d;->c:Z

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/d;->a:Lcom/alipay/android/widgets/asset/c;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/c;->a(Lcom/alipay/android/widgets/asset/c;)Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/d;->b:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    iget-boolean v2, p0, Lcom/alipay/android/widgets/asset/d;->c:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;Z)V

    .line 332
    return-void
.end method
