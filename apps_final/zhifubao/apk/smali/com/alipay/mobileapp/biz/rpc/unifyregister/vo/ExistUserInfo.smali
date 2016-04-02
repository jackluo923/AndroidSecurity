.class public Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;
.super Ljava/lang/Object;
.source "ExistUserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public ButtonFstMemo:Ljava/lang/String;

.field public ButtonSedMemo:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public avatar:Ljava/lang/String;

.field public certNo:Ljava/lang/String;

.field public displayTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public idCard:Z

.field public logonApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public realName:Ljava/lang/String;

.field public realNamed:Z

.field public regTime:Ljava/lang/String;

.field public taobaoNick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
