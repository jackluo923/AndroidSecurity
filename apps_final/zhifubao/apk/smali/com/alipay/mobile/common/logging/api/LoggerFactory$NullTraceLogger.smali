.class Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullTraceLogger;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullTraceLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 215
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 230
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 239
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 240
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 234
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 235
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 205
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 245
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 249
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 250
    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 210
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 220
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 224
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 225
    return-void
.end method
