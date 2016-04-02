.class Lae/gov/mol/helper/CommonMethods$9;
.super Ljava/lang/Object;
.source "CommonMethods.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/CommonMethods;->checkTextValidation(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/CommonMethods;


# direct methods
.method constructor <init>(Lae/gov/mol/helper/CommonMethods;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/CommonMethods$9;->this$0:Lae/gov/mol/helper/CommonMethods;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 537
    if-le p3, p2, :cond_0

    .line 539
    const/16 v2, 0x36

    new-array v0, v2, [C

    fill-array-data v0, :array_0

    .line 541
    .local v0, "acceptedChars":[C
    move v1, p2

    .local v1, "index":I
    :goto_0
    if-lt v1, p3, :cond_1

    .line 547
    .end local v0    # "acceptedChars":[C
    .end local v1    # "index":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 542
    .restart local v0    # "acceptedChars":[C
    .restart local v1    # "index":I
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 543
    const-string v2, ""

    goto :goto_1

    .line 541
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    nop

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x2es
        0x20s
    .end array-data
.end method
