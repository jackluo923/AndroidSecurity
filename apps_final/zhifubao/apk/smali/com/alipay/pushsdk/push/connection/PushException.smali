.class public Lcom/alipay/pushsdk/push/connection/PushException;
.super Ljava/lang/Exception;
.source "PushException.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private type:Ljava/lang/String;

.field private wrappedThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->type:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->type:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->type:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->type:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 44
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWrappedThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/connection/PushException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 72
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v0, "Nested Exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 81
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 86
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 87
    const-string/jumbo v0, "Nested Exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/PushException;->type:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 114
    const-string/jumbo v1, "\n  -- caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/PushException;->wrappedThrowable:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
