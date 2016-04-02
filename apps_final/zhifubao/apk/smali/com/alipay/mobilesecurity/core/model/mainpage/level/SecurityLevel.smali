.class public Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public level:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;->score:I

    return v0
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;->level:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;->memo:Ljava/lang/String;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;->score:I

    return-void
.end method
