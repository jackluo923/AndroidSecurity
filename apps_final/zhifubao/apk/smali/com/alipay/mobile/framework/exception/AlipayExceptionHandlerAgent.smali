.class public Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;
.super Ljava/lang/Object;
.source "AlipayExceptionHandlerAgent.java"

# interfaces
.implements Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;


# static fields
.field private static a:Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;


# instance fields
.field private b:Z

.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->a:Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->b:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 15
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 89
    check-cast p0, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v3

    .line 91
    const-string/jumbo v0, ""

    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getReleaseType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "test"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getReleaseType()Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string/jumbo v4, "dev"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getReleaseType()Ljava/lang/String;

    move-result-object v2

    .line 96
    const-string/jumbo v4, "rc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] ErrorCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 100
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v4

    .line 102
    sparse-switch v3, :sswitch_data_0

    .line 173
    const/16 v5, 0x190

    if-lt v3, v5, :cond_3

    const/16 v5, 0x1f4

    if-ge v3, v5, :cond_3

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->exception_network_error_check_network:I

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 190
    :cond_1
    :goto_1
    :sswitch_0
    return-void

    .line 108
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->exception_network_slow:I

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    .line 114
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->exception_network_error_wait_retry:I

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    .line 127
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->exception_network_error_retry:I

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    .line 133
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->exception_network_error_check_network:I

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    .line 140
    :sswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    sget v5, Lcom/alipay/mobile/base/commonbiz/R$string;->exception_network_error_ssl_error:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->exception_confirm:I

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 139
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 158
    :sswitch_6
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getControl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getControl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 160
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->exception_rpc_1002:I

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 169
    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->exception_server_error_wait_retry:I

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 178
    :cond_3
    const/16 v5, 0x64

    if-lt v3, v5, :cond_4

    const/16 v5, 0x258

    if-ge v3, v5, :cond_4

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    sget v5, Lcom/alipay/mobile/base/commonbiz/R$string;->exception_network_error_wait_retry:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->exception_confirm:I

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 179
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 184
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->exception_confirm:I

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 184
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :cond_5
    move-object v2, v0

    goto/16 :goto_0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_2
        0x3ea -> :sswitch_6
        0xbb8 -> :sswitch_0
        0xbb9 -> :sswitch_7
        0xfa1 -> :sswitch_7
        0xfa2 -> :sswitch_7
        0xfa3 -> :sswitch_7
        0x1770 -> :sswitch_0
        0x1771 -> :sswitch_0
        0x1a0a -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->a:Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->a:Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;

    .line 28
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->a:Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public setHandleByDefault(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->b:Z

    .line 86
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->b:Z

    if-eqz v0, :cond_6

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 38
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "mDefaultHandler"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 39
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->c:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_5

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "-monkey"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "-monkey"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->setProductId(Ljava/lang/String;)V

    .line 49
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    .line 81
    :goto_1
    return v0

    .line 42
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "AlipayExceptionHandlerAgent"

    const-string/jumbo v4, "reflectDefaultHandler Error"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 57
    :cond_3
    instance-of v0, p2, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_4

    .line 58
    const-string/jumbo v0, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 59
    invoke-static {p2}, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->a(Ljava/lang/Throwable;)V

    move v0, v2

    .line 60
    goto :goto_1

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    move v0, v2

    .line 63
    goto :goto_1

    :cond_5
    move v0, v1

    .line 65
    goto :goto_1

    .line 68
    :cond_6
    if-nez p2, :cond_7

    move v0, v1

    .line 69
    goto :goto_1

    .line 72
    :cond_7
    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 73
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_8

    .line 74
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 76
    :cond_8
    instance-of v0, p2, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_9

    .line 77
    const-string/jumbo v0, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 78
    invoke-static {p2}, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->a(Ljava/lang/Throwable;)V

    move v0, v2

    .line 79
    goto :goto_1

    :cond_9
    move v0, v1

    .line 81
    goto :goto_1
.end method
