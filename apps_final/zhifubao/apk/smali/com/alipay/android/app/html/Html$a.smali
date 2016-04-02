.class final Lcom/alipay/android/app/html/Html$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/html/Html;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lorg/ccil/cowan/tagsoup/HTMLSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    sput-object v0, Lcom/alipay/android/app/html/Html$a;->a:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    return-void
.end method

.method static synthetic a()Lorg/ccil/cowan/tagsoup/HTMLSchema;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/html/Html$a;->a:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    return-object v0
.end method
