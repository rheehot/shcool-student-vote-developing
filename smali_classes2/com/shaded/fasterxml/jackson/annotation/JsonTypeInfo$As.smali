.class public final enum Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;
.super Ljava/lang/Enum;
.source "JsonTypeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "As"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

.field public static final enum EXTERNAL_PROPERTY:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

.field public static final enum PROPERTY:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

.field public static final enum WRAPPER_ARRAY:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

.field public static final enum WRAPPER_OBJECT:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    new-instance v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    const-string v1, "PROPERTY"

    invoke-direct {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 153
    new-instance v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    const-string v1, "WRAPPER_OBJECT"

    invoke-direct {v0, v1, v3}, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 162
    new-instance v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    const-string v1, "WRAPPER_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 172
    new-instance v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    const-string v1, "EXTERNAL_PROPERTY"

    invoke-direct {v0, v1, v5}, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 133
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    sget-object v1, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    aput-object v1, v0, v2

    sget-object v1, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    aput-object v1, v0, v3

    sget-object v1, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    aput-object v1, v0, v4

    sget-object v1, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    aput-object v1, v0, v5

    sput-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->$VALUES:[Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method

.method public static values()[Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->$VALUES:[Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {v0}, [Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method
