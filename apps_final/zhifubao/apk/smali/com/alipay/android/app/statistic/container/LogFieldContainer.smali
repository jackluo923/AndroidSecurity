.class public Lcom/alipay/android/app/statistic/container/LogFieldContainer;
.super Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;


# instance fields
.field private d:Lcom/alipay/android/app/statistic/logfield/LogField;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/statistic/logfield/LogField;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/container/LogFieldContainer;->d:Lcom/alipay/android/app/statistic/logfield/LogField;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/statistic/container/LogFieldContainer;->d:Lcom/alipay/android/app/statistic/logfield/LogField;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/statistic/container/LogFieldContainer;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/android/app/statistic/container/LogFieldContainer;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/statistic/container/LogFieldContainer;->d:Lcom/alipay/android/app/statistic/logfield/LogField;

    invoke-virtual {v1}, Lcom/alipay/android/app/statistic/logfield/LogField;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/container/LogFieldContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
