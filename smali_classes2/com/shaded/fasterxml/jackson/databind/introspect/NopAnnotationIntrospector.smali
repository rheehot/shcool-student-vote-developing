.class public abstract Lcom/shaded/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;
.super Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;
.source "NopAnnotationIntrospector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final instance:Lcom/shaded/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector$1;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector$1;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;->instance:Lcom/shaded/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method public version()Lcom/shaded/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/Version;->unknownVersion()Lcom/shaded/fasterxml/jackson/core/Version;

    move-result-object v0

    return-object v0
.end method
