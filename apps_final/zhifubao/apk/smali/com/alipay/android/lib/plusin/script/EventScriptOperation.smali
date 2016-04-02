.class public final enum Lcom/alipay/android/lib/plusin/script/EventScriptOperation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/lib/plusin/script/EventScriptOperation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Function:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

.field public static final enum Sentence:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

.field private static final synthetic a:[Lcom/alipay/android/lib/plusin/script/EventScriptOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    const-string/jumbo v1, "Sentence"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->Sentence:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    new-instance v0, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    const-string/jumbo v1, "Function"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->Function:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    sget-object v1, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->Sentence:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->Function:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->a:[Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/lib/plusin/script/EventScriptOperation;
    .locals 1

    const-class v0, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/lib/plusin/script/EventScriptOperation;
    .locals 1

    sget-object v0, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->a:[Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    invoke-virtual {v0}, [Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    return-object v0
.end method
