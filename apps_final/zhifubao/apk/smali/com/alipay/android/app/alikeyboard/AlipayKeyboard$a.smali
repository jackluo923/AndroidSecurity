.class final enum Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Hide:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

.field public static final enum None:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

.field public static final enum Show:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

.field private static final synthetic a:[Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->None:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    new-instance v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    const-string/jumbo v1, "Show"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->Show:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    new-instance v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    const-string/jumbo v1, "Hide"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->Hide:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->None:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->Show:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->Hide:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->a:[Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;
    .locals 1

    const-class v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->a:[Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
