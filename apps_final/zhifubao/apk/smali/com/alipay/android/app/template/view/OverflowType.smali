.class public final enum Lcom/alipay/android/app/template/view/OverflowType;
.super Ljava/lang/Enum;
.source "OverflowType.java"


# static fields
.field private static final synthetic a:[Lcom/alipay/android/app/template/view/OverflowType;

.field public static final enum clip:Lcom/alipay/android/app/template/view/OverflowType;

.field public static final enum ellipsis:Lcom/alipay/android/app/template/view/OverflowType;

.field public static final enum normal:Lcom/alipay/android/app/template/view/OverflowType;

.field public static final enum scroll:Lcom/alipay/android/app/template/view/OverflowType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/alipay/android/app/template/view/OverflowType;

    const-string/jumbo v1, "clip"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/view/OverflowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/OverflowType;->clip:Lcom/alipay/android/app/template/view/OverflowType;

    new-instance v0, Lcom/alipay/android/app/template/view/OverflowType;

    const-string/jumbo v1, "ellipsis"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/template/view/OverflowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/OverflowType;->ellipsis:Lcom/alipay/android/app/template/view/OverflowType;

    new-instance v0, Lcom/alipay/android/app/template/view/OverflowType;

    const-string/jumbo v1, "scroll"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/template/view/OverflowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/OverflowType;->scroll:Lcom/alipay/android/app/template/view/OverflowType;

    new-instance v0, Lcom/alipay/android/app/template/view/OverflowType;

    const-string/jumbo v1, "normal"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/template/view/OverflowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/OverflowType;->normal:Lcom/alipay/android/app/template/view/OverflowType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/android/app/template/view/OverflowType;

    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->clip:Lcom/alipay/android/app/template/view/OverflowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->ellipsis:Lcom/alipay/android/app/template/view/OverflowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->scroll:Lcom/alipay/android/app/template/view/OverflowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->normal:Lcom/alipay/android/app/template/view/OverflowType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/android/app/template/view/OverflowType;->a:[Lcom/alipay/android/app/template/view/OverflowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/OverflowType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/app/template/view/OverflowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/OverflowType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/template/view/OverflowType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/app/template/view/OverflowType;->a:[Lcom/alipay/android/app/template/view/OverflowType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/template/view/OverflowType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
