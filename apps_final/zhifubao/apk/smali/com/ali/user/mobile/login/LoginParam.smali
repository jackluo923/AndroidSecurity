.class public Lcom/ali/user/mobile/login/LoginParam;
.super Ljava/lang/Object;
.source "LoginParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public alipayEnvJson:Ljava/lang/String;

.field public checkCode:Ljava/lang/String;

.field public checkCodeId:Ljava/lang/String;

.field public externParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public loginAccount:Ljava/lang/String;

.field public loginPassword:Ljava/lang/String;

.field public loginType:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public signData:Ljava/lang/String;

.field public ssoToken:Ljava/lang/String;

.field public taobaoEnvJson:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public validateTpye:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
