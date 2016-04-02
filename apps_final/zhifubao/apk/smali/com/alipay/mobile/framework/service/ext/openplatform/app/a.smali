.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->c:Ljava/lang/String;

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 740
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadGifImage(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;Ljava/lang/String;)V

    .line 741
    return-void
.end method
