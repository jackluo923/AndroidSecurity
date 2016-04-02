.class public final enum Lcom/alipay/android/lib/plusin/script/EventScriptType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/lib/plusin/script/EventScriptType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Lua:Lcom/alipay/android/lib/plusin/script/EventScriptType;

.field private static final synthetic b:[Lcom/alipay/android/lib/plusin/script/EventScriptType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/alipay/android/lib/plusin/script/EventScriptType;

    const-string/jumbo v1, "Lua"

    const-string/jumbo v2, "lua"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/lib/plusin/script/EventScriptType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/lib/plusin/script/EventScriptType;->Lua:Lcom/alipay/android/lib/plusin/script/EventScriptType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alipay/android/lib/plusin/script/EventScriptType;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/android/lib/plusin/script/EventScriptType;->Lua:Lcom/alipay/android/lib/plusin/script/EventScriptType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/lib/plusin/script/EventScriptType;->b:[Lcom/alipay/android/lib/plusin/script/EventScriptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/alipay/android/lib/plusin/script/EventScriptType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/lib/plusin/script/EventScriptType;
    .locals 1

    const-class v0, Lcom/alipay/android/lib/plusin/script/EventScriptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/script/EventScriptType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/lib/plusin/script/EventScriptType;
    .locals 1

    sget-object v0, Lcom/alipay/android/lib/plusin/script/EventScriptType;->b:[Lcom/alipay/android/lib/plusin/script/EventScriptType;

    invoke-virtual {v0}, [Lcom/alipay/android/lib/plusin/script/EventScriptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/lib/plusin/script/EventScriptType;

    return-object v0
.end method
