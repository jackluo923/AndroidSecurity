.class public Lcom/alipay/ccil/cowan/tagsoup/Parser;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field public static final CDATAElementsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

.field private static M:[C = null

.field private static O:Ljava/lang/String; = null

.field public static final XML11Feature:Ljava/lang/String; = "http://xml.org/sax/features/xml-1.1"

.field public static final autoDetectorProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

.field public static final bogonsEmptyFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

.field public static final defaultAttributesFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

.field public static final externalGeneralEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field public static final externalParameterEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field private static i:Z = false

.field public static final ignorableWhitespaceFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

.field public static final ignoreBogonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

.field public static final isStandaloneFeature:Ljava/lang/String; = "http://xml.org/sax/features/is-standalone"

.field private static j:Z = false

.field private static k:Z = false

.field private static l:Z = false

.field public static final lexicalHandlerParameterEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/lexical-handler/parameter-entities"

.field public static final lexicalHandlerProperty:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field private static m:Z = false

.field private static n:Z = false

.field public static final namespacePrefixesFeature:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field public static final namespacesFeature:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static o:Z = false

.field private static p:Z = false

.field private static q:Z = false

.field public static final resolveDTDURIsFeature:Ljava/lang/String; = "http://xml.org/sax/features/resolve-dtd-uris"

.field public static final restartElementsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

.field public static final rootBogonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

.field public static final scannerProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

.field public static final schemaProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/schema"

.field public static final stringInterningFeature:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field public static final translateColonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

.field public static final unicodeNormalizationCheckingFeature:Ljava/lang/String; = "http://xml.org/sax/features/unicode-normalization-checking"

.field public static final useAttributes2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-attributes2"

.field public static final useEntityResolver2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-entity-resolver2"

.field public static final useLocator2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-locator2"

.field public static final validationFeature:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final xmlnsURIsFeature:Ljava/lang/String; = "http://xml.org/sax/features/xmlns-uris"


# instance fields
.field private A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/alipay/ccil/cowan/tagsoup/Element;

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Lcom/alipay/ccil/cowan/tagsoup/Element;

.field private J:Lcom/alipay/ccil/cowan/tagsoup/Element;

.field private K:Lcom/alipay/ccil/cowan/tagsoup/Element;

.field private L:I

.field private N:Z

.field private a:Lorg/xml/sax/ContentHandler;

.field private b:Lorg/xml/sax/ext/LexicalHandler;

.field private c:Lorg/xml/sax/DTDHandler;

.field private d:Lorg/xml/sax/ErrorHandler;

.field private e:Lorg/xml/sax/EntityResolver;

.field private f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

.field private g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

.field private h:Lcom/alipay/ccil/cowan/tagsoup/AutoDetector;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->i:Z

    sput-boolean v1, Lcom/alipay/ccil/cowan/tagsoup/Parser;->j:Z

    sput-boolean v1, Lcom/alipay/ccil/cowan/tagsoup/Parser;->k:Z

    sput-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->l:Z

    sput-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->m:Z

    sput-boolean v1, Lcom/alipay/ccil/cowan/tagsoup/Parser;->n:Z

    sput-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->o:Z

    sput-boolean v1, Lcom/alipay/ccil/cowan/tagsoup/Parser;->p:Z

    sput-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->q:Z

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->M:[C

    const-string/jumbo v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-\'()+,./:=?;!*#@$_%"

    sput-object v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->O:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x3cs
        0x2fs
        0x3es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    iput-object p0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b:Lorg/xml/sax/ext/LexicalHandler;

    iput-object p0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->c:Lorg/xml/sax/DTDHandler;

    iput-object p0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->d:Lorg/xml/sax/ErrorHandler;

    iput-object p0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->e:Lorg/xml/sax/EntityResolver;

    sget-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->i:Z

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->r:Z

    sget-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->j:Z

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->s:Z

    sget-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->k:Z

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->t:Z

    sget-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->l:Z

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->u:Z

    sget-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->m:Z

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->v:Z

    sget-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->n:Z

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->w:Z

    sget-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->o:Z

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->x:Z

    sget-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->p:Z

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->y:Z

    sget-boolean v0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->q:Z

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->z:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    sget-boolean v2, Lcom/alipay/ccil/cowan/tagsoup/Parser;->i:Z

    invoke-static {v2}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/namespace-prefixes"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/external-general-entities"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/external-parameter-entities"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/is-standalone"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/lexical-handler/parameter-entities"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/resolve-dtd-uris"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/string-interning"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/use-attributes2"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/use-locator2"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/use-entity-resolver2"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/xmlns-uris"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/xmlns-uris"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/xml-1.1"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    sget-boolean v2, Lcom/alipay/ccil/cowan/tagsoup/Parser;->j:Z

    invoke-static {v2}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    sget-boolean v2, Lcom/alipay/ccil/cowan/tagsoup/Parser;->k:Z

    invoke-static {v2}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    sget-boolean v2, Lcom/alipay/ccil/cowan/tagsoup/Parser;->l:Z

    invoke-static {v2}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    sget-boolean v2, Lcom/alipay/ccil/cowan/tagsoup/Parser;->m:Z

    invoke-static {v2}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    sget-boolean v2, Lcom/alipay/ccil/cowan/tagsoup/Parser;->n:Z

    invoke-static {v2}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    sget-boolean v2, Lcom/alipay/ccil/cowan/tagsoup/Parser;->o:Z

    invoke-static {v2}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    sget-boolean v2, Lcom/alipay/ccil/cowan/tagsoup/Parser;->p:Z

    invoke-static {v2}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    sget-boolean v2, Lcom/alipay/ccil/cowan/tagsoup/Parser;->q:Z

    invoke-static {v2}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->C:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->D:Z

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->E:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->F:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->G:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->H:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->J:Lcom/alipay/ccil/cowan/tagsoup/Element;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->K:Lcom/alipay/ccil/cowan/tagsoup/Element;

    iput v4, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->L:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->N:Z

    return-void
.end method

.method private a([CII)I
    .locals 4

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    :goto_0
    return v0

    :cond_0
    aget-char v1, p1, p2

    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    if-le p3, v1, :cond_2

    add-int/lit8 v1, p2, 0x1

    aget-char v1, p1, v1

    const/16 v2, 0x78

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, p2, 0x1

    aget-char v1, p1, v1

    const/16 v2, 0x58

    if-ne v1, v2, :cond_2

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v1, p1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, -0x1

    invoke-direct {v1, p1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getEntity(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a(Lorg/xml/sax/InputSource;)Ljava/io/Reader;
    .locals 7

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    new-instance v0, Ljava/net/URL;

    const-string/jumbo v1, "file"

    const-string/jumbo v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user.dir"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    :cond_0
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->h:Lcom/alipay/ccil/cowan/tagsoup/AutoDetector;

    invoke-interface {v0, v1}, Lcom/alipay/ccil/cowan/tagsoup/AutoDetector;->autoDetectingReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private static a(Z)Ljava/lang/Boolean;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    new-array v7, v6, [C

    move v3, v4

    move v5, v4

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v1, v5, 0x1

    aput-char v8, v7, v5

    const/16 v5, 0x26

    if-ne v8, v5, :cond_1

    if-ne v0, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v5, v1

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_0

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x23

    if-eq v8, v5, :cond_0

    const/16 v5, 0x3b

    if-ne v8, v5, :cond_3

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v7, v0, v5}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a([CII)I

    move-result v5

    const v8, 0xffff

    if-le v5, v8, :cond_2

    const/high16 v1, 0x10000

    sub-int v1, v5, v1

    add-int/lit8 v5, v0, -0x1

    shr-int/lit8 v8, v1, 0xa

    const v9, 0xd800

    add-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v7, v5

    and-int/lit16 v1, v1, 0x3ff

    const v5, 0xdc00

    add-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    :goto_2
    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_5

    add-int/lit8 v1, v0, -0x1

    int-to-char v5, v5

    aput-char v5, v7, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->localName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->namespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->r:Z

    if-nez v4, :cond_1

    const-string/jumbo v0, ""

    move-object v1, v0

    :cond_1
    iget-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->atts()Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    move-result-object v1

    invoke-interface {v1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    invoke-interface {v1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->next()Lcom/alipay/ccil/cowan/tagsoup/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    goto :goto_0
.end method

.method private a(Lcom/alipay/ccil/cowan/tagsoup/Element;)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->J:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->J:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0, v1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->canContain(Lcom/alipay/ccil/cowan/tagsoup/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->J:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0, p1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->canContain(Lcom/alipay/ccil/cowan/tagsoup/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->J:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->next()Lcom/alipay/ccil/cowan/tagsoup/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->J:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-direct {p0, v1}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b(Lcom/alipay/ccil/cowan/tagsoup/Element;)V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->J:Lcom/alipay/ccil/cowan/tagsoup/Element;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string/jumbo v0, ""

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private b([CII)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x3a

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x5f

    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v0, p3, 0x2

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v3, v2

    move v5, v4

    :goto_0
    add-int/lit8 v6, p3, -0x1

    if-lez p3, :cond_7

    aget-char v0, p1, p2

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v4

    move v3, v5

    :goto_1
    add-int/lit8 p2, p2, 0x1

    move v5, v3

    move p3, v6

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_2

    const/16 v8, 0x2d

    if-eq v0, v8, :cond_2

    const/16 v8, 0x2e

    if-ne v0, v8, :cond_4

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v4

    move v3, v5

    goto :goto_1

    :cond_4
    if-ne v0, v9, :cond_a

    if-nez v5, :cond_a

    if-eqz v3, :cond_5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    iget-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->w:Z

    if-eqz v3, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    move v3, v2

    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_9

    :cond_8
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    move v0, v3

    move v3, v5

    goto :goto_1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-direct {p0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a()V

    iget-boolean v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->x:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->flags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->anonymize()V

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->J:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0, v1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->setNext(Lcom/alipay/ccil/cowan/tagsoup/Element;)V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->J:Lcom/alipay/ccil/cowan/tagsoup/Element;

    :cond_0
    return-void
.end method

.method private b(Lcom/alipay/ccil/cowan/tagsoup/Element;)V
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->localName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->namespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->clean()V

    iget-boolean v5, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->r:Z

    if-nez v5, :cond_0

    const-string/jumbo v0, ""

    move-object v1, v0

    :cond_0
    iget-boolean v5, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->N:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->G:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->e:Lorg/xml/sax/EntityResolver;

    iget-object v6, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->E:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->F:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    invoke-interface {v5, v2, v0}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->atts()Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    move-result-object v5

    invoke-interface {v5}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_4

    invoke-interface {v5, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    invoke-interface {v9, v8, v7}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->atts()Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    move-result-object v5

    invoke-interface {v2, v0, v1, v4, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {p1, v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->setNext(Lcom/alipay/ccil/cowan/tagsoup/Element;)V

    iput-object p1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    iput-boolean v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->N:Z

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->z:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->flags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    invoke-interface {v0}, Lcom/alipay/ccil/cowan/tagsoup/Scanner;->startCDATA()V

    :cond_5
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v1, v0, :cond_0

    const/16 v0, 0x27

    if-eq v1, v0, :cond_2

    const/16 v0, 0x22

    if-ne v1, v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private c(Lcom/alipay/ccil/cowan/tagsoup/Element;)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->canContain(Lcom/alipay/ccil/cowan/tagsoup/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->next()Lcom/alipay/ccil/cowan/tagsoup/Element;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->parent()Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/alipay/ccil/cowan/tagsoup/Element;

    iget-boolean v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->v:Z

    invoke-direct {v0, v1, v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;-><init>(Lcom/alipay/ccil/cowan/tagsoup/ElementType;Z)V

    invoke-virtual {v0, p1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->setNext(Lcom/alipay/ccil/cowan/tagsoup/Element;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    :goto_2
    return-void

    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->next()Lcom/alipay/ccil/cowan/tagsoup/Element;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->next()Lcom/alipay/ccil/cowan/tagsoup/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->next()Lcom/alipay/ccil/cowan/tagsoup/Element;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b()V

    goto :goto_3

    :cond_3
    :goto_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->next()Lcom/alipay/ccil/cowan/tagsoup/Element;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<pcdata>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b(Lcom/alipay/ccil/cowan/tagsoup/Element;)V

    :cond_4
    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Lcom/alipay/ccil/cowan/tagsoup/Element;)V

    move-object p1, v0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    goto :goto_2
.end method

.method private static d(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13

    const/16 v12, 0x5c

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v5, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    move v6, v5

    move v0, v5

    move v1, v5

    move v3, v5

    move v2, v5

    :goto_1
    if-ge v3, v10, :cond_8

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-nez v0, :cond_3

    const/16 v11, 0x27

    if-ne v7, v11, :cond_3

    if-eq v6, v12, :cond_3

    if-nez v1, :cond_2

    move v1, v4

    :goto_2
    if-gez v2, :cond_1

    move v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v6, v7

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_2

    :cond_3
    if-nez v1, :cond_5

    const/16 v11, 0x22

    if-ne v7, v11, :cond_5

    if-eq v6, v12, :cond_5

    if-nez v0, :cond_4

    move v0, v4

    :goto_4
    if-gez v2, :cond_1

    move v2, v3

    goto :goto_3

    :cond_4
    move v0, v5

    goto :goto_4

    :cond_5
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_7

    if-ltz v2, :cond_6

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v2, -0x1

    goto :goto_3

    :cond_7
    if-gez v2, :cond_1

    const/16 v6, 0x20

    if-eq v7, v6, :cond_1

    move v2, v3

    goto :goto_3

    :cond_8
    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move v3, v1

    move v0, v2

    :goto_1
    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sget-object v7, Lcom/alipay/ccil/cowan/tagsoup/Parser;->O:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_1

    const/16 v0, 0x20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public adup([CII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->C:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public aname([CII)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b([CII)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public aval([CII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->C:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->C:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public cdsect([CII)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->pcdata([CII)V

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    return-void
.end method

.method public cmnt([CII)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void
.end method

.method public comment([CII)V
    .locals 0

    return-void
.end method

.method public decl([CII)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_5

    const-string/jumbo v2, "DOCTYPE"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->D:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->D:Z

    array-length v2, v1

    if-le v2, v4, :cond_5

    aget-object v2, v1, v4

    array-length v3, v1

    if-le v3, v5, :cond_2

    const-string/jumbo v3, "SYSTEM"

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v1, v1, v5

    :goto_1
    invoke-static {v0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v3, v2, v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v3}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    iput-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    instance-of v0, v0, Lorg/xml/sax/Locator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    check-cast v0, Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->F:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->F:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->F:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    array-length v3, v1

    if-le v3, v5, :cond_4

    const-string/jumbo v3, "PUBLIC"

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v0, v1, v5

    array-length v3, v1

    if-le v3, v7, :cond_3

    aget-object v1, v1, v7

    goto :goto_1

    :cond_3
    const-string/jumbo v1, ""

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v1, v0

    move-object v2, v0

    goto :goto_1
.end method

.method public endCDATA()V
    .locals 0

    return-void
.end method

.method public endDTD()V
    .locals 0

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public entity([CII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a([CII)I

    move-result v0

    iput v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->L:I

    return-void
.end method

.method public eof([CII)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->K:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->c(Lcom/alipay/ccil/cowan/tagsoup/Element;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->next()Lcom/alipay/ccil/cowan/tagsoup/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v1}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public etag([CII)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->etag_cdata([CII)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->etag_basic([CII)V

    goto :goto_0
.end method

.method public etag_basic([CII)V
    .locals 5

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-eqz p3, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b([CII)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v1, v0}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->name()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;->flags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;->next()Lcom/alipay/ccil/cowan/tagsoup/Element;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;->next()Lcom/alipay/ccil/cowan/tagsoup/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;->next()Lcom/alipay/ccil/cowan/tagsoup/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->next()Lcom/alipay/ccil/cowan/tagsoup/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;->preclose()V

    :goto_3
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->isPreclosed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v4}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Lcom/alipay/ccil/cowan/tagsoup/Element;)V

    goto :goto_0

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-eq v0, v2, :cond_6

    invoke-direct {p0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b()V

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a()V

    goto :goto_3
.end method

.method public etag_cdata([CII)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v4

    iget-boolean v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->z:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;->flags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne p3, v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    move v3, v1

    :goto_1
    if-ge v3, p3, :cond_0

    add-int v5, p2, v3

    aget-char v5, p1, v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-eq v5, v6, :cond_2

    move v2, v1

    :cond_0
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    sget-object v3, Lcom/alipay/ccil/cowan/tagsoup/Parser;->M:[C

    invoke-interface {v2, v3, v1, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    sget-object v2, Lcom/alipay/ccil/cowan/tagsoup/Parser;->M:[C

    invoke-interface {v1, v2, v7, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    invoke-interface {v1}, Lcom/alipay/ccil/cowan/tagsoup/Scanner;->startCDATA()V

    :goto_2
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    goto :goto_0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->c:Lorg/xml/sax/DTDHandler;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->c:Lorg/xml/sax/DTDHandler;

    goto :goto_0
.end method

.method public getEntity()I
    .locals 1

    iget v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->L:I

    return v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->e:Lorg/xml/sax/EntityResolver;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->e:Lorg/xml/sax/EntityResolver;

    goto :goto_0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->d:Lorg/xml/sax/ErrorHandler;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->d:Lorg/xml/sax/ErrorHandler;

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown feature "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b:Lorg/xml/sax/ext/LexicalHandler;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b:Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->h:Lcom/alipay/ccil/cowan/tagsoup/AutoDetector;

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public gi([CII)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b([CII)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v0, v3}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->t:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iget-boolean v4, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->u:Z

    if-eqz v4, :cond_5

    :goto_2
    iget-object v4, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v4, v3, v0, v2, v1}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->u:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v1}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->rootElementType()Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v0, v3}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    :cond_3
    new-instance v1, Lcom/alipay/ccil/cowan/tagsoup/Element;

    iget-boolean v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->v:Z

    invoke-direct {v1, v0, v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;-><init>(Lcom/alipay/ccil/cowan/tagsoup/ElementType;Z)V

    iput-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    const v2, 0x7fffffff

    goto :goto_2
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/ccil/cowan/tagsoup/HTMLSchema;

    invoke-direct {v0}, Lcom/alipay/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    :cond_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/ccil/cowan/tagsoup/HTMLScanner;

    invoke-direct {v0}, Lcom/alipay/ccil/cowan/tagsoup/HTMLScanner;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    :cond_1
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->h:Lcom/alipay/ccil/cowan/tagsoup/AutoDetector;

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/ccil/cowan/tagsoup/Parser$1;

    invoke-direct {v0, p0}, Lcom/alipay/ccil/cowan/tagsoup/Parser$1;-><init>(Lcom/alipay/ccil/cowan/tagsoup/Parser;)V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->h:Lcom/alipay/ccil/cowan/tagsoup/AutoDetector;

    :cond_2
    new-instance v0, Lcom/alipay/ccil/cowan/tagsoup/Element;

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    const-string/jumbo v2, "<root>"

    invoke-virtual {v1, v2}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->v:Z

    invoke-direct {v0, v1, v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;-><init>(Lcom/alipay/ccil/cowan/tagsoup/ElementType;Z)V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    new-instance v0, Lcom/alipay/ccil/cowan/tagsoup/Element;

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    const-string/jumbo v2, "<pcdata>"

    invoke-virtual {v1, v2}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->v:Z

    invoke-direct {v0, v1, v2}, Lcom/alipay/ccil/cowan/tagsoup/Element;-><init>(Lcom/alipay/ccil/cowan/tagsoup/ElementType;Z)V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->K:Lcom/alipay/ccil/cowan/tagsoup/Element;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->C:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->H:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->J:Lcom/alipay/ccil/cowan/tagsoup/Element;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->L:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->N:Z

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->F:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->E:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->G:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a(Lorg/xml/sax/InputSource;)Ljava/io/Reader;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/ccil/cowan/tagsoup/Scanner;->resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    instance-of v0, v0, Lorg/xml/sax/Locator;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    check-cast v0, Lorg/xml/sax/Locator;

    invoke-interface {v2, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v2}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getPrefix()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v3}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    invoke-interface {v0, v1, p0}, Lcom/alipay/ccil/cowan/tagsoup/Scanner;->scan(Ljava/io/Reader;Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;)V

    return-void
.end method

.method public pcdata([CII)V
    .locals 4

    const/4 v1, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    move v2, v1

    :goto_1
    if-ge v2, p3, :cond_3

    add-int v3, p2, v2

    aget-char v3, p1, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->K:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0, v1}, Lcom/alipay/ccil/cowan/tagsoup/Element;->canContain(Lcom/alipay/ccil/cowan/tagsoup/Element;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->K:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->c(Lcom/alipay/ccil/cowan/tagsoup/Element;)V

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_0
.end method

.method public pi([CII)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->H:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "xml"

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p3, :cond_2

    add-int/lit8 v0, p3, -0x1

    aget-char v0, p1, v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    add-int/lit8 p3, p3, -0x1

    :cond_2
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->H:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->H:Ljava/lang/String;

    goto :goto_0
.end method

.method public pitarget([CII)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b([CII)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->H:Ljava/lang/String;

    goto :goto_0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    iput-object p1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->a:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    iput-object p1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->c:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    iput-object p1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->e:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    iput-object p1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->d:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown feature "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->r:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->A:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->s:Z

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->t:Z

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->u:Z

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->v:Z

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->w:Z

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->x:Z

    goto :goto_1

    :cond_9
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->y:Z

    goto :goto_1

    :cond_a
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->z:Z

    goto :goto_1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string/jumbo v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    iput-object p0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b:Lorg/xml/sax/ext/LexicalHandler;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    iput-object p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->b:Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string/jumbo v1, "Your lexical handler is not a LexicalHandler"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    iput-object p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->g:Lcom/alipay/ccil/cowan/tagsoup/Scanner;

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string/jumbo v1, "Your scanner is not a Scanner"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, p2, Lcom/alipay/ccil/cowan/tagsoup/Schema;

    if-eqz v0, :cond_5

    check-cast p2, Lcom/alipay/ccil/cowan/tagsoup/Schema;

    iput-object p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->f:Lcom/alipay/ccil/cowan/tagsoup/Schema;

    goto :goto_0

    :cond_5
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string/jumbo v1, "Your schema is not a Schema"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, p2, Lcom/alipay/ccil/cowan/tagsoup/AutoDetector;

    if-eqz v0, :cond_7

    check-cast p2, Lcom/alipay/ccil/cowan/tagsoup/AutoDetector;

    iput-object p2, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->h:Lcom/alipay/ccil/cowan/tagsoup/AutoDetector;

    goto :goto_0

    :cond_7
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string/jumbo v1, "Your auto-detector is not an AutoDetector"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stagc([CII)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->c(Lcom/alipay/ccil/cowan/tagsoup/Element;)V

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->I:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/Element;->model()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->etag_basic([CII)V

    goto :goto_0
.end method

.method public stage([CII)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser;->B:Lcom/alipay/ccil/cowan/tagsoup/Element;

    invoke-direct {p0, v0}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->c(Lcom/alipay/ccil/cowan/tagsoup/Element;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->etag_basic([CII)V

    goto :goto_0
.end method

.method public startCDATA()V
    .locals 0

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
