.class public final Lcom/taobao/wireless/security/adapter/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcom/taobao/wireless/security/adapter/a;->c:I

    const/16 v0, 0x65

    sput v0, Lcom/taobao/wireless/security/adapter/a;->a:I

    sget v0, Lcom/taobao/wireless/security/adapter/a;->c:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/taobao/wireless/security/adapter/a;->b:I

    return-void
.end method
