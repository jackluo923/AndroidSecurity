.class public Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;
.super Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;
.source "OverdueServiceImpl.java"


# static fields
.field public static final MSGINFO_LAST_OVERDUE_KEY:Ljava/lang/String; = "msginfo_last_overdue_key"

.field public static final NEVER_OVERDUE:J = 0x0L

.field public static final OVERDUE_PREFER_KEY:Ljava/lang/String; = "overdue_prefer_key"

.field public static final READMSG_LAST_OVERDUE_KEY:Ljava/lang/String; = "readmsg_last_overdue_key"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private c:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;-><init>()V

    .line 41
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->c:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    .line 44
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 45
    const-string/jumbo v1, "overdue_prefer_key"

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->a:Landroid/content/SharedPreferences;

    .line 46
    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/d;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 48
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public triggerMsgInfoOverdue()V
    .locals 6

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "msginfo_last_overdue_key"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 56
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLoginTime()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v2}, Lcom/alipay/android/phone/messageboxstatic/biz/c/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 59
    sub-long v0, v2, v0

    const-wide/32 v4, 0x5265c00

    div-long/2addr v0, v4

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->c:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->deleteOverdueMsginfo(JLjava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "msginfo_last_overdue_key"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public triggerReadMsgOverdue()V
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "readmsg_last_overdue_key"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 73
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLoginTime()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Lcom/alipay/android/phone/messageboxstatic/biz/c/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 76
    sub-long v0, v2, v0

    const-wide/32 v4, 0x5265c00

    div-long/2addr v0, v4

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->c:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->deleteOverdueReadmsg(JLjava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "readmsg_last_overdue_key"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
