.class final Lcom/alipay/mobile/personalbase/search/a;
.super Ljava/lang/Object;
.source "PinyinItemSearchEngine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TH;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;

    check-cast p2, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;

    invoke-virtual {p1}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getFirstField()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedWord:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getFirstField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p2, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
