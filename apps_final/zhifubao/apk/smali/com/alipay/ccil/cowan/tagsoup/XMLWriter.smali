.class public Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field public static final CDATA_SECTION_ELEMENTS:Ljava/lang/String; = "cdata-section-elements"

.field public static final DOCTYPE_PUBLIC:Ljava/lang/String; = "doctype-public"

.field public static final DOCTYPE_SYSTEM:Ljava/lang/String; = "doctype-system"

.field public static final ENCODING:Ljava/lang/String; = "encoding"

.field public static final INDENT:Ljava/lang/String; = "indent"

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media-type"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final OMIT_XML_DECLARATION:Ljava/lang/String; = "omit-xml-declaration"

.field public static final STANDALONE:Ljava/lang/String; = "standalone"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private a:[Ljava/lang/String;

.field private final b:Lorg/xml/sax/Attributes;

.field private c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/io/Writer;

.field private h:Lorg/xml/sax/helpers/NamespaceSupport;

.field private i:I

.field private j:Ljava/util/Properties;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "checked"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "defer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ismap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "multiple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "selected"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a:[Ljava/lang/String;

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->b:Lorg/xml/sax/Attributes;

    iput v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    iput v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->i:I

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->k:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->l:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->m:Z

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->n:Z

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->o:Z

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->p:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->q:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->r:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->s:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->t:Z

    invoke-direct {p0, v4}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "checked"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "defer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ismap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "multiple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "selected"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a:[Ljava/lang/String;

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->b:Lorg/xml/sax/Attributes;

    iput v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    iput v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->i:I

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->k:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->l:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->m:Z

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->n:Z

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->o:Z

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->p:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->q:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->r:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->s:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->t:Z

    invoke-direct {p0, p1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "checked"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "defer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ismap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "multiple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "selected"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a:[Ljava/lang/String;

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->b:Lorg/xml/sax/Attributes;

    iput v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    iput v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->i:I

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->k:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->l:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->m:Z

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->n:Z

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->o:Z

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->p:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->q:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->r:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->s:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->t:Z

    invoke-direct {p0, v4}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Ljava/io/Writer;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "checked"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "defer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ismap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "multiple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "selected"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a:[Ljava/lang/String;

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->b:Lorg/xml/sax/Attributes;

    iput v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    iput v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->i:I

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->k:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->l:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->m:Z

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->n:Z

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->o:Z

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->p:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->q:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->r:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->s:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->t:Z

    invoke-direct {p0, p2}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/io/Writer;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz p3, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, ""

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    if-eqz p3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    :cond_5
    move-object v0, v1

    :cond_6
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    if-eqz p3, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    :cond_9
    move-object v0, v1

    :cond_a
    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    const-string/jumbo v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_e

    if-eqz p3, :cond_b

    if-nez v2, :cond_b

    const-string/jumbo v0, ""

    :cond_b
    :goto_2
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "__NS"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_f
    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v1, v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->e:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(C)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->g:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private a(Ljava/io/Writer;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->setOutput(Ljava/io/Writer;)V

    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->d:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->e:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->j:Ljava/util/Properties;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->g:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/16 v2, 0x3a

    invoke-direct {p0, p1, p3, p4}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lorg/xml/sax/Attributes;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_4

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v1, v7, v2}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->m:Z

    if-eqz v0, :cond_1

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    if-nez v0, :cond_0

    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iget-object v7, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_3

    iget-object v7, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v3

    :goto_2
    if-nez v0, :cond_4

    :cond_1
    const-string/jumbo v0, "=\""

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    array-length v0, v6

    invoke-direct {p0, v6, v2, v0, v3}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a([CIIZ)V

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    return-void
.end method

.method private a([CIIZ)V
    .locals 3

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    aget-char v1, p1, v0

    sparse-switch v1, :sswitch_data_0

    iget-boolean v1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->k:Z

    if-nez v1, :cond_1

    aget-char v1, p1, v0

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    const-string/jumbo v1, "&#"

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    aget-char v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "&amp;"

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "&lt;"

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "&gt;"

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    if-eqz p4, :cond_0

    const-string/jumbo v1, "&quot;"

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    goto :goto_1

    :cond_1
    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    goto :goto_1

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, "xmlns=\""

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    array-length v3, v1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a([CIIZ)V

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "xmlns:"

    invoke-direct {p0, v3}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "=\""

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->characters([CII)V

    return-void
.end method

.method public characters([CII)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->t:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a([CIIZ)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V

    return-void

    :cond_1
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public comment([CII)V
    .locals 4

    const/16 v3, 0x2d

    const-string/jumbo v0, "<!--"

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    aget-char v1, p1, v0

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, p3

    if-gt v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-char v1, p1, v1

    if-ne v1, v3, :cond_0

    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "-->"

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public dataElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v1, ""

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->b:Lorg/xml/sax/Attributes;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    return-void
.end method

.method public dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->b:Lorg/xml/sax/Attributes;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    return-void
.end method

.method public dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, p5}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->characters(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public emptyElement(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->b:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->emptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public emptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->b:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->emptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public emptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p4}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Lorg/xml/sax/Attributes;)V

    iget v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->b()V

    const-string/jumbo v0, "/>"

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endCDATA()V
    .locals 0

    return-void
.end method

.method public endDTD()V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->endDocument()V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->m:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "area"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "base"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "basefont"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "br"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "col"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "frame"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "hr"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "img"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "input"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "isindex"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "link"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "meta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "param"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "</"

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    :cond_2
    iget v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->t:Z

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    iget v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->g:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public forceNSDecl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->d:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public forceNSDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->forceNSDecl(Ljava/lang/String;)V

    return-void
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->j:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a([CIIZ)V

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "<?"

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    invoke-direct {p0, p2}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "?>"

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    if-gtz v0, :cond_0

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    iput v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->i:I

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->g:Ljava/io/Writer;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->g:Ljava/io/Writer;

    goto :goto_0
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->j:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->l:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->k:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->m:Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "doctype-public"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->p:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->n:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "doctype-system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p2, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->q:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->n:Z

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p2, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->r:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "standalone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startCDATA()V
    .locals 0

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v1, 0x27

    const/4 v4, -0x1

    const/16 v2, 0x22

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->o:Z

    const-string/jumbo v0, "<!DOCTYPE "

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    if-nez p3, :cond_2

    const-string/jumbo p3, ""

    :cond_2
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->q:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object p3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->q:Ljava/lang/String;

    :cond_3
    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v4, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->p:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object p2, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->p:Ljava/lang/String;

    :cond_4
    if-eqz p2, :cond_7

    const-string/jumbo v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_6

    :goto_2
    const-string/jumbo v2, " PUBLIC "

    invoke-direct {p0, v2}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    invoke-direct {p0, p2}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    :goto_3
    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    invoke-direct {p0, p3}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    const-string/jumbo v0, ">\n"

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    const-string/jumbo v1, " SYSTEM "

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public startDocument()V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->reset()V

    const-string/jumbo v0, "yes"

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->j:Ljava/util/Properties;

    const-string/jumbo v2, "omit-xml-declaration"

    const-string/jumbo v3, "no"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "<?xml"

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->r:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, " version=\"1.0\""

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->l:Ljava/lang/String;

    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, " encoding=\""

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "\""

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->s:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, " standalone=\"yes\"?>\n"

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V

    return-void

    :cond_2
    const-string/jumbo v0, " version=\""

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "\""

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, " standalone=\""

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->s:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "\""

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->b:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->b:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->h:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->o:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_4

    move-object v0, p3

    :goto_0
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p4}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(Lorg/xml/sax/Attributes;)V

    iget v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->f:I

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a()V

    :cond_1
    invoke-direct {p0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->b()V

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->a(C)V

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->m:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "script"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "style"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/XMLWriter;->t:Z

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
