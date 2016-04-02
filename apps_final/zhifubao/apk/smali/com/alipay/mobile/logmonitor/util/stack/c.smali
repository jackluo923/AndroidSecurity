.class final Lcom/alipay/mobile/logmonitor/util/stack/c;
.super Ljava/lang/Object;
.source "StackTracer.java"

# interfaces
.implements Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;

.field final synthetic c:Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/c;->c:Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/stack/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/stack/c;->b:Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/c;->b:Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/c;->b:Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;->a()V

    .line 106
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/c;->b:Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/c;->b:Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;->a(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method
