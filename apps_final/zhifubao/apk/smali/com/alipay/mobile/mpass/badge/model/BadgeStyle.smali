.class public final enum Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;
.super Ljava/lang/Enum;
.source "BadgeStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

.field public static final enum HUI:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

.field public static final enum NEW:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

.field public static final enum NONE:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

.field public static final enum NUM:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

.field public static final enum POINT:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

.field private static final sStringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 7
    new-instance v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    const-string/jumbo v2, "NONE"

    const-string/jumbo v3, "none"

    invoke-direct {v1, v2, v0, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NONE:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    .line 8
    new-instance v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    const-string/jumbo v2, "POINT"

    const-string/jumbo v3, "point"

    invoke-direct {v1, v2, v4, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->POINT:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    .line 9
    new-instance v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    const-string/jumbo v2, "NEW"

    const-string/jumbo v3, "new"

    invoke-direct {v1, v2, v5, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NEW:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    .line 10
    new-instance v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    const-string/jumbo v2, "NUM"

    const-string/jumbo v3, "num"

    invoke-direct {v1, v2, v6, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NUM:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    .line 11
    new-instance v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    const-string/jumbo v2, "HUI"

    const-string/jumbo v3, "hui"

    invoke-direct {v1, v2, v7, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->HUI:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    .line 6
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    sget-object v2, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NONE:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    aput-object v2, v1, v0

    sget-object v2, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->POINT:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    aput-object v2, v1, v4

    sget-object v2, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NEW:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NUM:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    aput-object v2, v1, v6

    sget-object v2, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->HUI:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    aput-object v2, v1, v7

    sput-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->$VALUES:[Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->sStringToEnum:Ljava/util/Map;

    .line 23
    invoke-static {}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->values()[Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 24
    sget-object v4, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->sStringToEnum:Ljava/util/Map;

    iget-object v5, v3, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->desc:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->desc:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->sStringToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->$VALUES:[Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    invoke-virtual {v0}, [Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    return-object v0
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->desc:Ljava/lang/String;

    return-object v0
.end method
