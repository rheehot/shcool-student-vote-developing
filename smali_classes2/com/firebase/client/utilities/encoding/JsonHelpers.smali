.class public Lcom/firebase/client/utilities/encoding/JsonHelpers;
.super Ljava/lang/Object;
.source "JsonHelpers.java"


# static fields
.field private static final mapperInstance:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/firebase/client/utilities/encoding/JsonHelpers;->mapperInstance:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMapper()Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/firebase/client/utilities/encoding/JsonHelpers;->mapperInstance:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method
