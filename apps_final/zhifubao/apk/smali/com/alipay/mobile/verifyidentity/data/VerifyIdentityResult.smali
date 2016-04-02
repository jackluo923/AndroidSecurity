.class public Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;
.super Ljava/lang/Object;
.source "VerifyIdentityResult.java"


# static fields
.field public static final CANCEL:Ljava/lang/String; = "1003"

.field public static final EXPIRED:Ljava/lang/String; = "1004"

.field public static final FACE_SDK_ERR:Ljava/lang/String; = "1006"

.field public static final FAIL:Ljava/lang/String; = "1001"

.field public static final MODULE_EXCEPTION:Ljava/lang/String; = "2002"

.field public static final OTHERS:Ljava/lang/String; = "1002"

.field public static final RPC_EXCEPTION:Ljava/lang/String; = "2003"

.field public static final SUCESS:Ljava/lang/String; = "1000"

.field public static final TASK_DUPLICATE:Ljava/lang/String; = "2004"

.field public static final TASK_OVERLIMIT:Ljava/lang/String; = "2005"

.field public static final TASK_TIMEOUT:Ljava/lang/String; = "2001"

.field public static final TOKEN_EMPTY:Ljava/lang/String; = "2000"


# instance fields
.field private mCode:Ljava/lang/String;

.field private mExtInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->mCode:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->mCode:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->mMessage:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->mCode:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->mMessage:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->mExtInfo:Ljava/util/HashMap;

    .line 110
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->mExtInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->mCode:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setExtInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->mExtInfo:Ljava/util/HashMap;

    .line 130
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->mMessage:Ljava/lang/String;

    .line 122
    return-void
.end method
