.class final Lcom/alipay/android/widgets/asset/rpc/a;
.super Ljava/lang/Object;
.source "AssetDynamicDataProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/rpc/a;->a:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    iput-object p2, p0, Lcom/alipay/android/widgets/asset/rpc/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/widgets/asset/rpc/a;->c:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/a;->a:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;)Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;->a(Ljava/lang/String;)V

    .line 119
    return-void
.end method
