.class public abstract Lcom/googlecode/androidannotations/api/sharedpreferences/SharedPreferencesHelper;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/SharedPreferencesHelper;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method protected booleanField(Ljava/lang/String;Z)Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefField;
    .locals 2

    new-instance v0, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefField;

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/SharedPreferencesHelper;->a:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, p1, p2}, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefField;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/SharedPreferencesHelper;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method protected floatField(Ljava/lang/String;F)Lcom/googlecode/androidannotations/api/sharedpreferences/FloatPrefField;
    .locals 2

    new-instance v0, Lcom/googlecode/androidannotations/api/sharedpreferences/FloatPrefField;

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/SharedPreferencesHelper;->a:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, p1, p2}, Lcom/googlecode/androidannotations/api/sharedpreferences/FloatPrefField;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    return-object v0
.end method

.method public final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/SharedPreferencesHelper;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method protected intField(Ljava/lang/String;I)Lcom/googlecode/androidannotations/api/sharedpreferences/IntPrefField;
    .locals 2

    new-instance v0, Lcom/googlecode/androidannotations/api/sharedpreferences/IntPrefField;

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/SharedPreferencesHelper;->a:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, p1, p2}, Lcom/googlecode/androidannotations/api/sharedpreferences/IntPrefField;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected longField(Ljava/lang/String;J)Lcom/googlecode/androidannotations/api/sharedpreferences/LongPrefField;
    .locals 2

    new-instance v0, Lcom/googlecode/androidannotations/api/sharedpreferences/LongPrefField;

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/SharedPreferencesHelper;->a:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/googlecode/androidannotations/api/sharedpreferences/LongPrefField;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-object v0
.end method

.method protected stringField(Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefField;
    .locals 2

    new-instance v0, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefField;

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/SharedPreferencesHelper;->a:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, p1, p2}, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefField;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
