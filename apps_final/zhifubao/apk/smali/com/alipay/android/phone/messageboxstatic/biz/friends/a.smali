.class public Lcom/alipay/android/phone/messageboxstatic/biz/friends/a;
.super Ljava/lang/Object;
.source "FriendsTabInitTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/a;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u5f00\u59cb\u521d\u59cb\u5316\u670b\u53cbtab\u7684\u6570\u636e "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;-><init>()V

    .line 25
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;->updateFriendsExternal()V

    .line 26
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u5b8c\u6210\u521d\u59cb\u5316\u670b\u53cbtab\u7684\u6570\u636e "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 20
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
