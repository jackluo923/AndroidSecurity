.class final Lcom/alipay/mobile/logmonitor/util/stack/b;
.super Ljava/lang/Object;
.source "AnrTracer.java"

# interfaces
.implements Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

.field final synthetic c:Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/b;->c:Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/stack/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/stack/b;->b:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/b;->b:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/b;->b:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a()V

    .line 82
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/b;->b:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/b;->b:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method
