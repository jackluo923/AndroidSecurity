.class public Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;
    }
.end annotation


# instance fields
.field private a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->g:Z

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->g:Z

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a([Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    const-string/jumbo v6, "\'"

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "loc:operation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    :goto_1
    const-string/jumbo v1, "loc:scan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Scan:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    :cond_2
    const-string/jumbo v1, "loc:auth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a([Ljava/lang/String;)V

    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->c:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->g:Z

    return-void
.end method

.method public final a()[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;
    .locals 7

    const/4 v6, -0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b:Ljava/lang/String;

    const-string/jumbo v1, "action"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p1

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->c:I

    :cond_1
    const-string/jumbo v2, "neec"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "neec"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->d:Ljava/lang/String;

    :cond_2
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    array-length v0, v2

    new-array v0, v0, [Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_18

    const-string/jumbo v4, "loc:exit"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "loc:back"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto :goto_3

    :cond_6
    aget-object v4, v2, v0

    if-eqz v4, :cond_7

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:bncb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a([Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    aget-object v4, v2, v0

    if-eqz v4, :cond_8

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:bnvb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bnvb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto :goto_3

    :cond_8
    aget-object v4, v2, v0

    if-eqz v4, :cond_9

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:openurl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenUrl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a([Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    aget-object v4, v2, v0

    if-eqz v4, :cond_a

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:dismiss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Dismiss:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_a
    aget-object v4, v2, v0

    if-eqz v4, :cond_c

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:returnData"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "params"

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "params"

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->e:Ljava/lang/String;

    :cond_b
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReturnData:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_c
    aget-object v4, v2, v0

    if-eqz v4, :cond_d

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:scancard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanCard:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_d
    aget-object v4, v2, v0

    if-eqz v4, :cond_e

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:readsms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadSms:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_e
    aget-object v4, v2, v0

    if-eqz v4, :cond_f

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:openweb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenWeb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_f
    aget-object v4, v2, v0

    if-eqz v4, :cond_10

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:wappay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->WapPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_10
    aget-object v4, v2, v0

    if-eqz v4, :cond_11

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:scanface"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanFace:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_11
    aget-object v4, v2, v0

    if-eqz v4, :cond_12

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->None:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_12
    aget-object v4, v2, v0

    if-eqz v4, :cond_13

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:fullpay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->FullPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_13
    aget-object v4, v2, v0

    if-eqz v4, :cond_14

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:readPhoneNum"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadPhoneNum:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_14
    aget-object v4, v2, v0

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_15

    aget-object v4, v2, v0

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_15

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aget-object v5, v2, v0

    invoke-direct {p0, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    move-result-object v5

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_15
    const-string/jumbo v4, "act"

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string/jumbo v4, "name"

    invoke-virtual {p1, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const-string/jumbo v4, "loc:exit"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_16
    aget-object v4, v2, v0

    const-string/jumbo v5, "loc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->None:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_17
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v5, v4, v0

    goto/16 :goto_3

    :cond_18
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_1

    :cond_19
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->c:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->g:Z

    return v0
.end method

.method public final f()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    array-length v2, v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aget-object v2, v2, v1

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
