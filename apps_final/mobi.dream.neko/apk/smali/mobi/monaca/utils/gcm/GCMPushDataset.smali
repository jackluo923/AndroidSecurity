.class public Lmobi/monaca/utils/gcm/GCMPushDataset;
.super Ljava/lang/Object;
.source "GCMPushDataset.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final KEY:Ljava/lang/String; = "get_pushdata_key"

.field private static final serialVersionUID:J = -0x1c7f9531be12d50cL


# instance fields
.field private extraJsonString:Ljava/lang/String;

.field private pushProjectId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pushProjectId"    # Ljava/lang/String;
    .param p2, "extraJsonString"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lmobi/monaca/utils/gcm/GCMPushDataset;->pushProjectId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lmobi/monaca/utils/gcm/GCMPushDataset;->extraJsonString:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getExtraJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmobi/monaca/utils/gcm/GCMPushDataset;->extraJsonString:Ljava/lang/String;

    return-object v0
.end method

.method public getPushProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmobi/monaca/utils/gcm/GCMPushDataset;->pushProjectId:Ljava/lang/String;

    return-object v0
.end method
