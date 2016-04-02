.class public Lcom/ali/user/mobile/login/LoginHistory;
.super Ljava/lang/Object;
.source "LoginHistory.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "loginHistory"
.end annotation


# static fields
.field public static final TYPE_ALIPAY:Ljava/lang/String; = "alipay"

.field public static final TYPE_TAOBAO:Ljava/lang/String; = "taobao"


# instance fields
.field public faceAuth:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public faceAuthFailCount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public loginAccount:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field

.field public loginPortraitUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public loginTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public loginType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    .line 18
    iput-wide p2, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginTime:J

    .line 19
    iput-object p4, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    .line 27
    iput-wide p2, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginTime:J

    .line 28
    iput-object p4, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    check-cast p1, Lcom/ali/user/mobile/login/LoginHistory;

    .line 95
    iget-object v2, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 96
    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    iget-object v2, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_5
    iget-object v2, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 101
    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 102
    goto :goto_0

    .line 103
    :cond_6
    iget-object v2, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_7
    iget-object v2, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 106
    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 107
    goto :goto_0

    .line 108
    :cond_8
    iget-object v2, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 109
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 74
    .line 77
    iget-object v0, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 76
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 78
    mul-int/lit8 v2, v0, 0x1f

    .line 79
    iget-object v0, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    .line 78
    :goto_1
    add-int/2addr v0, v2

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget-object v2, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 80
    :goto_2
    add-int/2addr v0, v1

    .line 83
    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    return-object v0
.end method
