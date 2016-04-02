.class Lcom/alipay/mobile/common/misc/ExtViewUtil$2;
.super Lcom/alipay/mobile/common/misc/ImageLoaderListenerAdapter;
.source "ExtViewUtil.java"


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/common/misc/LoadUrlCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/LoadUrlCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ExtViewUtil$2;->a:Lcom/alipay/mobile/common/misc/LoadUrlCallback;

    .line 326
    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/ImageLoaderListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExtViewUtil$2;->a:Lcom/alipay/mobile/common/misc/LoadUrlCallback;

    invoke-interface {v0, p2}, Lcom/alipay/mobile/common/misc/LoadUrlCallback;->callback(Landroid/graphics/Bitmap;)V

    .line 330
    return-void
.end method
