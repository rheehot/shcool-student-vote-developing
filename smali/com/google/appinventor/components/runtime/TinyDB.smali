.class public Lcom/google/appinventor/components/runtime/TinyDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TinyDB.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "TinyDB is a non-visible component that stores data for an app. <p> Apps created with App Inventor are initialized each time they run: If an app sets the value of a variable and the user then quits the app, the value of that variable will not be remembered the next time the app is run. In contrast, TinyDB is a <em> persistent </em> data store for the app, that is, the data stored there will be available each time the app is run. An example might be a game that saves the high score and retrieves it each time the game is played. </<p> <p> Data items are strings stored under <em>tags</em> . To store a data item, you specify the tag it should be stored under.  Subsequently, you can retrieve the data that was stored under a given tag. </p><p> There is only one data store per app. Even if you have multiple TinyDB components, they will use the same data store. To get the effect of separate stores, use different keys. Also each app has its own data store. You cannot use TinyDB to pass data between two different apps on the phone, although you <em>can</em> use TinyDb to shares data between the different screens of a multi-screen app. </p> <p>When you are developing apps using the AI Companion, all the apps using that companion will share the same TinyDb.  That sharing will disappear once the apps are packaged.  But, during development, you should be careful to clear the TinyDb each time you start working on a new app.</p>"
    docUri = "storage/tiny-db"
    iconName = "images/tinyDB.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field public static final DEFAULT_NAMESPACE:Ljava/lang/String; = "TinyDB1"


# instance fields
.field private context:Landroid/content/Context;

.field private namespace:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 79
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 80
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->context:Landroid/content/Context;

    .line 81
    const-string v0, "TinyDB1"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TinyDB;->Namespace(Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public ClearAll()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    return-void
.end method

.method public ClearTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method

.method public GetTags()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 146
    .local v1, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 148
    return-object v0
.end method

.method public GetValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueIfTagNotThere"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .end local p2    # "valueIfTagNotThere":Ljava/lang/Object;
    :goto_0
    return-object p2

    .restart local p2    # "valueIfTagNotThere":Ljava/lang/Object;
    :cond_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 130
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v3, "Value failed to convert from JSON."

    const-string v4, "JSON Creation Error."

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public Namespace()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Namespace for storing data."
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public Namespace(Ljava/lang/String;)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "TinyDB1"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Namespace for storing data."
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->namespace:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 89
    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueToStore"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 106
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 108
    .local v1, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v3, "Value failed to convert to JSON."

    const-string v4, "JSON Creation Error."

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    .local v0, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method
