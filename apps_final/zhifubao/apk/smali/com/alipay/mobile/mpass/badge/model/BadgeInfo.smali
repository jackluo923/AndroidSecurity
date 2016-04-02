.class public Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;
.super Ljava/lang/Object;
.source "BadgeInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTemporaryBadgeNumber()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->b:I

    .line 37
    invoke-virtual {p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getPersistentBadgeNumber()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->c:I

    .line 38
    invoke-virtual {p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getStyle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->d:Ljava/lang/String;

    .line 40
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->a:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->b:I

    .line 23
    iput p2, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->c:I

    .line 24
    iput-object p4, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->d:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/alipay/mobile/mpass/badge/model/BadgeStyle;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->a:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->b:I

    .line 30
    invoke-virtual {p3}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->getDes()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->d:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public deflateToMsg()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2c

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadgePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistentBadgeNumber()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->c:I

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTemporaryBadgeNumber()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->b:I

    return v0
.end method

.method public getTotalBadgeNumber()I
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->b:I

    iget v1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public inflateFromMsg(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 85
    if-eqz p1, :cond_3

    .line 86
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 87
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 88
    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 89
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 90
    aget-object v5, v4, v1

    .line 91
    const/4 v6, 0x1

    aget-object v4, v4, v6

    .line 92
    const-string/jumbo v6, "s"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    iput-object v4, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->d:Ljava/lang/String;

    .line 87
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const-string/jumbo v6, "p"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->c:I

    goto :goto_1

    .line 96
    :cond_2
    const-string/jumbo v6, "t"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->b:I

    goto :goto_1

    .line 103
    :cond_3
    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTotalBadgeNumber()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBadgePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPersistentBadgeNumber(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->c:I

    .line 64
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->d:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setTemporaryBadgeNumber(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->b:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->deflateToMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
