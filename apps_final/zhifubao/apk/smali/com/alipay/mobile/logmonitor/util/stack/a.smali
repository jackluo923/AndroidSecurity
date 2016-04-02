.class final Lcom/alipay/mobile/logmonitor/util/stack/a;
.super Ljava/lang/Object;
.source "AlipayLogUploader.java"

# interfaces
.implements Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/a;->b:Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/stack/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/a;->b:Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a(Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/a;->b:Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a(Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a()V

    .line 135
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/a;->b:Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a(Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/a;->b:Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a(Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method
