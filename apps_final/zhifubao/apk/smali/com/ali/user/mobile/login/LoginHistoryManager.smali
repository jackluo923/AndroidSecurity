.class public interface abstract Lcom/ali/user/mobile/login/LoginHistoryManager;
.super Ljava/lang/Object;
.source "LoginHistoryManager.java"


# static fields
.field public static final LOGIN_TYPE_ALIPAY:Ljava/lang/String; = "alipay"

.field public static final LOGIN_TYPE_TAOBAO:Ljava/lang/String; = "taobao"


# virtual methods
.method public abstract close()V
.end method

.method public abstract deleteLoginHistory(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteLoginHistoryByUserId(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getHistoryList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/login/LoginHistory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestHistory()Lcom/ali/user/mobile/login/LoginHistory;
.end method

.method public abstract getLoginHistory(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/login/LoginHistory;
.end method

.method public abstract getLoginHistoryByUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/login/LoginHistory;
.end method

.method public abstract saveHistory(Lcom/ali/user/mobile/login/LoginHistory;)V
.end method

.method public abstract saveHistoryNecessary(Lcom/ali/user/mobile/login/LoginHistory;)V
.end method
