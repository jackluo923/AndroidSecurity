.class final Lcom/alipay/mobile/appstoreapp/adapter/d;
.super Ljava/lang/Object;
.source "FastLoginAppAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/adapter/d;->a:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/adapter/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/d;->a:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/adapter/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->a(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
