.class public Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;
.super Lcom/shaded/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.source "CalendarSerializer.java"


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>(ZLjava/text/DateFormat;)V

    return-void
.end method

.method public constructor <init>(ZLjava/text/DateFormat;)V
    .locals 1

    .prologue
    .line 26
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;-><init>(Ljava/lang/Class;ZLjava/text/DateFormat;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected bridge synthetic _timestamp(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 17
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_timestamp(Ljava/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _timestamp(Ljava/util/Calendar;)J
    .locals 2

    .prologue
    .line 40
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;->serialize(Ljava/util/Calendar;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Calendar;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_useTimestamp:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_timestamp(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 57
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_customFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_customFormat:Ljava/text/DateFormat;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_customFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 53
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateValue(Ljava/util/Date;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0
.end method

.method public withFormat(ZLjava/text/DateFormat;)Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;
    .locals 3

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>(ZLjava/text/DateFormat;)V

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>(ZLjava/text/DateFormat;)V

    goto :goto_0
.end method

.method public bridge synthetic withFormat(ZLjava/text/DateFormat;)Lcom/shaded/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;->withFormat(ZLjava/text/DateFormat;)Lcom/shaded/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    move-result-object v0

    return-object v0
.end method
