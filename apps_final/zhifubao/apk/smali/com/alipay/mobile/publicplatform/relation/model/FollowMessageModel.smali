.class public Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;
.super Ljava/lang/Object;
.source "FollowMessageModel.java"


# static fields
.field public static final COMMAND_FOLLOW:Ljava/lang/String; = "follow"

.field public static final COMMAND_MODIFYFOLLOWINFO:Ljava/lang/String; = "modifyFollowInfo"

.field public static final COMMAND_UNFOLLOW:Ljava/lang/String; = "unfollow"


# instance fields
.field public command:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public timestamp:J

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
