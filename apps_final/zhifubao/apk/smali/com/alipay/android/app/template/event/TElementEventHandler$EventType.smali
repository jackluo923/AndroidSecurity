.class public final enum Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;
.super Ljava/lang/Enum;
.source "TElementEventHandler.java"


# static fields
.field public static final enum ASYNC_EVENT:Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

.field public static final enum CLICK:Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

.field public static final enum GENERIC:Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

.field private static final synthetic a:[Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    const-string/jumbo v1, "GENERIC"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->GENERIC:Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    .line 20
    new-instance v0, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    const-string/jumbo v1, "CLICK"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->CLICK:Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    .line 25
    new-instance v0, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    const-string/jumbo v1, "ASYNC_EVENT"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->ASYNC_EVENT:Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    sget-object v1, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->GENERIC:Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->CLICK:Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->ASYNC_EVENT:Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->a:[Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->a:[Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
