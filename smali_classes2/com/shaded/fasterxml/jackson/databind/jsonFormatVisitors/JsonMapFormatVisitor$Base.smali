.class public Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor$Base;
.super Ljava/lang/Object;
.source "JsonMapFormatVisitor.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# instance fields
.field protected _provider:Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor$Base;->_provider:Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;

    return-void
.end method


# virtual methods
.method public getProvider()Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor$Base;->_provider:Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;

    return-object v0
.end method

.method public keyFormat(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 41
    return-void
.end method

.method public setProvider(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor$Base;->_provider:Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;

    return-void
.end method

.method public valueFormat(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 43
    return-void
.end method
