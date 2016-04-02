.class public final Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefField;
.super Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefField;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefField;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefField;->getOr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefField;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefField;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefField;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
