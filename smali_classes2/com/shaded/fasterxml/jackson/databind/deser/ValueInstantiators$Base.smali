.class public Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiators$Base;
.super Ljava/lang/Object;
.source "ValueInstantiators.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiators;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueInstantiator(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 0

    .prologue
    .line 44
    return-object p3
.end method
