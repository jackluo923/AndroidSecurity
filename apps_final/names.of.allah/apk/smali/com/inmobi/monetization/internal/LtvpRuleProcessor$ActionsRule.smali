.class public final enum Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIONS_ONLY:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

.field public static final enum ACTIONS_TO_MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

.field public static final enum MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

.field public static final enum NO_ADS:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

.field private static final synthetic b:[Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    const-string v1, "MEDIATION"

    invoke-direct {v0, v1, v2, v2}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    new-instance v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    const-string v1, "NO_ADS"

    invoke-direct {v0, v1, v3, v3}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->NO_ADS:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    new-instance v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    const-string v1, "ACTIONS_TO_MEDIATION"

    invoke-direct {v0, v1, v4, v4}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_TO_MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    new-instance v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    const-string v1, "ACTIONS_ONLY"

    invoke-direct {v0, v1, v5, v5}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_ONLY:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    sget-object v1, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->NO_ADS:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_TO_MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_ONLY:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->b:[Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->a:I

    return-void
.end method

.method static a(I)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->NO_ADS:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_TO_MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_ONLY:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
    .locals 1

    const-class v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
    .locals 1

    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->b:[Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    invoke-virtual {v0}, [Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->a:I

    return v0
.end method
