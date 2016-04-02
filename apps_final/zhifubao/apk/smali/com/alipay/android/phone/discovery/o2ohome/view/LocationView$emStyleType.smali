.class public final enum Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;
.super Ljava/lang/Enum;
.source "LocationView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EM_STYLE_FAILURE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

.field public static final enum EM_STYLE_HIDE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

.field public static final enum EM_STYLE_LOADING:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    const-string/jumbo v1, "EM_STYLE_HIDE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_HIDE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    .line 21
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    const-string/jumbo v1, "EM_STYLE_LOADING"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_LOADING:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    .line 22
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    const-string/jumbo v1, "EM_STYLE_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_FAILURE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_HIDE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_LOADING:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_FAILURE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->ENUM$VALUES:[Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->ENUM$VALUES:[Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
