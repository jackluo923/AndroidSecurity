.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;
.super Ljava/lang/Object;
.source "DaoTemplate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppDAO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getDbHelper()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    move-result-object v0

    .line 18
    :try_start_0
    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppDAO"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->close()V

    .line 25
    const/4 v0, 0x0

    goto :goto_0
.end method
