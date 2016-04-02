.class public Lcom/alipay/pushsdk/push/r;
.super Ljava/lang/Object;
.source "PushSettingInfo.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/alipay/pushsdk/push/r;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/alipay/pushsdk/push/r;->a:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/pushsdk/push/r;->b:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/pushsdk/push/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "setting_timectrl_state"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    .line 27
    iget-object v1, p0, Lcom/alipay/pushsdk/push/r;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v1

    .line 28
    const-string/jumbo v2, "setting_notify_state"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 31
    const-string/jumbo v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 34
    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/pushsdk/push/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 101
    const-string/jumbo v1, "setting_tracelog_state"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x1

    .line 68
    iget-object v1, p0, Lcom/alipay/pushsdk/push/r;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v1

    .line 69
    const-string/jumbo v2, "setting_timectrl_state"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 72
    const-string/jumbo v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 75
    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 84
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lcom/alipay/pushsdk/push/r;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v1

    .line 87
    const-string/jumbo v2, "setting_tracelog_state"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    sget-object v2, Lcom/alipay/pushsdk/push/r;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getTraceLogState="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 93
    const-string/jumbo v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    :cond_1
    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/pushsdk/push/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "setting_time_start"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    const-string/jumbo v0, "8"

    .line 112
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x4

    .line 137
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/r;->d()I

    move-result v2

    .line 138
    iget-object v0, p0, Lcom/alipay/pushsdk/push/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    const-string/jumbo v3, "setting_time_end"

    invoke-virtual {v0, v3}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v0, "22"

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 140
    invoke-static {}, Lcom/alipay/pushsdk/util/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 141
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    sget-object v4, Lcom/alipay/pushsdk/push/r;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isNotificationTime() settingStart="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", settingEnd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", curHour="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 144
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-static {v7, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    if-ge v3, v0, :cond_3

    if-lt v3, v2, :cond_3

    move v0, v1

    .line 161
    :goto_0
    return v0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/r;->b()Z

    move-result v0

    .line 152
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    sget-object v2, Lcom/alipay/pushsdk/push/r;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isNotificationTime() timeCtrl="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v7, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_4
    if-nez v0, :cond_5

    move v0, v1

    .line 159
    goto :goto_0

    .line 161
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
