.class public Lcom/amplitude/api/Identify;
.super Ljava/lang/Object;
.source "Identify.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amplitude.api.Identify"


# instance fields
.field protected userProperties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected userPropertiesOperations:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amplitude/api/Identify;->userProperties:Ljava/util/Set;

    return-void
.end method

.method private addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 959
    invoke-static {p2}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    const-string v3, "Attempting to perform operation %s with a null or empty string property, ignoring"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :goto_0
    return-void

    .line 967
    :cond_0
    if-nez p3, :cond_1

    .line 968
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    const-string v3, "Attempting to perform operation %s with null value for property %s, ignoring"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 976
    :cond_1
    iget-object v1, p0, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    const-string v2, "$clearAll"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 977
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    const-string v3, "This Identify already contains a $clearAll operation, ignoring operation %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 985
    :cond_2
    iget-object v1, p0, Lcom/amplitude/api/Identify;->userProperties:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 986
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    const-string v3, "Already used property %s in previous operation, ignoring operation %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 994
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 995
    iget-object v1, p0, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 997
    :cond_4
    iget-object v1, p0, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 998
    iget-object v1, p0, Lcom/amplitude/api/Identify;->userProperties:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private booleanArrayToJSONArray([Z)Lorg/json/JSONArray;
    .locals 4
    .param p1, "values"    # [Z

    .prologue
    .line 1005
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1006
    .local v0, "array":Lorg/json/JSONArray;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-boolean v1, p1, v2

    .local v1, "value":Z
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1007
    .end local v1    # "value":Z
    :cond_0
    return-object v0
.end method

.method private doubleArrayToJSONArray([D)Lorg/json/JSONArray;
    .locals 13
    .param p1, "values"    # [D

    .prologue
    const/4 v5, 0x0

    .line 1025
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1026
    .local v0, "array":Lorg/json/JSONArray;
    array-length v6, p1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-wide v2, p1, v4

    .line 1028
    .local v2, "value":D
    :try_start_0
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1029
    :catch_0
    move-exception v1

    .line 1030
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v7

    const-string v8, "com.amplitude.api.Identify"

    const-string v9, "Error converting double %d to JSON: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 1031
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v5

    const/4 v11, 0x1

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1030
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1035
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "value":D
    :cond_0
    return-object v0
.end method

.method private floatArrayToJSONArray([F)Lorg/json/JSONArray;
    .locals 12
    .param p1, "values"    # [F

    .prologue
    const/4 v4, 0x0

    .line 1011
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1012
    .local v0, "array":Lorg/json/JSONArray;
    array-length v5, p1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget v2, p1, v3

    .line 1014
    .local v2, "value":F
    float-to-double v6, v2

    :try_start_0
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v1

    .line 1016
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v6

    const-string v7, "com.amplitude.api.Identify"

    const-string v8, "Error converting float %f to JSON: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 1017
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v10, 0x1

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1016
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1021
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "value":F
    :cond_0
    return-object v0
.end method

.method private intArrayToJSONArray([I)Lorg/json/JSONArray;
    .locals 4
    .param p1, "values"    # [I

    .prologue
    .line 1039
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1040
    .local v0, "array":Lorg/json/JSONArray;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p1, v2

    .local v1, "value":I
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1041
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method private longArrayToJSONArray([J)Lorg/json/JSONArray;
    .locals 5
    .param p1, "values"    # [J

    .prologue
    .line 1045
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1046
    .local v0, "array":Lorg/json/JSONArray;
    array-length v4, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, p1, v1

    .local v2, "value":J
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1047
    .end local v2    # "value":J
    :cond_0
    return-object v0
.end method

.method private stringArrayToJSONArray([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 1051
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1052
    .local v0, "array":Lorg/json/JSONArray;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1053
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;D)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 405
    const-string v0, "$add"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    return-object p0
.end method

.method public add(Ljava/lang/String;F)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 419
    const-string v0, "$add"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 433
    const-string v0, "$add"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    return-object p0
.end method

.method public add(Ljava/lang/String;J)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 447
    const-string v0, "$add"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 462
    const-string v0, "$add"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    return-object p0
.end method

.method public add(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONObject;

    .prologue
    .line 477
    const-string v0, "$add"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 508
    const-string v0, "$append"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 523
    const-string v0, "$append"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 538
    const-string v0, "$append"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 553
    const-string v0, "$append"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 568
    const-string v0, "$append"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    return-object p0
.end method

.method public append(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONArray;

    .prologue
    .line 583
    const-string v0, "$append"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 584
    return-object p0
.end method

.method public append(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONObject;

    .prologue
    .line 599
    const-string v0, "$append"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 493
    const-string v0, "$append"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [D

    .prologue
    .line 629
    const-string v0, "$append"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->doubleArrayToJSONArray([D)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 630
    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 644
    const-string v0, "$append"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->floatArrayToJSONArray([F)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 659
    const-string v0, "$append"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->intArrayToJSONArray([I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 660
    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [J

    .prologue
    .line 674
    const-string v0, "$append"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->longArrayToJSONArray([J)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 689
    const-string v0, "$append"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->stringArrayToJSONArray([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Z

    .prologue
    .line 614
    const-string v0, "$append"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->booleanArrayToJSONArray([Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    return-object p0
.end method

.method public clearAll()Lcom/amplitude/api/Identify;
    .locals 5

    .prologue
    .line 939
    iget-object v1, p0, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/amplitude/api/Identify;->userProperties:Ljava/util/Set;

    const-string v2, "$clearAll"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 941
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    const-string v3, "Need to send $clearAll on its own Identify object without any other operations, ignoring $clearAll"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    :goto_0
    return-object p0

    .line 950
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    const-string v2, "$clearAll"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUserPropertiesOperations()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 1110
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :goto_0
    return-object v1

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public prepend(Ljava/lang/String;D)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 722
    const-string v0, "$prepend"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    return-object p0
.end method

.method public prepend(Ljava/lang/String;F)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 738
    const-string v0, "$prepend"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    return-object p0
.end method

.method public prepend(Ljava/lang/String;I)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 754
    const-string v0, "$prepend"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 755
    return-object p0
.end method

.method public prepend(Ljava/lang/String;J)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 770
    const-string v0, "$prepend"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 771
    return-object p0
.end method

.method public prepend(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 786
    const-string v0, "$prepend"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 787
    return-object p0
.end method

.method public prepend(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONArray;

    .prologue
    .line 802
    const-string v0, "$prepend"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    return-object p0
.end method

.method public prepend(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONObject;

    .prologue
    .line 819
    const-string v0, "$prepend"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 820
    return-object p0
.end method

.method public prepend(Ljava/lang/String;Z)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 706
    const-string v0, "$prepend"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 707
    return-object p0
.end method

.method public prepend(Ljava/lang/String;[D)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [D

    .prologue
    .line 851
    const-string v0, "$prepend"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->doubleArrayToJSONArray([D)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 852
    return-object p0
.end method

.method public prepend(Ljava/lang/String;[F)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 867
    const-string v0, "$prepend"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->floatArrayToJSONArray([F)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 868
    return-object p0
.end method

.method public prepend(Ljava/lang/String;[I)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 883
    const-string v0, "$prepend"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->intArrayToJSONArray([I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 884
    return-object p0
.end method

.method public prepend(Ljava/lang/String;[J)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [J

    .prologue
    .line 899
    const-string v0, "$prepend"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->longArrayToJSONArray([J)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 900
    return-object p0
.end method

.method public prepend(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 915
    const-string v0, "$prepend"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->stringArrayToJSONArray([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 916
    return-object p0
.end method

.method public prepend(Ljava/lang/String;[Z)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Z

    .prologue
    .line 835
    const-string v0, "$prepend"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->booleanArrayToJSONArray([Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 836
    return-object p0
.end method

.method public set(Ljava/lang/String;D)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 246
    const-string v0, "$set"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    return-object p0
.end method

.method public set(Ljava/lang/String;F)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 258
    const-string v0, "$set"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    return-object p0
.end method

.method public set(Ljava/lang/String;I)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 270
    const-string v0, "$set"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    return-object p0
.end method

.method public set(Ljava/lang/String;J)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 282
    const-string v0, "$set"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/amplitude/api/Identify;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1096
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v0

    const-string v1, "com.amplitude.api.Identify"

    const-string v2, "This version of set is deprecated. Please use one with a different signature."

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string v0, "$set"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    return-object p0
.end method

.method public set(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONArray;

    .prologue
    .line 318
    const-string v0, "$set"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    return-object p0
.end method

.method public set(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONObject;

    .prologue
    .line 306
    const-string v0, "$set"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    return-object p0
.end method

.method public set(Ljava/lang/String;Z)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 234
    const-string v0, "$set"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    return-object p0
.end method

.method public set(Ljava/lang/String;[D)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [D

    .prologue
    .line 342
    const-string v0, "$set"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->doubleArrayToJSONArray([D)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    return-object p0
.end method

.method public set(Ljava/lang/String;[F)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 354
    const-string v0, "$set"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->floatArrayToJSONArray([F)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    return-object p0
.end method

.method public set(Ljava/lang/String;[I)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 366
    const-string v0, "$set"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->intArrayToJSONArray([I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    return-object p0
.end method

.method public set(Ljava/lang/String;[J)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [J

    .prologue
    .line 378
    const-string v0, "$set"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->longArrayToJSONArray([J)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    return-object p0
.end method

.method public set(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 390
    const-string v0, "$set"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->stringArrayToJSONArray([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    return-object p0
.end method

.method public set(Ljava/lang/String;[Z)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Z

    .prologue
    .line 330
    const-string v0, "$set"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->booleanArrayToJSONArray([Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;D)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 65
    const-string v0, "$setOnce"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;F)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 78
    const-string v0, "$setOnce"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;I)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 91
    const-string v0, "$setOnce"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;J)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 104
    const-string v0, "$setOnce"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/amplitude/api/Identify;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1079
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v0

    const-string v1, "com.amplitude.api.Identify"

    const-string v2, "This version of setOnce is deprecated. Please use one with a different signature."

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, "$setOnce"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONArray;

    .prologue
    .line 130
    const-string v0, "$setOnce"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONObject;

    .prologue
    .line 143
    const-string v0, "$setOnce"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;Z)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 52
    const-string v0, "$setOnce"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;[D)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [D

    .prologue
    .line 169
    const-string v0, "$setOnce"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->doubleArrayToJSONArray([D)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;[F)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 182
    const-string v0, "$setOnce"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->floatArrayToJSONArray([F)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;[I)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 195
    const-string v0, "$setOnce"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->intArrayToJSONArray([I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;[J)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [J

    .prologue
    .line 208
    const-string v0, "$setOnce"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->longArrayToJSONArray([J)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 221
    const-string v0, "$setOnce"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->stringArrayToJSONArray([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    return-object p0
.end method

.method public setOnce(Ljava/lang/String;[Z)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Z

    .prologue
    .line 156
    const-string v0, "$setOnce"

    invoke-direct {p0, p2}, Lcom/amplitude/api/Identify;->booleanArrayToJSONArray([Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    return-object p0
.end method

.method setUserProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/amplitude/api/Identify;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1064
    const-string v0, "$set"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1065
    return-object p0
.end method

.method public unset(Ljava/lang/String;)Lcom/amplitude/api/Identify;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 927
    const-string v0, "$unset"

    const-string v1, "-"

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/api/Identify;->addToUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 928
    return-object p0
.end method
