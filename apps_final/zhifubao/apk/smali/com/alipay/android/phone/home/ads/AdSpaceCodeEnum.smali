.class public final enum Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;
.super Ljava/lang/Enum;
.source "AdSpaceCodeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

.field public static final enum b:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

.field public static final enum c:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

.field public static final enum d:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

.field public static final enum e:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

.field public static final enum f:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

.field private static final synthetic i:[Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 16
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    const-string/jumbo v1, "UNKNOWN"

    .line 17
    const-string/jumbo v2, "UNKNOWN"

    const-string/jumbo v3, "\u672a\u77e5\u7c7b\u578b"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    .line 19
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    const-string/jumbo v1, "BANNER"

    .line 20
    const-string/jumbo v2, "BANNER_APPCENTER"

    const-string/jumbo v3, "\u901a\u680f\u5e7f\u544a"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->b:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    .line 22
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    const-string/jumbo v1, "APPICON"

    .line 23
    const-string/jumbo v2, "APPICON_APPCENTER"

    const-string/jumbo v3, "\u5e94\u7528\u56fe\u6807"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->c:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    .line 25
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    const-string/jumbo v1, "APPTIPS"

    .line 26
    const-string/jumbo v2, "APPTIPS_APPCENTER"

    const-string/jumbo v3, "\u6587\u5b57\u6761"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->d:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    .line 28
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    const-string/jumbo v1, "DROPDOWN"

    .line 29
    const-string/jumbo v2, "DROPDOWN_APPCENTER"

    const-string/jumbo v3, "\u4e0b\u62c9\u5c55\u793a"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->e:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    .line 32
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    const-string/jumbo v1, "TOPTIPS"

    const/4 v2, 0x5

    .line 33
    const-string/jumbo v3, "TOPTIPS"

    const-string/jumbo v4, "\u63d0\u793a\u680f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->f:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->b:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->c:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->d:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->e:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->f:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->i:[Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->g:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->h:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->i:[Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->g:Ljava/lang/String;

    return-object v0
.end method
