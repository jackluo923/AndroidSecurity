.class public final enum Lcom/alipay/android/phone/home/user/MemberGradeEnum;
.super Ljava/lang/Enum;
.source "MemberGradeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/home/user/MemberGradeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

.field public static final enum b:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

.field public static final enum c:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

.field public static final enum d:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

.field public static final enum e:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

.field private static final synthetic h:[Lcom/alipay/android/phone/home/user/MemberGradeEnum;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    const-string/jumbo v1, "PRIMARY"

    const-string/jumbo v2, "primary"

    const-string/jumbo v3, "\u5927\u4f17\u4f1a\u5458"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alipay/android/phone/home/user/MemberGradeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->a:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    .line 12
    new-instance v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    const-string/jumbo v1, "GOLDEN"

    const-string/jumbo v2, "golden"

    const-string/jumbo v3, "\u9ec4\u91d1\u4f1a\u5458"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/android/phone/home/user/MemberGradeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->b:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    .line 14
    new-instance v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    const-string/jumbo v1, "PLATINUM"

    const-string/jumbo v2, "platinum"

    const-string/jumbo v3, "\u94c2\u91d1\u4f1a\u5458"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/android/phone/home/user/MemberGradeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->c:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    .line 16
    new-instance v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    const-string/jumbo v1, "DIAMOND"

    const-string/jumbo v2, "diamond"

    const-string/jumbo v3, "\u94bb\u77f3\u4f1a\u5458"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/android/phone/home/user/MemberGradeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->d:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    .line 18
    new-instance v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    const-string/jumbo v1, "NULL"

    const-string/jumbo v2, "null"

    const-string/jumbo v3, "\u65e0"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/android/phone/home/user/MemberGradeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->e:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    sget-object v1, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->a:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->b:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->c:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->d:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->e:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    aput-object v1, v0, v8

    sput-object v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->h:[Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->g:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->f:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/android/phone/home/user/MemberGradeEnum;
    .locals 5

    .prologue
    .line 47
    invoke-static {}, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->values()[Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 52
    sget-object v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->e:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    :cond_0
    return-object v0

    .line 47
    :cond_1
    aget-object v0, v2, v1

    .line 48
    iget-object v4, v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->g:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/home/user/MemberGradeEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/home/user/MemberGradeEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->h:[Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->f:Ljava/lang/String;

    return-object v0
.end method
