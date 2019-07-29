.class public Lcom/amplitude/api/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amplitude.api.Utils"

.field private static logger:Lcom/amplitude/api/AmplitudeLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/Utils;->logger:Lcom/amplitude/api/AmplitudeLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "obj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 45
    :goto_0
    return-object v5

    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 30
    .local v3, "nameArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 34
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 36
    .local v2, "len":I
    :goto_2
    new-array v4, v2, [Ljava/lang/String;

    .line 37
    .local v4, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 38
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 31
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v4    # "names":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v6, Lcom/amplitude/api/Utils;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v7, "com.amplitude.api.Utils"

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 34
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 42
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v4    # "names":[Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    goto :goto_0

    .line 43
    :catch_1
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/amplitude/api/Utils;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v7, "com.amplitude.api.Utils"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static compareJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 8
    .param p0, "o1"    # Lorg/json/JSONObject;
    .param p1, "o2"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v4

    .line 56
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    if-nez p0, :cond_4

    if-eqz p1, :cond_4

    :cond_3
    move v4, v5

    .line 57
    goto :goto_0

    .line 60
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v6

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-eq v6, v7, :cond_5

    move v4, v5

    .line 61
    goto :goto_0

    .line 64
    :cond_5
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    move v4, v5

    .line 68
    goto :goto_0

    .line 71
    :cond_7
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    .local v2, "value1":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 74
    .local v3, "value2":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    move v4, v5

    .line 75
    goto :goto_0

    .line 78
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lorg/json/JSONObject;

    if-ne v6, v7, :cond_9

    .line 79
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "value1":Ljava/lang/Object;
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value2":Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/amplitude/api/Utils;->compareJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v6

    if-nez v6, :cond_6

    move v4, v5

    .line 80
    goto :goto_0

    .line 82
    .restart local v2    # "value1":Ljava/lang/Object;
    .restart local v3    # "value2":Ljava/lang/Object;
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_6

    move v4, v5

    .line 83
    goto :goto_0

    .line 88
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "value1":Ljava/lang/Object;
    .end local v3    # "value2":Ljava/lang/Object;
    :catch_0
    move-exception v4

    move v4, v5

    .line 89
    goto :goto_0
.end method

.method public static isEmptyString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 93
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static normalizeInstanceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "instance"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string p0, "$default_instance"

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
