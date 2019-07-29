.class public Lcom/firebase/client/utilities/LogWrapper;
.super Ljava/lang/Object;
.source "LogWrapper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final component:Ljava/lang/String;

.field private final logger:Lcom/firebase/client/Logger;

.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/utilities/LogWrapper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/Logger;Ljava/lang/String;)V
    .locals 1
    .param p1, "logger"    # Lcom/firebase/client/Logger;
    .param p2, "component"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/client/utilities/LogWrapper;-><init>(Lcom/firebase/client/Logger;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/Logger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lcom/firebase/client/Logger;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/firebase/client/utilities/LogWrapper;->logger:Lcom/firebase/client/Logger;

    .line 32
    iput-object p2, p0, Lcom/firebase/client/utilities/LogWrapper;->component:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/firebase/client/utilities/LogWrapper;->prefix:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private static exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 16
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 17
    .local v1, "writer":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 18
    .local v0, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 19
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private now()J
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private toLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/firebase/client/utilities/LogWrapper;->prefix:Ljava/lang/String;

    if-nez v0, :cond_0

    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "message":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/firebase/client/utilities/LogWrapper;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/firebase/client/utilities/LogWrapper;->toLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "logMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/firebase/client/utilities/LogWrapper;->exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    :cond_0
    sget-boolean v0, Lcom/firebase/client/utilities/LogWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/utilities/LogWrapper;->logger:Lcom/firebase/client/Logger;

    sget-object v1, Lcom/firebase/client/Logger$Level;->DEBUG:Lcom/firebase/client/Logger$Level;

    iget-object v2, p0, Lcom/firebase/client/utilities/LogWrapper;->component:Ljava/lang/String;

    invoke-direct {p0}, Lcom/firebase/client/utilities/LogWrapper;->now()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/Logger;->onLogMessage(Lcom/firebase/client/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V

    .line 75
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/firebase/client/utilities/LogWrapper;->toLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/firebase/client/utilities/LogWrapper;->exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "logMsg":Ljava/lang/String;
    iget-object v0, p0, Lcom/firebase/client/utilities/LogWrapper;->logger:Lcom/firebase/client/Logger;

    sget-object v1, Lcom/firebase/client/Logger$Level;->ERROR:Lcom/firebase/client/Logger$Level;

    iget-object v2, p0, Lcom/firebase/client/utilities/LogWrapper;->component:Ljava/lang/String;

    invoke-direct {p0}, Lcom/firebase/client/utilities/LogWrapper;->now()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/Logger;->onLogMessage(Lcom/firebase/client/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V

    .line 39
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/firebase/client/utilities/LogWrapper;->logger:Lcom/firebase/client/Logger;

    sget-object v1, Lcom/firebase/client/Logger$Level;->INFO:Lcom/firebase/client/Logger$Level;

    iget-object v2, p0, Lcom/firebase/client/utilities/LogWrapper;->component:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/firebase/client/utilities/LogWrapper;->toLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/firebase/client/utilities/LogWrapper;->now()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/Logger;->onLogMessage(Lcom/firebase/client/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V

    .line 55
    return-void
.end method

.method public logsDebug()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/firebase/client/utilities/LogWrapper;->logger:Lcom/firebase/client/Logger;

    invoke-interface {v0}, Lcom/firebase/client/Logger;->getLogLevel()Lcom/firebase/client/Logger$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/Logger$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcom/firebase/client/Logger$Level;->DEBUG:Lcom/firebase/client/Logger$Level;

    invoke-virtual {v1}, Lcom/firebase/client/Logger$Level;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/firebase/client/utilities/LogWrapper;->toLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "logMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/firebase/client/utilities/LogWrapper;->exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/utilities/LogWrapper;->logger:Lcom/firebase/client/Logger;

    sget-object v1, Lcom/firebase/client/Logger$Level;->WARN:Lcom/firebase/client/Logger$Level;

    iget-object v2, p0, Lcom/firebase/client/utilities/LogWrapper;->component:Ljava/lang/String;

    invoke-direct {p0}, Lcom/firebase/client/utilities/LogWrapper;->now()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/Logger;->onLogMessage(Lcom/firebase/client/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V

    .line 51
    return-void
.end method
