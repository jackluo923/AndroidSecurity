.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/g;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/g;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/g;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;

    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/g;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/g;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;

    # invokes: Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->checkLoginAndAuth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->access$1(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    .line 1318
    return-void
.end method
