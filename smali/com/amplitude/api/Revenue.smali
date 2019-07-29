.class public Lcom/amplitude/api/Revenue;
.super Ljava/lang/Object;
.source "Revenue.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amplitude.api.Revenue"

.field private static logger:Lcom/amplitude/api/AmplitudeLog;


# instance fields
.field protected price:Ljava/lang/Double;

.field protected productId:Ljava/lang/String;

.field protected properties:Lorg/json/JSONObject;

.field protected quantity:I

.field protected receipt:Ljava/lang/String;

.field protected receiptSig:Ljava/lang/String;

.field protected revenueType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/Revenue;->logger:Lcom/amplitude/api/AmplitudeLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/amplitude/api/Revenue;->quantity:I

    .line 46
    iput-object v1, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    .line 51
    iput-object v1, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 211
    :cond_0
    :goto_0
    return v2

    .line 197
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 199
    check-cast v0, Lcom/amplitude/api/Revenue;

    .line 201
    .local v0, "revenue":Lcom/amplitude/api/Revenue;
    iget v3, p0, Lcom/amplitude/api/Revenue;->quantity:I

    iget v4, v0, Lcom/amplitude/api/Revenue;->quantity:I

    if-ne v3, v4, :cond_0

    .line 202
    iget-object v3, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    iget-object v4, v0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    :cond_2
    iget-object v3, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    iget-object v4, v0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    :cond_3
    iget-object v3, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    iget-object v4, v0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    :cond_4
    iget-object v3, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    iget-object v4, v0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    :cond_5
    iget-object v3, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    iget-object v4, v0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    :cond_6
    iget-object v3, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    invoke-static {v3, v4}, Lcom/amplitude/api/Utils;->compareJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    :goto_1
    move v2, v1

    goto :goto_0

    .line 202
    :cond_9
    iget-object v3, v0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 204
    :cond_a
    iget-object v3, v0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 205
    :cond_b
    iget-object v3, v0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_0

    .line 207
    :cond_c
    iget-object v3, v0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_0

    .line 209
    :cond_d
    iget-object v3, v0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto/16 :goto_0

    .line 211
    :cond_e
    iget-object v3, v0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    if-nez v3, :cond_7

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 223
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/amplitude/api/Revenue;->quantity:I

    add-int v0, v2, v3

    .line 224
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 225
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 226
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 227
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 228
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 229
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 222
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 224
    goto :goto_1

    :cond_3
    move v2, v1

    .line 225
    goto :goto_2

    :cond_4
    move v2, v1

    .line 226
    goto :goto_3

    :cond_5
    move v2, v1

    .line 227
    goto :goto_4
.end method

.method protected isValidRevenue()Z
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/amplitude/api/Revenue;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.Revenue"

    const-string v2, "Invalid revenue, need to set price"

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEventProperties(Lorg/json/JSONObject;)Lcom/amplitude/api/Revenue;
    .locals 1
    .param p1, "eventProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 160
    invoke-static {p1}, Lcom/amplitude/api/Utils;->cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    .line 161
    return-object p0
.end method

.method public setPrice(D)Lcom/amplitude/api/Revenue;
    .locals 1
    .param p1, "price"    # D

    .prologue
    .line 111
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    .line 112
    return-object p0
.end method

.method public setProductId(Ljava/lang/String;)Lcom/amplitude/api/Revenue;
    .locals 3
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p1}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/amplitude/api/Revenue;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.Revenue"

    const-string v2, "Invalid empty productId"

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-object p0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setQuantity(I)Lcom/amplitude/api/Revenue;
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/amplitude/api/Revenue;->quantity:I

    .line 101
    return-object p0
.end method

.method public setReceipt(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/Revenue;
    .locals 0
    .param p1, "receipt"    # Ljava/lang/String;
    .param p2, "receiptSignature"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public setRevenueProperties(Lorg/json/JSONObject;)Lcom/amplitude/api/Revenue;
    .locals 3
    .param p1, "revenueProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 147
    sget-object v0, Lcom/amplitude/api/Revenue;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.Revenue"

    const-string v2, "setRevenueProperties is deprecated, please use setEventProperties instead"

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0, p1}, Lcom/amplitude/api/Revenue;->setEventProperties(Lorg/json/JSONObject;)Lcom/amplitude/api/Revenue;

    move-result-object v0

    return-object v0
.end method

.method public setRevenueType(Ljava/lang/String;)Lcom/amplitude/api/Revenue;
    .locals 0
    .param p1, "revenueType"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method protected toJSONObject()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 170
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .local v1, "obj":Lorg/json/JSONObject;
    :goto_0
    :try_start_0
    const-string v2, "$productId"

    iget-object v3, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v2, "$quantity"

    iget v3, p0, Lcom/amplitude/api/Revenue;->quantity:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string v2, "$price"

    iget-object v3, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v2, "$revenueType"

    iget-object v3, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v2, "$receipt"

    iget-object v3, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v2, "$receiptSig"

    iget-object v3, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    return-object v1

    .line 170
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_0
    iget-object v1, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    goto :goto_0

    .line 178
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/amplitude/api/Revenue;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.Revenue"

    const-string v4, "Failed to convert revenue object to JSON: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 180
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v2, v3, v4}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
