.class public final enum Lcom/a/a/b/a/m;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/b/a/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/b/a/m;

.field public static final enum b:Lcom/a/a/b/a/m;

.field private static final synthetic c:[Lcom/a/a/b/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/b/a/m;

    const-string v1, "FIT_INSIDE"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/a/m;->a:Lcom/a/a/b/a/m;

    new-instance v0, Lcom/a/a/b/a/m;

    const-string v1, "CROP"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/a/m;->b:Lcom/a/a/b/a/m;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/a/a/b/a/m;

    sget-object v1, Lcom/a/a/b/a/m;->a:Lcom/a/a/b/a/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/b/a/m;->b:Lcom/a/a/b/a/m;

    aput-object v1, v0, v3

    sput-object v0, Lcom/a/a/b/a/m;->c:[Lcom/a/a/b/a/m;

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

.method public static a(Landroid/widget/ImageView;)Lcom/a/a/b/a/m;
    .locals 2

    sget-object v0, Lcom/a/a/b/a/n;->a:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/a/a/b/a/m;->b:Lcom/a/a/b/a/m;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/a/a/b/a/m;->a:Lcom/a/a/b/a/m;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/b/a/m;
    .locals 1

    const-class v0, Lcom/a/a/b/a/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/m;

    return-object v0
.end method

.method public static values()[Lcom/a/a/b/a/m;
    .locals 1

    sget-object v0, Lcom/a/a/b/a/m;->c:[Lcom/a/a/b/a/m;

    invoke-virtual {v0}, [Lcom/a/a/b/a/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/b/a/m;

    return-object v0
.end method
