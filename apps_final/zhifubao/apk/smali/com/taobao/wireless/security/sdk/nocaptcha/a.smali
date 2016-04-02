.class public final Lcom/taobao/wireless/security/sdk/nocaptcha/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/nocaptcha/INoCaptchaComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;

    invoke-direct {v0, p1}, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/wireless/security/sdk/nocaptcha/a;->a:Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;

    return-void
.end method


# virtual methods
.method public final initNoCaptcha(Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/nocaptcha/a;->a:Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->initNoCaptcha(Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final noCaptchaVerification(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/nocaptcha/a;->a:Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->noCaptchaVerification(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final putNoCaptchaTraceRecord(Landroid/view/MotionEvent;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/nocaptcha/a;->a:Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->putNoCaptchaTraceRecord(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
