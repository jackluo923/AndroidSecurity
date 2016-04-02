.class public interface abstract Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;
.super Ljava/lang/Object;
.source "FollowAccountInfoDao.java"


# static fields
.field public static final SHOW_LOCATION_ALL:I = 0x2

.field public static final SHOW_LOCATION_FRIEND_TAB:I = 0x1

.field public static final SHOW_LOCATION_PPLIST:I


# virtual methods
.method public abstract calcelTop(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract calculateUnreadMsgCount(Ljava/lang/String;I)Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;
.end method

.method public abstract calculateUnreadMsgCount(Ljava/lang/String;ILjava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;
.end method

.method public abstract deleteFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
.end method

.method public abstract getFollowAccountBaseInfos(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
.end method

.method public abstract getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
.end method

.method public abstract getFollowAccountShowModelCount(Ljava/lang/String;I)J
.end method

.method public abstract getFollowAccountShowModels(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFollowCount(Ljava/lang/String;)J
.end method

.method public abstract getFollowCountExcludeSinaNews(Ljava/lang/String;)J
.end method

.method public abstract getLatestFollowAccountShowModel(Ljava/lang/String;I)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
.end method

.method public abstract initFollowAccountShowInfos(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveFollowBaseAccountInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V
.end method

.method public abstract setTop(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract updateDisturb(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
.end method

.method public abstract updateThirdPartyLastMsg(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract updateUnreadMsgCount(Ljava/lang/String;Ljava/lang/String;I)V
.end method
