.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public final onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 758
    return-void
.end method

.method public final onProgress(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 763
    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 748
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;

    invoke-interface {v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;->onLoad(Landroid/graphics/drawable/Drawable;)V

    .line 753
    return-void
.end method
