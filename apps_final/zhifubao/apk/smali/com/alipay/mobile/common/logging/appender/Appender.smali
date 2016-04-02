.class public abstract Lcom/alipay/mobile/common/logging/appender/Appender;
.super Ljava/lang/Object;
.source "Appender.java"


# instance fields
.field protected final a:Lcom/alipay/mobile/common/logging/LogContextImpl;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/appender/Appender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    .line 16
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/appender/Appender;->b:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/Appender;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/appender/Appender;->a(Ljava/lang/String;)Z

    .line 29
    return-void
.end method

.method protected abstract a(Ljava/lang/String;)Z
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/Appender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
