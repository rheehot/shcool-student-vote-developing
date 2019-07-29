.class public abstract Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue;
.super Ljava/lang/Object;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;,
        Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;,
        Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;
    }
.end annotation


# instance fields
.field public final next:Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue;

.field public final value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue;->next:Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue;

    .line 26
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue;->value:Ljava/lang/Object;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract assign(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method
