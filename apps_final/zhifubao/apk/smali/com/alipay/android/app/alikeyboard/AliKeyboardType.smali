.class public final enum Lcom/alipay/android/app/alikeyboard/AliKeyboardType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/alikeyboard/AliKeyboardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

.field public static final enum abc:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

.field public static final enum money:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

.field public static final enum none:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

.field public static final enum num:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    const-string/jumbo v1, "none"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    new-instance v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    const-string/jumbo v1, "abc"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    new-instance v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    const-string/jumbo v1, "num"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    new-instance v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    const-string/jumbo v1, "money"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->a:[Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/alikeyboard/AliKeyboardType;
    .locals 1

    const-class v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/alikeyboard/AliKeyboardType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->a:[Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
