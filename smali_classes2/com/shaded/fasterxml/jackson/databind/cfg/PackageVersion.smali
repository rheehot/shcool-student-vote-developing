.class public final Lcom/shaded/fasterxml/jackson/databind/cfg/PackageVersion;
.super Ljava/lang/Object;
.source "PackageVersion.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/core/Versioned;


# static fields
.field public static final VERSION:Lcom/shaded/fasterxml/jackson/core/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const-string v0, "2.2.2"

    const-string v1, "com.shaded.fasterxml.jackson.core"

    const-string v2, "jackson-databind"

    invoke-static {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/util/VersionUtil;->parseVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/core/Version;

    move-result-object v0

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/shaded/fasterxml/jackson/core/Version;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public version()Lcom/shaded/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/shaded/fasterxml/jackson/core/Version;

    return-object v0
.end method
