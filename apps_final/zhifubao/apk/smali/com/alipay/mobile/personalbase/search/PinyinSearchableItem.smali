.class public abstract Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;
.super Ljava/lang/Object;
.source "PinyinSearchableItem.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public mIsFirstSearch:Z

.field public mIsSecondSearch:Z

.field public mMatchedEndIndex:I

.field public mMatchedEndIndex2:I

.field public mMatchedPinYin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMatchedStartIndex:I

.field public mMatchedStartIndex2:I

.field public mMatchedWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedPinYin:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->b:Ljava/util/HashMap;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedWord:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedStartIndex:I

    .line 24
    iput v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedEndIndex:I

    .line 26
    iput v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedStartIndex2:I

    .line 28
    iput v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedEndIndex2:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mIsSecondSearch:Z

    .line 12
    return-void
.end method

.method private a(Lcom/alipay/mobile/personalbase/search/ItemSearchChain;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/personalbase/search/ItemSearchChain;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/search/ItemSearchChain;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 203
    iget-object v5, p1, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->minfo:Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    .line 204
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget v0, v5, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getFirstField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedPinYin:Ljava/util/ArrayList;

    iget v1, v5, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 213
    array-length v1, v0

    if-eqz v1, :cond_0

    const/16 v1, 0x4e00

    if-lt p2, v1, :cond_2

    const v1, 0x9fbb

    if-gt p2, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getFirstField()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 215
    iget v1, v5, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 214
    if-ne v0, p2, :cond_6

    .line 217
    new-instance v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;-><init>()V

    .line 218
    iget v1, v5, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->pri:I

    .line 219
    new-instance v1, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    iget v4, v5, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    add-int/lit8 v4, v4, 0x1

    .line 220
    const/4 v5, -0x1

    .line 219
    invoke-direct {v1, v4, v5, v2}, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;-><init>(III)V

    .line 221
    iput-object v1, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->minfo:Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->fs:Ljava/util/List;

    .line 223
    iget-object v1, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->fs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    .line 248
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v4

    .line 211
    goto :goto_1

    :cond_2
    move v1, v2

    .line 213
    goto :goto_0

    :cond_3
    move v1, v2

    .line 228
    :goto_2
    array-length v6, v0

    if-lt v1, v6, :cond_4

    .line 243
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move-object v0, v3

    .line 244
    goto :goto_1

    .line 229
    :cond_4
    aget-object v6, v0, v1

    .line 230
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 232
    if-ne v6, p2, :cond_5

    .line 233
    new-instance v6, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;

    invoke-direct {v6}, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;-><init>()V

    .line 234
    iget v7, v5, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->pri:I

    .line 235
    new-instance v7, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    .line 236
    iget v8, v5, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    add-int/lit8 v8, v8, 0x1

    .line 235
    invoke-direct {v7, v8, v1, v2}, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;-><init>(III)V

    .line 237
    iput-object v7, v6, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->minfo:Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    .line 238
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->fs:Ljava/util/List;

    .line 239
    iget-object v7, v6, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->fs:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move-object v0, v4

    .line 248
    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/search/ItemSearchChain;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/search/ItemSearchChain;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 157
    const/4 v0, 0x1

    move v2, v0

    .line 158
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->a(Ljava/util/List;)V

    .line 180
    :goto_1
    return-object p1

    .line 159
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 160
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 162
    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    move-object p1, v4

    .line 174
    goto :goto_1

    .line 161
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;

    .line 163
    invoke-direct {p0, v1, v6}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->a(Lcom/alipay/mobile/personalbase/search/ItemSearchChain;I)Ljava/util/List;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_3

    .line 165
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    :cond_3
    iget-object v8, v1, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->minfo:Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v0, v8, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pypos:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedPinYin:Ljava/util/ArrayList;

    iget v9, v8, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v9, v8, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pypos:I

    aget-object v0, v0, v9

    iget v9, v8, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->c4pypos:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget v9, v8, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->c4pypos:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_4

    new-instance v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;-><init>()V

    iget v9, v8, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->pri:I

    new-instance v9, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    iget v10, v8, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    iget v11, v8, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pypos:I

    iget v8, v8, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->c4pypos:I

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v9, v10, v11, v8}, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;-><init>(III)V

    iput-object v9, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->minfo:Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->fs:Ljava/util/List;

    iget-object v8, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->fs:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    move-object v0, v5

    .line 169
    :goto_3
    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_5
    move-object v0, v4

    .line 167
    goto :goto_3

    .line 158
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object p1, v3

    goto/16 :goto_0
.end method

.method private a(ILcom/alipay/mobile/personalbase/search/ItemMatchInfo;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 104
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/search/ItemSearchChain;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;

    .line 188
    iget-object v1, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->fs:Ljava/util/List;

    .line 189
    iget-object v2, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->minfo:Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    iget v2, v2, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedEndIndex:I

    .line 190
    iget-object v0, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->minfo:Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    iget v0, v0, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    iput v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedStartIndex:I

    .line 191
    :goto_0
    if-nez v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getFirstField()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedStartIndex:I

    iget v2, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedEndIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedWord:Ljava/lang/String;

    .line 196
    return-void

    .line 192
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;

    iget-object v0, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->minfo:Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    iget v0, v0, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    iput v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedStartIndex:I

    .line 193
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;

    iget-object v0, v0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->fs:Ljava/util/List;

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    check-cast p1, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getFirstField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getFirstField()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getSecondField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getSecondField()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFirstAlphaChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getFirstField()Ljava/lang/String;
.end method

.method public abstract getSecondField()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getFirstField()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getSecondField()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 57
    return v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getFirstField()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getSecondField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public initSearchInfo(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedPinYin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v1

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getFirstField()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 97
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getFirstField()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 69
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->getPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v3

    .line 70
    if-nez v3, :cond_3

    .line 72
    iget-object v3, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedPinYin:Ljava/util/ArrayList;

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    if-nez v0, :cond_1

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->a:Ljava/lang/String;

    .line 75
    iget-object v3, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->a:Ljava/lang/String;

    const-string/jumbo v4, "^[a-zA-Z].*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    const-string/jumbo v3, "#"

    iput-object v3, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->a:Ljava/lang/String;

    .line 79
    :cond_1
    new-instance v3, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    invoke-direct {v3, v0, v6, v1}, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;-><init>(III)V

    .line 81
    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->a(ILcom/alipay/mobile/personalbase/search/ItemMatchInfo;)V

    .line 67
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedPinYin:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v4, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    invoke-direct {v4, v0, v6, v1}, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;-><init>(III)V

    .line 85
    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->a(ILcom/alipay/mobile/personalbase/search/ItemMatchInfo;)V

    move v2, v1

    .line 86
    :goto_2
    array-length v4, v3

    if-lt v2, v4, :cond_4

    .line 93
    if-nez v0, :cond_2

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->a:Ljava/lang/String;

    goto :goto_1

    .line 87
    :cond_4
    aget-object v4, v3, v2

    .line 88
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 90
    new-instance v5, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    invoke-direct {v5, v0, v2, v1}, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;-><init>(III)V

    .line 91
    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->a(ILcom/alipay/mobile/personalbase/search/ItemMatchInfo;)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public isFirstFieldMatch(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 137
    iget-object v4, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 138
    if-nez v0, :cond_0

    move v0, v1

    .line 153
    :goto_0
    return v0

    .line 141
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    invoke-direct {p0, v4, v3}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 151
    goto :goto_0

    .line 142
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    .line 143
    new-instance v6, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;

    invoke-direct {v6}, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;-><init>()V

    .line 144
    iput-object v0, v6, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->minfo:Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    .line 145
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->fs:Ljava/util/List;

    .line 146
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->isfc:Ljava/lang/Boolean;

    .line 147
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v0, v1

    .line 153
    goto :goto_0
.end method

.method public isSecondFieldMatch(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->getSecondField()Ljava/lang/String;

    move-result-object v2

    .line 115
    if-nez v2, :cond_0

    .line 127
    :goto_0
    return v0

    .line 118
    :cond_0
    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 119
    if-ltz v2, :cond_1

    .line 120
    iput v2, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedStartIndex2:I

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedEndIndex2:I

    .line 122
    iput-boolean v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mIsFirstSearch:Z

    .line 123
    iput-boolean v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mIsSecondSearch:Z

    move v0, v1

    .line 124
    goto :goto_0

    .line 126
    :cond_1
    iput-boolean v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mIsSecondSearch:Z

    goto :goto_0
.end method
