.class public Lcom/ali/user/mobile/ui/widget/AUSplitTextFormatter;
.super Ljava/lang/Object;
.source "AUSplitTextFormatter.java"

# interfaces
.implements Lcom/ali/user/mobile/ui/widget/AUFormatter;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:[Landroid/text/InputFilter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUSplitTextFormatter;->a:Ljava/util/ArrayList;

    .line 25
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 26
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 27
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 31
    :cond_0
    return-void

    .line 27
    :cond_1
    aget-object v3, v1, v0

    .line 28
    iget-object v4, p0, Lcom/ali/user/mobile/ui/widget/AUSplitTextFormatter;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public format(Landroid/text/Editable;)V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUSplitTextFormatter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 41
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 44
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 45
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_4

    move v6, v2

    move v2, v1

    .line 50
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 69
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_9

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUSplitTextFormatter;->b:[Landroid/text/InputFilter;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUSplitTextFormatter;->b:[Landroid/text/InputFilter;

    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 85
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v4, v1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 91
    :cond_2
    :goto_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt v6, v0, :cond_a

    .line 92
    if-lez v6, :cond_3

    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_a

    .line 95
    :cond_3
    invoke-static {p1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 46
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUSplitTextFormatter;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-eq v0, v7, :cond_8

    .line 53
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 54
    if-ge v2, v6, :cond_8

    .line 55
    add-int/lit8 v6, v6, 0x1

    move v3, v6

    .line 50
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v6, v3

    goto/16 :goto_2

    .line 60
    :cond_6
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 61
    if-ge v2, v6, :cond_7

    .line 62
    add-int/lit8 v6, v6, -0x1

    .line 59
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_8

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-eq v0, v7, :cond_6

    :cond_8
    move v3, v6

    goto :goto_5

    .line 70
    :cond_9
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 93
    :cond_a
    add-int/lit8 v6, v6, -0x1

    goto :goto_4
.end method
