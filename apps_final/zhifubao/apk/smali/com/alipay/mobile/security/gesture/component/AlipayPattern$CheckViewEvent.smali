.class public final enum Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHECKERROROVER:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

.field public static final enum ERROROVERCLICKED:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

.field public static final enum FORGETPASSWORD:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

.field public static final enum PATTERNISRIGHT:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

.field public static final enum SWITCHACCOUNT:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    const-string/jumbo v1, "FORGETPASSWORD"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->FORGETPASSWORD:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    new-instance v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    const-string/jumbo v1, "PATTERNISRIGHT"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->PATTERNISRIGHT:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    new-instance v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    const-string/jumbo v1, "SWITCHACCOUNT"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->SWITCHACCOUNT:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    new-instance v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    const-string/jumbo v1, "CHECKERROROVER"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->CHECKERROROVER:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    new-instance v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    const-string/jumbo v1, "ERROROVERCLICKED"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->ERROROVERCLICKED:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->FORGETPASSWORD:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->PATTERNISRIGHT:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->SWITCHACCOUNT:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->CHECKERROROVER:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->ERROROVERCLICKED:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->ENUM$VALUES:[Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->ENUM$VALUES:[Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
