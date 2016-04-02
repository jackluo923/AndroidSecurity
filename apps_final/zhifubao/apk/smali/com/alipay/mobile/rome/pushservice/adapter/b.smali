.class public Lcom/alipay/mobile/rome/pushservice/adapter/b;
.super Ljava/lang/Object;
.source "AlipayPushDownloadHelper.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final synthetic j:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field b:Landroid/app/Activity;

.field c:Landroid/os/Handler;

.field d:Z

.field e:Z

.field f:Ljava/io/File;

.field g:Ljava/lang/String;

.field private h:Landroid/app/ProgressDialog;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "AlipayPushDownloadHelper.java"

    const-class v2, Lcom/alipay/mobile/rome/pushservice/adapter/b;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "11"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "org.apache.http.impl.client.DefaultHttpClient"

    const-string/jumbo v4, "org.apache.http.client.methods.HttpUriRequest"

    const-string/jumbo v5, "request"

    const-string/jumbo v6, "java.io.IOException:org.apache.http.client.ClientProtocolException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xf9

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->j:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    const-class v1, Lcom/alipay/mobile/rome/pushservice/adapter/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->c:Landroid/os/Handler;

    .line 39
    iput-boolean v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->d:Z

    .line 40
    iput-boolean v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->e:Z

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/pushservice/adapter/b;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->i:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "InstallFile will start to install apk."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    const-string/jumbo v2, "alipay.apk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/alipay.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    iput-object v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->g:Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveStream fileLocation="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/16 v2, 0x1400

    new-array v2, v2, [B

    .line 203
    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 204
    if-lez v3, :cond_2

    .line 205
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 209
    add-int/2addr v0, v3

    .line 210
    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    div-int/lit16 v4, v0, 0x400

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 212
    :cond_1
    iget-boolean v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->d:Z

    .line 202
    if-eqz v3, :cond_0

    .line 214
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 228
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    goto :goto_0

    .line 220
    :catch_2
    move-exception v0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 224
    :catch_3
    move-exception v0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    .line 223
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 227
    :goto_1
    throw v0

    :catch_4
    move-exception v1

    goto :goto_1

    .line 228
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/rome/pushservice/d;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->g:I

    new-instance v2, Lcom/alipay/mobile/rome/pushservice/adapter/f;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/rome/pushservice/adapter/f;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->f:I

    new-instance v2, Lcom/alipay/mobile/rome/pushservice/adapter/g;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/rome/pushservice/adapter/g;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/rome/pushservice/adapter/b;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method final a(I)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/rome/pushservice/adapter/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/rome/pushservice/adapter/d;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/rome/pushservice/d;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/alipay/mobile/rome/pushservice/adapter/h;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/rome/pushservice/adapter/h;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/rome/pushservice/adapter/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/rome/pushservice/adapter/c;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 231
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/alipay.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 241
    :cond_0
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 242
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 245
    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 246
    const v2, 0xafc8

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 249
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/adapter/b;->j:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, v7, v8}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v9}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v3, "n/a"

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    if-eqz v6, :cond_3

    const/4 v1, 0x0

    array-length v10, v6

    if-lez v10, :cond_4

    const/4 v10, 0x0

    aget-object v10, v6, v10

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    aget-object v10, v6, v10

    instance-of v10, v10, Lorg/apache/http/HttpRequest;

    if-eqz v10, :cond_4

    const/4 v1, 0x0

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "operationType"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "#"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    :goto_1
    const-string/jumbo v3, "Host"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_2
    instance-of v2, v1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_e

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    :goto_3
    move-wide v4, v1

    move-object v2, v3

    move-object v3, v6

    :cond_3
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, " HttpClient.execute(): "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v9}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v9

    invoke-interface {v9}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v6, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/io/InterruptedIOException;

    const-string/jumbo v2, "trafic beyond limit"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->e:Z

    .line 268
    :goto_5
    return-void

    .line 249
    :cond_4
    :try_start_1
    array-length v10, v6

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    const/4 v10, 0x1

    aget-object v10, v6, v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    aget-object v10, v6, v10

    instance-of v10, v10, Lorg/apache/http/HttpRequest;

    if-eqz v10, :cond_1

    const/4 v1, 0x1

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    goto/16 :goto_0

    :cond_5
    const-wide/16 v1, -0x1

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "unkown request type:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v11

    invoke-interface {v11}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v6, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v7, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    const-wide/16 v6, -0x1

    if-eqz v8, :cond_8

    instance-of v1, v8, Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_a

    move-object v0, v8

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    :cond_8
    :goto_6
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v8, Lorg/apache/http/HttpResponse;

    .line 251
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_b

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->e:Z

    goto :goto_5

    .line 249
    :cond_9
    const-wide/16 v6, -0x1

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v9, "Monitor"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "unkown response type:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 254
    :cond_b
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 255
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->i:J

    .line 256
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getDataSource2 file size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->i:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-wide v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->i:J

    long-to-int v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    :cond_c
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->c:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/rome/pushservice/adapter/i;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/rome/pushservice/adapter/i;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    :cond_d
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 262
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :cond_e
    move-object v2, v3

    move-object v3, v6

    goto/16 :goto_4

    :cond_f
    move-object v3, v2

    goto/16 :goto_2

    :cond_10
    move-object v6, v3

    goto/16 :goto_1
.end method
