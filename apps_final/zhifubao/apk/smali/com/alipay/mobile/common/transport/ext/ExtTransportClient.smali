.class public interface abstract Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;
.super Ljava/lang/Object;
.source "ExtTransportClient.java"


# static fields
.field public static final MODULE_CATEGORY_MRPC:I = 0x1

.field public static final MODULE_CATEGORY_SPDY:I


# virtual methods
.method public abstract execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
.end method

.method public abstract getModuleCategory()I
.end method
