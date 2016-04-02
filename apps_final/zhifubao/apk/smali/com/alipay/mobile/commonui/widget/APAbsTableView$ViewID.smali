.class public final enum Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ARROW_IMAGE:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

.field public static final enum ICON_IMAGE:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

.field public static final enum LEFT_TEXT1:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

.field public static final enum LEFT_TEXT2:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

.field public static final enum LEFT_TEXT3:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

.field public static final enum RIGHT_IMAGE:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

.field public static final enum RIGHT_TEXT:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

.field public static final enum TOGGLE_BUTTON:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

.field private static final synthetic b:[Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    const-string/jumbo v1, "LEFT_TEXT1"

    sget v2, Lcom/alipay/mobile/ui/R$id;->table_left_text:I

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->LEFT_TEXT1:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    const-string/jumbo v1, "LEFT_TEXT2"

    sget v2, Lcom/alipay/mobile/ui/R$id;->table_left_text_2:I

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->LEFT_TEXT2:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    const-string/jumbo v1, "LEFT_TEXT3"

    sget v2, Lcom/alipay/mobile/ui/R$id;->table_left_text_3:I

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->LEFT_TEXT3:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    const-string/jumbo v1, "RIGHT_TEXT"

    sget v2, Lcom/alipay/mobile/ui/R$id;->table_right_text:I

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->RIGHT_TEXT:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    const-string/jumbo v1, "RIGHT_IMAGE"

    sget v2, Lcom/alipay/mobile/ui/R$id;->table_right_image:I

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->RIGHT_IMAGE:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    const-string/jumbo v1, "ARROW_IMAGE"

    const/4 v2, 0x5

    sget v3, Lcom/alipay/mobile/ui/R$id;->table_arrow:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->ARROW_IMAGE:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    const-string/jumbo v1, "TOGGLE_BUTTON"

    const/4 v2, 0x6

    sget v3, Lcom/alipay/mobile/ui/R$id;->table_toggleButton:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->TOGGLE_BUTTON:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    const-string/jumbo v1, "ICON_IMAGE"

    const/4 v2, 0x7

    sget v3, Lcom/alipay/mobile/ui/R$id;->table_iconView:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->ICON_IMAGE:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    sget-object v1, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->LEFT_TEXT1:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->LEFT_TEXT2:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->LEFT_TEXT3:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->RIGHT_TEXT:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->RIGHT_IMAGE:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->ARROW_IMAGE:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->TOGGLE_BUTTON:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->ICON_IMAGE:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->b:[Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;
    .locals 1

    const-class v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->b:[Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    invoke-virtual {v0}, [Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->a:I

    return v0
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->a:I

    return-void
.end method
