.class public abstract Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;
.super Ljava/lang/Object;


# instance fields
.field protected final key:Ljava/lang/String;

.field protected final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-static {p1}, Lcom/googlecode/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method protected edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final exists()Z
    .locals 2

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final remove()V
    .locals 2

    invoke-virtual {p0}, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
